#ifndef CONSTANTS_H
#define CONSTANTS_H
#define BUF_SZ (1 << 12)
#define BRANCH_SZ 64
#define BRANCH_SZ2 (BRANCH_SZ * BRANCH_SZ)
#define BRANCH_MAXLEAVES 32
#define BRANCHLEAF_GROWSZ 62
#define LEAF_SZ0 (1<<4)
#define LEAF_SZ1 ((1<<4) * BRANCH_SZ)
// 2^16
#define LEAF_SZ2 ((1 << 4) * BRANCH_SZ * BRANCH_SZ)
#define LEAF_SZ LEAF_SZ1
#define MIN_BUCKETSORT (1<<2)
//#define MIN_BUCKETSORT ((1 << 1) * BRANCH_SZ)
#define MIN_BUCKETSORT2 (MIN_BUCKETSORT * BRANCH_SZ)
#define QSORT_SZ 8
#define FREEBUF_SZ 100


#endif
