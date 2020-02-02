.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel jtbl_80012140
    .word L80004C7C
    .word L80004B94
    .word L80004BC8
    .word L80004C98
    .word L80004C98
    .word L80004BFC
    .word L80004C3C
