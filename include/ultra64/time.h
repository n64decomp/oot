#ifndef _ULTRA64_TIME_H_
#define _ULTRA64_TIME_H_

#include <ultra64/message.h>

//TODO : move to convert.h ?
#define	OS_CLOCK_RATE		62500000LL
#define	OS_CPU_COUNTER		(OS_CLOCK_RATE*3/4)
#define OS_USEC_TO_CYCLES(n)	(((u64)(n)*(OS_CPU_COUNTER/15625LL))/(1000000LL/15625LL))

/* Types */

typedef u64 OSTime;

typedef struct OSTimer_s
{
	struct OSTimer_s *next;
	struct OSTimer_s *prev;
	OSTime interval;
	OSTime value;
	OSMesgQueue *mq;
	OSMesg msg;
} OSTimer;


/* Functions */

OSTime osGetTime(void);

int osSetTimer(OSTimer *timer, OSTime countdown, OSTime interval, OSMesgQueue *mq, OSMesg msg);
void osStopTimer(OSTimer *timer);

#endif
