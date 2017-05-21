#ifndef BRANCH_H
#define BRANCH_H

#include <stdint.h>

#include "constants.h"
#include "hash.h"
#include "leaf.h"
#include "node.h"

struct Branch;

typedef struct Branch {
	int capacity;
	int numLeaves;
	int numBranches;
	Node kid[BRANCH_SZ];
	Leaf l[0];
} Branch;

typedef struct BranchLeaf {
	int numBranches;
	Node kid[BRANCH_SZ];
	int sz[BRANCH_SZ];
	Entry e[BRANCH_SZ][LEAF_SZ];
} BranchLeaf;

typedef struct BranchLeaf2 {
	Node kid[BRANCH_SZ2];
	int sz[BRANCH_SZ2];
	Entry e[BRANCH_SZ2][LEAF_SZ];
} BranchLeaf2;

Branch* branch_new();
void branch_init(Branch* b);
void branch_delete(Branch* b);
void branch_leaf_delete(BranchLeaf* bl);
void branch_leaf_delete2(BranchLeaf2* bl);
void branch_leaf_delete_h(Node* kids);
Node branch_grow(Node n);
Node branch_leaf_grow(Node n);

Node* branch_pull(Node* n, hash2_t h, int* depth); 
Node* branch_leaf_pull(Node* bl, hash2_t h, int* depth); 
Node* branch_leaf_pull2(Node* bl2, hash2_t h, int* depth);
Node* branch_leaf_pull_h(Node* n, Entry* entries, int* sz, int depth);

typedef Node* (*pull_fn)(Node*, hash2_t, int*);

char* branch_dump(Branch *b, char* output, int depth);
char* branch_leaf_dump(BranchLeaf* b, char* output, int depth);
//char* branch_leaf_dump_h(char* output, Node *kids, int *szs, Entry entries[][LEAF_SZ], int depth);
char* branch_leaf_dump_h(char* output, Node *n, int *sz, Entry *entries, int depth);
char* branch_leaf_dump2(BranchLeaf2* bl2, char* output, int depth);

#endif
