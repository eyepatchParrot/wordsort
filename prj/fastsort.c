#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <unistd.h>

typedef uint64_t ix_s_t;

#ifndef NDEBUG
#define DEBUG
#endif
//#define PROFILE
//#define MERGE
//#define COLNUM
//#define PTR_SORT
#define INT_SORT
#define MAX_KEY_SZ 10
//#define MAX_KEY_SZ 130
#define MAX_COLS  64

#define CACHE_SIZE   (1 << 15)

#ifdef MERGE
#define SORT_LIMIT   (1 << 22)
#endif

#define NUM_BUCKETS   (75 * 76)
//#define NUM_BUCKETS   75
#define NUM_CHARS     75
#define IX_CHARS      (NUM_CHARS + 1)
//#define IX_BUCKET(ix) (int)(ix - '0')
#define IX_BUCKET1(a) (int)((a - '0') * (NUM_CHARS + 1))
#define IX_BUCKET2(a, b) (int)((a - '0') * (NUM_CHARS + 1) + (b - '0' + 1))

#ifndef PTR_SORT
#define KEY_LINE_WIDTH(bucket) (bucket->lineWidth)
#define GET_KEY(bucket, ix) (&(bucket->keys[ix * KEY_LINE_WIDTH(bucket)]))
#define GET_LINEADDR(bucket, ix) (int*)(&(bucket->keys[(ix + 1) * KEY_LINE_WIDTH(bucket) - sizeof(int)]))
#define TOKEN_IX_TO_SRC_IX(bucket, ix, newLines) (getStack(newLines, *GET_LINEADDR(bucket, ix)))
//			char *key = &(curBucket->keys[ix_sortLine * KEY_LINE_WIDTH(curBucket)]);
//			int ix_line = *(int*)(key + KEY_LINE_WIDTH(curBucket) - sizeof(int));
//int ix_file = getStack(newLines, ix_line);
#else
#define KEY_LINE_WIDTH(bucket) sizeof(token)
#endif

typedef struct {
	ix_s_t key;
	int line;
} token;

typedef union {
  uint64_t i;
  struct {
    uint16_t ix_bucket;
    uint16_t ix_token;
    uint32_t ix_nl;
  } d;
} KeyData; 

typedef struct cacheStackNode_t {
	int sz;
	struct cacheStackNode_t *prev;
	struct cacheStackNode_t *next;
	uint64_t cache[CACHE_SIZE];
} cacheStackNode;

typedef struct {
	int numCaches;
	cacheStackNode *head;
	cacheStackNode *tail;
	cacheStackNode **nodes;
} cacheStack;

typedef struct {
	int maxTokenSize;
	int numTokens;
	int lineWidth;
	char *keys;
	cacheStack *keyStack;
	token *tokens;
} bucket;

int wordWidth(char * s, uint_fast8_t maxSz) {
	uint_fast8_t w;
	for (w = 0; w < maxSz && s[w] > ' '; ++w)
		;
	return w;
}

int tokcmp(const void *a, const void *b) {
	const uint64_t aTok = ((const token *)a)->key;
	const uint64_t bTok = ((const token *)b)->key;;
	if (aTok > bTok) {
		return 1;
	} else if (aTok < bTok) {
		return -1;
	} else {
		return 0;
	}
}

#ifdef PROFILE
double getElapsed(struct timeval *start) {
	struct timeval end;
	struct timeval diff;
	gettimeofday(&end, NULL);
	timersub(&end, start, &diff);
	double elapsed = (double)diff.tv_usec / 1000000.0;
	elapsed += diff.tv_sec;
	
	return elapsed;
}
#endif

// M is place value
#define M 76ULL
#define M_W 10
#define M_BASE 256

static const uint64_t remMul[M_W] = {
 	M*M*M*M*M*M*M*M*M,
 	M*M*M*M*M*M*M*M,
 	M*M*M*M*M*M*M,
 	M*M*M*M*M*M,
 	M*M*M*M*M,
 	M*M*M*M,
 	M*M*M,
 	M*M,
 	M,
 	1
};

static uint64_t cVal[M_W * M_BASE];

static void gen_cVal() {
	int ix_m;
	for (ix_m = 0; ix_m < M_W; ++ix_m) {
		int ix_c;
		for (ix_c = (int)'0'; ix_c <= 'z'; ++ix_c) {
			cVal[ix_m * M_BASE + ix_c] = (uint64_t)(ix_c - '0' + 1) * remMul[ix_m];
		}
	}
}

