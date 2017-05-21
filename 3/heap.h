#ifndef HEAP_H
#define HEAP_H

#define NUM_HEAPS 75
#define IX(i) (i - '0')
#define IX_R(i) (i + '0')

typedef struct strHeap {
	// TODO make nl offset from token
	char *nl;
	char *key; // remainder of the key
	struct strHeap **nxt;
} strHeap;

strHeap *newHeap();
void putHeap(strHeap *h, char *s, char *nl);
void dumpHeap_h(strHeap *h, char *s, int n);
void dumpHeap(strHeap *h);
void printHeap(strHeap *h);
void freeHeap(strHeap *h);

#endif
