#include <ultra64.h>
#include <global.h>

typedef struct OSScTask
{
    /* 0x00 */ struct OSScTask* next;
    /* 0x04 */ u32            state;
    /* 0x08 */ u32            flags;
    /* 0x0C */ void*          framebuffer;
    /* 0x10 */ OSTask         list;
    /* 0x58 */ OSMesgQueue*   msgQ;
    /* 0x5C */ OSMesg         msg;
} OSScTask;

typedef struct
{
    /* 0x00 */ char     unk_00[0x12];
    /* 0x12 */ s8       unk_12;
} struct_800C8BC4;

typedef struct
{
    /* 0x0000 */ OSMesgQueue  interruptQ;
    /* 0x0018 */ OSMesg       intBuf[8];
    /* 0x0038 */ OSMesgQueue  cmdQ;
    /* 0x0050 */ OSMesg       cmdMsgBuf[8];
    /* 0x0070 */ OSThread     thread;
    /* 0x0220 */ char         unk_220[0x10];
    /* 0x0230 */ OSScTask*    curRSPTask;
    /* 0x0234 */ OSScTask*    curRDPTask;
    /* 0x0238 */ char         unk_238[0x08];
    /* 0x0240 */ struct_800C8BC4* unk_240;
    /* 0x0244 */ UNK_TYPE     pendingSwapBuf1;
    /* 0x0220 */ char         unk_248[0x04];
    /* 0x0220 */ UNK_TYPE     unk_24C;
    /* 0x0220 */ UNK_TYPE     unk_250;
    /* 0x0220 */ char         unk_254[0x04];
} SchedContext; // size = 0x258

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C82A0.s")

void func_800C84E4(SchedContext* sc, UNK_TYPE arg1)
{
    if (sc->unk_24C != 0)
    {
        sc->unk_24C = 0;

        if (D_8012DBD0 == 0)
            func_80000A10(0);
    }

    func_800C82A0(arg1);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C8534.s")

void func_800C87CC(SchedContext* sc)
{
    func_80000A10(1);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C87F0.s")

void func_800C8910(SchedContext* sc)
{
    if (!(sc->curRSPTask->state & 0x10))
    {
        if (sc->curRSPTask->list.t.type == M_AUDTASK)
            __assert(D_80145F68, D_80145F94, 496);

        sc->curRSPTask->state |= 0x10;

        osSpTaskYield();

        if (D_8012D290 != 0)
            osSyncPrintf(D_80145FA0, (u32)((osGetTime() * 64) / 3000));
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C89D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C8A94.s")

typedef struct
{
    /* 0x00 */ char     unk_00[0x04];
    /* 0x00 */ u32      unk_04;
    /* 0x00 */ u32      unk_08;
    /* 0x0C */ UNK_TYPE unk_0C;
    /* 0x10 */ char     unk_10[0x40];
    /* 0x50 */ OSMesgQueue* msgQ;
    /* 0x54 */ OSMesg   msg;
} struct_800C8C40;

void func_800C8BC4(SchedContext* sc, struct_800C8C40* arg1)
{
    if (sc->pendingSwapBuf1 == 0)
    {
        sc->pendingSwapBuf1 = arg1->unk_0C;

        func_80002DA0(D_80145FFC, sc->pendingSwapBuf1, D_80146014, 618);

        if ((sc->unk_240 == NULL) || (sc->unk_240->unk_12 < 1))
            func_800C84E4(sc, arg1->unk_0C);
    }
}

u32 func_800C8C40(SchedContext* sc, struct_800C8C40* arg1)
{
    if (!(arg1->unk_04 & 3))
    {
        if (arg1->msgQ != NULL)
            osSendMesg(arg1->msgQ, arg1->msg, OS_MESG_BLOCK);

        if (arg1->unk_08 & 0x40)
            func_800C8BC4(sc, arg1);

        return 1;
    }

    return 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C8CB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C8EDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C9018.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C91BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C94B4.s")

void func_800C95F8(OSMesgQueue* mq)
{
    if (D_8012D290 != 0)
        osSyncPrintf(D_801461CC);

    osSendMesg(mq, 670, OS_MESG_BLOCK);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C9644.s")

void func_800C9874(SchedContext* sc, void* stack, OSPri priority, UNK_TYPE arg3, UNK_TYPE arg4, UNK_TYPE arg5)
{
    bzero(sc, sizeof(SchedContext));
    sc->unk_24C = 1;
    osCreateMesgQueue(&sc->interruptQ, sc->intBuf, 8);
    osCreateMesgQueue(&sc->cmdQ, sc->cmdMsgBuf, 8);
    func_80005220(4, &sc->interruptQ, 667);
    func_80005220(9, &sc->interruptQ, 668);
    func_800D3220(arg5, &sc->unk_250, sc);
    osCreateThread(&sc->thread, 5, func_800C9644, sc, stack, priority);
    osStartThread(&sc->thread);
}
