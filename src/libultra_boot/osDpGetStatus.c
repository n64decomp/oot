#include <ultra64.h>
#include <ultra64/os_internal.h>

u32 osDpGetStatus(void)
{
    return DPC_STATUS_REG;
}