static inline ix_s_t idxStr(const char *s, const uint_fast8_t sz) {
	ix_s_t ix_s = 0;
	if (sz >= MAX_KEY_SZ) {
		uint64_t c;
		c = s[0];
		ix_s += cVal[M_BASE * 0 + c];

		c = s[1];
		ix_s += cVal[M_BASE * 1 + c];

		c = s[2];
		ix_s += cVal[M_BASE * 2 + c];

		c = s[3];
		ix_s += cVal[M_BASE * 3 + c];

		c = s[4];
		ix_s += cVal[M_BASE * 4 + c];

		c = s[5];
		ix_s += cVal[M_BASE * 5 + c];

		c = s[6];
		ix_s += cVal[M_BASE * 6 + c];

		c = s[7];
		ix_s += cVal[M_BASE * 7 + c];

		c = s[8];
		ix_s += cVal[M_BASE * 8 + c];

		c = s[9];
		ix_s += cVal[M_BASE * 9 + c];
	} else {
		uint_fast8_t i = 0;
		uint64_t *val = cVal;

		for (; i + 3 < sz;) {
			uint64_t ix_c = s[i];
			ix_s += val[ix_c];

			ix_c = s[i+1];
			ix_s += val[M_BASE + ix_c];

			ix_c = s[i+2];
			ix_s += val[M_BASE * 2 + ix_c];

			ix_c = s[i+3];
			ix_s += val[M_BASE * 3 + ix_c];

			val += M_BASE * 4;
			i += 4;
		}

		for (; i + 1 < sz;) {
			uint64_t ix_c = s[i];
			ix_s += val[ix_c];

			ix_c = s[i+1];
			ix_s += val[M_BASE + ix_c];

			val += M_BASE * 2;
			i += 2;
		}

		if (i < sz) {
			uint64_t ix_c = s[i];
			ix_s += val[ix_c];
		}
	}

	return ix_s;
}

int sizeStack(cacheStack *s) {
	return (s->numCaches - 1) * CACHE_SIZE + s->tail->sz;
}

void idxStack(cacheStack *s) {
	if (s->nodes != NULL) {
		free(s->nodes);
	}

	s->nodes = (cacheStackNode**)malloc(sizeof(cacheStackNode*) * s->numCaches);
	int ix_node;
	cacheStackNode *n = s->head;
	for (ix_node = 0; ix_node < s->numCaches; ++ix_node) {
		s->nodes[ix_node] = n;
		n = n->next;
	}
}

// TODO consider making it return a pointer
uint64_t getStack(cacheStack *s, int ix) {
#ifdef DEBUG
	int sz = sizeStack(s);
	if (ix >= sz) {
		fprintf(stderr, "Out of bounds. %d / %d \n", ix, sz);
		exit(1);
	}
	if (s->nodes == NULL) {
		fprintf(stderr, "Using get without idx.\n");
		exit(1);
	}
#endif

	int ix_cache = ix / CACHE_SIZE;
	return s->nodes[ix_cache]->cache[ix % CACHE_SIZE];
}

cacheStack* newStack() {
	cacheStack *s = (cacheStack*)malloc(sizeof(cacheStack));
	s->numCaches = 1;
	s->head = s->tail = (cacheStackNode*)malloc(sizeof(cacheStackNode));
	s->head->sz = 0;
	s->head->next = NULL;
	s->head->prev = s->head;
	s->nodes = NULL;

	return s;
}

static void growStack(cacheStack *s) {
	if (s->tail->next == NULL) {
		s->tail->next = (cacheStackNode*)malloc(sizeof(cacheStackNode));
		s->tail->next->prev = s->tail;
		s->tail = s->tail->next;
		s->tail->sz = 0;
		s->tail->next = NULL;
	} else {
		s->tail = s->tail->next;
	}
	++(s->numCaches);
}

static void pushStack(cacheStack *s, uint64_t num) {
	if (s->tail->sz >= CACHE_SIZE) {
		growStack(s);
	}

	s->tail->cache[s->tail->sz] = num;
	++(s->tail->sz);
}

