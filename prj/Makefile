CC = gcc
CFLAGS = -ggdb -Wall -std=gnu99 -march=native
PFLAGS = -O3 -DNDEBUG -DPROFILE

.PHONY: d_fastsort p_fastsort

d_fastsort: fastsort.c
	$(CC) $(CFLAGS) $< -o $@

p_fastsort: fastsort.c
	$(CC) $(CFLAGS) $(PFLAGS) $< -o $@
