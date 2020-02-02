.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80142ED0
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80142EE0
    .asciz "this->col * (1 + this->row * (1 + 7 + 1)) + 1 + 1 = %d\n"
    .balign 4

glabel D_80142F18
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80142F28
    .asciz "gp - this->gfxtbl = %d\n"
    .balign 4

glabel D_80142F40
    .asciz "fbdemo_cleanup(%08x)\n"
    .balign 4

glabel D_80142F58
    .asciz "msleep(100);\n"
    .balign 4

glabel D_80142F68
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80142F78
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80142F88
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80142F98
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80142FA8
    .asciz "fbdemo_init(%08x, %d, %d)\n"
    .balign 4

glabel D_80142FC4
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80142FD4
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80142FE4
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80142FF4
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80143004
    .asciz "fbdemo_init allocation error\n"
    .balign 4

glabel D_80143024
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80143034
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80143044
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80143054
    .asciz "../z_fbdemo.c"
    .balign 4
