/*
 * Store a tuple in an array half the length of the file, then distribute across a structure that will actually contain the tuples.
 *  Consider if any part of the key should be cached.
 *              a count should be maintained of the size of each bucket.
 * Distribute the results into appropriately sized buckets for each distribution.
 * Sort each bucket, and copy the results to an output buffer.
 *  Consider if the copy process should be separated once the bucket is sorted.
 * Write the output buffer to stdout.
 *  Consider if the buffer should be written in progressive chunks of smaller size (4K for example)
 * TODO add error checking
 */
#include <string.h>
#include <stdio.h>
#include <assert.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdint.h>

typedef struct {
  char* start;
  // try adding in a cache
  uint8_t token_off;
  uint8_t len;
} token;

int tokenize(char* file, int file_sz, token* bfr, int token_n);
void dump(token* token_bfr, int n_tokens, char* print_bfr);
int min(int a, int b);

int main(int argc, char* argv[]) {
  // load file
  assert(argc > 2);
  char* path = argv[1];
  int word_n;
  sscanf(argv[2], "%d", &word_n);
  
  int fd = open(path, O_RDONLY);
  assert(fd >= 0);
  // is stat faster than fstat?
  struct stat my_fstat;
  assert(stat(path, &my_fstat)==0);

  // make space for the file plus a terminating character
  int file_sz = my_fstat.st_size + 1;
  char* file = (char*)malloc(file_sz);
  assert(file != NULL);
  assert(read(fd, file, my_fstat.st_size)==my_fstat.st_size);
  file[file_sz-1]='\n';

  // tuple buffer
  int max_lines = file_sz / 2;
  token* token_bfr = (token*)malloc(sizeof(token)*max_lines);
  int n_tokens = tokenize(file, file_sz, token_bfr, word_n);

  char* print_bfr = (char*)malloc(file_sz);
  dump(token_bfr, n_tokens, print_bfr);
  return 0;
}

int min(int a, int b) {
  return b > a ? b : a;
}

token tokenize_line(char* start, char* end_file, int word_n) {
  const int max_line_len = 128;

  // we guarantee always to have a newline character
  // does the size of the search impact performance?
  // just use rawmemchr:w

  char* end_line = memchr(start, '\n', min(end_file-start, max_line_len));

  int word_ix = 1;
  char* iter = start;
  while (iter < end_line && word_ix < word_n) {
    // find end of word
    // should strchr be used here?
    char* next_word = iter;
    while (next_word < end_line && *next_word > ' ') {
      next_word++;
    }
    if (next_word == end_line) {
      break;
    }
    // *next_word is guaranteed to be a space
    while (next_word < end_line && *next_word <= ' ') {
      next_word++;
    }
    iter = next_word < end_line ? next_word : iter;
    word_ix++;
  }
  // either word_ix == word_n or this is the last word
  return (token){.start = start, .token_off = iter - start,
    .len = end_line - start};
}

int tokenize(char* file, int file_sz, token* bfr, int word_n) {
  int bfr_ix = 0;

  // special case for large word_n
  for (char* iter = file; iter < file + file_sz;
    iter = bfr[bfr_ix].start + bfr[bfr_ix].len + 1, bfr_ix++) {
    bfr[bfr_ix] = tokenize_line(iter, file+file_sz, word_n);
  }
  return bfr_ix;
}

void dump(token* token_bfr, int n_tokens, char* print_bfr) {
  for (int i = 0; i < n_tokens; i++) {
    int sz_token = 0;
    char* token_iter = token_bfr[i].start + token_bfr[i].token_off;
    // what about two calls to memchr?
    while (sz_token < 128 && token_iter[sz_token] > ' ') {
      sz_token++;
    }
    token_bfr[i].start[token_bfr[i].len] = '\0';
    printf("%s\n", token_bfr[i].start);
    token_iter[sz_token] = '\0';
    printf("%s\n", token_iter);
  }
}
