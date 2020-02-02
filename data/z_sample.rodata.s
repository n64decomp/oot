.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8013F2C0
    .asciz "../z_sample.c"
    .balign 4

glabel D_8013F2D0
    .asciz "../z_sample.c"
    .balign 4

glabel D_8013F2E0
    .asciz "../z_sample.c"
    .balign 4

glabel D_8013F2F0
    .asciz "../z_sample.c"
    .balign 4

glabel D_8013F300
    .float 3000
