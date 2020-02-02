.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80146690
    .asciz "this"
    .balign 4

glabel D_80146698
    .asciz "../irqmgr.c"
    .balign 4

glabel D_801466A4
    .asciz "c"
    .balign 4

glabel D_801466A8
    .asciz "../irqmgr.c"
    .balign 4

glabel D_801466B4
    .asciz "msgQ"
    .balign 4

glabel D_801466BC
    .asciz "../irqmgr.c"
    .balign 4

glabel D_801466C8
    .asciz "this"
    .balign 4

glabel D_801466D0
    .asciz "../irqmgr.c"
    .balign 4

glabel D_801466DC
    .asciz "c"
    .balign 4

glabel D_801466E0
    .asciz "../irqmgr.c"
    .balign 4

glabel D_801466EC
    .asciz "\x1b[41;37mirqmgr_SendMesgForClient:\xA5\xE1\xA5\xC3\xA5\xBB\xA1\xBC\xA5\xB8\xA5\xAD\xA5\xE5\xA1\xBC\xA4\xAC\xA4\xA2\xA4\xD5\xA4\xEC\xA4\xC6\xA4\xA4\xA4\xDE\xA4\xB9 mq=%08x cnt=%d\n\x1b[m"
    # EUC-JP: メッセージキューがあふれています | Message queue is overflowing
    .balign 4

glabel D_80146744
    .asciz "\x1b[41;37mirqmgr_JamMesgForClient:\xA5\xE1\xA5\xC3\xA5\xBB\xA1\xBC\xA5\xB8\xA5\xAD\xA5\xE5\xA1\xBC\xA4\xAC\xA4\xA2\xA4\xD5\xA4\xEC\xA4\xC6\xA4\xA4\xA4\xDE\xA4\xB9 mq=%08x cnt=%d\n\x1b[m"
    # EUC-JP: メッセージキューがあふれています | Message queue is overflowing
    .balign 4

glabel D_80146798
    .asciz "irqmgr.c: PRENMI\xA4\xAB\xA4\xE9\x30\x2E\x35\xC9\xC3\xB7\xD0\xB2\xE1\n"
    # EUC-JP: から0.5秒経過 | 0.5 seconds after
    .balign 4

glabel D_801467B8
    .asciz "\xA5\xB9\xA5\xBF\xA5\xC3\xA5\xAF\xA4\xCF\xC2\xE7\xBE\xE6\xC9\xD7\xA4\xDF\xA4\xBF\xA4\xA4\xA4\xC7\xA4\xB9\n"
    # EUC-JP: スタックは大丈夫みたいです | The stack looks ok
    .balign 4

glabel D_801467D4
    .asciz "%c"
    .balign 4

glabel D_801467D8
    .asciz "\x1b[31m"
    .balign 4

glabel D_801467E0
    .asciz "\xA5\xB9\xA5\xBF\xA5\xC3\xA5\xAF\xA4\xAC\xA5\xAA\xA1\xBC\xA5\xD0\xA1\xBC\xA5\xD5\xA5\xED\xA1\xBC\xA4\xB7\xA4\xBF\xA4\xAB\xB4\xED\xB8\xB1\xA4\xCA\xBE\xF5\xC2\xD6\xA4\xC7\xA4\xB9\n"
    # EUC-JP: スタックがオーバーフローしたか危険な状態です | Stack overflow or dangerous
    .balign 4

glabel D_80146810
    .asciz "\xC1\xE1\xA1\xB9\xA4\xCB\xA5\xB9\xA5\xBF\xA5\xC3\xA5\xAF\xA5\xB5\xA5\xA4\xA5\xBA\xA4\xF2\xC1\xFD\xA4\xE4\xA4\xB9\xA4\xAB\xA1\xA2\xA5\xB9\xA5\xBF\xA5\xC3\xA5\xAF\xA4\xF2\xBE\xC3\xC8\xF1\xA4\xB7\xA4\xCA\xA4\xA4\xA4\xE8\xA4\xA6\xA4\xCB\xA4\xB7\xA4\xC6\xA4\xAF\xA4\xC0\xA4\xB5\xA4\xA4\n"
    # EUC-JP: 早々にスタックサイズを増やすか、スタックを消費しないようにしてください | Increase stack size early or don't consume stack
    .balign 4

glabel D_80146858
    .asciz "\x1b[m"
    .balign 4

glabel D_8014685C
    .asciz "osAfterPreNMI\xA4\xAC\x20\x25\x64\x20\xA4\xF2\xCA\xD6\xA4\xB7\xA4\xDE\xA4\xB7\xA4\xBF\xA1\xAA\xA1\xA9\n"
    # EUC-JP: が %d を返しました！？ | 'Returned d?!'
    .balign 4

