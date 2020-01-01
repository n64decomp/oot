.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8000AF70
    .asciz "0123456789abcdef"
    .balign 4

glabel D_8000AF84
    .asciz "0123456789ABCDEF"
    .balign 4
