.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_80015B80
    .space 0x11B0

glabel D_80016D30
    .space 0x18

glabel D_80016D48
    .space 0x18

glabel D_80016D60
    .space 0x18

glabel D_80016D78
    .space 0x18

glabel D_80016D90
    .space 0x10
