CFLAGS=-O3 -std=c++11 -fno-exceptions -fno-rtti -Wall -pedantic -Werror -I$(HOME)/include -fno-omit-frame-pointer -DNDEBUG -ggdb
LIB=-L$(HOME)/lib 
#LIB=/u/v/a/van-sandt/benchmark/src
wordsort: wordsort.cc
	$(HOME)/llvm/bin/clang++ -o $@ $(CFLAGS) $(LIB) $< -lbenchmark -lpthread

wordsort.ll: wordsort.cc
	$(HOME)/llvm/bin/clang++ -o $@ $(CFLAGS) -emit-llvm -S $<

clean:
	rm -f ./wordsort
