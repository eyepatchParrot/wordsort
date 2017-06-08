#ifndef NODE_H
#define NODE_H

// guarantee that items of increasing size are in increasing order
typedef enum { TYPE_NONE, TYPE_ENTRY, TYPE_LEAF, TYPE_BRANCH, TYPE_BRANCHLEAF, TYPE_BRANCHLEAF2 } Type;

typedef struct Node {
	union {
		Leaf* l;
		struct Branch* b;
		struct BranchLeaf* bl;
		struct BranchLeaf2* bl2;
		struct Entry* e;
	} ptr;
	Type type;
} Node;

#endif
