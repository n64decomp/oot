.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8013AD40
    .asciz "../z_debug.c"
    .balign 4

glabel D_8013AD50
    .asciz "%s"
    .balign 4

glabel D_8013AD54
    .asciz "%s%02d%6d"
    .balign 4

glabel D_8013AD60
    .asciz "../z_debug.c"
    .balign 4

glabel D_8013AD70
    .asciz "../z_debug.c"
    .balign 4

glabel jtbl_8013AD80
    .word L80063A18
    .word L80063A18
    .word L80063A18
    .word L80063A18
    .word L80063A18
    .word L80063A18
