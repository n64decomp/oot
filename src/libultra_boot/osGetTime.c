#include <ultra64.h>
#include <ultra64/os_internal.h>

OSTime osGetTime(void)
{
    u32 sp34;
    u32 sp30;
    u64 t1;
    register u32 s0;

    s0 = __osDisableInt();
    sp34 = osGetCount();
    sp30 = sp34 - D_80015AE8;
    t1 = D_80015AE0;
    func_800072F0(s0);

    return sp30 + t1;
}
