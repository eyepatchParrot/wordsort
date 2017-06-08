#include "trie.h"

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "constants.h"
#include "sort.h"
#include "leaf.h"

void trie_init(Trie* t) {
	t->root.type = TYPE_NONE;
	t->root.ptr.l = NULL;
}

void trie_delete(Trie* t) {
	switch (t->root.type) {
		case TYPE_LEAF:
			free(t->root.ptr.l);
			break;

		case TYPE_BRANCH:
			branch_delete(t->root.ptr.b);
			free(t->root.ptr.b);
			break;

		case TYPE_BRANCHLEAF:
			branch_leaf_delete(t->root.ptr.bl);
			free(t->root.ptr.bl);
			break;

		case TYPE_BRANCHLEAF2:
			branch_leaf_delete2(t->root.ptr.bl2);
			free(t->root.ptr.bl2);
			break;

		default:
			assert(0);
	}
}

#ifdef PROF_STACK
// have a flush for each width buffer where width is the number of chars hashed
// have a flush for full buffers and partial ones
void trie_flush(Trie *t, Entry* buf, unsigned bufSz) {
	// consolidate different size stacks into the highest size stack
	// draw an entry pointer up from leaves and branches passing in only the next
	// hash. 
	// flush will allow us to have the trie start out as a leaf node. since the
	// indirection won't be costly
	// Squash tree to reduce indirection.
	assert(t != NULL);
	// TODO look at the asm for this loop
	static void* freeBuf[BUF_SZ];
	static pull_fn pull_table[] = {0, 0, 0, branch_pull, branch_leaf_pull, branch_leaf_pull2 };
	static hash_fn hash_table[] = {0, 0, 0, lhash, lhash, lhash2 };
	int freeBufSz = 0;
	if (t->root.type == TYPE_NONE) {
		t->root.type = TYPE_LEAF;
		t->root.ptr.l = leaf_new();
	}
	for (int i = 0; i < bufSz; ++i) {
		Entry* e = buf + i;
		int depth = 0;
		Node* n = &t->root;
		switch (n->type) {
			case TYPE_LEAF:
				{
					Leaf* oldL = t->root.ptr.l;
					if (leaf_grow(&t->root, t->root.ptr.l, t->root.ptr.l->sz, t->root.ptr.l->capacity, 0)) {
						free(oldL);
					}
				}
				break;
			case TYPE_BRANCH:
				t->root = branch_grow(*n);
				break;
			case TYPE_BRANCHLEAF:
				t->root = branch_leaf_grow(*n);
				break;

			default:
				break;
		}
		while (n->type >= TYPE_BRANCH || n->type == TYPE_BRANCHLEAF || n->type == TYPE_BRANCHLEAF2) {
			hash2_t h;
			h = hash_table[n->type](e->h + (depth % NUM_HASHES));
			n = pull_table[n->type](n, h, &depth);

			assert((depth % NUM_HASHES) != 0);
		}

		hash_t* hBuf;
		if (depth % NUM_HASHES == 0) {
			hBuf = (hash_t*)e->nl + e->off + depth;
		} else {
			hBuf = e->h;
		}
		assert(n->type == TYPE_LEAF || n->type == TYPE_ENTRY);
		if (n->type == TYPE_LEAF) {
			leaf_put(n->ptr.l, hBuf, e);
		} else {
			// TODO rename to entry_set
			entry_init(n->ptr.e, hBuf, e);
		}
	}
	for (int i = 0; i < freeBufSz; i++) {
		free(freeBuf[i]);
	}
}
#endif

void trie_dump(Trie* t, char* output) {
	// consider making this work off of pull as well
	switch (t->root.type) {
		case TYPE_LEAF:
			{
				Leaf* l = t->root.ptr.l;
				entry_dump(l->item, l->sz, output, 0);
			}
			break;

		case TYPE_BRANCH:
			branch_dump(t->root.ptr.b, output, 0);
			break;
		
		case TYPE_BRANCHLEAF:
			branch_leaf_dump(t->root.ptr.bl, output, 0);
			break;

		case TYPE_BRANCHLEAF2:
			branch_leaf_dump2(t->root.ptr.bl2, output, 0);
			break;

		default:
			assert(0);
	}
}

