.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_801665D0
    .space 0x4

glabel D_801665D4
    .space 0x4

glabel D_801665D8
    .space 0x4

glabel D_801665DC
    .space 0x4

glabel D_801665E0
    .space 0x10

glabel D_801665F0
    .space 0x58

glabel D_80166648
    .space 0x18

glabel D_80166660
    .space 0x8

glabel D_80166668
    .space 0x38

glabel D_801666A0
    .space 0x220

glabel D_801668C0
    .space 0x4

glabel D_801668C4
    .space 0x2A4

glabel D_80166B68
    .space 0x6

glabel D_80166B6E
    .space 0x1

glabel D_80166B6F
    .space 0x1

glabel D_80166B70
    .space 0x1

glabel D_80166B71
    .space 0x1AF
