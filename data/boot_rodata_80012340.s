.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80012340
    .asciz "zelda@srd022j"
    .balign 4

glabel D_80012350
    .asciz "03-02-21 00:16:31"
    .balign 4

glabel D_80012364
    .asciz ""
    .balign 4
