.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_801407D0
    .asciz "\x1b[43;30m"
    .balign 4

glabel D_801407DC
    .asciz "Skin_Matrix_InverseMatrix():\xB5\xD5\xB9\xD4\xCE\xF3\xA4\xC4\xA4\xAF\xA4\xEC\xA4\xDE\xA4\xBB\xA4\xF3\n"
    # EUC-JP: 逆行列つくれません | Inverse matrix cannot be created
    .balign 4

glabel D_8014080C
    .asciz "\x1b[m"
    .balign 4

glabel D_80140810
    .asciz "Skin_Matrix_to_Mtx_new() \xB3\xCE\xCA\xDD\xBC\xBA\xC7\xD4:NULL\xA4\xF2\xCA\xD6\xA4\xB7\xA4\xC6\xBD\xAA\xCE\xBB\n"
    # EUC-JP: 確保失敗:NULLを返して終了 | Secure failure: Return NULL and end
    .balign 4

glabel D_80140844
    .float 0.0005
