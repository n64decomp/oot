#include <ultra64.h>
#include <ultra64/os_internal.h>

void osDpSetStatus(u32 status)
{
    DPC_STATUS_REG = status;
}
