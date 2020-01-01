.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_8016A590
    .space 0x4

glabel D_8016A594
    .space 0x4

glabel D_8016A598
    .space 0x8
