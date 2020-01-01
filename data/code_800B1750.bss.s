.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_801610F0
    .space 0x4

glabel D_801610F4
    .space 0x4

glabel D_801610F8
    .space 0x4

glabel D_801610FC
    .space 0x4
