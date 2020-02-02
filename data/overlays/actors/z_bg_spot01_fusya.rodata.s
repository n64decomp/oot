.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808AAC30

    .asciz "../z_bg_spot01_fusya.c"
    .balign 4

glabel D_808AAC48

    .asciz "../z_bg_spot01_fusya.c"
    .balign 4

glabel D_808AAC60

    .asciz "../z_bg_spot01_fusya.c"
    .balign 4

glabel D_808AAC78
 .word 0x44D48000, 0x00000000


