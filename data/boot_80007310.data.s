.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8000AE00
    .incbin "baserom.z64", 0xBA00, 0x48

glabel D_8000AE48
    .incbin "baserom.z64", 0xBA48, 0x8

glabel D_8000AE50
    .incbin "baserom.z64", 0xBA50, 0x48

glabel D_8000AE98
    .incbin "baserom.z64", 0xBA98, 0x8

glabel D_8000AEA0
    .incbin "baserom.z64", 0xBAA0, 0x30

glabel D_8000AED0
    .incbin "baserom.z64", 0xBAD0, 0x30

glabel D_8000AF00
    .incbin "baserom.z64", 0xBB00, 0x4

glabel D_8000AF04
    .incbin "baserom.z64", 0xBB04, 0xC

glabel D_8000AF10
    .incbin "baserom.z64", 0xBB10, 0x10

glabel D_8000AF20
    .incbin "baserom.z64", 0xBB20, 0x48

glabel D_8000AF68
    .incbin "baserom.z64", 0xBB68, 0x8
