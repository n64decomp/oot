.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8014A900
    .asciz "DoRelocation(%08x, %08x, %08x)\n"
    .balign 4

glabel D_8014A920
    .asciz "text=%08x, data=%08x, rodata=%08x, bss=%08x\n"
    .balign 4

glabel D_8014A950
    .asciz "%02d %08x %08x %08x "
    .balign 4

glabel D_8014A968
    .asciz " %08x %08x %08x %08x\n"
    .balign 4
