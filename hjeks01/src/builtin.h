#ifndef __BUILTIN_H
#define __BUILTIN_H

#include "history.h"

typedef unsigned char builtin_ret;
#define B_DID_NOT_RUN 1
#define B_EXIT        2

/* Get a zero-terminated array of builtins */
builtin_ret builtin_run(const char *name, char **argv, char recursed);

#endif

