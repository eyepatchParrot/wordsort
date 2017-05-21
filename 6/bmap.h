#ifndef BMAP_H
#define BMAP_H

#include <stdint.h>
#include <x86intrin.h>

//_mm_set_epi32(0x00000000, 0x00000000, 0x00000000, 0x00000001),

#define DO_8(X, N) \
	X(N+0) \
	X(N+1) \
	X(N+2) \
	X(N+3) \
	X(N+4) \
	X(N+5) \
	X(N+6) \
	X(N+7)

#define DO_64(X, N) \
	DO_8(X, N+0) \
	DO_8(X, N+8) \
	DO_8(X, N+16) \
	DO_8(X, N+24) \
	DO_8(X, N+32) \
	DO_8(X, N+40) \
	DO_8(X, N+48) \
	DO_8(X, N+56)

#define U128_MASK_LUT { DO_64(U128_BIT_LO, 0) DO_64(U128_BIT_HI, 0) 0}

typedef uint8_t Bmap;
#define SIZEOF 1
#define WIDTH (sizeof(Bmap) * 8)

void bmap_set(Bmap* b, int i);
Bmap bmap_get(const Bmap* b, int i);
Bmap bmap_getFill(const Bmap* b, int i);
int bmap_ffs(const Bmap* b);

#endif
