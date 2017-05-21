#ifndef ENTRY_H
#define ENTRY_H

#include "hash.h"
#include <string.h>
#include <x86intrin.h>
#include <immintrin.h>
#include "bmap.h"

#define NUM_HASHES 4

typedef struct Entry {
	char* nl;  // the newline it points to
	hash_t h[NUM_HASHES]; // hash
	uint8_t off; // the offset of the hash from the newline
	uint8_t len; // the length of the line
} Entry;

typedef struct SmallEntry {
	char* nl;
	uint8_t off;
	uint8_t len;
	char c;   // first char of token
} SmallEntry;

typedef struct MvPair {
	char* src;
	int off;
} MvPair;

struct Branch;

typedef __m256i Vec;
#define VEC_SZ sizeof(Vec)
//typedef uint8_t Count;
typedef union {
	uint8_t v __attribute__ ((vector_size(sizeof(Vec))));
	Vec i;
} Count;

typedef union {
	uint8_t v[sizeof(Vec)];
	Vec i;
	SmallEntry* e;
} Unsorted;

typedef uint8_t Used;
//typedef union {
//	uint8_t v __attribute__ ((vector_size(VEC_SZ)));
//	uint64_t i;
//} Used;

void entry_init(Entry* e, hash_t* h, const Entry* src);
struct Branch* entry_pop(Entry* e, int sz, int depth);
char* entry_dump(Entry* e, int sz, char* output, int depth);
void entry_sortBuf2(Entry* src, SmallEntry* buf, int sz, int depth);
void entry_sortBuf(Entry* src, SmallEntry* buf, int sz, int depth);
void entry_count2(Entry* src, Count* count, Used* used, Unsorted* unsorted, int sz, int depth);
void entry_count(Entry* src, int* count, int sz, int depth);
int entry_bucket2(Entry* src, SmallEntry* dst, Count* count, Used* used, Unsorted* unsorted, int sz, int depth);
int entry_bucket(Entry* src, SmallEntry* dst, int* count, SmallEntry* unsorted[], int sz, int depth);
void entry_sort(Entry* buf, int sz, int depth);
char* entry_copyLine(Entry* buf, int sz, char* output);

int entry_strcmp(const void* e1, const void* e2);
int entry_hcmp(const void* e1, const void* e2);

void smallentry_sort(SmallEntry* src, int sz, int depth);
char* smallentry_copyLine(Entry* src, SmallEntry* buf, int sz, char* output);
int smallentry_hcmp(const void* v1, const void* v2);
int smallentry_strcmp(const void* v1, const void* v2);
uint32_t bytesOff(Vec* v);

// The  comparison function must return an integer less than, equal to, or
// greater than zero if the first argument is considered to be respectively
// less than, equal to, or greater than the second.
#define LAST_HASH (NUM_HASHES - 1)

#define ENTRY_HCMP(N) \
	static inline int entry_hcmp ## N (const void* v1, const void* v2) { \
		const Entry* e1 = v1; \
		const Entry* e2 = v2; \
		int diff = (int)e1->h[N] - e2->h[N]; \
		return diff; \
	} \
	static inline int entry_fcmp ## N (const void* v1, const void* v2) { \
		const Entry* e1 = v1; \
		const Entry* e2 = v2; \
		int diff = (int)e1->h[N] - e2->h[N]; \
		if (N == LAST_HASH || diff != 0) return diff; \
		diff = (int)e1->h[N+1] - e2->h[N+1]; \
		if (N + 1 == LAST_HASH || diff != 0) return diff; \
		diff = (int)e1->h[N+2] - e2->h[N+2]; \
		if (N + 2 == LAST_HASH || diff != 0) return diff; \
		diff = (int)e1->h[N+3] - e2->h[N+3]; \
		if (N + 3 == LAST_HASH || diff != 0) return diff; \
		diff = (int)e1->h[N+4] - e2->h[N+4]; \
		if (N + 4 == LAST_HASH || diff != 0) return diff; \
		diff = (int)e1->h[N+5] - e2->h[N+5]; \
		if (N + 5 == LAST_HASH || diff != 0) return diff; \
		diff = (int)e1->h[N+6] - e2->h[N+6]; \
		assert(NUM_HASHES <= 7); \
		return diff; \
	}
ENTRY_HCMP(0);
ENTRY_HCMP(1);
ENTRY_HCMP(2);
ENTRY_HCMP(3);
ENTRY_HCMP(4);
ENTRY_HCMP(5);
ENTRY_HCMP(6);

#endif
