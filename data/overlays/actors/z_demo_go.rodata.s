.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8097D490
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_8097D4CC
    .asciz "../z_demo_go.c"
    .balign 4

glabel D_8097D4DC
    .asciz "../z_demo_go.c"
    .balign 4

glabel D_8097D4EC
    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_8097D524
 .word 0x3C23D70A
glabel D_8097D528
 .word 0x3F99999A
glabel D_8097D52C
 .word 0x3C23D70A
glabel D_8097D530
 .word 0x3F99999A, 0x00000000, 0x00000000, 0x00000000


