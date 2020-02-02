.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_800121E0
    .asciz "hlL"
    .balign 4

glabel D_800121E4
    .asciz " +-#0"
    .balign 4

glabel D_800121EC
    .word 0x1
    .word 0x2
    .word 0x4
    .word 0x8
    .word 0x10
    .word 0x0

glabel jtbl_80012204
    .word L80005CA8 
    .word L80005F8C
    .word L80005CA8
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005B54
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L800059A8
    .word L800059E0
    .word L80005CA8
    .word L80005CA8
    .word L80005CA8
    .word L80005F8C
    .word L800059E0
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005F8C
    .word L80005E10
    .word L80005B54
    .word L80005EE0
    .word L80005F8C
    .word L80005F8C
    .word L80005F28
    .word L80005F8C
    .word L80005B54
    .word L80005F8C
    .word L80005F8C
    .word L80005B54
