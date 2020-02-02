.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80145180
    .asciz "vtx_cnt=%d\n"
    .balign 4

glabel D_8014518C
    .asciz "spvtx_cnt=%d\n"
    .balign 4

glabel D_8014519C
    .asciz "tri1_cnt=%d\n"
    .balign 4

glabel D_801451AC
    .asciz "tri2_cnt=%d\n"
    .balign 4

glabel D_801451BC
    .asciz "quad_cnt=%d\n"
    .balign 4

glabel D_801451CC
    .asciz "line_cnt=%d\n"
    .balign 4

glabel D_801451DC
    .asciz "sync_err=%d\n"
    .balign 4

glabel D_801451EC
    .asciz "loaducode_cnt=%d\n"
    .balign 4

glabel D_80145200
    .asciz "dl_depth=%d\n"
    .balign 4

glabel D_80145210
    .asciz "dl_cnt=%d\n"
    .balign 4

glabel D_8014521C
    .asciz "../graph.c"
    .balign 4

glabel D_80145228
    .asciz "game_init_func = %08x\n"
    .balign 4

glabel D_80145240
    .asciz "\x1b[31m"
    .balign 4

glabel D_80145248
    .asciz "RCP\xA4\xAC\xB5\xA2\xA4\xC3\xA4\xC6\xA4\xAD\xA4\xDE\xA4\xBB\xA4\xF3\xA4\xC7\xA4\xB7\xA4\xBF\xA1\xA3"
    .balign 4

glabel D_80145264
    .asciz "\x1b[m"
    .balign 4

glabel D_80145268
    .asciz "RCP is HUNG UP!!"
    .balign 4

glabel D_8014527C
    .asciz "Oh! MY GOD!!"
    .balign 4

glabel D_8014528C
    .asciz "../graph.c"
    .balign 4

glabel D_80145298
    .asciz "../graph.c"
    .balign 4

glabel D_801452A4
    .asciz "../graph.c"
    .balign 4

glabel D_801452B0
    .asciz "WORK_DISP \xB3\xAB\xBB\xCF"
    # EUC-JP: 開始 | Start
    .balign 4

glabel D_801452C0
    .asciz "POLY_OPA_DISP \xB3\xAB\xBB\xCF"
    # EUC-JP: 開始 | Start
    .balign 4

glabel D_801452D4
    .asciz "POLY_XLU_DISP \xB3\xAB\xBB\xCF"
    # EUC-JP: 開始 | Start
    .balign 4

glabel D_801452E8
    .asciz "OVERLAY_DISP \xB3\xAB\xBB\xCF"
    # EUC-JP: 開始 | Start
    .balign 4

glabel D_801452FC
    .asciz "../graph.c"
    .balign 4

glabel D_80145308
    .asciz "../graph.c"
    .balign 4

glabel D_80145314
    .asciz "WORK_DISP \xBD\xAA\xCE\xBB"
    # EUC-JP: 終了 | End
    .balign 4

glabel D_80145324
    .asciz "POLY_OPA_DISP \xBD\xAA\xCE\xBB"
    # EUC-JP: 終了 | End
    .balign 4

glabel D_80145338
    .asciz "POLY_XLU_DISP \xBD\xAA\xCE\xBB"
    # EUC-JP: 終了 | End
    .balign 4

glabel D_8014534C
    .asciz "OVERLAY_DISP \xBD\xAA\xCE\xBB"
    # EUC-JP: 終了 | End
    .balign 4

glabel D_80145360
    .asciz "../graph.c"
    .balign 4

glabel D_8014536C
    .asciz "../graph.c"
    .balign 4

glabel D_80145378
    .asciz "../graph.c"
    .balign 4

glabel D_80145384
    .asciz "do_count_fault"
    .balign 4

glabel D_80145394
    .asciz "%c"
    .balign 4

glabel D_80145398
    .asciz "\x1b[41;37m\xA5\xC0\xA5\xA4\xA5\xCA\xA5\xDF\xA5\xC3\xA5\xAF\xCE\xCE\xB0\xE8\xC0\xE8\xC6\xAC\xA4\xAC\xC7\xCB\xB2\xF5\xA4\xB5\xA4\xEC\xA4\xC6\xA4\xA4\xA4\xDE\xA4\xB9\n\x1b[m"
    #ダイナミック領域先頭が破壊されています | Dynamic area head is destroyed
    .balign 4

glabel D_801453CC
    .asciz "../graph.c"
    .balign 4

glabel D_801453D8
    .asciz "%c"
    .balign 4