// assumes cnt <= CACHE_SIZE
static void pushStack_n(cacheStack *s, uint64_t *nums, int cnt) {
	if (cnt + s->tail->sz > CACHE_SIZE) {
		int ix_n;
		for (ix_n = 0; s->tail->sz + ix_n < CACHE_SIZE; ++ix_n) {
			s->tail->cache[s->tail->sz + ix_n] = nums[ix_n];
		}
		s->tail->sz = CACHE_SIZE;
		growStack(s);
		int offset = ix_n;
		for ( ; ix_n < cnt; ++ix_n) {
			s->tail->cache[ix_n - offset] = nums[ix_n];
		}
		s->tail->sz += cnt - offset;
	} else {
		int ix_n;
		for (ix_n = 0; ix_n < cnt; ++ix_n) {
			s->tail->cache[ix_n + s->tail->sz] = nums[ix_n];
		}
		s->tail->sz += cnt;
	}
}
		

uint64_t pollStack(cacheStack *s) {
	return s->tail->cache[s->tail->sz - 1];
}

uint64_t popStack(cacheStack *s) {
#ifdef DEBUG
	if (s->tail->sz == 0) {
		fprintf(stderr, "popping empty stack\n");
		exit(1);
	}
#endif
	--s->tail->sz;
	uint64_t r = s->tail->cache[s->tail->sz];
	if (s->tail->sz == 0) {
		s->tail = s->tail->prev;
		--s->numCaches;
	}

	return r;
}

void freeStack(cacheStack *s) {
	if (s == NULL) {
		return;
	}

	cacheStackNode *n = s->head;
	while (n != NULL) {
		cacheStackNode *p = n;
		n = n->next;
		free(p);
	}
	free(s->nodes);
	free(s);
}

int loadFileIntoMemory(char **buffer, int *sz_buffer, char *inputFile) {
	static const char *mallocFailed = "malloc failed\n";
	static const char *statErr = "Error getting stats on file\n";
	static const char *loadErr = "Error loading file into memory\n";
	static const char *noFile = "Error: Cannot open file %s\n";

	// FILE *fopen(const char *path, const char *mode);
	FILE *fp = fopen(inputFile, "r");
	if (fp == NULL) {
		fprintf(stderr, noFile, inputFile);
		exit(1);
	}

	// struct stat {
	//	dev_t     st_dev;     /* ID of device containing file */
	//	ino_t     st_ino;     /* inode number */
	//	mode_t    st_mode;    /* protection */
	//	nlink_t   st_nlink;   /* number of hard links */
	//	uid_t     st_uid;     /* user ID of owner */
	//	gid_t     st_gid;     /* group ID of owner */
	//	dev_t     st_rdev;    /* device ID (if special file) */
	//	off_t     st_size;    /* total size, in bytes */
	//	blksize_t st_blksize; /* blocksize for file system I/O */
	//	blkcnt_t  st_blocks;  /* number of 512B blocks allocated */
	//	time_t    st_atime;   /* time of last access */
	//	time_t    st_mtime;   /* time of last modification */
	//	time_t    st_ctime;   /* time of last status change */
	//};
	struct stat fileStat;
	// int stat(const char *path, struct stat *buf);
	if (stat(inputFile, &fileStat) == -1) {
		fprintf(stderr, "%s", statErr);
		exit(1);
	}
	*sz_buffer = fileStat.st_size; // + 1 for null terminator
	if ((*buffer = (char*)malloc(*sz_buffer + 1)) == NULL) {
		fprintf(stderr, "%s", mallocFailed);
		exit(1);
	}

	// size_t fread(void *ptr, size_t size, size_t nmemb, FILE *stream);
	if (fread(*buffer, 1, *sz_buffer, fp) == 0 && *sz_buffer > 0) {
		fprintf(stderr, "%s", loadErr);
		exit(1);
	}

	(*buffer)[*sz_buffer] = '\0';

	fclose(fp);

	return 0;
}

// returns the start of the token not including the first character
uint_fast32_t getTokenStart(char *fileBuffer, const uint_fast32_t ix_file) {
	// try guessing it's the maximum size seen so far
	// can start at -2 since 0 is a delimiter
	// and -1 is known to not be a delimiter
	int tokenStart = ix_file - 2;
	char tokenStartC;
	// can't be newline since all newlines are replaces by \0
	while (tokenStart >= 0
			&& (tokenStartC = fileBuffer[tokenStart]) != ' '
			&& tokenStartC != '\0') {
		--tokenStart;
	}
	tokenStart += 2;

	return tokenStart;
}


