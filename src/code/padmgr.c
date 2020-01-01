#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x00 */ char unk_00[0x68];
} PadMgr_2BC_Entry; // size = 0x68

typedef struct
{
    /* 0x00 */ u16 type;
    /* 0x02 */ u8 status;
    /* 0x03 */ u8 errnb;
} OSContStatus; // size = 0x04

typedef struct
{
    /* 0x0000 */ OSContStatus pad_status[4];
    /* 0x0010 */ OSMesg unk_10[1];
    /* 0x0014 */ OSMesg unk_14[1];
    /* 0x0018 */ OSMesg unk_18[4];
    /* 0x0028 */ OSMesgQueue unk_28;
    /* 0x0040 */ OSMesgQueue unk_40;
    /* 0x0058 */ OSMesgQueue unk_58;
    /* 0x0070 */ UNK_TYPE unk_70;
    /* 0x0074 */ UNK_TYPE unk_74;
    /* 0x0078 */ UNK_TYPE unk_78;
    /* 0x007C */ UNK_TYPE unk_7C;
    /* 0x0080 */ OSThread thread;
    /* 0x0230 */ char unk_230[0x78];
    /* 0x02A8 */ u8 unk_2A8;
    /* 0x02A9 */ u8 unk_2A9;
    /* 0x02AA */ u8 unk_2AA[4];
    /* 0x02AA */ u8 unk_2AE[4];
    /* 0x02B2 */ u8 unk_2B2[4];
    /* 0x02B6 */ u8 unk_2B6[4];
    /* 0x02BA */ char unk_2BA[0x02];
    /* 0x02BC */ PadMgr_2BC_Entry unk_2BC[4];
    /* 0x045C */ u8 unk_45C;
    /* 0x045D */ u8 unk_45D;
    /* 0x045E */ u8 unk_45E;
    /* 0x045F */ u8 unk_45F;
    /* 0x0460 */ char unk_460[0x08];
} PadMgr; // size = 0x468

OSMesg func_800C7250(PadMgr* padmgr)
{
    OSMesg mesg = NULL;

    if (D_8012D280 > 2)
        osSyncPrintf(D_801457B0, osGetThreadId(NULL), padmgr->unk_28.validCount, padmgr, &padmgr->unk_28, &mesg);

    osRecvMesg(&padmgr->unk_28, &mesg, OS_MESG_BLOCK);

    if (D_8012D280 > 2)
        osSyncPrintf(D_801457F0, osGetThreadId(NULL), padmgr->unk_28.validCount, mesg);

    return mesg;
}

void func_800C72FC(PadMgr* padmgr, OSMesg mesg)
{
    if (D_8012D280 > 2)
        osSyncPrintf(D_8014582C, osGetThreadId(NULL), padmgr->unk_28.validCount, padmgr, &padmgr->unk_28, mesg);

    osSendMesg(&padmgr->unk_28, mesg, OS_MESG_BLOCK);

    if (D_8012D280 > 2)
        osSyncPrintf(D_80145860, osGetThreadId(NULL), padmgr->unk_28.validCount, padmgr, &padmgr->unk_28, mesg);
}

void func_800C73BC(PadMgr* padmgr)
{
    osRecvMesg(&padmgr->unk_40, 0, OS_MESG_BLOCK);
}

void func_800C73E4(PadMgr* padmgr)
{
    osSendMesg(&padmgr->unk_40, 0, OS_MESG_BLOCK);
}