glabel D_801453DC
    .asciz "\x1b[41;37m\xA5\xC0\xA5\xA4\xA5\xCA\xA5\xDF\xA5\xC3\xA5\xAF\xCE\xCE\xB0\xE8\xCB\xF6\xC8\xF8\xA4\xAC\xC7\xCB\xB2\xF5\xA4\xB5\xA4\xEC\xA4\xC6\xA4\xA4\xA4\xDE\xA4\xB9\n\x1b[m"
    # EUC-JP: ダイナミック領域末尾が破壊されています | Dynamic region tail is destroyed
    .balign 4

glabel D_80145410
    .asciz "../graph.c"
    .balign 4

glabel D_8014541C
    .asciz "%c"
    .balign 4

glabel D_80145420
    .asciz "\x1b[41;37m\xA5\xBC\xA5\xEB\xA5\xC0\x30\xA4\xCF\xBB\xE0\xA4\xF3\xA4\xC7\xA4\xB7\xA4\xDE\xA4\xC3\xA4\xBF(graph_alloc is empty)\n\x1b[m"
    # EUC-JP: ゼルダ0は死んでしまった | 'Zelda 0 is dead'?
    .balign 4

glabel D_8014545C
    .asciz "%c"
    .balign 4

glabel D_80145460
    .asciz "\x1b[41;37m\xA5\xBC\xA5\xEB\xA5\xC0\x31\xA4\xCF\xBB\xE0\xA4\xF3\xA4\xC7\xA4\xB7\xA4\xDE\xA4\xC3\xA4\xBF(graph_alloc is empty)\n\x1b[m"
    # EUC-JP: ゼルダ1は死んでしまった | 'Zelda 1 is dead'?
    .balign 4

glabel D_8014549C
    .asciz "%c"
    .balign 4

glabel D_801454A0
    .asciz "\x1b[41;37m\xA5\xBC\xA5\xEB\xA5\xC0\x34\xA4\xCF\xBB\xE0\xA4\xF3\xA4\xC7\xA4\xB7\xA4\xDE\xA4\xC3\xA4\xBF(graph_alloc is empty)\n\x1b[m"
    # EUC-JP: ゼルダ4は死んでしまった | 'Zelda 4 is dead'?
    .balign 4

glabel D_801454DC
    .asciz "\x1b[43;30mPRE-NMI\xA4\xCB\xA4\xE8\xA4\xEA\xA5\xEA\xA5\xBB\xA5\xC3\xA5\xC8\xA5\xE2\xA1\xBC\xA5\xC9\xA4\xCB\xB0\xDC\xB9\xD4\xA4\xB7\xA4\xDE\xA4\xB9\n\x1b[m"
    # EUC-JP: によりリセットモードに移行します | To reset mode
    .balign 4

glabel D_80145510
    .asciz "\xA5\xB0\xA5\xE9\xA5\xD5\xA5\xA3\xA5\xC3\xA5\xAF\xA5\xB9\xA5\xEC\xA5\xC3\xA5\xC9\xBC\xC2\xB9\xD4\xB3\xAB\xBB\xCF\n"
    # EUC-JP: グラフィックスレッド実行開始 | Start graphic thread execution
    .balign 4

glabel D_80145530
    .asciz "\xA5\xAF\xA5\xE9\xA5\xB9\xA5\xB5\xA5\xA4\xA5\xBA\xA1\xE1%d\xA5\xD0\xA5\xA4\xA5\xC8\n"
    # EUC-JP: クラスサイズ＝%dバイト | Class size =%d bytes
    .balign 4

glabel D_80145548
    .asciz "../graph.c"
    .balign 4

glabel D_80145554
    .asciz "\xB3\xCE\xCA\xDD\xBC\xBA\xC7\xD4\n"
    # EUC-JP: 確保失敗 | Failure to secure
    .balign 4

glabel D_80145560
    .asciz "CLASS SIZE= %d bytes"
    .balign 4

glabel D_80145578
    .asciz "GAME CLASS MALLOC FAILED"
    .balign 4

glabel D_80145594
    .asciz "../graph.c"
    .balign 4

glabel D_801455A0
    .asciz "\xA5\xB0\xA5\xE9\xA5\xD5\xA5\xA3\xA5\xC3\xA5\xAF\xA5\xB9\xA5\xEC\xA5\xC3\xA5\xC9\xBC\xC2\xB9\xD4\xBD\xAA\xCE\xBB\n"
    # EUC-JP: グラフィックスレッド実行終了 | End of graphic thread execution
    .balign 4

glabel D_801455C0
    .asciz "graph_alloc siz=%d thga size=%08x bufp=%08x head=%08x tail=%08x\n"
    .balign 4

glabel D_80145604
    .asciz "graph_alloc siz=%d thga size=%08x bufp=%08x head=%08x tail=%08x\n"
    .balign 4
