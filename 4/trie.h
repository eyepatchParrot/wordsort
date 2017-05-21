#ifndef TRIE_H
#define TRIE_H

// Since this isn't C++, we have to have a node struct for each expected D

struct link_t;

typedef struct {
	int numLeaves;
	struct link_t *links;
} anode;

typedef struct link_t {
	int dim;
	union {
		stack *l;
		anode *n;
	} node;
} link_t;
