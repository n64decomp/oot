.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80145670
    .asciz "\x1b[32m"
    .balign 4

glabel D_80145678
    .asciz "\xA5\xB7\xA5\xB9\xA5\xC6\xA5\xE0\xA5\xD2\xA1\xBC\xA5\xD7\xA5\xB5\xA5\xA4\xA5\xBA %08x(%dKB) \xB3\xAB\xBB\xCF\xA5\xA2\xA5\xC9\xA5\xEC\xA5\xB9 %08x\n"
    # EUC-JP: システムヒープサイズ %08x(%dKB) 開始アドレス %08x | System heap size% 08x (% dKB) Start address% 08x
    .balign 4

glabel D_801456AC
    .asciz "\x1b[m"
    .balign 4

glabel D_801456B0
    .asciz "mainproc \xBC\xC2\xB9\xD4\xB3\xAB\xBB\xCF\n"
    # EUC-JP: 実行開始 | Start running
    .balign 4

glabel D_801456C4
    .asciz "\xA5\xB7\xA5\xB9\xA5\xC6\xA5\xE0\xA5\xD2\xA1\xBC\xA5\xD7\xBD\xE9\xB4\xFC\xB2\xBD %08x-%08x %08x\n"
    # EUC-JP: システムヒープ初期化 | System heap initalization
    .balign 4

glabel D_801456EC
    .asciz "../main.c"
    .balign 4

glabel D_801456F8
    .asciz "debug_InitArena(%08x, %08x)\n"
    .balign 4

glabel D_80145718
    .asciz "irqmgr"
    .balign 4

glabel D_80145720
    .asciz "\xA5\xBF\xA5\xB9\xA5\xAF\xA5\xB9\xA5\xB1\xA5\xB8\xA5\xE5\xA1\xBC\xA5\xE9\xA4\xCE\xBD\xE9\xB4\xFC\xB2\xBD\n"
    # EUC-JP: タスクスケジューラの初期化 Initialize the task scheduler
    .balign 4

glabel D_8014573C
    .asciz "sched"
    .balign 4

glabel D_80145744
    .asciz "audio"
    .balign 4

glabel D_8014574C
    .asciz "padmgr"
    .balign 4

glabel D_80145754
    .asciz "graph"
    .balign 4

glabel D_8014575C
    .asciz "main.c: \xA5\xEA\xA5\xBB\xA5\xC3\xA5\xC8\xA4\xB5\xA4\xEC\xA4\xBF\xA4\xDF\xA4\xBF\xA4\xA4\xA4\xC0\xA4\xE8\n"
    # EUC-JP: リセットされたみたいだよ | Looks like it's been reset
    .balign 4

glabel D_80145780
    .asciz "mainproc \xB8\xE5\xBB\xCF\xCB\xF6\n"
    # EUC-JP: 後始末  | Cleanup
    .balign 4

glabel D_80145794
    .asciz "mainproc \xBC\xC2\xB9\xD4\xBD\xAA\xCE\xBB\n"
    # EUC-JP: 実行終了| End of execution
    .balign 4
