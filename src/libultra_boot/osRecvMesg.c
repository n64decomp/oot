#include <ultra64.h>
#include <ultra64/os_internal.h>

s32 osRecvMesg(OSMesgQueue* mq, OSMesg* msg, s32 flag)
{
    register s32 s0 = __osDisableInt();

    while (mq->validCount == 0)
    {
        if (flag == OS_MESG_NOBLOCK)
        {
            func_800072F0(s0);
            return -1;
        }
        D_8000AD50->state = 8;
        func_80004014(mq);
    }

    if (msg != NULL)
        *msg = mq->msg[mq->first];

    mq->first = (mq->first + 1) % mq->msgCount;
    mq->validCount--;

    if (mq->fullqueue->next != NULL)
        osStartThread(func_8000415C(&mq->fullqueue));

    func_800072F0(s0);

    return 0;
}
