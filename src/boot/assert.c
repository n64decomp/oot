#include <z64.h>

void __assert(const char* exp, const char* file, s32 line)
{
    char msg[256];
    osSyncPrintf("Assertion failed: %s, file %s, line %d, thread %d\n", exp, file, line, osGetThreadId(NULL));
    snprintf(msg, "ASSERT: %s:%d(%d)", file, line, osGetThreadId(NULL));
    Fault_AddHungupAndCrashImpl(msg, exp);
}


#pragma GLOBAL_ASM("asm/non_matchings/boot/assert/pad_80002068.s")