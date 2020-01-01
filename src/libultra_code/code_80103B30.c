#include <ultra64.h>
#include <global.h>

u32 func_80103B30()
{
    register u32 status;

    status = *(u32*)(SP_STATUS_REG);

    if (status & 0x1C)
        return 1;

    return 0;
}
