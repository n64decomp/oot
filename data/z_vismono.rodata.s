.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_801417C0
    .asciz "../z_vismono.c"
    .balign 4

glabel D_801417D0
    .asciz "../z_vismono.c"
    .balign 4

glabel D_801417E0
    .asciz "glistp_end = %08x\n"
    .balign 4

glabel D_801417F4
    .asciz "../z_vismono.c"
    .balign 4

glabel D_80141804
    .asciz "mono_dl = %08x\n"
    .balign 4

glabel D_80141814
    .asciz "../z_vismono.c"
    .balign 4

glabel D_80141824
    .asciz "mono_dl + (1+3+1+1+80*(7+2+2+3)+1) = %08x\n"
    .balign 4 

glabel D_80141850
    .asciz "../z_vismono.c"
    .balign 4

glabel D_80141860
    .asciz "(1+3+1+1+80*(7+2+2+3)+1) = %08x\n"
    .balign 4

glabel D_80141884
    .asciz "glistp_end <= mono_dl + DLSIZE"
    .balign 4

glabel D_801418A4
    .asciz "../z_vismono.c"
    .balign 4

glabel D_801418B4
    .asciz "../z_vismono.c"
    .balign 4

glabel D_801418C4
    .asciz "../z_vismono.c"
    .balign 4

glabel D_801418D4
    .asciz "glistp_end <= this->mono_dl + DLSIZE"
    .balign 4

glabel D_801418FC
    .asciz "../z_vismono.c"
    .balign 4
