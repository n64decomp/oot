#include <ultra64.h>
#include <ultra64/os_internal.h>

void osStartThread(OSThread* thread)
{
    register u32 s0 = __osDisableInt();

    switch (thread->state)
    {
    case 8:
        thread->state = 2;
        func_80004114(&D_8000AD48, thread);
        break;
    case 1:
        if (thread->queue == NULL || thread->queue == &D_8000AD48)
        {
            thread->state = 2;
            func_80004114(&D_8000AD48, thread);
        }
        else
        {
            thread->state = 8;
            func_80004114(thread->queue, thread);
            func_80004114(&D_8000AD48, func_8000415C(thread->queue));
        }
        break;
    }

    if (D_8000AD50 == NULL)
    {
        func_80004174();
    }
    else
    {
        if (D_8000AD50->priority < D_8000AD48->priority)
        {
            D_8000AD50->state = 2;
            func_80004014(&D_8000AD48);
        }
    }

    func_800072F0(s0);
}
