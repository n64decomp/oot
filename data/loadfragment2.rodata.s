.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8014A860
    .asciz "../loadfragment2.c"
    .balign 4

glabel D_8014A874
    .asciz "OVL:SPEC(%08x-%08x) REAL(%08x-%08x) OFFSET(%08x)\n"
    .balign 4
