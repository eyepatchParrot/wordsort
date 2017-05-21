#ifndef SORT_H
#define SORT_H

#define SWAP(a, t, x, y) { \
	t = a[x];    \
	a[x] = a[y]; \
	a[y] = t;    }

// using http://pages.ripco.net/~jgamble/nw.html to generate sorts
#define CSWAP(cmp, a, t, x, y) if (cmp(a + x, a + y) > 0) { \
	SWAP(a, t, x, y); }

#define SORT2(type, cmp, a) { \
	type t;                     \
	CSWAP(cmp, a, t, 0, 1);     }

#define SORT3(type, cmp, a) { \
	type t;                 \
	CSWAP(cmp, a, t, 0, 2); \
	CSWAP(cmp, a, t, 0, 1); \
	CSWAP(cmp, a, t, 1, 2); }

#define SORT4(type, cmp, a) { \
	type t;                 \
	CSWAP(cmp, a, t, 0, 2); \
	CSWAP(cmp, a, t, 1, 3); \
	CSWAP(cmp, a, t, 0, 1); \
	CSWAP(cmp, a, t, 2, 3); \
	CSWAP(cmp, a, t, 1, 2); }

#define SORT5(type, cmp, a) { \
	type t;                 \
	CSWAP(cmp, a, t, 0, 4); \
	CSWAP(cmp, a, t, 0, 2); \
	CSWAP(cmp, a, t, 1, 3); \
	CSWAP(cmp, a, t, 2, 4); \
	CSWAP(cmp, a, t, 0, 1); \
	CSWAP(cmp, a, t, 2, 3); \
	CSWAP(cmp, a, t, 1, 4); \
	CSWAP(cmp, a, t, 1, 2); \
	CSWAP(cmp, a, t, 3, 4); }

#define SORT6(type, cmp, a) { \
	type t;                 \
	CSWAP(cmp, a, t, 0, 4); \
	CSWAP(cmp, a, t, 1, 5); \
	CSWAP(cmp, a, t, 0, 2); \
	CSWAP(cmp, a, t, 1, 3); \
	CSWAP(cmp, a, t, 2, 4); \
	CSWAP(cmp, a, t, 3, 5); \
	CSWAP(cmp, a, t, 0, 1); \
	CSWAP(cmp, a, t, 2, 3); \
	CSWAP(cmp, a, t, 4, 5); \
	CSWAP(cmp, a, t, 1, 4); \
	CSWAP(cmp, a, t, 1, 2); \
	CSWAP(cmp, a, t, 3, 4); }

#define SORT7(type, cmp, a) { \
	type t;                 \
	CSWAP(cmp, a, t, 0, 4); \
	CSWAP(cmp, a, t, 1, 5); \
	CSWAP(cmp, a, t, 2, 6); \
	CSWAP(cmp, a, t, 0, 2); \
	CSWAP(cmp, a, t, 1, 3); \
	CSWAP(cmp, a, t, 4, 6); \
	CSWAP(cmp, a, t, 2, 4); \
	CSWAP(cmp, a, t, 3, 5); \
	CSWAP(cmp, a, t, 0, 1); \
	CSWAP(cmp, a, t, 2, 3); \
	CSWAP(cmp, a, t, 4, 5); \
	CSWAP(cmp, a, t, 1, 4); \
	CSWAP(cmp, a, t, 3, 6); \
	CSWAP(cmp, a, t, 1, 2); \
	CSWAP(cmp, a, t, 3, 4); \
	CSWAP(cmp, a, t, 5, 6); }

#endif
