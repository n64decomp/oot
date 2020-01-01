.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_800140E0
    .space 0x400

glabel D_800144E0
    .space 0x4

glabel D_800144E4
    .space 0x4

glabel D_800144E8
    .space 0x4

glabel D_800144EC
    .space 0x1C

glabel D_80014508
    .space 0x4

glabel D_8001450C
    .space 0x2

glabel D_8001450E
    .space 0x2
