#include <ultra64.h>
#include <global.h>

u8 sBootThreadInfo[0x20];
OSThread sIdleThread;
u8 sIdleThreadStack[0x400];
u8 sIdleThreadInfo[0x20];
u8 sBootThreadStack[0x400];
OSThread sMainThread;

void* D_80009410[] = 
{
    &osStopThread,
    &func_80009270,
    &__osSetFpcCsr,
    &__osGetFpcCsr,
    &func_800092E0,
    &func_80009270,
    &osViGetNextFramebuffer,
    &bcmp,
};

void cleararena(void)
{
    bzero(_dmadataSegmentStart, (u8*)osMemSize - OS_K0_TO_PHYSICAL(_dmadataSegmentStart));
}

void bootproc(void)
{
    StackCheck_Init(sBootThreadInfo, sBootThreadStack, sBootThreadStack+sizeof(sBootThreadStack), 0, -1, "boot");

    osMemSize = func_80005100();
    cleararena();
    func_8000345C();
    func_80003708();

    gCartHandle = osCartRomInit();
    func_800023D0();
    isPrintfInit();
    Locale_Init();
    
    StackCheck_Init(sIdleThreadInfo, sIdleThreadStack, sIdleThreadStack+sizeof(sIdleThreadStack), 0, 256, "idle");
    osCreateThread(&sIdleThread, 1, func_80000694, 0, sIdleThreadInfo, 10);
    osStartThread(&sIdleThread);
}
