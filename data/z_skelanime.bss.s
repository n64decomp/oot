.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_801600B0
    .space 0x10

glabel D_801600C0
    .space 0x50

glabel D_80160110
    .space 0x90

glabel D_801601A0
    .space 0x22

glabel D_801601C2
    .space 0x6

glabel D_801601C8
    .space 0x28

glabel D_801601F0
    .space 0x124

glabel D_80160314
    .space 0xB0

glabel D_801603C4
    .space 0x6F4

glabel D_80160AB8
    .space 0x518
