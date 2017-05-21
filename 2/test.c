#include <time.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/time.h>
// isort is faster at 2^8
#define REPS   (1 << 16)
#define N    (1 << 8)

double restart(struct timeval *start) {
	struct timeval end;
	struct timeval diff;
	gettimeofday(&end, NULL);
	timersub(&end, start, &diff);
	double elapsed = (double)diff.tv_usec / 1000000.0;
	elapsed += diff.tv_sec;

	gettimeofday(start, NULL);
	
	return elapsed;
}

void dump(int *a[]) {
	int ix_r, ix_n;
	for (ix_r = 0; ix_r < REPS; ++ix_r) {
		printf("%d ix_r ", ix_r);
		for (ix_n = 0; ix_n < N; ++ix_n) {
			printf("%d ", a[ix_r][ix_n]);
		}
		printf("\n");
	}
}

void isort(int *a) {
	int i, j;
	for (i = 1; i < N; ++i) {
		int x = a[i];
		j = i - 1;
		while (j >= 0 && a[j] > x) {
			a[j+1] = a[j];
			--j;
		}
		a[j+1] = x;
	}
}

int icmp(const int *a, const int *b) {
	return *a - *b;
}

void genA(int *a[]) {
	int ix_r, ix_n;
	srand(5);
	for (ix_r = 0; ix_r < REPS; ++ix_r) {
		a[ix_r] = (int*)malloc(sizeof(int) * N);
		for (ix_n = 0; ix_n < N; ++ix_n) {
			a[ix_r][ix_n] = rand();
		}
	}
}


int main(int argc, char *argv[]) {
	struct timeval t;
	int *a[REPS];
	int *b[REPS];
	int ix_r;
	genA(a);
	genA(b);

	for (ix_r = 0; ix_r < REPS; ++ix_r) {
		int i;
		for (i = 0; i < N; ++i) {
			if (a[ix_r][i] != b[ix_r][i]) {
				printf("weird\n");
			}
		}
	}

	restart(&t);
	for (ix_r = 0; ix_r < REPS; ++ix_r) {
		qsort(a[ix_r], N, sizeof(int), (__compar_fn_t)icmp);
	}
	printf("%gs qsort\n", restart(&t));

	restart(&t);
	for (ix_r = 0; ix_r < REPS; ++ix_r) {
 		isort(b[ix_r]);
	}
	printf("%gs isort\n", restart(&t));

	for (ix_r = 0; ix_r < REPS; ++ix_r) {
		int i;
		for (i = 0; i < N; ++i) {
			if (a[ix_r][i] != b[ix_r][i]) {
				printf("weird\n");
			}
		}
	}



	return 0;
}
