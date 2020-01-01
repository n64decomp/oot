.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8014B2E0
    .incbin "baserom.z64", 0xBC2480, 0x8

glabel D_8014B2E8
    .incbin "baserom.z64", 0xBC2488, 0x8