// whatever is accessed least frequently should be in the middle, which is the token idx
inline static void foundToken(cacheStack *keys, bucket *buckets, char *onl, char *start, char *end, char *fileBuffer) {
	KeyData k;
	// TODO look up table. Make sure that you have entries for ' ' and '\0' also consider if it's one character and the first character
	if (start != end) {
		++start;
		k.d.ix_bucket = IX_BUCKET2(start[-2], start[-1]);
	} else {
		k.d.ix_bucket = IX_BUCKET1(start[-1]);
	}
	
	// ensure this bucket's max token size is updated
	// and mark the token
	uint_fast8_t curTokenSize = end - start;
	bucket *curBucket = &buckets[k.d.ix_bucket];
	if (curTokenSize > curBucket->maxTokenSize) {
		curBucket->maxTokenSize = curTokenSize;
	}


	k.d.ix_token = start - onl; // token will always be preceeded by a newline in keys
	uint64_t key;
	if (curTokenSize >= MAX_KEY_SZ) {
		key = idxStr(start, MAX_KEY_SZ);
	} else {
		key = idxStr(start, curTokenSize);
	}

	k.d.ix_nl = onl - fileBuffer;
#ifdef DEBUG
	printf("found %s ix_bucket %d ix_token %d ix_nl %d key %llu\n", start, k.d.ix_bucket, k.d.ix_token, k.d.ix_nl, (unsigned long long)key);
#endif
	uint64_t entry[2];
	entry[0] = k.i;
	entry[1] = key;
	pushStack_n(keys, entry, 2);

	++(curBucket->numTokens);
}


static void tokenize(char * const fileBuffer, const uint_fast32_t sz_file, const int colNum, cacheStack *newLines, cacheStack *tokens, cacheStack *keys, bucket *buckets, int *numLines) {
	const char *lineTooLong = "Line too long\n";

	uint_fast8_t ix_col = 1;
	uint_fast32_t ix_file;
	int ix_line = 0;
	int ix_lastLine = 0;

	if (sz_file > 0) {
		// TODO do look ahead to see if there are any spaces in the file
		// don't need to check last byte for token separator since there can't
		// be any tokens afterwards
		char *nxtSp = strchrnul(fileBuffer, ' ');
		if (colNum > MAX_COLS) {
			// TODO I don't think this can handle one character at the end
//			char *strchr(const char *s, int c);
			char *nl = fileBuffer - 1; // try using -1 and +1
			char *onl = fileBuffer; // start onl at the beginning of the buffer
			while ((nl = strchr(onl, '\n')) != NULL) {
#ifndef PROFILE
				if (nl - onl >= 128) {
					fprintf(stderr, "%s", lineTooLong);
					exit(1);
				}
#endif

				*nl = '\0';
				char *ix_tokenStart = onl + 1;
				if (nxtSp < nl) {
					ix_tokenStart = strrchr(ix_tokenStart, ' ') + 2;
				}
//				if (nxtSp > nl) {
//					ix_tokenStart = onl + 1;
//				} else {
//					// can't be null because we know that a space is within
//					ix_tokenStart = strrchr(onl, ' ') + 2;
//				}

				foundToken(keys, buckets, onl, ix_tokenStart, nl, fileBuffer);

				// set onl to one after nl so that it starts the new line
				onl = nl + 1;
			}

		} else {
			fprintf(stderr, "I broke this mode when I used a lookup table for comparisons. Try using a larger argument.\n");
			exit(0);
			// do the ix_file = 0 case separately since it's special without lookback
			ix_file = 0;
			uint_fast32_t ix_tokenStart = -1;
			{
				char c = fileBuffer[ix_file];
				if (c == '\n') {
					fileBuffer[ix_file] = '\0';
					if (ix_col <= colNum) {
						if (ix_col < colNum) {
//							char *onl = fileBuffer + pollStack(newLines);
//							char *sp = strrchr(onl, ' ');
//							if (sp == NULL) {
//								sp = onl - 1;
//							}
//							ix_tokenStart = sp - fileBuffer + 2;

							ix_tokenStart = getTokenStart(fileBuffer, ix_file);
						}
						// TODO fix so it can work again
#ifndef INT_SORT
						foundToken(fileBuffer, tokens, buckets, &maxTokenSz, &fileBuffer[ix_tokenStart], &fileBuffer[ix_file], ix_line);
#endif
					}
	
					pushStack(keys, ix_file + 1);
					ix_lastLine = ix_file + 1;
					ix_col = 1;
					++ix_line;
				} else if (c > ' ' && ix_col == colNum) {
					// start of token
					ix_tokenStart = ix_file + 1;
				}
			}

			for (ix_file = 1; ix_file < sz_file; ++ix_file) {
				// ix_col contains what column we are currently in, and we grab
				// the token when we move to a new column
				char c = fileBuffer[ix_file];
				if (c > ' ') {
					if (ix_tokenStart == -1) {
						// start of token
						ix_tokenStart = ix_file + 1;
					}
				} else if (ix_tokenStart != -1) {
					if (c == '\n') {
						if (ix_col <= colNum) {
#ifndef INT_SORT
							foundToken(fileBuffer, tokens, buckets, &maxTokenSz, &fileBuffer[ix_tokenStart], &fileBuffer[ix_file], ix_line);
#endif
						}
		
						if (ix_file - ix_lastLine >= 128) {
							fprintf(stderr, "%s", lineTooLong);
							exit(1);
						}
						fileBuffer[ix_file] = '\0';
						pushStack(keys, ix_file + 1);
						ix_lastLine = ix_file + 1;
						ix_col = 1;
						ix_tokenStart = -1;
						++ix_line;
					} else if (ix_col < colNum) {
						// end of non-column token
						++ix_col;
						ix_tokenStart = -1;
					} else if (ix_col == colNum) {
						// end of column token
#ifndef INT_SORT
						foundToken(fileBuffer, tokens, buckets, &maxTokenSz, &fileBuffer[ix_tokenStart], &fileBuffer[ix_file], ix_line);
#endif
						++ix_col;
						ix_tokenStart = -1;
					}
				}
			}
		}
	}

	*numLines = sizeStack(keys) / 2;
}

