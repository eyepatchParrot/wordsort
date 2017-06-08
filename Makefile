CC = clang++
CFLAGS = -ggdb -Wall -std=c++11 -march=native -fno-omit-frame-pointer
PFLAGS = -O3 -DNDEBUG

.PHONY: Dsort Psort

Dsort: sort.cc
	$(CC) $(CFLAGS) $< -o $@

Psort: sort.cc
	$(CC) $(CFLAGS) $(PFLAGS) $< -o $@

time: Psort
	time ./Psort z2e6 > /dev/null

perf: Psort
	perf record -F 99 -g ./Psort z2e6 > /dev/null
	perf report

clean:
	rm -f Dsort Psort
