#include <z64.h>
#include <global.h>

OSPiHandle* sISVHandle; //official name : is_Handle

#define gISVDbgPrnAdrs ((ISVDbg*)0xb3ff0000)
#define ASCII_TO_U32(a, b, c, d) ((u32)((a << 24) | (b << 16) | (c << 8) | (d << 0)))

void isPrintfInit()
{
    sISVHandle = osCartRomInit();
    osEPiWriteIo(sISVHandle, &gISVDbgPrnAdrs->put, 0);
    osEPiWriteIo(sISVHandle, &gISVDbgPrnAdrs->get, 0);
    osEPiWriteIo(sISVHandle, &gISVDbgPrnAdrs->magic, ASCII_TO_U32('I','S','6','4'));
}

void osSyncPrintfUnused(const char* fmt, ...)
{
    va_list args;
    va_start(args, fmt);

    _Printf(&is_proutSyncPrintf, NULL, fmt, args);
}

void osSyncPrintf(const char* fmt, ...)
{
    va_list args;
    va_start(args, fmt);

    _Printf(&is_proutSyncPrintf, NULL, fmt, args);
}

//assumption
void rmonPrintf(const char* fmt, ...)
{
    va_list args;
    va_start(args, fmt);

    _Printf(&is_proutSyncPrintf, NULL, fmt, args);
}

//single regalloc difference
#ifdef NON_MATCHING
u32 is_proutSyncPrintf(void* arg0, const char *str, s32 count)
{
    u32 data;
    s32 pos;
    s32 start;
    s32 end;

    osEPiReadIo(sISVHandle, &gISVDbgPrnAdrs->magic, &data);
    if (data != ASCII_TO_U32('I','S','6','4'))
        return 1;
    osEPiReadIo(sISVHandle, &gISVDbgPrnAdrs->get, &data);
    pos = data;
    osEPiReadIo(sISVHandle, &gISVDbgPrnAdrs->put, &data);
    start = data;
    end = start + count;
    if (end >= 0xffe0)
    {
        if (pos < end - 0xffe0 || start < pos)
            return 1;
    }
    else
    {
        if (start < pos && pos < end)
            return 1;
    }
    while (count)
    {
        u32 addr = (u32)&gISVDbgPrnAdrs->data + (start & 0xffffffc);
        s32 shift = ((3 - (start & 3)) * 8);
        if (*str)
        {
            osEPiReadIo(sISVHandle, addr, &data);
            osEPiWriteIo(sISVHandle, addr, (*str << shift) | (data & ~(0xff << shift)));

            start++;
            if (start >= 0xffe0)
                start -= 0xffe0;
        }
        count--;
        str++;
    }
    osEPiWriteIo(sISVHandle, &gISVDbgPrnAdrs->put, start);
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/boot/is/is_proutSyncPrintf.s")
#endif

void func_80002384(const char* exp, const char* file, u32 line)
{
    osSyncPrintf("File:%s Line:%d  %s \n", file, line, exp);
    while (true)
        ;
}