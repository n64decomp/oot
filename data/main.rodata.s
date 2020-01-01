.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80145670
    .incbin "baserom.z64", 0xBBC810, 0x8

glabel D_80145678
    .incbin "baserom.z64", 0xBBC818, 0x34

glabel D_801456AC
    .incbin "baserom.z64", 0xBBC84C, 0x4

glabel D_801456B0
    .incbin "baserom.z64", 0xBBC850, 0x14

glabel D_801456C4
    .incbin "baserom.z64", 0xBBC864, 0x28

glabel D_801456EC
    .incbin "baserom.z64", 0xBBC88C, 0xC

glabel D_801456F8
    .incbin "baserom.z64", 0xBBC898, 0x20

glabel D_80145718
    .incbin "baserom.z64", 0xBBC8B8, 0x8

glabel D_80145720
    .incbin "baserom.z64", 0xBBC8C0, 0x1C

glabel D_8014573C
    .incbin "baserom.z64", 0xBBC8DC, 0x8

glabel D_80145744
    .incbin "baserom.z64", 0xBBC8E4, 0x8

glabel D_8014574C
    .incbin "baserom.z64", 0xBBC8EC, 0x8

glabel D_80145754
    .incbin "baserom.z64", 0xBBC8F4, 0x8

glabel D_8014575C
    .incbin "baserom.z64", 0xBBC8FC, 0x24

glabel D_80145780
    .incbin "baserom.z64", 0xBBC920, 0x14

glabel D_80145794
    .incbin "baserom.z64", 0xBBC934, 0x1C
