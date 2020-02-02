.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8013A580
    .asciz "CollisionBtlTbl_get():\xA5\xA4\xA5\xF3\xA5\xC7\xA5\xC3\xA5\xAF\xA5\xB9\xA5\xAA\xA1\xBC\xA5\xD0\xA1\xBC\n"
    # EUC-JP: インデックスオーバー | Index over
    .balign 4
