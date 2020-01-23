# Makefile.inc

CC := gcc
# Debug preset
CFLAGS := -O0 -Wall -pg -g3 -DDEBUG
# Production
#CFLAGS := -O3 -Wall

# Set explicit wc/ps paths
# CFLAGS += -DPSPATH=\"/bin/\" -DWCPATH=\"/store/bin/\"

