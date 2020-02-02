#include <z64.h>
#include <global.h>

char* proutSprintf(char* dst, const char *fmt, size_t size)
{
    return memcpy(dst, fmt, size) + size;
}

s32 vsnprintf(char* dst, const char* fmt, va_list args)
{
    s32 ret = _Printf(&proutSprintf, dst, fmt, args);
    if (ret > -1)
        dst[ret] = 0;
    return ret;
}

s32 snprintf(char* dst, const char* fmt, ...)
{
    s32 ret;
    va_list args;
    va_start(args, fmt);

    ret = _Printf(&proutSprintf, dst, fmt, args);
    if (ret > -1)
        dst[ret] = 0;
    return ret;
}