glabel D_80146884
    .asciz "\xA3\xC9\xA3\xD2\xA3\xD1\xA5\xDE\xA5\xCD\xA1\xBC\xA5\xB8\xA5\xE3\xA5\xB9\xA5\xEC\xA5\xC3\xA5\xC9\xBC\xC2\xB9\xD4\xB3\xAB\xBB\xCF\n"
    # EUC-JP: ＩＲＱマネージャスレッド実行開始 | Start IRQ manager thread execution
    .balign 4

glabel D_801468A8
    .asciz "PRE_NMI_MSG\n"
    .balign 4

glabel D_801468B8
    .asciz "\xA5\xB9\xA5\xB1\xA5\xB8\xA5\xE5\xA1\xBC\xA5\xE9\xA1\xA7PRE_NMI\xA5\xE1\xA5\xC3\xA5\xBB\xA1\xBC\xA5\xB8\xA4\xF2\xBC\xF5\xBF\xAE\n"
    # EUC-JP: スケジューラ：PRE_NMIメッセージを受信 | Scheduler: Receives PRE_NMI message
    .balign 4

glabel D_801468E0
    .asciz "PRENMI450_MSG\n"
    .balign 4

glabel D_801468F0
    .asciz "\xA5\xB9\xA5\xB1\xA5\xB8\xA5\xE5\xA1\xBC\xA5\xE9\xA1\xA7PRENMI450\xA5\xE1\xA5\xC3\xA5\xBB\xA1\xBC\xA5\xB8\xA4\xF2\xBC\xF5\xBF\xAE\n"
    # EUC-JP: スケジューラ：PRENMI450メッセージを受信 | Scheduler: Receives PRENMI450 message
    .balign 4

glabel D_8014691C
    .asciz "PRENMI480_MSG\n"
    .balign 4

glabel D_8014692C
    .asciz "\xA5\xB9\xA5\xB1\xA5\xB8\xA5\xE5\xA1\xBC\xA5\xE9\xA1\xA7PRENMI480\xA5\xE1\xA5\xC3\xA5\xBB\xA1\xBC\xA5\xB8\xA4\xF2\xBC\xF5\xBF\xAE\n"
    # EUC-JP: スケジューラ：PRENMI480メッセージを受信 | Scheduler: Receives PRENMI480 message
    .balign 4

glabel D_80146958
    .asciz "PRENMI500_MSG\n"
    .balign 4

glabel D_80146968
    .asciz "\xA5\xB9\xA5\xB1\xA5\xB8\xA5\xE5\xA1\xBC\xA5\xE9\xA1\xA7PRENMI500\xA5\xE1\xA5\xC3\xA5\xBB\xA1\xBC\xA5\xB8\xA4\xF2\xBC\xF5\xBF\xAE\n"
    # EUC-JP: スケジューラ：PRENMI500メッセージを受信 | Scheduler: Receives PRENMI500 message
    .balign 4

glabel D_80146994
    .asciz "irqmgr.c:\xCD\xBD\xB4\xFC\xA4\xB7\xA4\xCA\xA4\xA4\xA5\xE1\xA5\xC3\xA5\xBB\xA1\xBC\xA5\xB8\xA4\xF2\xBC\xF5\xA4\xB1\xBC\xE8\xA4\xEA\xA4\xDE\xA4\xB7\xA4\xBF(%08x)\n"
    # EUC-JP: 予期しないメッセージを受け取りました | Unexpected message received
    .balign 4

glabel D_801469CC
    .asciz "\xA3\xC9\xA3\xD2\xA3\xD1\xA5\xDE\xA5\xCD\xA1\xBC\xA5\xB8\xA5\xE3\xA5\xB9\xA5\xEC\xA5\xC3\xA5\xC9\xBC\xC2\xB9\xD4\xBD\xAA\xCE\xBB\n"
    # EUC-JP: ＩＲＱマネージャスレッド実行終了 | End of IRQ manager thread execution
    .balign 4

glabel D_801469F0
    .asciz "this"
    .balign 4

glabel D_801469F8
    .asciz "../irqmgr.c"
    .balign 4

glabel D_80146A04
    .asciz "stack"
    .balign 4

glabel D_80146A0C
    .asciz "../irqmgr.c"
    .balign 4

glabel jtbl_80146A18
    .word L800D389C
    .word L800D393C
    .word L800D393C
    .word L800D38AC
    .word L800D393C
    .word L800D38D4
    .word L800D38F8
    .word L800D3918
