#ifndef __PIDLIST_H
#define __PIDLIST_H

#include <unistd.h> // pid_t

void pidlist_add(pid_t pid); /* add a pid */
pid_t pidlist_get();         /* get any one pid, return -1 if nothing to get */
void pidlist_del(pid_t pid); /* remove a pid */
#endif

