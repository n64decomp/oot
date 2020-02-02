.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AF8DA0

    .asciz "../z_en_scene_change.c"
    .balign 4

glabel D_80AF8DB8

    .asciz "../z_en_scene_change.c"
    .balign 4