//void storeKeyInts(char *fileBuffer, int numLines, bucket *buckets) {
void storeKeyInts(cacheStack *keys, bucket *buckets, int numLines) {
	// need to store information on each bucket as we work through the single list of keys
	int ix_tokenBucket[NUM_BUCKETS];
	{
		int ix_bucket;
		for (ix_bucket = 0; ix_bucket < NUM_BUCKETS; ++ix_bucket) {
			bucket *curBucket = &buckets[ix_bucket];
			if (curBucket->numTokens > 0) {
				curBucket->tokens = (token*)malloc(sizeof(token) * curBucket->numTokens);
				ix_tokenBucket[ix_bucket] = 0;
			}
		}
	}
	int ix_line;
#ifdef DEBUG
	printf("numLines %d\n", numLines);
#endif
	for (ix_line = 0; ix_line < numLines; ++ix_line) {
		KeyData k = {.i = getStack(keys, ix_line * 2) };
    // DEBUG k.d.ix_bucket is pointing to an empty bucket
		bucket *curBucket = &buckets[k.d.ix_bucket];
		token *t = &curBucket->tokens[ix_tokenBucket[k.d.ix_bucket]];
		t->key = getStack(keys, ix_line * 2 + 1);
		t->line = ix_line;
#ifdef DEBUG
		printf("bucket %p line %d = %d t->line\n", curBucket, ix_line, t->line);
		printf("%d: %d = %llu\n", k.d.ix_bucket, t->line, (unsigned long long)t->key);
		printf("idx %p\n", &ix_tokenBucket[k.d.ix_bucket]);
#endif
		++ix_tokenBucket[k.d.ix_bucket];
	}
}

