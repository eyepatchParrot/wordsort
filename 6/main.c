/*
 * Focus on making a trie that is better with cache lines.
 */
#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif

#include <assert.h>
#include <fcntl.h>
#include <limits.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>
#include <sys/mman.h>

#include "constants.h"
#include "trie.h"
#include "entry.h"
#include "hash.h"
#include "../../common/profile.h"
#include "../../common/file.h"

#include "stack.h"
Stack s;



void tokenizeLast(Trie *t, char *file, int sz_file);
//void testTrie();

int main(int argc, char *argv[]) {
	static Trie t;
//	testTrie();
	// args: fastsort file
	//       fastsort -N file
	char *inputFile;
	int colNum = 1;
	(void)colNum;
	char *endStr = NULL;

	// validate arguments
	assert(argc == 2 || argc == 3);
	if (argc == 2) {
		inputFile = argv[1];
	} else {
		// accept the input only if the only thing that remains is a
		// number and nothing else
		// long int strtol(const char *nptr, char **endptr, int base);
		assert(argv[1][0] == '-');
		colNum = strtol(&argv[1][1], &endStr, 10);
		assert(endStr[0] == '\0');
		inputFile = argv[2];
	}

	char *file, *out;
	int sz_file, sz_out;
	Timer timer, t0;

	profile_start(&t0);
	profile_start(&timer);
	loadFileIntoMemory(&file, &sz_file, inputFile);

	htable();

#ifdef PROFILE
	int devNull = open("/dev/null", O_WRONLY);
#define OUT_FD devNull
#else
#define OUT_FD STDOUT_FILENO
#endif

	trie_init(&t);

#ifdef PROFILE
	double loadTime = profile_reset(&timer);
#endif

	//if (colNum > MAX_COLS) {
		tokenizeLast(&t, file, sz_file);
	//}
	
#ifdef PROFILE
	double tokenTime = profile_reset(&timer);
#endif

	sz_out = sz_file; // might not end in a null terminator
	out = (char*)malloc(sz_out);
	trie_dump(&t, out);

#ifdef PROFILE
	double sortTime = profile_reset(&timer);
#endif

	ssize_t nBytesWritten;
	nBytesWritten = write(OUT_FD, out, sz_out);
	assert(nBytesWritten == sz_out);
	(void)nBytesWritten;

#ifdef PROFILE
	double writeTime = profile_reset(&timer);
#endif

#ifdef PROFILE
	double totalTime = profile_reset(&t0);
	printf("\tseconds\tpercent\n"
			   "load  %f\t%4.1f%%\n"
				 "token %f\t%4.1f%%\n"
				 "sort  %f\t%4.1f%%\n"
				 "write %f\t%4.1f%%\n"
				 "total %f\n", loadTime, loadTime / totalTime * 100.0,
				 tokenTime, tokenTime / totalTime * 100.0,
				 sortTime, sortTime / totalTime * 100.0,
				 writeTime, writeTime / totalTime * 100.0,
				 totalTime);
#endif

	trie_delete(&t);
//	munmap(file, sz_file);
	free(file);
	free(out);

	return 0;
}

char* addToken(char* nl, char* onl, char* end, Trie* t, Entry* buf, int* ix_buf, int* lastOff) {
		assert(nl - onl < 128);
		uint8_t len = nl - onl;

//		char *token = onl + *lastOff;
		char *token;

		// the below case is the only instance in which width changes
		// if this is not the start of a token or there is a token afterwards
		// don't need to check token != onl if it's nof the first one
		// use rawmemchr if it's not the last one
		//int validToken = token == onl || token[-1] <= ' ';
		//int lastToken = memchr(token, ' ', nl - token) == NULL;
		//if (!validToken || !lastToken) {
			token = memrchr(onl, ' ', len) + 1;
//			*lastOff = token - onl;
//		}

		buf[*ix_buf].nl = onl;
		buf[*ix_buf].off = token - onl;;
//		buf[*ix_buf].off = *lastOff;
		buf[*ix_buf].len = len;
		memcpy(buf[*ix_buf].h, token, 4);
		++(*ix_buf);
		if (*ix_buf == BUF_SZ) {
			trie_flush(t, buf, BUF_SZ);
			*ix_buf = 0;
		}
		return nl + 1;
}

void tokenizeLast(Trie *t, char *file, int sz_file) {
	// maybe remember the last word's length and check to see if there are ny space in that range?
	// TODO for work with other sets, consider storing both last and max
	static Entry buf[BUF_SZ];
	int lastOff = 0;
#ifdef UNSAFE
	int lastLen = 0;
#endif
	char *nl;
	char *onl = file;
	int ix_buf = 0;
	char* end = file + sz_file;

	while (end - onl > 128) {
#ifdef UNSAFE
		nl = onl + lastLen;
		if (*nl != '\n') {
			nl = rawmemchr(onl, '\n');
			lastLen = nl - onl;
		}
#else
		nl = rawmemchr(onl, '\n');
#endif
		onl = addToken(nl, onl, end, t, buf, &ix_buf,&lastOff);
	}

	// void *memchr(const void *s, int c, size_t n);
	while ((nl = memchr(onl, '\n', end - onl)) != NULL) {
		onl = addToken(nl, onl, end, t, buf, &ix_buf, &lastOff);
	}

	trie_flush(t, buf, ix_buf);
}
