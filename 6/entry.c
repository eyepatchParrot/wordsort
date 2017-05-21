#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif

#include "entry.h"
#include "constants.h"
#include "branch.h"
#include "hash.h"
#include "node.h"
#include "leaf.h"
#include "../../common/profile.h"
#include "../common/sort.h"

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <strings.h>

void entry_init(Entry* e, hash_t* h, const Entry* src) {
	memcpy(e->h, h, NUM_HASHES);
	e->nl = src->nl;
	e->off = src->off;
	e->len = src->len;
}

Branch* entry_pop(Entry* e, int sz, int depth) {
	assert(e != NULL && sz > 0);
	Node n = { .type = TYPE_BRANCH, .ptr.b = branch_new()};
	for (int i = 0; i < sz; i++) {
		hash_t h = lhash(e[i].h + (depth % NUM_HASHES));
		int leafDepth = depth + 1;
		Node* newLeaf = branch_pull(&n, h, &(leafDepth));
		assert(newLeaf->type == TYPE_LEAF);
		hash_t* hBuf;
		if ((depth + 1) % NUM_HASHES == 0) {
			hBuf = (hash_t*)e[i].nl + e[i].off + depth + 1;
		} else {
			hBuf = e[i].h;
		}
		leaf_put(newLeaf->ptr.l, hBuf, e + i);
	}
	return n.ptr.b;
}

char* entry_dump(Entry* e, int sz, char* output, int depth) {
	// assumes that a SmallEntry is smaller than the line that it is representing
	static SmallEntry buf[LEAF_SZ];
	assert(e != NULL && output != NULL);
	if (sz == 0) return output;

#ifdef PRINT_TREE
	struct timespec timer;
	for (int i = 0; i < depth; ++i) {
		printf(" ");
	}
	printf("l %d\n", sz);
#endif

	
	if (sz < MIN_BUCKETSORT) {
		entry_sort(e, sz, depth);
		output = entry_copyLine(e, sz, output);
	}
	else
	if (sz < MIN_BUCKETSORT2)
	{
		entry_sortBuf(e, buf, sz, depth);
		output = smallentry_copyLine(e, buf, sz, output);
	}
	else {
		entry_sortBuf2(e, buf, sz, depth);
		output = smallentry_copyLine(e, buf, sz, output);
	}

	return output;
}

// 1. have a byte array to use memchr on
// 2. have a bit array to use ffs on
// 3. have a bit array to use intrinsic ffs on
void entry_sortBuf2(Entry* src, SmallEntry* buf, int sz, int depth) {
	assert(sz >= MIN_BUCKETSORT && src != NULL);
	// this is necessary because we have to scan twice
	// changing this to uint8_t adds a lot of instructions to _sort
	static Count count[HASH2_RANGE/VEC_SZ];
	static Used used[HASH2_RANGE];
	static Unsorted unsorted[HASH2_RANGE];
//	static SmallEntry* unsorted[HASH2_RANGE];

	memset(count, 0, sizeof(Count) * HASH2_RANGE / VEC_SZ);
//	memset(used, 0, sizeof(Used) * HASH2_RANGE);

	entry_count2(src, count, used, unsorted, sz, depth);
	int numUnsorted = entry_bucket2(src, buf, count, used, unsorted, sz, depth);

	for (int i = 0; i < numUnsorted; i++) {
		smallentry_sort(unsorted[i].e, count[i/VEC_SZ].v[i%VEC_SZ], depth + 2);
	}

	return;
}

void entry_count2(Entry* src, Count* count, Used* used, Unsorted* unsorted, int sz, int depth) {
	assert(NUM_HASHES == 4); // relying on it being a power of 2
	const int ix = depth & (NUM_HASHES - 1);
	for (int i = 0; i < sz; ++i) {
		union {
			hash2_t* h;
			char* c;
		} key;
		key.c = (char*)src[i].h + ix;
		*(key.h) = lhash2(key.c);
		hash2_t h = *(key.h);
		int i = h / VEC_SZ;
		int j = h % VEC_SZ;
//		count[h] &= used[*(key.h)];
		count[i].v[j]++;
//		used[h] = 0xFF;
	}
}

