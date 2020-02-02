.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80899AB0
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80899AF0
    .asciz "../z_bg_jya_kanaami.c"
    .balign 4

glabel D_80899B08
 .word 0x286A7961, 0x20B6E2CC, 0xD6292861, 0x72675F64, 0x61746120, 0x30782530, 0x3478290A, 0x00000000, 0x00000000, 0x00000000


