#define _GNU_SOURCE
#include <assert.h>
#include <fcntl.h>
#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>

// change this so that we track the length of a line at tokenization to avoid strlen

#include "trie.h"
#include "idx.h"
#include "../../common/file.h"
#include "../../common/profile.h"

#define MAX_COLS  64
#define CACHE_SZ (1 << 8)

#define ERR_LONGLINE "Line too long\n"
#define ERR_BADARGS "Error: Bad command line parameters\n"

int devNull;


void tokenizeLast(trie *t, char *file);

int main(int argc, char *argv[]) {
	// args: fastsort file
	//       fastsort -N file
	char *inputFile;
	int areArgsValid = 0;
	int colNum = 1;
	char *endStr = NULL;
	struct timespec timer, t0;

	// validate arguments
	if (argc == 2) {
		inputFile = argv[1];
		areArgsValid = 1;
	} else if (argc == 3 && argv[1][0] == '-') {
		// accept the input only if the only thing that remains is a
		// number and nothing else
		// long int strtol(const char *nptr, char **endptr, int base);
		colNum = strtol(&argv[1][1], &endStr, 10);
		if (endStr[0] == '\0') {
			inputFile = argv[2];
			areArgsValid = 1;
		}
	}
	if (areArgsValid == 0) {
		fprintf(stderr, ERR_BADARGS);
		exit(1);
	}

	(void)colNum; // silence unused warning

	char *file;
	char* output;
	int sz_file;
	profile_start(&t0);
	timer = t0;

	loadFileIntoMemory(&file, &sz_file, inputFile);
	int sz_out = sz_file + 1;
	output = (char*)malloc(sz_file);
#ifdef PROFILE
	devNull = open("/dev/null", O_WRONLY);
	assert(devNull);
#endif

	profile_resetReport(&timer, "%gs to load\n");

	trie *t = (trie*)malloc(sizeof(trie));
	trie_new(t);
	gen_cVal();
	profile_resetReport(&timer, "%gs to construct\n");

//	if (colNum > MAX_COLS) {
		tokenizeLast(t, file);
//	}
		profile_resetReport(&timer, "%gs to tokenize\n");
	
	trie_dump(t, file, output);

	profile_resetReport(&timer, "%gs to sort and dump\n");

	//ssize_t write(int fd, const void *buf, size_t count);
	ssize_t numBytesWritten;
#ifdef PROFILE
	numBytesWritten = write(devNull, output, sz_out);
#else
	numBytesWritten = write(STDOUT_FILENO, output, sz_out);
#endif
	assert(numBytesWritten == sz_out);
	profile_resetReport(&timer, "%gs to write\n");
	profile_resetReport(&t0, "%gs total\n");

	trie_free(t);
	free(t);
	free(file);

	return 0;
}

void tokenizeLast(trie *t, char *file) {
	// maybe remember the last word's length and check to see if there are ny space in that range?
	// TODO for work with other sets, consider storing both last and max
	int lastW = INT_MAX;
	char *nl;
	char *onl = file;
	while ((nl = strchr(onl, '\n')) != NULL) {
#ifndef PROFILE
		if (nl - onl >= 128) {
			fprintf(stderr, ERR_LONGLINE);
			exit(1);
		}
#endif

		*nl = '\0';

		// look for the token
		// may need to + or - lastW to avoid starting at ' '
		char *token = ((int64_t)nl - lastW) < (int64_t)onl ? onl : nl - lastW;

		// the below case is the only instance in which width changes
		// if this is not the start of a token or there is a token afterwards
		if ((token == onl || token[-1] <= ' ') == 0 || strchr(token, ' ') != NULL) {
			token = strrchr(onl, ' ') + 1;
			lastW = nl - token;
		}

		trie_put(t, file, token - file, onl - file);
		onl = nl + 1;
	}
}

