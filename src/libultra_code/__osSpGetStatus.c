#include <ultra64.h>
#include <global.h>

u32 __osSpGetStatus()
{
    return *(u32*)(SP_STATUS_REG);
}
