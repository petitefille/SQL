#include "ifish.h"
#include "builtin.h"
#include "safefork.h"
#include "common.h"
#include "history.h"
#include "pidlist.h"

#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include <string.h>

// fork, __environ
#include <unistd.h>
#include <sys/wait.h> // waitpid
#include <sys/stat.h> // stat

// dir traversal
#include <dirent.h>

#define MAX_PARAM 20

int strexplode(char **out, int num, char *in, int (*cb)(int));

int iscolon(int c)
{
	if(c == ':')
		return 1;
	else
		return 0;
}

// Always free if you get a pointer from this function
char *fullpath(char *cmd)
{
	char *paths[41];
	char *path = strdup(getenv("PATH"));
	char *out = NULL;
	int i;
	struct stat statbuf;

	strexplode(paths, 40, path, iscolon);

	// Welcome to my weird loop. If you can make it through, you are free!
	for(i = 0; paths[i]; i++) {
		out = malloc(strlen(paths[i]) + strlen(cmd) + 2);
		out[0] = 0;
		strcat(out, paths[i]);
		strcat(out, "/");
		strcat(out, cmd);

		if(stat(out, &statbuf) < 0 || !S_ISREG(statbuf.st_mode)){
			free(out);
			out = NULL;
			continue;
		}

		if(access(out, X_OK) != 0) {
			// found
			free(out);
			out = NULL;
			continue;
		}
		break;
	}
	free(path);
	return out;
}

void prompt()
{
	static int cnt = 1;
	char *usr = getenv("USER");

	printf("%s@" PROGNAME " %i> ", usr, cnt++);
	fflush(stdout);
}

void strstrip(char *cmd)
{
	int i;

	for(i = strlen(cmd) - 1; isspace(cmd[i]) && i >= 0; i--)
		cmd[i] = 0;
}

/*
 * Modifies source
 * out: array of char arrays
 * num: how many places the array has for elements, excluding trailing 0
 * in:  string (will be modified)
 * cb:  callback int cb(int) that determines if the char is space
 *
 * returns: length of out-array
 */
// NOTE: Make sure the array has space for num+1 elements!
int strexplode(char **out, int num, char *in, int (*cb)(int))
{
	int cnt = 0;

	while(cnt < num && *in) {
		// Remove leading spaces
		while(*in && cb(*in)) {
			*in = 0;
			in++;
		}

		if(!*in) break;

		out[cnt++] = in;

		while(*in && !cb(*in))
			in++;
	}
	out[cnt] = 0;
	return cnt;
}

// 1 to continue, 0 to exit
char runcmd(const char *cmdbuf, char recursed)
{
	char *param[MAX_PARAM+1];
	char background;
	// clone cmd
	char *cmd = strdup(cmdbuf);
	pid_t pid;
	int wexit, i;
	builtin_ret r;
	char *path; // file path
	int ret; // return code for child execve

	strstrip(cmd);

	if(cmd[strlen(cmd)-1] == '&') {
		background         = 1;
		cmd[strlen(cmd)-1] = 0;
		strstrip(cmd);
	} else {
		background         = 0;
	}

	// After stripping off &, we ended up empty
	if(!strlen(cmd)) {
		free(cmd);
		return 1;
	}

	// Store string as long as it is not recursed
	if(!recursed)
		history_store(cmdbuf);

	strexplode(param, MAX_PARAM, cmd, isspace);

	for(i = 0; param[i]; i++) {
		// OBLIGATORY
		debug("param[%i]: %s\n", i, param[i]);
	}

	r = builtin_run(param[0], param, recursed);
	if(!(r & B_DID_NOT_RUN)) {
		// Don't leak ram
		free(cmd);
		// builtin has run
		if(r & B_EXIT) {
			debug("Builtin requested exit\n");
			return 0;
		}
		// If we ran a builtin, we are done this round
		return 1;
	}

	pid = safefork();
	if(pid == -1) {
		free(cmd);
		return 1;
	} else if(pid > 0) {
		// parent
		if(!background) {
			// Wait for the child
			waitpid(pid, &wexit, 0);
			debug("Child process %i exited with status %i\n", pid, WEXITSTATUS(wexit));
		} else {
			err(PROGNAME ": Child running with pid %i\n", pid);
			// throw pid in linked list
			pidlist_add(pid);
		}
	} else {
		// Free some memory
		history_destroy();

		path = fullpath(param[0]);

		if(path == NULL) {
			err(PROGNAME ": %s: command not found\n", param[0]);
			free(cmd);
			exit(127);
		}

		// path (malloced) is reclaimed, see
		// http://stackoverflow.com/questions/5429141/what-happens-to-malloced-memory-after-exec-changes-the-program-image
		// __environ is declared in unistd.h, if you -D__USE_GNU, you will also get environ.
		ret = execve(path, param, __environ);

		free(cmd);
		free(path);
		exit(ret);
	}
	// once after cmds
	free(cmd);
	return 1;
}

int main()
{
	char cmd[256];
	int wexit;
	pid_t pid;

	// lets me run prompt before the actual query
	while(prompt(), fgets((void *)cmd, sizeof(cmd), stdin)) {
		// Collect zombies
		while((pid = waitpid(-1, &wexit, WNOHANG)) > 0) {
			// remove pid from linked list
			pidlist_del(pid);
			debug("Backgrounded child with pid %i exited with status %i\n", pid, WEXITSTATUS(wexit));
		}

		// Cheating, print before exploded
		strstrip(cmd);
		debug("typed: '%s'\n", cmd);

		if(!runcmd(cmd, 0))
			break;
	}

	// wait until all backgrounded pids have exited (empty linked list)
	while((pid = pidlist_get()) > 0) {
		debug("\nWaiting on pid %i\n", pid);
		waitpid(pid, &wexit, 0);
		debug("Backgrounded child with pid %i exited with status %i\n", pid, WEXITSTATUS(wexit));
		pidlist_del(pid);
	}

	history_destroy();
	return 0;
}

