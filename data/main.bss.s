.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_80166D20
    .space 0x4

glabel D_80166D24
    .space 0x4

glabel D_80166D28
    .space 0x280

glabel D_80166FA8
    .space 0x8

glabel D_80166FB0
    .space 0x4

glabel D_80166FB4
    .space 0x4

glabel D_80166FB8
    .space 0x4

glabel D_80166FBC
    .space 0x4

glabel D_80166FC0
    .space 0x28

glabel D_80166FE8
    .space 0x1B0

glabel D_80167198
    .space 0x1800

glabel D_80168998
    .space 0x600

glabel D_80168F98
    .space 0x800

glabel D_80169798
    .space 0x500

glabel D_80169C98
    .space 0x500

glabel D_8016A198
    .space 0x20

glabel D_8016A1B8
    .space 0x20

glabel D_8016A1D8
    .space 0x20

glabel D_8016A1F8
    .space 0x20

glabel D_8016A218
    .space 0x20

glabel D_8016A238
    .space 0x298

glabel D_8016A4D0
    .space 0x18

glabel D_8016A4E8
    .space 0x8
