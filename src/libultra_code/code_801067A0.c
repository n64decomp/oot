#include <ultra64.h>
#include <global.h>

s32 func_801067A0(u32 a0)
{
    register u32 spStatus;

    spStatus = *(u32*)(SP_STATUS_REG);

    if (!(spStatus & SP_STATUS_HALT))
        return -1;

    *(u32*)(SP_PC_REG) = a0;

    return 0;
}
