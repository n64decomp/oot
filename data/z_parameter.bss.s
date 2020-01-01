.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_8015FFE0
    .space 0x2

glabel D_8015FFE2
    .space 0x2

glabel D_8015FFE4
    .space 0x2

glabel D_8015FFE6
    .space 0x2

glabel D_8015FFE8
    .space 0xE

glabel D_8015FFF6
    .space 0x9

glabel D_8015FFFF
    .space 0x1
