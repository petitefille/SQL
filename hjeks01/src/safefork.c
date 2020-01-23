#include "common.h"
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/errno.h>

extern int errno;

#define MAX_PROCESSES 6

static int n_processes()
{
	return system("exit `" PSPATH "ps | " WCPATH "wc -l`")/256;
}

pid_t safefork(void)
{
	static int n_initial = -1;

	if(n_initial == -1) {
		// First time this function is called
		n_initial = n_processes();
	} else if(n_processes() >= n_initial+MAX_PROCESSES) {
		err("Safefork: Preventing fork (%i running, %i max + %i initial = %i limit)\n",
		    n_processes(), MAX_PROCESSES, n_initial, n_initial+MAX_PROCESSES);
		sleep(2);
		errno = EAGAIN;
		return (pid_t)-1;
	}

	return fork();
}

