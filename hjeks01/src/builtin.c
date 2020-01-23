#include "ifish.h"
#include "builtin.h"
#include "common.h"
#include "history.h"
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

typedef struct builtin_func_t builtin_func;

struct builtin_func_t {
	const char *name;
	builtin_ret (*func)(int argc, char **argv);
};

builtin_ret b_type   (int argc, char **argv);
builtin_ret b_quit   (int argc, char **argv);
builtin_ret b_history(int argc, char **argv);
builtin_ret b_cd     (int argc, char **argv);
builtin_ret b_pwd    (int argc, char **argv);

const builtin_func func[] = {
	{ .name = "quit",    .func = b_quit    },
	{ .name = "exit",    .func = b_quit    },
	{ .name = "type",    .func = b_type    },
	{ .name = "h",       .func = b_history },
	{ .name = "history", .func = b_history },
	{ .name = "cd",      .func = b_cd      },
	{ .name = "pwd",     .func = b_pwd     },
	{ .name = NULL,      .func = NULL      }
};
int recursed;

builtin_ret b_pwd(int argc, char **argv)
{
	char *path = getcwd(NULL, 0);

	printf("%s\n", path);
	free(path);
	return 0;
}

builtin_ret b_cd(int argc, char **argv)
{
	char *path;
	int ret;

	if(argc < 2)
		path = getenv("HOME");
	else
		path = argv[1];

	ret = chdir(path);
	debug("path = %s\n", path);

	if(ret != 0)
		err(PROGNAME ": Could not cd to %s\n", path);
	return 0;
}

builtin_ret b_history(int argc, char **argv)
{
	history_meta *cur;
	int num  = history_num_entries();
	int off  = 0;
	argv[0] += 0;
#ifdef DEBUG
	history_debug_bitmap();
	history_debug_blocks();
#endif

	if(argc <= 1) {
		history_meta **ptr;

		ptr = malloc(sizeof(history_meta *)*num);
		cur = history_get_first();
		while(cur) {
			ptr[off++] = cur;
			cur = cur->next;
		}

		printf("\nHistory list of the %i last commands:\n", num);
		for(off = num - 1; off >= 0; off--)
			printf("%02i: %s\n", off+1, history_str(ptr[off]));
		free(ptr);
	} else if(argc == 2) {
		off = atoi(argv[1]);
		const char *cmd;
		if(recursed) {
			err(PROGNAME ": h <i> does not repeat recursively\n");
			return 0;
		}
		if(off < 1 || off > num) {
			err(PROGNAME ": Invalid offset to execute: %i\n", off);
			return 0;
		}
		cur = history_get_first();
		while(off > 1) {
			cur = cur->next;
			off--;
		}
		cmd = history_str(cur);
		debug("Builtin history: running '%s'\n", cmd);

		// Reminder: runcmd is external and 0 signifies program exit, not B_EXIT
		// Not sure how you would cause this to happen, but who knows what future builtins might do?
		if(!runcmd(cmd, 1))
			return B_EXIT;
	} else if(argc > 2 && !strcmp(argv[1], "-d")) {
		off = atoi(argv[2]);
		if(off < 1 || off > num) {
			err(PROGNAME ": Invalid offset to delete: %i\n", off);
			return 0;
		}
		cur = history_get_first();
		while(off > 1) {
			cur = cur->next;
			off--;
		}
		debug("Deleting history string %s\n", history_str(cur));
		history_delete(cur);
	}
	return 0;
}

builtin_ret b_type(int argc, char **argv)
{
	int i, j;
	char isbuiltin;
	for(i = 1; i < argc; i++) {
		isbuiltin = 0;
		for(j = 0; func[j].name; j++)
			if(!strcmp(func[j].name, argv[i])) {
				isbuiltin=1;
				break;
			}
		if(isbuiltin) {
			printf("%s is a shell builtin\n", argv[i]);
		} else {
			printf("%s is not a builtin\n", argv[i]);
		}
	}
	return 0;
}

builtin_ret b_quit(int argc, char **argv)
{
	return B_EXIT;
}

builtin_ret builtin_run(const char *name, char **argv, char rec)
{
	int i;
	int argc;
	for(argc=0;argv[argc];argc++);

	if(rec) {
		recursed = 1;
	} else {
		recursed = 0;
	}
	for(i = 0; func[i].name; i++) {
		if(!strcmp(func[i].name, name)) {
			return func[i].func(argc, argv);
		}
	}
	return B_DID_NOT_RUN;
}

