.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_80012370
    .space 0x20

glabel D_80012390
    .space 0x1B0

glabel D_80012540
    .space 0x400

glabel D_80012940
glabel D_80012940_
    .space 0x20

glabel D_80012960
    .space 0x400

glabel D_80012D60
    .space 0x1B0
