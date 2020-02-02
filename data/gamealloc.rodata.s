.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_801450F0
    .asciz "this = %08x\n"
    .balign 4

glabel D_80145100
    .asciz "ptr = %08x size = %d\n" 
    .balign 4

glabel D_80145118
    .asciz "../gamealloc.c"
    .balign 4

glabel D_80145128
    .asciz "ptr->prev"
    .balign 4

glabel D_80145134
    .asciz "../gamealloc.c"
    .balign 4

glabel D_80145144
    .asciz "ptr->next"
    .balign 4

glabel D_80145150
    .asciz "../gamealloc.c"
    .balign 4

glabel D_80145160
    .asciz "../gamealloc.c"
    .balign 4

glabel D_80145170
    .asciz "../gamealloc.c"
    .balign 4
