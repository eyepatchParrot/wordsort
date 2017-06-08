#include "leaf.h"

#include <stdlib.h>
#include <string.h>

#include "trie.h"
#include "node.h"

Leaf* leaf_new() {
	Leaf* l = (Leaf*)malloc(sizeof(Leaf) + sizeof(Entry) * LEAF_SZ);
	leaf_init(l);

	return l;
}

void leaf_init(Leaf* l) {
#ifndef NDEBUG
	memset(l->item, 0, sizeof(Entry) * LEAF_SZ);
#endif
	l->sz = 0;
	l->capacity = LEAF_SZ;
}


int leaf_grow(Node* n, Leaf* l, int sz, int capacity, int depth) {
	assert(n != NULL && capacity > 0);
	if (sz == capacity) {
		n->type = TYPE_BRANCH;
		n->ptr.b = leaf_pop(l, depth);
		return 1;
	}
	return 0;
}

void leaf_delete(Leaf* l) {
}

void leaf_put(Leaf* l, hash_t* h, const Entry* src) {
	assert(l != NULL);
	assert(l->sz < l->capacity);
	entry_init(l->item + l->sz, h, src);
	l->sz++;
}

// TODO find a way to drop the depth, it works if we stop caching in the trie
Branch* leaf_pop(Leaf* l, int depth) {
	assert(l != NULL && l->sz == LEAF_SZ);
	return entry_pop(l->item, l->sz, depth);
}