uint32_t bytesOn(Vec* v) {
	__m256i zero = _mm256_setzero_si256();
	__m256i cmp = _mm256_cmpgt_epi8(*v, zero); 
	return _mm256_movemask_epi8(cmp);
}

int entry_bucket2(Entry* src, SmallEntry* dst, Count* count, Used* used, Unsorted* unsorted, int sz, int depth) {
//	static SmallEntry* usedH[HASH2_RANGE];
	static SmallEntry* usedH[HASH2_RANGE/VEC_SZ][VEC_SZ];

	assert((depth + 1) % NUM_HASHES != 0);

	int numUsed = 0;
	SmallEntry* bin = dst;
	assert(HASH2_RANGE % (VEC_SZ * 2) == 0);
	int i;
	for (i = 0; i < HASH2_RANGE/VEC_SZ - 1; i += 2) {
		uint64_t m = (bytesOn(&count[i].i) | ((uint64_t)bytesOn(&count[i + 1].i) << 32));
		int j;
		for (int k = _popcnt64(m); k > 0; k--) {
			j = ffsll(m) - 1;
			usedH[i][j] = bin;
			bin += count[i].v[j];
			m &= ~(1ULL << j);
		}
		uint64_t a = ((uint64_t)_mm256_movemask_epi8(_mm256_cmpgt_epi8(count[i+1].i, _mm256_set1_epi8(1)))) << 32;
		uint64_t b = (uint32_t)_mm256_movemask_epi8(_mm256_cmpgt_epi8(count[i].i, _mm256_set1_epi8(1)));
		uint64_t u = a | b;
		for (int k = _popcnt64(u); k > 0; k--) {
			j = ffsll(u) - 1;
			unsorted[numUsed].e = usedH[i][j];
			count[0].v[numUsed] = count[i].v[j];
			assert(numUsed < HASH2_RANGE / VEC_SZ);
			numUsed++;
			u &= ~(1ULL << j);
		}
	}

	int ix = depth & (NUM_HASHES - 1);

	for (int i = 0; i < sz; i++) {
		Entry* e = src + i;
		hash2_t* h = (hash2_t*)(e->h + ix);
		int i = *h/VEC_SZ;
		int j = *h%VEC_SZ;
		SmallEntry* be = usedH[i][j];
		be->c = ix >= (NUM_HASHES - 2) ?
			*(e->nl + e->off + depth + 2) :
			e->h[ix + 2];
		be->nl = e->nl;
		be->off = e->off + depth + 2;
		be->len = e->len;
		usedH[i][j]++;
	}

	return numUsed;
}
//
// TODO consider batching multiple items of the same kind into a single copy also in pop
void entry_sortBuf(Entry* src, SmallEntry* buf, int sz, int depth) {
	assert(sz >= MIN_BUCKETSORT && src != NULL);
	static int count[BRANCH_SZ];
	static SmallEntry* used[BRANCH_SZ];

	entry_count(src, count, sz, depth);
	int numUsed = entry_bucket(src, buf, count, used, sz, depth);

	for (int i = 0; i < numUsed; ++i) {
		smallentry_sort(used[i], count[i], depth + 1);
	}

	return;
}

void entry_count(Entry* src, int* count, int sz, int depth) {
	memset(count, 0, sizeof(int) * BRANCH_SZ);
	for (int i = 0; i < sz; ++i) {
		hash_t* h = src[i].h + depth % NUM_HASHES;
		*h = lhash(h);
		count[(uint8_t)*h]++;
	}
}

