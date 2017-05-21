#include "idx.h"

#define M       CH_RANGE
#define M_W     IX_BYTES
#define M_BASE 256

//static const uint64_t remMul[M_W] = { M*M*M, M*M, M, 1 };
#if IX_BYTES==2
static const sKey_t remMul[M_W] = { M, 1 };
#elif IX_BYTES==1
static const sKey_t remMul[M_W] = { 1 };
#elif IX_BYTES == 3
static const sKey_t remMul[M_W] = { M*M, M, 1 };
#elif IX_BYTES == 4
static const sKey_t remMul[M_W] = { M*M*M, M*M, M, 1 };
#endif
static sKey_t cVal[M_W * M_BASE];

void gen_cVal() {
	int ix_m;
	for (ix_m = 0; ix_m < M_W; ++ix_m) {
		int ix_c;
		int ix_v = 1;
		cVal[ix_m * M_BASE] = 0;
		for (ix_c = (int)'0'; ix_c <= 'z'; ++ix_c, ++ix_v) {
#if M == 63
			if (ix_c == ':') ix_c = 'A';
			if (ix_c == '[') ix_c = 'a';
#endif
			cVal[ix_m * M_BASE + ix_c] = ix_v * remMul[ix_m];
		}
	}
}

#define C_IX(x) c = s[x]; ix_s += cVal[M_BASE * x + c]
sKey_t idxStr(const char *s) {
	sKey_t c;
	sKey_t ix_s = 0;

	C_IX(0);

#if IX_BYTES > 1
	if (s[1] != '\0') {
		C_IX(1);

#if IX_BYTES > 2
		if (s[2] != '\0') {
			C_IX(2);
			

#if IX_BYTES > 3
			if (s[3] != '\0') {
				C_IDX(3);
			}
#endif
		}
#endif
	}
#endif

#undef C_IX
	return ix_s;
}

