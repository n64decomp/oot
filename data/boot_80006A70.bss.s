.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_80015AE0
    .space 0x4

glabel D_80015AE4
    .space 0x4

glabel D_80015AE8
    .space 0x4

glabel D_80015AEC
    .space 0x4

glabel D_80015AF0
    .space 0x10
