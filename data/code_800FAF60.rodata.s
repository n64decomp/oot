.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8014A6D0
    .incbin "baserom.z64", 0xBC1870, 0x20

glabel jtbl_8014A6F0
    .incbin "baserom.z64", 0xBC1890, 0x20
