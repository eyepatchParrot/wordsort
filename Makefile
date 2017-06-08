CC = clang++
CFLAGS = -ggdb -Wall -std=c++11 -march=native
PFLAGS = -O3 -DNDEBUG

.PHONY: Dsort Psort

Dsort: sort.cc
	$(CC) $(CFLAGS) $< -o $@

Psort: sort.cc
	$(CC) $(CFLAGS) $(PFLAGS) $< -o $@

clean:
	rm -f Dsort Psort
