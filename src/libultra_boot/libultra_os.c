#include <ultra64.h>
#include <ultra64/os_internal.h>

#include "global.h"

void func_80002FA0(void)
{
    D_8000AC90 = 1;
    osCreateMesgQueue(&D_800145A8, &D_800145A0, 1);
    osSendMesg(&D_800145A8, NULL, OS_MESG_NOBLOCK);
}

void func_80002FF0(void)
{
    OSMesg mesg;

    if (!D_8000AC90)
        func_80002FA0();

    osRecvMesg(&D_800145A8, &mesg, OS_MESG_BLOCK);
}

void func_80003034(void)
{
    osSendMesg(&D_800145A8, 0, OS_MESG_NOBLOCK);
}

s32 osSendMesg(OSMesgQueue* mq, OSMesg mesg, s32 flag)
{
    register u32 s0 = __osDisableInt();
    register u32 index;

    while (mq->validCount >= mq->msgCount)
    {
        if (flag == OS_MESG_BLOCK)
        {
            D_8000AD50->state = 8;
            func_80004014(&mq->fullqueue);
        }
        else
        {
            func_800072F0(s0);
            return -1;
        }
    }

    index = (mq->first + mq->validCount) % mq->msgCount;
    mq->msg[index] = mesg;
    mq->validCount++;

    if (mq->mtqueue->next != NULL)
        osStartThread(func_8000415C(&mq->mtqueue));

    func_800072F0(s0);

    return 0;
}
