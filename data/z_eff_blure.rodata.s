.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80135130
    .asciz "\xA5\xD6\xA5\xE9\xA8\xA1\xC4\xBA\xC5\xC0\xC4\xC9\xB2\xC3\xBD\xE8\xCD\xFD\x3A\xA5\xC6\xA1\xBC\xA5\xD6\xA5\xEB\xA5\xAA\xA1\xBC\xA5\xD0\xA1\xBC %d\n"
    # EUC-JP: ブラ─頂点追加処理:テーブルオーバー | Bra vertex addition processing: table over
    .balign 4

glabel D_80135158
    .asciz "\xA5\xD6\xA5\xE9\xA8\xA1\xB6\xF5\xC7\xF2\xC4\xC9\xB2\xC3\xBD\xE8\xCD\xFD\x3A\xA5\xC6\xA1\xBC\xA5\xD6\xA5\xEB\xA5\xAA\xA1\xBC\xA5\xD0\xA1\xBC\x20\x25\x64\n"
    # EUC-JP: ブラ─空白追加処理:テーブルオーバー %d | Black space addition processing: Table over% d
    .balign 4

glabel D_80135180
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_80135194
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_801351A8
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_801351BC
    .asciz "z_eff_blure.c::SQ_NoInterpolate_disp() \xC4\xBA\xC5\xC0\xB3\xCE\xCA\xDD\xA4\xC7\xA4\xAD\xA4\xBA\xA1\xA3\n"
    # EUC-JP: 頂点確保できず。 | The vertex cannot be secured.
    .balign 4

glabel D_801351F8
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_8013520C
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_80135220
    .asciz "index - 1 >= 0"
    .balign 4

glabel D_80135230
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_80135244
    .asciz "index + 2 < this2->now_edge_num"
    .balign 4

glabel D_80135264
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_80135278
    .asciz "z_eff_blure.c::SQ_HermiteInterpolate_disp() \xC4\xBA\xC5\xC0\xB3\xCE\xCA\xDD\xA4\xC7\xA4\xAD\xA4\xBA\xA1\xA3\n"
    # EUC-JP: 頂点確保できず。 | The vertex cannot be secured.
    .balign 4

glabel D_801352B8
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_801352CC
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_801352E0
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_801352F4
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_80135308
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_8013531C
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_80135330
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_80135344
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_80135358
    .asciz "EffectBlureInfo2_disp_makeDisplayList()\xA5\xDE\xA5\xC8\xA5\xEA\xA5\xC3\xA5\xAF\xA5\xB9\xBC\xE8\xA4\xEC\xA4\xCA\xA4\xA4\xA4\xCE\xA4\xC7\x2C\xB6\xAF\xC0\xA9\xBD\xAA\xCE\xBB\n"
    # EUC-JP: マトリックス取れないので,強制終了 | Forced termination because matrix cannot be taken
    .balign 4

glabel D_801353A4
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_801353B8
    .asciz "\xA5\xD6\xA5\xE9\xA8\xA1\xC9\xBD\xBC\xA8\x3A\xC4\xBA\xC5\xC0\xB3\xCE\xCA\xDD\xA4\xC7\xA4\xAD\xA4\xBA\xA1\xA3\xB6\xAF\xC0\xA9\xBD\xAA\xCE\xBB\n"
    # EUC-JP: ブラ─表示:頂点確保できず。強制終了 | Blue display: Vertex cannot be secured. forced termination
    .balign 4

glabel D_801353E0
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_801353F4
    .asciz "\xA5\xD6\xA5\xE9\xA8\xA1\xC9\xBD\xBC\xA8\x3A\xC4\xBA\xC5\xC0\xA5\xC6\xA1\xBC\xA5\xD6\xA5\xEB\xB3\xCE\xCA\xDD\xA4\xC7\xA4\xAD\xA4\xBA\n"
    # EUC-JP:  ブラ─表示:頂点テーブル確保できず | Bra display: Vertex table could not be secured
    .balign 4

glabel D_80135418
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_8013542C
    .float 0.008

glabel D_80135430
    .float 0.7071

glabel jtbl_80135434
    .word L80020E0C
    .word L80020A9C
    .word L80020B0C
    .word L80020B84
    .word L80020C34

glabel D_80135448
    .float 0.1

glabel D_8013544C
    .float 0.0005
