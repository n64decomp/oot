#include <ultra64.h>
#include <ultra64/os_internal.h>

void osSetThreadPri(OSThread* thread, OSPri pri)
{
    register u32 s0 = __osDisableInt();

    if (thread == NULL)
        thread = D_8000AD50;

    if (thread->priority != pri)
    {
        thread->priority = pri;
        if (thread != D_8000AD50 && thread->state != 1)
        {
            __osDequeueThread(thread->queue, thread);
            func_80004114(thread->queue, thread);
        }
        if (D_8000AD50->priority < D_8000AD48->priority)
        {
            D_8000AD50->state = 2;
            func_80004014(&D_8000AD48);
        }
    }

    func_800072F0(s0);
}
