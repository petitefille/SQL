include ../Makefile.inc

GLOBALDEPS=../Makefile.inc

.PHONY: clean

ifish: defined.o history.o safefork.o pidlist.o ifish.o

clean:
	rm -fv *.o ifish

# Dependencies per .c-file

defined.o:  defined.c  defined.h  common.h history.h ifish.h $(GLOBALDEPS)
history.o:  history.c  history.h  common.h $(GLOBALDEPS)
safefork.o: safefork.c safefork.h common.h $(GLOBALDEPS)
pidlist.o:  pidlist.c  pidlist.h  common.h $(GLOBALDEPS)
ifish.o:    ifish.c    ifish.h    common.h defined.h safefork.h history.h pidlist.h $(GLOBALDEPS)

