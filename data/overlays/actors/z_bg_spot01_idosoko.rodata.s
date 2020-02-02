.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808AC080
    .asciz "../z_bg_spot01_idosoko.c"
    .balign 4

glabel D_808AC09C
    .asciz "../z_bg_spot01_idosoko.c"
    .balign 4

glabel D_808AC0B8
 .word 0x2E2E2F7A, 0x5F62675F, 0x73706F74, 0x30315F69, 0x646F736F, 0x6B6F2E63, 0x00000000, 0x00000000, 0x00000000, 0x00000000


