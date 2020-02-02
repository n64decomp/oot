.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_800122E0
    .incbin "baserom.z64", 0x12EE0, 0x48

glabel D_80012328
    .asciz "NaN"
    .balign 4

glabel D_8001232C
    .asciz "Inf"
    .balign 4

glabel D_80012330
    .asciz "0"
    .balign 4

    .balign 8
glabel D_80012338
    .double 100000000
