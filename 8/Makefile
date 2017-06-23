CC=$(HOME)/llvm/bin/clang++
CFLAGS=-O3 -std=c++11 -fno-exceptions -fno-rtti -Wall -pedantic -Werror -fno-omit-frame-pointer -ggdb
PFLAGS=-DNDEBUG
LIB=-I$(HOME)/include -L$(HOME)/lib 
.PHONY: wordsort d_wordsort
#LIB=/u/v/a/van-sandt/benchmark/src

wordsort: wordsort.cc
	$(HOME)/llvm/bin/clang++ -o $@ $(CFLAGS) $(PFLAGS) $(LIB) $< -lbenchmark -lpthread

d_wordsort: wordsort.cc
	$(HOME)/llvm/bin/clang++ -o $@ $(CFLAGS) $(LIB) $< -lbenchmark -lpthread

wordsort.ll: wordsort.cc
	$(HOME)/llvm/bin/clang++ -o $@ $(CFLAGS) -emit-llvm -S $<

clean:
	rm -f ./wordsort
