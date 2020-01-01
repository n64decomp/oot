.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_80014510
    .space 0x10

glabel D_80014520
    .space 0x14

glabel D_80014534
    .space 0x6C

glabel D_800145A0
    .space 0x8

glabel D_800145A8
    .space 0x18

glabel D_800145C0
    .space 0x14

glabel D_800145D4
    .space 0x1

glabel D_800145D5
    .space 0x1

glabel D_800145D6
    .space 0x1

glabel D_800145D7
    .space 0x1

glabel D_800145D8
    .space 0x74

glabel D_8001464C
    .space 0x1

glabel D_8001464D
    .space 0x1

glabel D_8001464E
    .space 0x1

glabel D_8001464F
    .space 0x1

glabel D_80014650
    .space 0x70

glabel D_800146C0
    .space 0x11B0

glabel D_80015870
    .space 0x18

glabel D_80015888
    .space 0x8

glabel D_80015890
    .space 0x1B0

glabel D_80015A40
    .space 0xA0
