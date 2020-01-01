#include <ultra64.h>
#include <ultra64/os_internal.h>

void osCreateThread(OSThread* thread, OSId id, void (*entry)(void*), void* arg, void* sp, OSPri pri)
{
    register u32 s0;
    u32 t8;

    thread->id = id;
    thread->priority = pri;
    thread->next = (struct OSThread_s*)NULL;
    thread->queue = (struct OSThread_s**)NULL;
    thread->context.pc = (u32)entry;
    thread->context.a0 = (u64)arg;
    thread->context.sp = (u64)sp - 16;
    thread->context.ra = (u64)func_800042F0;
    t8 = 0x3FFF01;
    thread->context.sr = (t8 & 0xFF01) | 2;
    thread->context.rcp = (t8 & 0x3F0000) >> 16;
    thread->context.fpcsr = 0x01000800;
    thread->fp = 0;
    thread->state = 1;
    thread->flags = 0;

    s0 = __osDisableInt();
    thread->tlnext = D_8000AD4C;
    D_8000AD4C = thread;
    func_800072F0(s0);
}
