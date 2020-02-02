.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808B4B50

    .asciz "../z_bg_spot15_saku.c"
    .balign 4

glabel D_808B4B68

    .asciz "../z_bg_spot15_saku.c"
    .balign 4

glabel D_808B4B80

    .asciz "../z_bg_spot15_saku.c"
    .balign 4

glabel D_808B4B98
 .word 0x3DCCCCCD
glabel D_808B4B9C
 .word 0x45263000
glabel D_808B4BA0
 .word 0x45264000, 0x00000000, 0x00000000, 0x00000000


