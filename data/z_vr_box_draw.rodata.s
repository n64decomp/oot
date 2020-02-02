.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80142E80
    .asciz "../z_vr_box_draw.c"
    .balign 4

glabel D_80142E94
    .asciz "../z_vr_box_draw.c"
    .balign 4

glabel D_80142EA8
    .asciz "../z_vr_box_draw.c"
    .balign 4

glabel D_80142EBC
    .asciz "../z_vr_box_draw.c"
    .balign 4
