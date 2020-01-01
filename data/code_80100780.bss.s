.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_801756B0
    .space 0x100

glabel D_801757B0
    .space 0x8

glabel D_801757B8
    .space 0x18

glabel D_801757D0
    .space 0x3C

glabel D_8017580C
    .space 0x4

glabel D_80175810
    .space 0x1

glabel D_80175811
    .space 0x27

glabel D_80175838
    .space 0x18

glabel D_80175850
    .space 0x10
