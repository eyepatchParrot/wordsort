#ifndef SORT_H
#define SORT_H

#define SWAP(a, t, x, y) { \
	t = a[x];    \
	a[x] = a[y]; \
	a[y] = t;    }

// using http://pages.ripco.net/~jgamble/nw.html to generate sorts
//#define CSWAP(cmp, a, t, x, y, d) if (a[x].h[d] < a[y].h[d]) { 
#define CSWAP(cmp, a, t, x, y, d) if (cmp(a+x, a+y) > 0) { \
	SWAP(a, t, x, y); }

#define SORT3(type, cmp, a, d) { \
	type t;                 \
	CSWAP(cmp, a, t, 0, 2, d); \
	CSWAP(cmp, a, t, 0, 1, d); \
	CSWAP(cmp, a, t, 1, 2, d); }

#define SORT4(type, cmp, a, d) { \
	type t;                 \
	CSWAP(cmp, a, t, 0, 2, d); \
	CSWAP(cmp, a, t, 1, 3, d); \
	CSWAP(cmp, a, t, 0, 1, d); \
	CSWAP(cmp, a, t, 2, 3, d); \
	CSWAP(cmp, a, t, 1, 2, d); }

#define SORT5(type, cmp, a, d) { \
	type t;                 \
	CSWAP(cmp, a, t, 0, 4, d); \
	CSWAP(cmp, a, t, 0, 2, d); \
	CSWAP(cmp, a, t, 1, 3, d); \
	CSWAP(cmp, a, t, 2, 4, d); \
	CSWAP(cmp, a, t, 0, 1, d); \
	CSWAP(cmp, a, t, 2, 3, d); \
	CSWAP(cmp, a, t, 1, 4, d); \
	CSWAP(cmp, a, t, 1, 2, d); \
	CSWAP(cmp, a, t, 3, 4, d); }

#define SORT6(type, cmp, a, d) { \
	type t;                 \
	CSWAP(cmp, a, t, 0, 4, d); \
	CSWAP(cmp, a, t, 1, 5, d); \
	CSWAP(cmp, a, t, 0, 2, d); \
	CSWAP(cmp, a, t, 1, 3, d); \
	CSWAP(cmp, a, t, 2, 4, d); \
	CSWAP(cmp, a, t, 3, 5, d); \
	CSWAP(cmp, a, t, 0, 1, d); \
	CSWAP(cmp, a, t, 2, 3, d); \
	CSWAP(cmp, a, t, 4, 5, d); \
	CSWAP(cmp, a, t, 1, 4, d); \
	CSWAP(cmp, a, t, 1, 2, d); \
	CSWAP(cmp, a, t, 3, 4, d); }

#define SORT7(type, cmp, a, d) { \
	type t;                 \
	CSWAP(cmp, a, t, 0, 4, d); \
	CSWAP(cmp, a, t, 1, 5, d); \
	CSWAP(cmp, a, t, 2, 6, d); \
	CSWAP(cmp, a, t, 0, 2, d); \
	CSWAP(cmp, a, t, 1, 3, d); \
	CSWAP(cmp, a, t, 4, 6, d); \
	CSWAP(cmp, a, t, 2, 4, d); \
	CSWAP(cmp, a, t, 3, 5, d); \
	CSWAP(cmp, a, t, 0, 1, d); \
	CSWAP(cmp, a, t, 2, 3, d); \
	CSWAP(cmp, a, t, 4, 5, d); \
	CSWAP(cmp, a, t, 1, 4, d); \
	CSWAP(cmp, a, t, 3, 6, d); \
	CSWAP(cmp, a, t, 1, 2, d); \
	CSWAP(cmp, a, t, 3, 4, d); \
	CSWAP(cmp, a, t, 5, 6, d); }

#endif
