#ifndef TRIE_INODE_H
#define TRIE_INODE_H

#include <sys/types.h>
#include "idx.h"
#include "trie_leaf.h"

// TODO Consider always storing the nodes to avoid the isLeaf business.
// TODO Make sorting work on an index of the leaves on a per-buffer basis
// TODO Consider removing the file + offset indirection, for now it's a big improvement

//#define W 64
typedef uint64_t bmap;
#define BMAP_SZ(N) ((N + W - 1) / W)
#define BMAP_MASK(I) (1ULL << (I % W))
#define BMAP_GET(M, I) (M[I / W] & BMAP_MASK(I))
#define BMAP_ON(M, I) (M[I / W] = (M[I / W] | BMAP_MASK(I)))
#define BMAP_OFF(M, I) (M[I / W] = (M[I / W] & ~BMAP_MASK(I)))
#define BMAP_ZERO(M, I) (M[I / W] = 0)

//#define SPACE ((IX_RANGE + BFR_SZ - 1) / BFR_SZ)
#define IS_NODE (1 << 30)
typedef struct __trie_inode {
	// TODO: improve access efficiency making it a struct of arrays
	// TODO consider shrinking the size of sz_bfr
	// TODO consider extending sz_bfr to include invalid bit
	int sz_bfr[IX_RANGE];
	union {
		struct __trie_inode *node;
		trie_entry l[BFR_SZ];
	} kid[IX_RANGE];
} trie_inode;

void trie_inode_new(trie_inode *n);
void trie_inode_put(trie_inode *n, char *file, int key, int val);
char* trie_inode_dump(trie_inode *n, char *file, char* output, int depth);
void trie_inode_free(trie_inode *n, int isRoot);

#endif
