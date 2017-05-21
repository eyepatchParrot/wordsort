#ifndef TRIE_LEAF_H
#define TRIE_LEAF_H

#include "idx.h"

struct __trie_inode;
//#define BFR_SZ (1 << 20)
//#define BFR_SZ 4
#if IX_BYTES < 3
#define BFR_SZ (1 << 2)
#else
#define BFR_SZ (1 << 4)
#endif

typedef struct {
	sKey_t key;
	uint8_t tok;
	int val;
} trie_entry;

char* trie_leaf_dump(int sz_bfr, trie_entry bfr[], char *file, char* output);
void leaf_sort(int sz_bfr, trie_entry bfr[], char *file);

#endif
