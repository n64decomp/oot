.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80144D10
    .incbin "baserom.z64", 0xBBBEB0, 0x14

glabel D_80144D24
    .incbin "baserom.z64", 0xBBBEC4, 0x8

glabel D_80144D2C
    .incbin "baserom.z64", 0xBBBECC, 0x4

glabel D_80144D30
    .incbin "baserom.z64", 0xBBBED0, 0x20

glabel D_80144D50
    .incbin "baserom.z64", 0xBBBEF0, 0xC

glabel D_80144D5C
    .incbin "baserom.z64", 0xBBBEFC, 0x30

glabel D_80144D8C
    .incbin "baserom.z64", 0xBBBF2C, 0xC

glabel D_80144D98
    .incbin "baserom.z64", 0xBBBF38, 0xC

glabel D_80144DA4
    .incbin "baserom.z64", 0xBBBF44, 0xC

glabel D_80144DB0
    .incbin "baserom.z64", 0xBBBF50, 0xC

glabel D_80144DBC
    .incbin "baserom.z64", 0xBBBF5C, 0xC

glabel D_80144DC8
    .incbin "baserom.z64", 0xBBBF68, 0x20

glabel D_80144DE8
    .incbin "baserom.z64", 0xBBBF88, 0xC

glabel D_80144DF4
    .incbin "baserom.z64", 0xBBBF94, 0x14

glabel D_80144E08
    .incbin "baserom.z64", 0xBBBFA8, 0x14

glabel D_80144E1C
    .incbin "baserom.z64", 0xBBBFBC, 0xC

glabel D_80144E28
    .incbin "baserom.z64", 0xBBBFC8, 0x14

glabel D_80144E3C
    .incbin "baserom.z64", 0xBBBFDC, 0x4

glabel D_80144E40
    .incbin "baserom.z64", 0xBBBFE0, 0x8

glabel D_80144E48
    .incbin "baserom.z64", 0xBBBFE8, 0x40

glabel D_80144E88
    .incbin "baserom.z64", 0xBBC028, 0x2C

glabel D_80144EB4
    .incbin "baserom.z64", 0xBBC054, 0x4

glabel D_80144EB8
    .incbin "baserom.z64", 0xBBC058, 0x24

glabel D_80144EDC
    .incbin "baserom.z64", 0xBBC07C, 0xC

glabel D_80144EE8
    .incbin "baserom.z64", 0xBBC088, 0x14

glabel D_80144EFC
    .incbin "baserom.z64", 0xBBC09C, 0x14

glabel D_80144F10
    .incbin "baserom.z64", 0xBBC0B0, 0xC

glabel D_80144F1C
    .incbin "baserom.z64", 0xBBC0BC, 0x1C

glabel D_80144F38
    .incbin "baserom.z64", 0xBBC0D8, 0x28

glabel D_80144F60
    .incbin "baserom.z64", 0xBBC100, 0x20

glabel D_80144F80
    .incbin "baserom.z64", 0xBBC120, 0x18

glabel D_80144F98
    .incbin "baserom.z64", 0xBBC138, 0x10

glabel D_80144FA8
    .incbin "baserom.z64", 0xBBC148, 0xC

glabel D_80144FB4
    .incbin "baserom.z64", 0xBBC154, 0x20

glabel D_80144FD4
    .incbin "baserom.z64", 0xBBC174, 0x1C

glabel D_80144FF0
    .incbin "baserom.z64", 0xBBC190, 0x18

glabel D_80145008
    .incbin "baserom.z64", 0xBBC1A8, 0x10

glabel D_80145018
    .incbin "baserom.z64", 0xBBC1B8, 0xC

glabel D_80145024
    .incbin "baserom.z64", 0xBBC1C4, 0x18

glabel D_8014503C
    .incbin "baserom.z64", 0xBBC1DC, 0x18

glabel D_80145054
    .incbin "baserom.z64", 0xBBC1F4, 0x48

glabel D_8014509C
    .incbin "baserom.z64", 0xBBC23C, 0x1C

glabel D_801450B8
    .incbin "baserom.z64", 0xBBC258, 0x8

glabel D_801450C0
    .incbin "baserom.z64", 0xBBC260, 0x24

glabel D_801450E4
    .incbin "baserom.z64", 0xBBC284, 0x4

glabel D_801450E8
    .incbin "baserom.z64", 0xBBC288, 0x8
