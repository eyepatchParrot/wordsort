#include "trie_leaf.h"
#include "trie_inode.h"
#include "../common/sort.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int keycmp(trie_entry * restrict a, trie_entry * restrict b) {
	return a->key - b->key;
}

char *tokFile;
int tokcmp(trie_entry *a, trie_entry *b) {
	return strcmp(tokFile + a->val + a->tok, tokFile + b->val + b->tok);
}

char* trie_leaf_dump(int sz_bfr, trie_entry bfr[], char *file, char* output) {
	leaf_sort(sz_bfr, bfr, file);

	// change this to have printf point to null rather than eliminating it altogether.
	for (int i = 0; i < sz_bfr; ++i) {
		// void *memcpy(void *dest, const void *src, size_t n);
		size_t len = strlen(file+bfr[i].val) + 1;
		memcpy(output, file+bfr[i].val, len);
		output[len - 1] = '\n';
		output += len;
	}

	return output;
}

// TODO consider using bubble sort in insertion to avoid having to sort again
void leaf_sort(int sz_bfr, trie_entry bfr[], char *file) {
	// generate hashes only if we're using them for sorting
	if (sz_bfr >= 2) {
		for (int i = 0; i < sz_bfr; ++i) {
			bfr[i].key = IX(file + bfr[i].val + bfr[i].tok);
		}
	}

	switch (sz_bfr) {
		case 0:
			return;

		case 1:
			break;

		case 2:
			// only want to swap the values for speed
			if (strcmp(file + bfr[0].val + bfr[0].tok, file + bfr[0].val + bfr[1].tok) > 0) {
				int t = bfr[0].val;
				bfr[0].val = bfr[1].val;
				bfr[1].val = t;
			}
			break;
			// consider instruction cache misses here
#define CASE(x) case x: SORT ## x (trie_entry, keycmp, bfr); break
		CASE(3);
		CASE(4);
		CASE(5);
		CASE(6);
		CASE(7);
#undef CASE

		default:
				qsort(bfr, sz_bfr, sizeof(trie_entry), (__compar_fn_t)keycmp);
	}

	int hasRepeat = 0;
	sKey_t last = -1;
	if (sz_bfr >= 2) {
		for (int i = 0; i < sz_bfr; ++i) {
			if (bfr[i].key == last) {
				hasRepeat = 1;
				break;
			}
			last = bfr[i].key;
		}
	}
	if (hasRepeat == 1) {
		tokFile = file;
		qsort(bfr, sz_bfr, sizeof(trie_entry), (__compar_fn_t)tokcmp);
	}
}
