.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809B3740
 .word 0x0A0A0000
glabel D_809B3744
    .asciz "[32m☆☆☆☆☆ アヌビス制御タグ発生 ☆☆☆☆☆ %d\n[m"
    .balign 4

.balign 16



