#ifndef TRIE_H
#define TRIE_H

#include "trie_inode.h"
#include "idx.h"

// this is just a wrapper. Consider using just inode if performance is a concern

typedef struct {
	trie_inode root;
} trie;

void trie_new(trie *t);
void trie_put(trie *t, char *file, int key, int val);
void trie_dump(trie *t, char *file, char* output);
void trie_free(trie *t);
#endif
