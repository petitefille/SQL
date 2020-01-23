#ifndef __COMMON_H
#define __COMMON_H

#include <stdio.h>

//#define PROGNAME           "iFish"
#define PROGNAME            "ifish"

#define err(fmt, args...)   fprintf(stderr, fmt, ## args)

// Debugging: if defined, do something. Else just replace it with NULL and let the compiler clean it up
#ifdef DEBUG
#define debug(fmt, args...) fprintf(stderr, "DEBUG: " fmt, ## args)
#else
#define debug(fmt, args...)
#endif

// default paths
#ifndef WCPATH
#define WCPATH ""
#endif

#ifndef PSPATH
#define PSPATH ""
#endif


#endif

