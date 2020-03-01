#include <global.h>

#define LOG_SEVERITY_NOLOG          0
#define LOG_SEVERITY_ERROR          2
#define LOG_SEVERITY_VERBOSE        3

s32 gSystemArenaLogSeverity = LOG_SEVERITY_NOLOG;
Arena sSystemArena;

void SystemArena_CheckPointer(void* ptr, u32 size, const char* name, const char* action)
{
    if (!ptr)
    {
        if (gSystemArenaLogSeverity >= LOG_SEVERITY_ERROR)
        {
            //"%s: %u bytes %s failed\n"
            osSyncPrintf("%s: %u バイトの%sに失敗しました\n", name, size, action);
            __osDisplayArena(&sSystemArena);  
            return;
        }
    }
    else if (gSystemArenaLogSeverity >= LOG_SEVERITY_VERBOSE)
    {
        //"%s: %u bytes %s succeeded\n"
        osSyncPrintf("%s: %u バイトの%sに成功しました\n", name, size, action);
    }
}

void* SystemArena_Malloc(u32 size)
{
    void* ptr;
    ptr = __osMalloc(&sSystemArena, size);
    SystemArena_CheckPointer(ptr, size, "malloc", "確保"); //Secure
    return ptr;
}

void* SystemArena_MallocDebug(u32 size, const char* file, s32 line)
{
    void* ptr;
    ptr = __osMallocDebug(&sSystemArena, size, file, line);
    SystemArena_CheckPointer(ptr, size, "malloc_DEBUG", "確保"); //Secure
    return ptr;
}

void* SystemArena_MallocR(u32 size)
{
    void* ptr;
    ptr = __osMallocR(&sSystemArena, size);
    SystemArena_CheckPointer(ptr, size, "malloc_r", "確保"); //Secure
    return ptr;
}

void* SystemArena_MallocRDebug(u32 size, const char* file, s32 line)
{
    void* ptr;
    ptr = __osMallocRDebug(&sSystemArena, size, file, line);
    SystemArena_CheckPointer(ptr, size, "malloc_r_DEBUG", "確保"); //Secure
    return ptr;
}

void* SystemArena_Realloc(void* ptr, u32 newSize)
{
    ptr = __osRealloc(&sSystemArena, ptr, newSize);
    SystemArena_CheckPointer(ptr, newSize, "realloc", "再確保"); // Re-securing
    return ptr;
}

void* SystemArena_ReallocDebug(void* ptr, u32 newSize, const char* file, s32 line)
{
    ptr = __osReallocDebug(&sSystemArena, ptr, newSize, file, line);
    SystemArena_CheckPointer(ptr, newSize, "realloc_DEBUG", "再確保"); // Re-securing
    return ptr;
}

void SystemArena_Free(void* ptr)
{
    __osFree(&sSystemArena, ptr);
}

void SystemArena_FreeDebug(void* ptr, const char* file, s32 line)
{
    __osFreeDebug(&sSystemArena, ptr, file, line);
}

void* SystemArena_Calloc(u32 num, u32 size)
{
    void* ret;
    u32 n;
    
    n = num*size;
    ret = __osMalloc(&sSystemArena, n);
    if (ret)
        bzero(ret, n);

    SystemArena_CheckPointer(ret, n, "calloc", "確保");
    return ret;
}

void SystemArena_Display()
{
    //System heap display
    osSyncPrintf("システムヒープ表示\n");
    __osDisplayArena(&sSystemArena);
}

void SystemArena_GetSizes(u32* outMaxFree, u32* outFree, u32* outAlloc)
{
    ArenaImpl_GetSizes(&sSystemArena, outMaxFree, outFree, outAlloc);
}

void SystemArena_Check()
{
    __osCheckArena(&sSystemArena);
}

void SystemArena_Init(void* start, u32 size)
{
    gSystemArenaLogSeverity = LOG_SEVERITY_NOLOG;
    __osMallocInit(&sSystemArena, start, size);
}

void SystemArena_Cleanup()
{
    gSystemArenaLogSeverity = LOG_SEVERITY_NOLOG;
    __osMallocCleanup(&sSystemArena);
}

u8 SystemArena_IsInitalized()
{
    return __osMallocIsInitalized(&sSystemArena);
}
