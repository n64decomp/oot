.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_801450F0
    .incbin "baserom.z64", 0xBBC290, 0x10

glabel D_80145100
    .incbin "baserom.z64", 0xBBC2A0, 0x18

glabel D_80145118
    .incbin "baserom.z64", 0xBBC2B8, 0x10

glabel D_80145128
    .incbin "baserom.z64", 0xBBC2C8, 0xC

glabel D_80145134
    .incbin "baserom.z64", 0xBBC2D4, 0x10

glabel D_80145144
    .incbin "baserom.z64", 0xBBC2E4, 0xC

glabel D_80145150
    .incbin "baserom.z64", 0xBBC2F0, 0x10

glabel D_80145160
    .incbin "baserom.z64", 0xBBC300, 0x10

glabel D_80145170
    .incbin "baserom.z64", 0xBBC310, 0x10
