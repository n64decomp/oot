.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_800122E0
    .incbin "baserom.z64", 0x12EE0, 0x48

glabel D_80012328
    .incbin "baserom.z64", 0x12F28, 0x4

glabel D_8001232C
    .incbin "baserom.z64", 0x12F2C, 0x4 

glabel D_80012330
    .incbin "baserom.z64", 0x12F30, 0x8

glabel D_80012338
    .incbin "baserom.z64", 0x12F38, 0x8

glabel D_80012340
    .incbin "baserom.z64", 0x12F40, 0x10

glabel D_80012350
    .incbin "baserom.z64", 0x12F50, 0x14

glabel D_80012364
    .incbin "baserom.z64", 0x12F64, 0xC
