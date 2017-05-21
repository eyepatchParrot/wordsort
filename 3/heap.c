#include <stdlib.h>
#include <stdio.h>
#include "heap.h"

// move to multi-character indices

strHeap *newHeap() {
	strHeap *h = (strHeap*)malloc(sizeof(strHeap));
	h->nl = NULL;
	h->nxt = NULL;

	return h;
}

void putHeap(strHeap *h, char *s, char *nl) {
	// make it only split if necessary.
	if (*s <= ' ' || (h->nxt == NULL && h->nl == NULL)) {
		// have to add it here since there's no more data
#ifndef PROFILE
		if (h->nl != NULL) {
			fprintf(stderr, "Duplicate key.");
			exit(1);
		} else {
#endif
			h->nl = nl;
			h->key = s;
#ifndef PROFILE
		}
#endif
	} else if (*s > ' ') {
		// you want to traverse as far as possible
		if (h->nl != NULL && h->nxt == NULL) {
			// split
			h->nxt = (strHeap**)malloc(sizeof(strHeap*) * NUM_HEAPS);
			int ix_nxt;
			for (ix_nxt = 0; ix_nxt < NUM_HEAPS; ++ix_nxt) {
				h->nxt[ix_nxt] = NULL;
			}

			// put what's currently here one step further
			int ix_o = IX(*(h->key));
			h->nxt[ix_o] = (strHeap*)malloc(sizeof(strHeap));
			h->nxt[ix_o]->nl = h->nl;
			h->nxt[ix_o]->key = h->key + 1;
			h->nxt[ix_o]->nxt = NULL;
			h->nl = h->key = NULL;
		}

		int ix_s = IX(*s);
		if (h->nxt[ix_s] == NULL) {
			h->nxt[ix_s] = (strHeap*)malloc(sizeof(strHeap));
			h->nxt[ix_s]->nl = h->nxt[ix_s]->key = NULL;
			h->nxt[ix_s]->nxt = NULL;
		}

		putHeap(h->nxt[ix_s], s + 1, nl);
	}
//	if (*s > ' ') {
//		if (h->nxt == NULL) {
//			h->nxt = (strHeap**)malloc(sizeof(strHeap*) * NUM_HEAPS);
//			int ix_nxt;
//			for (ix_nxt = 0; ix_nxt < NUM_HEAPS; ++ix_nxt) {
//				h->nxt[ix_nxt] = NULL;
//			}
//		}
//
//		int ix_s = IX(*s);
//		if (h->nxt[ix_s] == NULL) {
//			h->nxt[ix_s] = (strHeap*)malloc(sizeof(strHeap));
//			h->nxt[ix_s]->nl = NULL;
//			h->nxt[ix_s]->nxt = NULL;
//		}
//		putHeap(h->nxt[ix_s], s + 1, nl);
//	} else {
//		h->nl = nl;
//	}
}

void dumpHeap_h(strHeap *h, char *s, int n) {
	if (h->nl != NULL) {
		s[n] = '\0';
		printf("%s %p\n", s, h->nl);
	}
	if (h->nxt != NULL) {
		int ix_char;
		for (ix_char = 0; ix_char < NUM_HEAPS; ++ix_char) {
			s[n] = '\0';
			if (h->nxt[ix_char] != NULL) {
				s[n] = IX_R(ix_char);
				dumpHeap_h(h->nxt[ix_char], s, n + 1);
			}
		}
	}
}

void dumpHeap(strHeap *h) {
	char s[128];
	dumpHeap_h(h, s, 0);
}

void printHeap(strHeap *h) {
	if (h->nl != NULL) {
		printf("%s\n", h->nl);
	}
	if (h->nxt != NULL) {
		int ix_char;
		for (ix_char = 0; ix_char < NUM_HEAPS; ++ix_char) {
			if (h->nxt[ix_char] != NULL) {
				printHeap(h->nxt[ix_char]);
			}
		}
	}
}

void freeHeap(strHeap *h) {
	if (h->nxt != NULL) {
		int ix_char;
		for (ix_char = 0; ix_char < NUM_HEAPS; ++ix_char) {
			if (h->nxt[ix_char] != NULL) {
				freeHeap(h->nxt[ix_char]);
			}
		}

		free(h->nxt);
	}

	free(h);
}
