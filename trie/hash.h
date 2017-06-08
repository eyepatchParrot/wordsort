#ifndef HASH_H
#define HASH_H
#include <stdint.h>
#include <assert.h>

// I've tested non-lookups and using a cubic table

// number of characters consumed by a hash
#define HASH_SZ 1
// space of hash
#define HASH_RANGE 64
#define HASH2_RANGE (HASH_RANGE * HASH_RANGE)
#define IN_RANGE (1 << (HASH_SZ * 8))

#define HASH_VALID(c) (c == '\0' || \
		(c >= '0' && c <= '9') || \
		(c >= 'A' && c <= 'Z') || \
		(c >= 'a' && c <= 'z'))

typedef char hash_t;
typedef int16_t hash2_t;
//typedef struct {
//	hash_t h[2];
//} hash2_t;

void htable();

//#define PTR
hash2_t lhash(const char* key) __attribute__ ((pure));
extern hash2_t hash(const char* key) __attribute__ ((pure));
extern hash2_t lhash2(const char* key) __attribute__ ((pure));

typedef hash2_t (*hash_fn)(const char*);

#endif
