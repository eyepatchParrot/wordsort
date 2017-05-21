#include "hash.h"
#include <assert.h>
#include <stdlib.h>

#include <string.h>
// beware that the compiler might be doing multiplication in bg
hash2_t t[IN_RANGE];
hash2_t t2[IN_RANGE][IN_RANGE];
void htable() {
	memset(t, 0, IN_RANGE * sizeof(hash2_t));
	for (char i = '0'; i <= 'z'; ++i) {
		if (HASH_VALID(i)) {
			t[(int)i] = hash(&i);
		}
	}
	memset(t2, 0, IN_RANGE * IN_RANGE * sizeof(hash2_t));
	for (char i = '0'; i <= 'z'; ++i) {
		for (char j = '0'; j <= 'z'; ++j) {
			if (HASH_VALID(i) && HASH_VALID(j)) {
				t2[(int)i][(int)j] = (hash2_t)hash(&i) * HASH_RANGE + hash(&j);
			}
		}
	}
}

inline hash2_t hash(const char* key) {
	// TODO look into intrinsics
	const unsigned char c = *key;
	assert(HASH_VALID(c));
	// add 1 for null char @ beginning
	if (c <= '9') {
		if (c == 0) return c;
		else return c - '0' + 1;
	} else {
		if (c <= 'Z') return c - 'A' + 10 + 1;
		else return c - 'a' + 26 + 10 + 1;
	}
}

inline hash2_t lhash2(const char* key) {
	return t2[(uint8_t)key[0]][(uint8_t)key[1]];
}

inline hash2_t lhash(const char* key) {
	return t[(int)(*key)];
}

#ifdef HASH_MAIN

#include "../../common/profile.h"
#include <stdlib.h>
#include <stdio.h>

#ifndef PRINT
#define NUM_STR (1 << 28)
#else
#define NUM_STR (1 << 7)
#endif


char* __attribute__ ((noinline)) genStr() {
//char* genStr() {
	char* s = (char*)malloc(NUM_STR * HASH_SZ);
	srand(0);
	for (int i = 0; i < NUM_STR * HASH_SZ; ++i) {
#ifndef PRINT
		s[i] = rand() % 62 + 1;
#else
		s[i] = i % 63;
#endif
		if (s[i] >= (11+26)) {
			s[i] += 'a' - (11+26);
		} else if (s[i] >= 11) {
			s[i] += 'A' - 11;
		} else if (s[i] >= 1) {
			s[i] += '0' - 1;
		}
	}
	return s;
}

#define LOOKUP
int main(int argc, char** argv) {
	char* s = genStr();
	hash_t o[2];

	htable();

	struct timespec timer;
	double lhashNs, hashNs, lhash4S;
	lhashNs = hashNs = lhash4S = 0.0;

	int iter = 1;
	profile_start(&timer);
	while (1) {
		hash2_t h;
		o[0] = 0;
		o[1] = 0;
		for (int i = 0; i + 0xf < NUM_STR; i += 0x10) {
			o[0] += lhash(s[i]);
			o[1] += lhash(s[i+1]);
			o[0] += lhash(s[i+2]);
			o[1] += lhash(s[i+3]);
			o[0] += lhash(s[i+4]);
			o[1] += lhash(s[i+5]);
			o[0] += lhash(s[i+6]);
			o[1] += lhash(s[i+7]);
			o[0] += lhash(s[i+8]);
			o[1] += lhash(s[i+9]);
			o[0] += lhash(s[i+0xa]);
			o[1] += lhash(s[i+0xb]);
			o[0] += lhash(s[i+0xc]);
			o[1] += lhash(s[i+0xd]);
			o[0] += lhash(s[i+0xe]);
			o[1] += lhash(s[i+0xf]);
		}
		o[0] *= o[1];
		lhashNs += profile_reset(&timer);
		printf("%f ns/hash lhash \"%d\"\n", (lhashNs / iter) * ((double)NSEC_SEC / NUM_STR), o[0]);
		o[0] = 0;
		o[1] = 0;
		for (int i = 0; i + 0xf < NUM_STR; i += 0x10) {
			h = lhash2(&s[i]);
			o[0] += h & 0xFF;
			o[1] += h >> 8;
			h = lhash2(&s[i+2]);
			o[0] += h & 0xFF;
			o[1] += h >> 8;
			h = lhash2(&s[i+4]);
			o[0] += h & 0xFF;
			o[1] += h >> 8;
			h = lhash2(&s[i+6]);
			o[0] += h & 0xFF;
			o[1] += h >> 8;
			h = lhash2(&s[i+8]);
			o[0] += h & 0xFF;
			o[1] += h >> 8;
			h = lhash2(&s[i+0xa]);
			o[0] += h & 0xFF;
			o[1] += h >> 8;
			h = lhash2(&s[i+0xc]);
			o[0] += h & 0xFF;
			o[1] += h >> 8;
			h = lhash2(&s[i+0xe]);
			o[0] += h & 0xFF;
			o[1] += h >> 8;
		}
		o[0] *= o[1];
		lhashNs += profile_reset(&timer);
		printf("%f ns/hash lhash2 \"%d\"\n", (lhashNs / iter) * ((double)NSEC_SEC / NUM_STR), o[0]);
		iter++;
	}
	return 0;
}

#endif
