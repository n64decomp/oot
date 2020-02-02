.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8086E750
 .word 0x0A0A0000
glabel D_8086E754

    .asciz "[32m ☆☆☆☆☆ 透明ガード出現 ☆☆☆☆☆ \n[m"
    .balign 4

.balign 16
