#ifndef IDX_H
#define IDX_H

#include <stdint.h>
// must stick to 4 characters or less or else increase idx size
#define IX_BYTES 3
#define CH_RANGE 63ULL

//#define IX_RANGE (CH_RANGE * CH_RANGE * CH_RANGE * CH_RANGE)
#define IX_RANGE_2 (CH_RANGE * CH_RANGE)
#define IX_RANGE_3 (IX_RANGE_2 * CH_RANGE)
#define IX_RANGE_4 (IX_RANGE_3 * CH_RANGE)
#if IX_BYTES == 1
#define IX_RANGE CH_RANGE
typedef uint8_t sKey_t;
#elif IX_BYTES == 2
#define IX_RANGE IX_RANGE_2
typedef uint16_t sKey_t;
#elif IX_BYTES == 3
#define IX_RANGE IX_RANGE_3
typedef uint32_t sKey_t;
#elif IX_BYTES == 4
#define IX_RANGE IX_RANGE_4
typedef uint32_t sKey_t;
#endif

void gen_cVal();
sKey_t idxStr(const char *s);
#define IX(s) idxStr(s)

#endif