#ifdef NON_MATCHING
void func_800C740C(PadMgr* padmgr)
{
    s32 var1;
    OSMesg var2;
    s32 var3;
    s32 var4;
    s32 i;

    var2 = func_800C7250(padmgr);
    var1 = 0;

    for (i = 0; i < 4; i++)
    {
        if (padmgr->unk_2AA[i] != 0)
        {
            if (padmgr->pad_status[i].status & 1)
            {
                if (padmgr->unk_2AE[i] == 1)
                {
                    if (padmgr->unk_2B2[i] != 0)
                    {
                        if (padmgr->unk_2B6[i] < 3)
                        {
                            osSyncPrintf(D_80145894);
                            osSyncPrintf(D_8014589C, i + 1, D_801458B0);
                            osSyncPrintf(D_801458CC);
                            if (func_80100780(&padmgr->unk_2BC[i], 1) != 0)
                            {
                                padmgr->unk_2AE[i] = 0;
                                osSyncPrintf(D_801458D0);
                                osSyncPrintf(D_801458D8, i + 1, D_801458EC);
                                osSyncPrintf(D_80145914);
                            }
                            else
                            {
                                padmgr->unk_2B6[i] = 3;
                            }
                            var1 = 1;
                        }
                    }
                    else
                    {
                        if (padmgr->unk_2B6[i] != 0)
                        {
                            osSyncPrintf(D_80145918);
                            osSyncPrintf(D_80145920, i + 1, D_80145934);
                            osSyncPrintf(D_80145944);
                            if (func_80100780(&padmgr->unk_2BC[i], 0) != 0)
                            {
                                padmgr->unk_2AE[i] = 0;
                                osSyncPrintf(D_80145948);
                                osSyncPrintf(D_80145950, i + 1, D_80145964);
                                osSyncPrintf(D_8014598C);
                            }
                            else
                            {
                                padmgr->unk_2B6[i]--;
                            }
                            var1 = 1;
                        }
                    }
                }
            }
            else
            {
                if (padmgr->unk_2AE[i] != 0)
                {
                    if (padmgr->unk_2AE[i] == 1)
                    {
                        osSyncPrintf(D_80145990);
                        osSyncPrintf(D_80145998, i + 1, D_801459AC);
                        osSyncPrintf(D_801459CC);
                        padmgr->unk_2AE[i] = 0;
                    }
                    else
                    {
                        osSyncPrintf(D_801459D0);
                        osSyncPrintf(D_801459D8, i + 1, D_801459EC);
                        osSyncPrintf(D_80145A24);
                        padmgr->unk_2AE[i] = 0;
                    }
                }
            }
        }
    }

    if (!var1)
    {
        var3 = D_8016A4F0 % 4;

        if ((padmgr->unk_2AA[var3] != 0) && (padmgr->pad_status[var3].status & 1) && (padmgr->unk_2AE[var3] != 1))
        {
            var4 = func_801009F4(var2, &padmgr->unk_2BC[var3], var3);

            if (var4 == 0)
            {
                padmgr->unk_2AE[var3] = 1;
                func_80100780(&padmgr->unk_2BC[var3], 1);
                func_80100780(&padmgr->unk_2BC[var3], 0);
                osSyncPrintf(D_80145A28);
                osSyncPrintf(D_80145A30, var3 + 1, D_80145A44);
                osSyncPrintf(D_80145A60);
            }
            else if (var4 == 11)
            {
                padmgr->unk_2AE[var3] = 2;
            }
            else if (var4 == 4)
            {
                SyncPrintfWithThreadId(D_80145A64, 282);
                D_8012D284++;
                osSyncPrintf(D_80145A70);
                osSyncPrintf(D_80145A80);
                osSyncPrintf(D_80145A88, var3 + 1, D_80145A9C);
                osSyncPrintf(D_80145ABC);
            }
        }
    }

    D_8016A4F0++;
    func_800C72FC(padmgr, var2);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/padmgr/func_800C740C.s")
#endif

void func_800C7818(PadMgr* padmgr)
{
    s32 i;
    OSMesg mesg;

    mesg = func_800C7250(padmgr);

    for (i = 0; i < 4; i++)
    {
        if (func_801009F4(mesg, &padmgr->unk_2BC[i], i) == 0)
        {
            if ((gFaultStruct.msgId == 0) && (padmgr->unk_45D != 0))
            {
                osSyncPrintf(D_80145AC0);
                osSyncPrintf(D_80145AC8, i + 1, D_80145ADC);
                osSyncPrintf(D_80145AEC);
            }

            func_80100780(&padmgr->unk_2BC[i], 0);
        }
    }

    func_800C72FC(padmgr, mesg);
}

void func_800C7928(PadMgr* padmgr)
{
    padmgr->unk_45C = 3;
}

void func_800C7934(PadMgr* padmgr, u32 a1, u32 a2)
{
    padmgr->unk_2B2[a1] = a2;
    padmgr->unk_45D = 0xF0;
}

#ifdef NON_MATCHING
void func_800C7948(PadMgr* padmgr, u8* a1)
{
    padmgr->unk_2B2[0] = a1[0];
    padmgr->unk_2B2[1] = a1[1];
    padmgr->unk_2B2[2] = a1[2];
    padmgr->unk_2B2[3] = a1[3];

    padmgr->unk_45D = 0xF0; // NON MATCHING - T0 and T9 are reordered for some reason
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/padmgr/func_800C7948.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/padmgr/func_800C7974.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/padmgr/func_800C7C14.s")

void func_800C7DD0(PadMgr* padmgr)
{
    osSyncPrintf(D_80145C40);
    padmgr->unk_45E = 1;
    func_800C7928(padmgr);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/padmgr/func_800C7E08.s")

void func_800C7F80(PadMgr* padmgr)
{
    s16* mesg;
    s32 bVar2;

    mesg = NULL;
    osSyncPrintf(D_80145C58);
    bVar2 = 0;

    while (bVar2 == 0)
    {
        if ((D_8012D280 > 2) && (padmgr->unk_58.validCount == 0))
            osSyncPrintf(D_80145C78, (osGetTime() * 64) / 3000);

        osRecvMesg(&padmgr->unk_58, &mesg, OS_MESG_BLOCK);
        NullPointerCheck(D_80145CA0, mesg, D_80145CA4, 563);

        switch (*mesg)
        {
            case 1:
                if (D_8012D280 > 2)
                    osSyncPrintf(D_80145CB0, (osGetTime() * 64) / 3000);

                func_800C7C14(padmgr);

                if (D_8012D280 > 2)
                    osSyncPrintf(D_80145CD4, (osGetTime() * 64) / 3000);

                break;
            case 4:
                func_800C7DD0(padmgr);
                break;
            case 3:
                bVar2 = 1;
                break;
        }
    }

    func_800D3300(padmgr->unk_78, &padmgr->unk_70);
    osSyncPrintf(D_80145CF8);
}

void func_800C819C(PadMgr* padmgr, OSMesg mesg, UNK_TYPE arg2, OSId id, OSPri priority, void* stack)
{
    osSyncPrintf(D_80145D18);
    bzero(padmgr, sizeof(PadMgr));
    padmgr->unk_78 = arg2;

    osCreateMesgQueue(&padmgr->unk_58, padmgr->unk_18, 4);
    func_800D3220(padmgr->unk_78, &padmgr->unk_70, &padmgr->unk_58);
    osCreateMesgQueue(&padmgr->unk_28, padmgr->unk_10, 1);
    func_800C72FC(padmgr, mesg);
    osCreateMesgQueue(&padmgr->unk_40, padmgr->unk_14, 1);
    func_800C73E4(padmgr);
    func_800FCD40(mesg, &padmgr->unk_2A8, padmgr);

    padmgr->unk_2A9 = 4;
    func_80104D00(padmgr->unk_2A9);

    osCreateThread(&padmgr->thread, id, func_800C7F80, padmgr, stack, priority);
    osStartThread(&padmgr->thread);
}
