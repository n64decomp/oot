.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80146570
    .asciz "../sys_matrix.c"
    .balign 4

glabel D_80146580
    .asciz "Matrix_now >= Matrix_stack"
    .balign 4

glabel D_8014659C
    .asciz "../sys_matrix.c"
    .balign 4

glabel D_801465AC
    .asciz "%s %d: [%s] =\n/ %12.6f %12.6f %12.6f %12.6f \\\n| %12.6f %12.6f %12.6f %12.6f |\n| %12.6f %12.6f %12.6f %12.6f |\n\\ %12.6f %12.6f %12.6f %12.6f /\n"
    .balign 4

glabel D_8014663C
    .asciz "mf"
    .balign 4

glabel D_80146640
    .float 10430.378

glabel D_80146644
    .float 10430.378

glabel D_80146648
    .float 10430.378

glabel D_8014664C
    .float 10430.378

glabel D_80146650
    .float 10430.378

glabel D_80146654
    .float 10430.378

glabel D_80146658
    .float 10430.378

glabel D_8014665C
    .float 10430.378

glabel D_80146660
    .float 10430.378

glabel D_80146664
    .float 10430.378
