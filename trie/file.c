#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif

#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>

#define ERROR_MALLOCFAIL  "malloc failed\n"
#define ERROR_NOSTATS  "Error getting stats on file\n"
#define ERROR_NOLOAD  "Error loading file into memory\n"
#define ERROR_NOOPEN  "Error: Cannot open file %s\n"

void loadFileIntoMemory(char **buffer, int *sz_buffer, char *inputFile) {
	struct stat fileStat;
	if (stat(inputFile, &fileStat) == -1) {
		fprintf(stderr, ERROR_NOSTATS);
		exit(1);
	}
	*sz_buffer = fileStat.st_size; // + 1 for null terminator

	if ((*buffer = (char*)malloc(*sz_buffer)) == NULL) {
		fprintf(stderr, ERROR_MALLOCFAIL);
		exit(1);
	}

	int fd = open(inputFile, O_RDONLY);
	if (fd == -1) {
		fprintf(stderr, ERROR_NOOPEN, inputFile);
		exit(1);
	}

	if (read(fd, *buffer, *sz_buffer) < 1) {
		fprintf(stderr, ERROR_NOLOAD);
		exit(1);
	}

	close(fd);
}

