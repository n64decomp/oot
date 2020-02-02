.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80135C00
    .asciz "../z_effect_soft_sprite_old_init.c"
    .balign 4

glabel D_80135C24
    .asciz "../z_effect_soft_sprite_old_init.c"
    .balign 4

glabel D_80135C48
    .float 0.0025

glabel D_80135C4C
    .float -0.07

glabel D_80135C50
    .float 1.99

glabel D_80135C54
    .float -0.2

glabel D_80135C58
    .float 1.3

glabel D_80135C5C
    .float 0.18
