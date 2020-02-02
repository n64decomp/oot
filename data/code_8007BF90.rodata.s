.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8013CB80
    .float 0.01

glabel D_8013CB84
    .float 57.295776

glabel D_8013CB88
    .float 182.04167

glabel D_8013CB8C
    .float 57.295776

glabel D_8013CB90
    .float 182.04167

glabel D_8013CB94
    .float 57.295776

glabel D_8013CB98
    .float 57.295776

glabel D_8013CB9C
    .float 182.04167
