#include "profile.h"

//#ifdef PROFILE
#include <stdio.h>
#include <sys/time.h>
#include <time.h>
//#endif
#define PROFILE_CLOCK CLOCK_MONOTONIC

#ifdef PROFILE_MAIN
#define PROFILE
int main() {
	const int n = 100000;
	Timer t;
	profile_start(&t);
	long f[] = { 0, 1 };

	for (int i = 0; i < n; i++) {
		long nextF = f[0] + f[1];
		f[0] = f[1];
		f[1] = nextF;
	}
	profile_resetReport(&t, "time %f\n");
	printf("f(%d) = %ld\n", n, f[1]);
	return 0;
}
#endif

void profile_start(Timer* timer) {
#ifdef PROFILE
#ifdef CLOCK_GETTIME
	clock_gettime(PROFILE_CLOCK, timer);
#else
	gettimeofday(timer, NULL);	
#endif
#endif
}

void profile_resetReport(Timer* timer, const char* fmt) {
#ifdef PROFILE
	double elapsed = profile_reset(timer);
	printf(fmt, elapsed);
#endif
}

double profile_reset(Timer* timer) {
#ifdef PROFILE
#ifdef CLOCK_GETTIME
	struct timespec now;
	clock_gettime(PROFILE_CLOCK, &now);
	long diffNs = now.tv_nsec - timer->tv_nsec;
	time_t diffS = now.tv_sec - timer->tv_sec;
	*timer = now;

	return (double)diffNs / NSEC_SEC + diffS;
#else
	struct timeval now;
	gettimeofday(&now, NULL);
	suseconds_t diffUs = now.tv_usec - timer->tv_usec;
	time_t diffS = now.tv_sec - timer->tv_sec;
	*timer = now;
	return (double)diffUs / USEC_SEC + diffS;
#endif
#endif
	return 0.0;
}
