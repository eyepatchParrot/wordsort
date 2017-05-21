#ifndef STACK_H
#define STACK_H

// TODO try storing the size info in head to avoid duplication
// this should probably be *much* bigger for storing move pointer pairs
#define STACK_MINSZ (1 << 5)

#include <stdint.h>
#include "entry.h"

#ifndef STACK_MAIN
typedef Entry Val;
//typedef struct MvPair Val;
#else
typedef int Val;
#endif

// TODO consider a pushN function for speed benefits

typedef struct StackNode {
	struct StackNode* prev;
	struct StackNode* next;
	unsigned sz;
	unsigned capacity;
	Val data[0];
} StackNode;

// make head size dynamic
typedef struct Stack {
	unsigned sz;
	unsigned capacity;
	StackNode* tail;
	StackNode head;
	Val headData[STACK_MINSZ]; // need to hae a place for head's data
} Stack;

// interface
void stack_init(Stack* s);
Val* stack_push(Stack* s, const Val* v);
// make room for n vals, and return the starting index in the node
// this is to be used with pollNode
//int stack_request(Stack* s, int n);
void stack_pushBuf(Stack* s, const Val* buf, int sz);
Val stack_pop(Stack* s);
void stack_clear(Stack* s); // TODO make this fast
void stack_toArr(Stack* s, Val* arr);
int stack_isEmpty(Stack * s);
StackNode* stack_dropTail(Stack* s);
void stack_delete(Stack* s);

StackNode* node_new(unsigned capacity, StackNode* prev, StackNode* next);
void node_init(StackNode* n, unsigned capacity, StackNode* prev, StackNode* next);

#endif
	
