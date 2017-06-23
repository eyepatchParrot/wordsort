CC=$(HOME)/llvm/bin/clang++
CFLAGS=-std=c++11 -fno-exceptions -fno-rtti -Wall -pedantic -Werror -fno-omit-frame-pointer -ggdb -Winline
PFLAGS=-DNDEBUG -O3
LIB=-I$(HOME)/include -L$(HOME)/lib 
.PHONY: wordsort d_wordsort test test_e
#LIB=/u/v/a/van-sandt/benchmark/src
d_wordsort: wordsort.cc
	$(HOME)/llvm/bin/clang++ -o $@ $(CFLAGS) $(LIB) $< -lbenchmark -lpthread

wordsort: wordsort.cc
	$(HOME)/llvm/bin/clang++ -o $@ $(CFLAGS) $(PFLAGS) $(LIB) $< -lbenchmark -lpthread

wordsort.ll: wordsort.cc
	$(HOME)/llvm/bin/clang++ -o $@ $(CFLAGS) -emit-llvm -S $<

clean:
	rm -f ./wordsort

test: test.cc
	$(CC) -o $@ $(CFLAGS) $<

test_e: test.cc
	$(CC) -E -o $@ $<
