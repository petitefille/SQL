# Makefile.inc

CC := gcc
# Debug preset
CFLAGS := -O0 -Wall -pg -g3 -DDEBUG
# Production
#CFLAGS := -O3 -Wall

# Set explicit wc/ps paths
# CFLAGS += -DPSPATH=\"/bin/\" -DWCPATH=\"/store/bin/\"

.PHONY: all clean tar

all: ifish

tar: clean
	mkdir -p haakosho
	cp -r src haakosho/
	cp Makefile haakosho/
	cp Makefile.inc haakosho/
	cp README.md haakosho/
	tar -zcf haakosho.tgz haakosho/
	rm -rf haakosho/

clean:
	$(MAKE) -C src clean
	rm -rfv ifish haakosho.tgz

src/ifish:
	$(MAKE) -C src ifish

ifish: src/ifish
	cp src/ifish .

