#ifndef LEAF_H
#define LEAF_H

#include "constants.h"
#include "entry.h"

typedef struct Branch Branch;
typedef struct Node Node;

typedef struct Leaf {
	int capacity;
	int sz;
	Entry item[0];
} Leaf;

typedef struct Leaf1 {
	Leaf l;
	Entry item[LEAF_SZ1];
} Leaf1;

Leaf* leaf_new();
void leaf_init(Leaf* l);
void leaf_delete(Leaf* l);
// this has a depth so that it can be hashed
void leaf_put(Leaf* l, hash_t* h,  const Entry* src);
//Node leaf_pull(Node** n, Leaf* l, hash_t h, int depth);
int leaf_grow(Node* n, Leaf* l, int sz, int capacity, int depth);
Branch* leaf_pop(Leaf* l, int depth);

#endif
