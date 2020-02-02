.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80145D40
    .asciz "cfbinfo->swapbuffer"
    .balign 4

glabel D_80145D54
    .asciz "../sched.c"
    .balign 4

glabel D_80145D60
    .asciz "osViSwapBuffer %08x %08x %08x\n"
    .balign 4

glabel D_80145D80
    .asciz "../sched.c"
    .balign 4

glabel D_80145D8C
    .asciz "(((u64)(now - audio_rsp_start_time)*(1000000LL/15625LL))/((62500000LL*3/4)/15625LL)) = %lld\n"
    .balign 4

glabel D_80145DEC
    .asciz "../sched.c"
    .balign 4

glabel D_80145DF8
    .asciz "(((u64)(now - graph_rsp_start_time)*(1000000LL/15625LL))/((62500000LL*3/4)/15625LL)) = %lld\n"
    .balign 4

glabel D_80145E58
    .asciz "../sched.c"
    .balign 4

glabel D_80145E64
    .asciz "(((u64)(now - rdp_start_time)*(1000000LL/15625LL))/((62500000LL*3/4)/15625LL)) = %lld\n"
    .balign 4

glabel D_80145EBC
    .asciz "(type == M_AUDTASK) || (type == M_GFXTASK) || (type == M_NJPEGTASK) || (type == M_NULTASK)"
    .balign 4

glabel D_80145F18
    .asciz "../sched.c"
    .balign 4

glabel D_80145F24
    .asciz "\xA5\xAA\xA1\xBC\xA5\xC7\xA5\xA3\xA5\xAA\xA5\xBF\xA5\xB9\xA5\xAF\xA4\xF2\xA5\xA8\xA5\xF3\xA5\xC8\xA5\xEA\xA4\xB7\xA4\xDE\xA4\xB7\xA4\xBF\n"
    # EUC-JP: オーディオタスクをエントリしました | Audio task entered
    .balign 4

glabel D_80145F48
    .asciz "\xA5\xB0\xA5\xE9\xA5\xD5\xA5\xBF\xA5\xB9\xA5\xAF\xA4\xF2\xA5\xA8\xA5\xF3\xA5\xC8\xA5\xEA\xA4\xB7\xA4\xDE\xA4\xB7\xA4\xBF\n"
    # EUC-JP: グラフタスクをエントリしました | Graph task entered
    .balign 4

glabel D_80145F68
    .asciz "sc->curRSPTask->list.t.type != M_AUDTASK"
    .balign 4

glabel D_80145F94
    .asciz "../sched.c"
    .balign 4

glabel D_80145FA0
    .asciz "%08d:osSpTaskYield\n"
    .balign 4
    .asciz "sc->pending_swapbuffer1"
    .balign 4
    .asciz "../sched.c"
    .balign 4
    .asciz "sc->pending_swapbuffer2"
    .balign 4
    .asciz "../sched.c"
    .balign 4

glabel D_80145FFC
    .asciz "sc->pending_swapbuffer1"
    .balign 4

glabel D_80146014
    .asciz "../sched.c"
    .balign 4

glabel D_80146020
    .asciz "sc->curRSPTask == NULL"
    .balign 4

glabel D_80146038
    .asciz "../sched.c"
    .balign 4

glabel D_80146044
    .asciz "%08d:osSpTaskStartGo(%08x) %s\n"    
    .balign 4

glabel D_80146064
    .asciz "AUDIO"
    .balign 4

glabel D_8014606C
    .asciz "GRAPH"
    .balign 4

glabel D_80146074
    .asciz "OTHER"
    .balign 4

glabel D_8014607C
    .asciz "[YIELD B]"
    .balign 4

glabel D_80146088
    .asciz "EN sc:%08x sp:%08x dp:%08x state:%x\n"
    .balign 4

glabel D_801460B0
    .asciz "%08d:scHandleRetrace %08x\n"
    .balign 4

glabel D_801460CC
    .asciz "%08x %08x %08x %d\n"
    .balign 4

glabel D_801460E0
    .asciz "sc->curRSPTask"
    .balign 4

glabel D_801460F0
    .asciz "../sched.c"
    .balign 4

glabel D_801460FC
    .asciz "RSP DONE %d %d"
    .balign 4

glabel D_8014610C
    .asciz "[YIELDED]\n"
    .balign 4

glabel D_80146118
    .asciz "[NOT YIELDED]\n"
    .balign 4

glabel D_80146128
    .asciz "SP sc:%08x sp:%08x dp:%08x state:%x\n"
    .balign 4    

glabel D_80146150
    .asciz "sc->curRDPTask"
    .balign 4

glabel D_80146160
    .asciz "../sched.c"
    .balign 4

glabel D_8014616C
    .asciz "sc->curRDPTask->list.t.type == M_GFXTASK"
    .balign 4

glabel D_80146198
    .asciz "../sched.c"
    .balign 4

glabel D_801461A4
    .asciz "DP sc:%08x sp:%08x dp:%08x state:%x\n"
    .balign 4

glabel D_801461CC
    .asciz "osScKickEntryMsg\n"
    .balign 4

glabel D_801461E0
    .asciz "%08d:\xC2\xD4\xB5\xA1\xC3\xE6\n"
    # EUC-JP: 待機中 | Waiting
    .balign 4

glabel D_801461F0
    .asciz "%08d:ENTRY_MSG\n"
    .balign 4

glabel D_80146200
    .asciz "%08d:RSP_DONE_MSG\n"
    .balign 4

glabel D_80146214
    .asciz "%08d:RDP_DONE_MSG\n"
    .balign 4
