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
