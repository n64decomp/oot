#include <ultra64.h>
#include <global.h>

void __osSpSetStatus(u32 a0)
{
    *(u32*)(SP_STATUS_REG) = a0;
}
