#include <ultra64.h>
#include <ultra64/os_internal.h>

void osCreateMesgQueue(OSMesgQueue* mq, OSMesg* msg, s32 count)
{
    mq->mtqueue = D_8000AD40;
    mq->fullqueue = D_8000AD40;
    mq->validCount = 0;
    mq->first = 0;
    mq->msgCount = count;
    mq->msg = msg;
}
