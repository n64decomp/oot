.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80146A40
    .incbin "baserom.z64", 0xBBDBE0, 0x24

glabel D_80146A64
    .incbin "baserom.z64", 0xBBDC04, 0x24

glabel D_80146A88
    .incbin "baserom.z64", 0xBBDC28, 0x10

glabel D_80146A98
    .incbin "baserom.z64", 0xBBDC38, 0x8

glabel D_80146AA0
    .incbin "baserom.z64", 0xBBDC40, 0x14

glabel D_80146AB4
    .incbin "baserom.z64", 0xBBDC54, 0x8

glabel D_80146ABC
    .incbin "baserom.z64", 0xBBDC5C, 0x10

glabel D_80146ACC
    .incbin "baserom.z64", 0xBBDC6C, 0x8

glabel D_80146AD4
    .incbin "baserom.z64", 0xBBDC74, 0x18

glabel D_80146AEC
    .incbin "baserom.z64", 0xBBDC8C, 0x8

glabel D_80146AF4
    .incbin "baserom.z64", 0xBBDC94, 0x10

glabel D_80146B04
    .incbin "baserom.z64", 0xBBDCA4, 0x8

glabel D_80146B0C
    .incbin "baserom.z64", 0xBBDCAC, 0x14

glabel D_80146B20
    .incbin "baserom.z64", 0xBBDCC0, 0x8

glabel D_80146B28
    .incbin "baserom.z64", 0xBBDCC8, 0x10

glabel D_80146B38
    .incbin "baserom.z64", 0xBBDCD8, 0x8

glabel D_80146B40
    .incbin "baserom.z64", 0xBBDCE0, 0x20
