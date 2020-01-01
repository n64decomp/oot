.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_80012F10
    .space 0x900

glabel D_80013810
    .space 0x20

glabel D_80013830
    .space 0xC8

glabel D_800138F8
    .space 0x8

glabel D_80013900
    .space 0x10

glabel D_80013910
    .space 0x50

glabel D_80013960
    .space 0x10
