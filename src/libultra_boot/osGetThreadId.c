#include <ultra64.h>
#include <ultra64/os_internal.h>

OSId osGetThreadId(OSThread* thread)
{
    if (thread == NULL)
        thread = D_8000AD50;

    return thread->id;
}
