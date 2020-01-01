.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8014A8B0
    .incbin "baserom.z64", 0xBC1A50, 0x4

glabel D_8014A8B4
    .incbin "baserom.z64", 0xBC1A54, 0x10

glabel D_8014A8C4
    .incbin "baserom.z64", 0xBC1A64, 0x4

glabel D_8014A8C8
    .incbin "baserom.z64", 0xBC1A68, 0x10

glabel D_8014A8D8
    .incbin "baserom.z64", 0xBC1A78, 0x4

glabel D_8014A8DC
    .incbin "baserom.z64", 0xBC1A7C, 0x10

glabel D_8014A8EC
    .incbin "baserom.z64", 0xBC1A8C, 0x4

glabel D_8014A8F0
    .incbin "baserom.z64", 0xBC1A90, 0x10