int entry_bucket(Entry* src, SmallEntry* dst, int* count, SmallEntry* used[], int sz, int depth) {
	static SmallEntry* usedH[HASH2_RANGE];

	int numUsed = 0;
	SmallEntry* bin = dst;
	for (int i = 0; i < BRANCH_SZ; i++) {
		if (count[i] >= 2) {
			used[numUsed] = bin;
			// this is ok because count isn't used again, and numUsed is always no
			// more than i
			count[numUsed] = count[i];
			numUsed++;
		}
		usedH[i] = bin;
		bin += count[i];
	}

	for (int i = 0; i < sz; ++i) {
		Entry* e = src + i;
		hash_t h = e->h[depth % NUM_HASHES];
		SmallEntry* be = usedH[(uint8_t)h];
		// use the bucket2 improvement
		be->c = (depth + 1) % NUM_HASHES == 0 ?
			*(e->nl + e->off + depth + 1) :
			e->h[(depth + 1) % NUM_HASHES];
		be->nl = e->nl;
		// TODO add depth + 1
		be->off = e->off;
		be->len = e->len;
		usedH[(uint8_t)h]++;
	}
	return numUsed;
}

void entry_sort(Entry* buf, int sz, int depth) {
	assert(buf != NULL);

	if (sz < 2) return;

	int (*cmp)(const void*, const void*);
	switch (depth) {
		case 0:
			cmp = entry_hcmp0;
			break;

		case 1:
			cmp = entry_hcmp1;
			break;

		case 2:
			cmp = entry_hcmp2;
			break;

//		case 3:
		default:
			cmp = entry_hcmp3;
			break;
	}
	qsort(buf, sz, sizeof(Entry), cmp);

	int firstUnsorted;
	firstUnsorted = 0;
	while (firstUnsorted + 1 < sz) {
		if (cmp(&buf[firstUnsorted], &buf[firstUnsorted+1]) != 0) {
			firstUnsorted++;
		} else {
			int endBlock;
			for (endBlock = firstUnsorted + 1; endBlock < sz; ++endBlock) {
				if (cmp(&buf[firstUnsorted], &buf[endBlock]) != 0)  {
					break;
				}
			}
			int numUnsorted = endBlock - firstUnsorted;
			qsort(buf + firstUnsorted, numUnsorted, sizeof(Entry), entry_strcmp);
			firstUnsorted = endBlock;
		}
	}
}

char* entry_copyLine(Entry* buf, int sz, char* output) {
	for (int i = 0; i < sz; ++i) {
		size_t len = buf[i].len + 1;
		memcpy(output, buf[i].nl, len);
		output[len - 1] = '\n';
		output += len;
	}

	return output;
}

int entry_strcmp(const void* v1, const void* v2) {
	const Entry* e1 = v1;
	const Entry* e2 = v2;
	const char* key1 = e1->nl + e1->off;
	const char* key2 = e2->nl + e2->off;
	return strcmp(key1, key2);
}

void smallentry_sort(SmallEntry* src, int sz, int depth) {
	assert(src != NULL);

	// TODO make it an unsigned
	assert(sz >= 2);

	qsort(src, sz, sizeof(SmallEntry), smallentry_hcmp);
	return;
}

char* smallentry_copyLine(Entry* src, SmallEntry* buf, int sz, char* output) {
	for (int i = 0; i < sz; ++i) {
		SmallEntry* be = buf + i;
		size_t len = be->len + 1;
		memcpy(output, be->nl, len);
		output[len - 1] = '\n';
		output += len;
	}

	return output;
}

int smallentry_hcmp(const void* v1, const void* v2) {
	const SmallEntry* e1 = v1;
	const SmallEntry* e2 = v2;
	char r = e1->c - e2->c;
	int len = e1->len - e1->off;
	len = len < e2->len - e2->off ? len : e2->len - e2->off;

	return r == 0 ? memcmp(e1->nl + e1->off, e2->nl + e2->off, len) : r;
//	return e1->c != e2->c ? e1->c - e2->c :
		
//	return e1->c - e2->c;
}

int smallentry_strcmp(const void* v1, const void* v2) {
	const SmallEntry* be1 = v1;
	const SmallEntry* be2 = v2;
	char* key1 = be1->nl + be1->off;
	char* key2 = be2->nl + be2->off;

	return strcmp(key1, key2);
}
