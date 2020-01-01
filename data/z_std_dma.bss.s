.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_80013970
    .space 0x20

glabel D_80013990
    .space 0x18

glabel D_800139A8
    .space 0x80

glabel D_80013A28
    .space 0x1B0

glabel D_80013BD8
    .space 0x500

glabel D_800140D8
    .space 0x4

glabel D_800140DC
    .space 0x4
