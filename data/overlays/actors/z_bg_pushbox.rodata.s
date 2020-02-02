.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808A8DB0
    .asciz "../z_bg_pushbox.c"
    .balign 4

glabel D_808A8DC4
    .asciz "../z_bg_pushbox.c"
    .balign 4

glabel D_808A8DD8
    .asciz "../z_bg_pushbox.c"
    .balign 4

glabel D_808A8DEC
 .word 0x3E4CCCCD


