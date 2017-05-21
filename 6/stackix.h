#ifndef STACKIX_H
#define STACKIX_H

struct StackNode;

typedef struct StackIx {
	struct StackNode* n;
	int ix;
} StackIx;

#endif
