#ifndef PROFILE_H
#define PROFILE_H

#define NSEC_SEC 1000000000L
#define USEC_SEC 1000000L

#ifdef CLOCK_GETTIME
typedef struct timespec Timer;
#else
typedef struct timeval Timer;
#endif

void profile_start(Timer* timer);
// this is done as one to avoid redundant timer calls
// fmt takes only one double
void profile_resetReport(Timer* timer, const char* fmt);
double profile_reset(Timer* timer);

#endif
