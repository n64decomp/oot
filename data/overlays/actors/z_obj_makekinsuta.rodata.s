.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B98430
 .word 0x1B5B3334, 0x6D000000
glabel D_80B98438
    .asciz "金スタ発生敵(arg_data %x)\n"
    .balign 4

glabel D_80B98454
 .word 0x1B5B6D00
glabel D_80B98458
 .word 0x1B5B3433, 0x3B33306D, 0x00000000
glabel D_80B98464
    .asciz "引数不正 (arg_data %x)(%s %d)\n"
    .balign 4

glabel D_80B98484
    .asciz "../z_obj_makekinsuta.c"
    .balign 4

glabel D_80B9849C
 .word 0x1B5B6D00


