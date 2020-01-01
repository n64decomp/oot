#include <ultra64.h>
#include <ultra64/os_internal.h>

OSPri osGetThreadPri(OSThread* thread)
{
    if (thread == NULL)
        thread = D_8000AD50;

    return thread->priority;
}
