#include <global.h>

s32 osEPiWriteIo(OSPiHandle* handle, void* devAddr, u32 data)
{
    register s32 ret;

    __osPiGetAccess();
    ret = __osEPiRawWriteIo(handle, (u32)devAddr, data);
    __osPiRelAccess();

    return ret;
}
