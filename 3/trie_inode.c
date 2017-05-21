#define _GNU_SOURCE

#include "trie_inode.h"
#include "trie_leaf.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void trie_inode_new(trie_inode *n) {
	memset(n->sz_bfr, 0, IX_RANGE * sizeof(int));
#ifdef SPACE
	memset(n->kid, -1, IX_RANGE * BFR_SZ * sizeof(int));
#endif
}

void trie_inode_put(trie_inode *n, char *file, int key, int val) {
	// TODO try never having full capacity to improve the shifting issues
	int ix = IX(file + key);

	while (n->sz_bfr[ix] == IS_NODE) {
		key += IX_BYTES;
		n = n->kid[ix].node;
		ix = IX(file + key);
	}

	// definitely at a leaf now

	trie_entry *bfr = n->kid[ix].l;
	key += IX_BYTES;

	if (n->sz_bfr[ix] < BFR_SZ) {
		// there's room
		// find a space
#ifdef SPACE
		int iKey = IX(key);
		int ix_bfr = iKey / SPACE;
		int back = 0;
		while (bfr[ix_bfr].key != -1) {
			// while there's no room where we want, adjust
			if (back == 0) {
				if (bfr[ix_bfr].key > iKey) {
					--ix_bfr;
					back = 1;
				} else {
					++ix_bfr;
				}
			} else {
				if (bfr[ix_bfr].key > iKey) {
					--ix_bfr;
				} else {
					// insert here
					//
			if (bfr[ix_bfr].key > iKey) {
				if (hitMax == 0) {
					hitMax = 
				if (max == -1) {
					max


		// if there's room here, use it
		if (bfr[ix_bfr].i == -1) {
#endif

		int sz_bfr = n->sz_bfr[ix];
		bfr[sz_bfr].tok = key - val;
		bfr[sz_bfr].val = val;
		++(n->sz_bfr[ix]);
	} else {
		// need to split, so all will be added to the child
		trie_inode *new = malloc(sizeof(trie_inode));
		trie_inode_new(new);
		// uses BFR_SZ because it must be that *sz_bfr == BFR_SZ
		for (int ix_bfr = 0; ix_bfr < BFR_SZ; ++ix_bfr) {
			int k = bfr[ix_bfr].key;
			int v = bfr[ix_bfr].val;
			trie_inode_put(n, file, k, v);
		}
		if (n->sz_bfr[ix] >= BFR_SZ || new != NULL) {
			n->kid[ix].node = new;
			n->sz_bfr[ix] = IS_NODE;
			trie_inode_put(n->kid[ix].node, file, key, val);
		}
	}
}

char* trie_inode_dump(trie_inode *n, char *file, char* output, int depth) {
	static int numNodes = 0;
	int kids = 0;
	++numNodes;
	for (int i = 0; i < IX_RANGE; ++i) {
		// TODO consider saving whether a whole block of things are leaves to make dump go faster
		if (n->sz_bfr[i] != 0 && n->sz_bfr[i] != IS_NODE) {
			output = trie_leaf_dump(n->sz_bfr[i], n->kid[i].l, file, output);
			kids += n->sz_bfr[i];
		} else if (n->sz_bfr[i] == IS_NODE) {
			output = trie_inode_dump(n->kid[i].node, file, output, depth + 1);
		}
	}
//	printf("%d kids %d  numNodes %d\n", depth, kids, numNodes);
	return output;
}

void trie_inode_free(trie_inode *n, int isRoot) {
	for (int i = 0; i < IX_RANGE; ++i) {
		if (n->sz_bfr[i] == IS_NODE) {
			trie_inode_free(n->kid[i].node, 0);
		}
	}
	if (isRoot == 0) {
		free(n);
	}
}