void storeKeys(char *fileBuffer, cacheStack *keys, int numLines, bucket *buckets, int maxSz) {
	// need to store information on each bucket as we work through the single list of keys
	int ix_tokenBucket[NUM_BUCKETS];
	int ix_bucket, ix_line;
	for (ix_bucket = 0; ix_bucket < NUM_BUCKETS; ++ix_bucket) {
		bucket *curBucket = &buckets[ix_bucket];
		if (curBucket->numTokens > 0) {
			int tokSz = curBucket->maxTokenSize;
			if (tokSz > maxSz) {
				tokSz = maxSz;
			}
			curBucket->lineWidth = tokSz + 1 + sizeof(int);
			curBucket->keys = (char*)malloc(KEY_LINE_WIDTH(curBucket) * curBucket->numTokens);
			ix_tokenBucket[ix_bucket] = 0;
		}
	}
	for (ix_line = 0; ix_line < numLines; ix_line++) {
		// need the index of the bucket, the index of the line within the bucket
		
		// look on the current line in the cache to see what the index of
		// the token on that line is
		// this is an offset from the new line, so also need new line offset
    KeyData k = {.i = getStack(keys, ix_line * 2) };
		// TODO I don't think this is getting set properly, so make sure it works
		int ix_file = k.d.ix_nl + k.d.ix_token;

		// get the address of the token in the file
		char *srcLine = &fileBuffer[ix_file];
		int sz_key = wordWidth(srcLine, maxSz);

		// guaranteed that ix_file - 1 is a character
		// look at the first one or two characters to pick a bucket
		if (ix_file - 2 >= 0 && fileBuffer[ix_file - 2] > ' ') {
			ix_bucket = IX_BUCKET2(fileBuffer[ix_file - 2], fileBuffer[ix_file - 1]);
		} else {
			ix_bucket = IX_BUCKET1(fileBuffer[ix_file - 1]);
		}

		// using the first character, look up the index of how many tokens have
		// been added to that bucket
		int ix_keyLine = ix_tokenBucket[ix_bucket]; // this must be a valid bucket by construction
		bucket *curBucket = &buckets[ix_bucket];

#ifdef DEBUG
		printf("ix_bucket %d ix_line %d keys %p ix_keyLine %d lineWidth %u\n", ix_bucket, ix_line, curBucket->keys, ix_keyLine, (unsigned)KEY_LINE_WIDTH(curBucket));
#endif

		// get the address of the key line in the bucket
		char *keyLine = GET_KEY(curBucket, ix_keyLine);
		// void *memcpy(void *dest, const void *src, size_t n);
		memcpy(keyLine, srcLine, sz_key);
		keyLine[sz_key] = '\0';

#ifdef DEBUG
		printf("key %s\n", keyLine);
#endif

		// store some meta data at the end of the row
		*GET_LINEADDR(curBucket, ix_keyLine) = ix_line;
//		*(int*)(keyLine + KEY_LINE_WIDTH(curBucket) - sizeof(int)) = ix_line;

		ix_tokenBucket[ix_bucket]++;
	}
}

void dump(char *fileBuffer, cacheStack *keys, bucket *buckets) {
	int ix_bucket;
	for (ix_bucket = 0; ix_bucket < NUM_BUCKETS; ++ix_bucket) {
		int ix_sortLine;
		bucket *curBucket = &buckets[ix_bucket];
		for (ix_sortLine = 0; ix_sortLine < curBucket->numTokens; ++ix_sortLine) {
			int ix_line = curBucket->tokens[ix_sortLine].line;
#ifdef DEBUG
			printf("%d -> %d\n", ix_sortLine, ix_line);
#endif
			KeyData k = {.i = getStack(keys, ix_line * 2) };
			printf("%s\n", &fileBuffer[k.d.ix_nl]);
		}
	}
}

