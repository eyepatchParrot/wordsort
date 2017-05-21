#define _GNU_SOURCE

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "file.c"
#include "heap.h"

#define MAX_COLS  64

void tokenizeLast(strHeap *h, char *file) {
	const char *lineTooLong = "Line too long\n";

	char *nxtSp = strchrnul(file, ' ');
	char *nl;
	int ix_line = 0;
	char *onl = file;
	while ((nl = strchr(onl, '\n')) != NULL) {
#ifndef PROFILE
		if (nl - onl >= 128) {
			fprintf(stderr, lineTooLong);
			exit(1);
		}
#endif

		*nl = '\0';
		char *token = onl;
		if (nxtSp < nl) {
			token = strrchr(token, ' ') + 1;
		}

		putHeap(h, token, onl);
		++ix_line;
		onl = nl + 1;
	}
}

int main(int argc, char *argv[]) {
	// args: fastsort file
	//       fastsort -N file
	char *inputFile;
	char *badArgs = "Error: Bad command line parameters\n";
	int areArgsValid = 0;
	int colNum = 1;
	char *endStr = NULL;

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
		fprintf(stderr, badArgs);
		exit(1);
	}

	char *file;
	int sz_file;
	loadFileIntoMemory(&file, &sz_file, inputFile);

	strHeap *h = newHeap();
//	if (colNum > MAX_COLS) {
		tokenizeLast(h, file);
//	}
	
#ifndef PROFILE
//	printHeap(h);
	dumpHeap(h);
#endif

	freeHeap(h);
	free(file);

	return 0;
}

