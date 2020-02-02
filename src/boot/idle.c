#include <ultra64.h>
#include <global.h>

void func_800005A0(void* arg0)
{
    OSTime var1;

    osSyncPrintf(D_8000AFD0);
    DmaMgr_Start();
    osSyncPrintf(D_8000AFE0);
    var1 = osGetTime();
    DmaMgr_SendRequest1((u32)_dmadataSegmentEnd, (u32)_codeSegmentRomStart, _codeSegmentRomEnd - _codeSegmentRomStart, D_8000AFFC, 238);
    var1 -= osGetTime();
    osSyncPrintf(D_8000B008);
    osSyncPrintf(D_8000B028);
    bzero(_codeSegmentBssStart, _codeSegmentBssEnd - _codeSegmentBssStart);
    osSyncPrintf(D_8000B038);
    func_800C6E20(arg0);
    osSyncPrintf(D_8000B058);
}

// NON MATCHING
/*
void func_80000694(void* a0)
{
    u32* var1;
    u32* var2;
    u32* var3;
    u32* var4;
    u32 var5;

    osSyncPrintf(D_8000B068);
    osSyncPrintf(D_8000B08C, D_80012340);
    osSyncPrintf(D_8000B09C, D_80012350);
    osSyncPrintf(D_8000B0AC, D_80012364);
    osSyncPrintf(D_8000B0BC);

    osSyncPrintf(D_8000B0C4, osMemSize / 1024);

    osSyncPrintf(D_8000B100, _bootSegmentEnd);
    osSyncPrintf(D_8000B140, 0x96);
    osSyncPrintf(D_8000B168, 0x92);
    osSyncPrintf(D_8000B19C, 0x60);
    osSyncPrintf(D_8000B1CC, 3);

    osSyncPrintf(D_8000B1FC, ((s32)gSystemHeap - (s32)gAudioHeap) / 1024);

    osSyncPrintf(D_8000B22C);

    func_80008CA0(0xFE);

    D_8000943C = 0x42;
    D_80009440 = 1.0f;
    D_80009444 = 1.0f;

    if (osTvType != 0)
    {
        if (osTvType != 1)
        {
            if (osTvType != 2)
            {
                D_80013960 = 0x1E;
                var1 = &D_80013910;
                var2 = &D_8000AE50;

                do
                {
                    var4 = var2;
                    var3 = var1;
                    *var3 = *var4;
                    var3[1] = var4[1];
                    var3[2] = var4[2];
                    var1 = var3 + 3;
                    var2 = var4 + 3;
                }
                while (var4 + 3 != &D_8000AE98);

                var5 = var4[4];
                var3[3] = D_8000AE98;
                var3[4] = var5;
            }
            else
            {
                D_80013960 = 2;
                var1 = &D_80013910;
                var2 = &D_8000AE00;

                do
                {
                    var4 = var2;
                    var3 = var1;
                    *var3 = *var4;
                    var3[1] = var4[1];
                    var3[2] = var4[2];
                    var1 = var3 + 3;
                    var2 = var4 + 3;
                }
                while (var4 + 3 != &D_8000AE48);

                var5 = var4[4];
                var3[3] = D_8000AE48;
                var3[4] = var5;
            }
        }
    }
    else
    {
        D_80013960 = 0x2C;
        var1 = &D_80013910;
        var2 = &D_8000AF20;

        do
        {
            var4 = var2;
            var3 = var1;
            *var3 = *var4;
            var3[1] = var4[1];
            var3[2] = var4[2];
            var1 = var3 + 3;
            var2 = var4 + 3;
        }
        while (var4 + 3 != &D_8000AF68);

        var5 = var4[4];
        var3[3] = D_8000AF68;
        var3[4] = var5;
        D_80009444 = D_8000B238;
    }

    D_80009430 = 1;
    osViSetMode(&D_80013910);
    func_80000A10(1);
    osViBlack(1);
    osViSwapBuffer(0x803da80);
    func_80004780(0x96, &D_800138F8, &D_80013830, 0x32);
    StackCheck_Init(&D_80013810, &D_80012F10, &D_80013810, 0, 0x400, &D_8000B230);
    osCreateThread(sMainThread, 3, func_800005A0, a0, &D_80013810, 10);
    osStartThread(sMainThread);
    osSetThreadPri(0, 0);

    do
    {

    }
    while(1);
}
*/

#pragma GLOBAL_ASM("asm/non_matchings/boot/idle/func_80000694.s")
