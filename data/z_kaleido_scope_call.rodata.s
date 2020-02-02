.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80143F50
    .asciz "\x1b[32m"
    .balign 4

glabel D_80143F58
    .asciz "\xA5\xAB\xA5\xEC\xA5\xA4\xA5\xC9\xCE\xCE\xB0\xE8\x20\xB6\xAF\xC0\xA9\xC7\xD3\xBD\xFC\n"
    # EUC-JP: カレイド領域 強制排除 | Kaleido area forced exclusion
    .balign 4

glabel D_80143F70
    .asciz "\x1b[m"
    .balign 4

glabel D_80143F74
    .asciz "\x1b[32m"
    .balign 4

glabel D_80143F7C
    .asciz "\xA5\xD7\xA5\xEC\xA5\xA4\xA5\xE4\xA1\xBC\xA5\xA2\xA5\xAF\xA5\xBF\xA1\xBC\xC8\xC2\xC6\xFE\n"
    # EUC-JP: プレイヤーアクター搬入 | Player actor import
    .balign 4

glabel D_80143F94
    .asciz "\x1b[m"
    .balign 4

glabel D_80143F98
    .asciz "\xA5\xAB\xA5\xEC\xA5\xA4\xA5\xC9\xA1\xA6\xA5\xB9\xA5\xB3\xA1\xBC\xA5\xD7\xC6\xFE\xA4\xEC\xC2\xD8\xA4\xA8\x20\xA5\xB3\xA5\xF3\xA5\xB9\xA5\xC8\xA5\xE9\xA5\xAF\xA5\xC8 \n"
    # EUC-JP: カレイド・スコープ入れ替え コンストラクト | Kaleidoscope replacement construct
    .balign 4

glabel D_80143FC4
    .asciz "../z_kaleido_scope_call.c"
    .balign 4

glabel D_80143FE0
    .asciz "kaleido_scope_move = %08x\n"
    .balign 4

glabel D_80143FFC
    .asciz "../z_kaleido_scope_call.c"
    .balign 4

glabel D_80144018
    .asciz "kaleido_scope_move_func = %08x\n"
    .balign 4

glabel D_80144038
    .asciz "../z_kaleido_scope_call.c"
    .balign 4

glabel D_80144054
    .asciz "kaleido_scope_draw = %08x\n"
    .balign 4

glabel D_80144070
    .asciz "../z_kaleido_scope_call.c"
    .balign 4

glabel D_8014408C
    .asciz "kaleido_scope_draw_func = %08x\n"
    .balign 4

glabel D_801440AC
    .asciz "\xA5\xAB\xA5\xEC\xA5\xA4\xA5\xC9\xA1\xA6\xA5\xB9\xA5\xB3\xA1\xBC\xA5\xD7\xC6\xFE\xA4\xEC\xC2\xD8\xA4\xA8\x20\xA5\xC7\xA5\xB9\xA5\xC8\xA5\xE9\xA5\xAF\xA5\xC8 \n"
    # EUC-JP:  カレイド・スコープ入れ替え デストラクト | Kaleidoscope replacement
    .balign 4

glabel D_801440D8
    .asciz "PR_KAREIDOSCOPE_MODE=%d\n"
    .balign 4

glabel D_801440F4
    .asciz "\x1b[32m"
    .balign 4

glabel D_801440FC
    .asciz "\xA5\xAB\xA5\xEC\xA5\xA4\xA5\xC9\xCE\xCE\xB0\xE8\x20\xA5\xD7\xA5\xEC\xA5\xA4\xA5\xE4\xA1\xBC\x20\xB6\xAF\xC0\xA9\xC7\xD3\xBD\xFC\n"
    # EUC-JP: カレイド領域 プレイヤー 強制排除 | Kaleid Zone Player Forced Elimination
    .balign 4

glabel D_80144120
    .asciz "\x1b[m"
    .balign 4

glabel D_80144124
    .asciz "\x1b[32m"
    .balign 4

glabel D_8014412C
    .asciz "\xA5\xAB\xA5\xEC\xA5\xA4\xA5\xC9\xCE\xCE\xB0\xE8\x20\xA5\xAB\xA5\xEC\xA5\xA4\xA5\xC9\xA5\xB9\xA5\xB3\xA1\xBC\xA5\xD7\xC8\xC2\xC6\xFE\n"
    # EUC-JP: カレイド領域 カレイドスコープ搬入 | Kaleid area Kaleidoscope loading
    .balign 4

glabel D_80144150
    .asciz "\x1b[m"
    .balign 4

glabel D_80144154
    .asciz "\x1b[32m"
    .balign 4

glabel D_8014415C
    .asciz "\xA5\xAB\xA5\xEC\xA5\xA4\xA5\xC9\xCE\xCE\xB0\xE8\x20\xA5\xAB\xA5\xEC\xA5\xA4\xA5\xC9\xA5\xB9\xA5\xB3\xA1\xBC\xA5\xD7\xC7\xD3\xBD\xD0\n"
    # EUC-JP: カレイド領域 カレイドスコープ排出 | Kaleid area Kaleidoscope emission
    .balign 4

glabel D_80144180
    .asciz "\x1b[m"
    .balign 4
