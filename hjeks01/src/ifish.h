#ifndef __IFISH_H
#define __IFISH_H
#include "history.h"
#include "builtin.h"

/*
 * Recursed = 0 if the command originates from the user
 * Recursed = 1 if the command originates from another command.
 * */
char runcmd(const char *cmd, char recursed);

#endif