int main(int argc, char *argv[]) {
	// args: fastsort file
	//       fastsort -N file
	char *inputFile;
	char *badArgs = "Error: Bad command line parameters\n";
	int areArgsValid = 0;
	int colNum = 1;
	char *endStr = NULL;

	// validate arguments
	if (argc == 2) {
		inputFile = argv[1];
		areArgsValid = 1;
	} else if (argc == 3 && argv[1][0] == '-') {
		// accept the input only if the only thing that remains is a
		// number and nothing else
		// long int strtol(const char *nptr, char **endptr, int base);
		colNum = strtol(&argv[1][1], &endStr, 10);
		if (endStr[0] == '\0') {
			inputFile = argv[2];
			areArgsValid = 1;
		}
	}
	if (areArgsValid == 0) {
		fprintf(stderr, "%s", badArgs);
		exit(1);
	}

	char *fileBuffer;
	int sz_file;
	loadFileIntoMemory(&fileBuffer, &sz_file, inputFile);
#ifdef INT_SORT
	gen_cVal();
#endif

#ifdef PROFILE
	// int gettimeofday(struct timeval *tv, struct timezone *tz);
	struct timeval startTime, initTime;
	double elapsed;
	gettimeofday(&startTime, NULL);
	initTime = startTime;
#endif

	// calculate number of lines and maximum token size, and store the
	// location of newlines
	// line indices are necessary for dump to be able to print by line
	// number
	cacheStack *newLines = newStack();
	cacheStack *tokens = newStack();
	cacheStack *keys = newStack();
	
	// set it up so that each bucket gets its own size counter
	int ix_bucket;
	bucket buckets[NUM_BUCKETS];
	for (ix_bucket = 0; ix_bucket < NUM_BUCKETS; ix_bucket++) {
		buckets[ix_bucket].maxTokenSize = 0;
		buckets[ix_bucket].numTokens = 0;
		buckets[ix_bucket].keys = 0;
		buckets[ix_bucket].tokens = NULL;
		buckets[ix_bucket].keyStack = NULL;
	}

	int numLines;
	tokenize(fileBuffer, sz_file, colNum, newLines, tokens, keys, buckets, &numLines);

#ifdef DEBUG
	printf("numCaches %d\n", keys->numCaches);
	printf("tokenized\n");
#endif

#ifdef PROFILE
	elapsed = getElapsed(&startTime);
	printf("%gs for tokenizing\n", elapsed);
	gettimeofday(&startTime, NULL);
#endif

	// store the keys
	// the string, a null terminator, and the corresponding line number
	idxStack(keys);
	storeKeyInts(keys, buckets, numLines);

#ifdef PROFILE
	elapsed = getElapsed(&startTime);
	printf("%g for storing tokens\n", elapsed);
	gettimeofday(&startTime, NULL);
#endif

#if MAX_KEY_SZ < 128
	int resort = 0;
#endif

	// void qsort(void *base, size_t nmemb, size_t size,
	//                   int(*compar)(const void *, const void *));
	for (ix_bucket = 0; ix_bucket < NUM_BUCKETS; ++ix_bucket) {
		bucket *curBucket = &buckets[ix_bucket];
		if (curBucket->numTokens > 0) {
			// do a qsort, then find equal tokens and sort them too
			qsort(curBucket->tokens, curBucket->numTokens, sizeof(token),
					tokcmp);

#if MAX_KEY_SZ < 128
			if (curBucket->maxTokenSize > MAX_KEY_SZ) {
				int ix_token;
				token *a = &curBucket->tokens[0];
				for (ix_token = 1; resort == 0 && ix_token < curBucket->numTokens; ++ix_token) {
					token *b = &curBucket->tokens[ix_token];
					if (a->key == b->key) {
						resort = 1;
					} else {
						a = b;
					}
				}
			}
			if (resort == 1) {
				break;
			}
#endif

		}
	}

#ifdef PROFILE
	elapsed = getElapsed(&startTime);
	printf("%g for sorting\n", elapsed);
	gettimeofday(&startTime, NULL);
#endif

#if MAX_KEY_SZ < 128
	if (resort == 1) {
		for (ix_bucket = 0; ix_bucket < NUM_BUCKETS; ++ix_bucket) {
			if (buckets[ix_bucket].keys != NULL) {
				free(buckets[ix_bucket].keys);
			}
		}

		storeKeys(fileBuffer, keys, numLines, buckets, 128);
		for (ix_bucket = 0; ix_bucket < NUM_BUCKETS; ++ix_bucket) {
			bucket *curBucket = &buckets[ix_bucket];
			if (curBucket->numTokens > 0) {
				qsort(curBucket->keys, curBucket->numTokens, KEY_LINE_WIDTH(curBucket),
					(int (*)(const void *, const void *))strcmp);
			}
		}
#ifdef PROFILE
		elapsed = getElapsed(&startTime);
		printf("%g for resorting\n", elapsed);
#endif
	}
#endif

#ifndef PROFILE
//	void dump(char *fileBuffer, int *newlineIdxs, bucket *buckets);
	dump(fileBuffer, keys, buckets);
#endif

	free(fileBuffer);
	for (ix_bucket = 0; ix_bucket < NUM_BUCKETS; ++ix_bucket) {
		if (buckets[ix_bucket].tokens != NULL) {
			free(buckets[ix_bucket].tokens);
		}

		if (buckets[ix_bucket].keys != NULL) {
			free(buckets[ix_bucket].keys);
		}
	}
	freeStack(newLines);
	freeStack(tokens);
	freeStack(keys);

#ifdef PROFILE
	elapsed = getElapsed(&initTime);
	printf("%g total time\n", elapsed);
#endif

	return 0;
}

