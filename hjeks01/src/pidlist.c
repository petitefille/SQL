#include "pidlist.h"
#include "common.h"

#include <unistd.h> // pid_t

#define DATATYPE      unsigned char
#define DISTINCT_PIDS 65536
#define DIVISOR       (sizeof(DATATYPE)*8)

// holy crapfast way of doing things
// This method takes up 8KB of memory
DATATYPE pidtable[DISTINCT_PIDS/DIVISOR];

void pidlist_add(pid_t pid)
{
	int pos, off;
	pos = pid/DIVISOR;
	off = pid%DIVISOR;
	pidtable[pos] |= 1<<off;
}

// returns -1 if there is no pid to get
pid_t pidlist_get()
{
	unsigned int pos;
	unsigned int off;
	DATATYPE copy;

	for(pos = 0; pos < (DISTINCT_PIDS/DIVISOR); pos++) {
		if(pidtable[pos]) // something in here
			break;
	}

	if(pos == DISTINCT_PIDS/DIVISOR) // searched too far
		return -1;

	copy = pidtable[pos];

	off = 0;
	while((copy & ((DATATYPE)1<<off)) == 0 && off < DIVISOR)
		off++;

	if(off == DIVISOR) {
		err(PROGNAME ": pidlist_get(): this should NOT happen. "
		    "Pid should be in range %lu to %lu\n", pos*DIVISOR, (pos+1)*DIVISOR);
		return -1;
	}

	return (pos*DIVISOR) + off;
}

void pidlist_del(pid_t pid)
{
	int pos, off;

	pos = pid/DIVISOR;
	off = pid%DIVISOR;

	pidtable[pos] &= ~(1<<off);
}

