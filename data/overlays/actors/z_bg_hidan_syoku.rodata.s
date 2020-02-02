.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8088F790
 .word 0x3CB7D3FB
glabel D_8088F794
 .word 0x3CB7D3FB, 0x00000000, 0x00000000


