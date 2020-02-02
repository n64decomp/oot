.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80140680
    .asciz "../z_skin.c"
    .balign 4

glabel D_8014068C
    .asciz "../z_skin.c"
    .balign 4

glabel D_80140698
    .asciz "../z_skin.c"
    .balign 4

glabel D_801406A4
    .asciz "../z_skin.c"
    .balign 4

glabel D_801406B0
    .asciz "../z_skin.c"
    .balign 4

glabel D_801406BC
    .asciz "../z_skin.c"
    .balign 4

glabel D_801406C8
    .asciz "../z_skin.c"
    .balign 4

glabel D_801406D4
    .asciz "../z_skin.c"
    .balign 4

glabel D_801406E0
    .float 0.01
