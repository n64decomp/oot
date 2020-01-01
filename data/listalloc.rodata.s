.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80145650
    .incbin "baserom.z64", 0xBBC7F0, 0x10

glabel D_80145660
    .incbin "baserom.z64", 0xBBC800, 0x10
