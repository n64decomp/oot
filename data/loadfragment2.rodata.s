.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8014A860
    .incbin "baserom.z64", 0xBC1A00, 0x14

glabel D_8014A874
    .incbin "baserom.z64", 0xBC1A14, 0x3C
