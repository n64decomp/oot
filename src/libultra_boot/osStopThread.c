#include <ultra64.h>
#include <ultra64/os_internal.h>

void osStopThread(OSThread* thread)
{
    register u32 s0 = __osDisableInt();
    register u32 state;

    if (thread == NULL)
        state = 4;
    else
        state = thread->state;

    switch (state)
    {
    case 4:
        D_8000AD50->state = 1;
        func_80004014(NULL);
        break;
    case 2:
    case 8:
        thread->state = 1;
        __osDequeueThread(thread->queue, thread);
        break;
    }

    func_800072F0(s0);
}
