#ifndef TRIE_H
#define TRIE_H

#include <stdint.h>

#include "constants.h"
#include "hash.h"
#include "branch.h"

typedef struct Trie_t {
	Node root;
} Trie;

struct Entry;

void trie_init(Trie* t);
void trie_delete(Trie* t);
void trie_flush(Trie* t, struct Entry* buf, unsigned bufSz);
void trie_dump(Trie* t, char* output);

#endif

