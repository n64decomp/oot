.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80146230
    .asciz "this"
    .balign 4

glabel D_80146238
    .asciz "../speed_meter.c"
    .balign 4

glabel D_8014624C
    .asciz "../speed_meter.c"
    .balign 4

glabel D_80146260
    .asciz "../speed_meter.c"
    .balign 4

glabel D_80146274
    .asciz "\x1b[31m"
    .balign 4

glabel D_8014627C
    .asciz "../speed_meter.c"
    .balign 4

glabel D_80146290
    .asciz "this->maxval = %d\n"
    .balign 4

glabel D_801462A4
    .asciz "\x1b[m"
    .balign 4

glabel D_801462A8
    .asciz "../speed_meter.c"
    .balign 4

glabel D_801462BC
    .asciz "../speed_meter.c"
    .balign 4
