.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data


glabel D_8000ACA0
    .incbin "baserom.z64", 0xB8A0, 0x50

glabel D_8000ACF0
    .incbin "baserom.z64", 0xB8F0, 0x4

glabel D_8000ACF4
    .incbin "baserom.z64", 0xB8F4, 0x4

glabel D_8000ACF8
    .incbin "baserom.z64", 0xB8F8, 0x4

glabel D_8000ACFC
    .incbin "baserom.z64", 0xB8FC, 0x4

glabel D_8000AD00
    .incbin "baserom.z64", 0xB900, 0x10

glabel D_8000AD10
    .incbin "baserom.z64", 0xB910, 0x4

glabel D_8000AD14
    .incbin "baserom.z64", 0xB914, 0x24

glabel D_8000AD38
    .incbin "baserom.z64", 0xB938, 0x8

glabel D_8000AD40
    .incbin "baserom.z64", 0xB940, 0x8

glabel D_8000AD48
    .incbin "baserom.z64", 0xB948, 0x4

glabel D_8000AD4C
    .incbin "baserom.z64", 0xB94C, 0x4

glabel D_8000AD50
    .incbin "baserom.z64", 0xB950, 0x4

glabel D_8000AD54
    .incbin "baserom.z64", 0xB954, 0xC

glabel D_8000AD60
    .incbin "baserom.z64", 0xB960, 0x1C

glabel D_8000AD7C
    .incbin "baserom.z64", 0xB97C, 0x4

glabel D_8000AD80
    .incbin "baserom.z64", 0xB980, 0x10
