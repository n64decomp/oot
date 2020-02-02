.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8013C8A0
    .asciz "../z_lights.c"
    .balign 4

glabel D_8013C8B0
    .asciz "../z_lights.c"
    .balign 4

glabel D_8013C8C0
    .asciz "../z_lights.c"
    .balign 4

glabel D_8013C8D0
    .asciz "../z_lights.c"
    .balign 4

glabel D_8013C8E0
    .asciz "../z_lights.c"
    .balign 4

glabel D_8013C8F0
    .float 16352

glabel D_8013C8F4
    .float 2.6E-6
