.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80145D40
    .incbin "baserom.z64", 0xBBCEE0, 0x14

glabel D_80145D54
    .incbin "baserom.z64", 0xBBCEF4, 0xC

glabel D_80145D60
    .incbin "baserom.z64", 0xBBCF00, 0x20

glabel D_80145D80
    .incbin "baserom.z64", 0xBBCF20, 0xC

glabel D_80145D8C
    .incbin "baserom.z64", 0xBBCF2C, 0x60

glabel D_80145DEC
    .incbin "baserom.z64", 0xBBCF8C, 0xC

glabel D_80145DF8
    .incbin "baserom.z64", 0xBBCF98, 0x60

glabel D_80145E58
    .incbin "baserom.z64", 0xBBCFF8, 0xC

glabel D_80145E64
    .incbin "baserom.z64", 0xBBD004, 0x58

glabel D_80145EBC
    .incbin "baserom.z64", 0xBBD05C, 0x5C

glabel D_80145F18
    .incbin "baserom.z64", 0xBBD0B8, 0xC

glabel D_80145F24
    .incbin "baserom.z64", 0xBBD0C4, 0x24

glabel D_80145F48
    .incbin "baserom.z64", 0xBBD0E8, 0x20

glabel D_80145F68
    .incbin "baserom.z64", 0xBBD108, 0x2C

glabel D_80145F94
    .incbin "baserom.z64", 0xBBD134, 0xC

glabel D_80145FA0
    .incbin "baserom.z64", 0xBBD140, 0x5C

glabel D_80145FFC
    .incbin "baserom.z64", 0xBBD19C, 0x18

glabel D_80146014
    .incbin "baserom.z64", 0xBBD1B4, 0xC

glabel D_80146020
    .incbin "baserom.z64", 0xBBD1C0, 0x18

glabel D_80146038
    .incbin "baserom.z64", 0xBBD1D8, 0xC

glabel D_80146044
    .incbin "baserom.z64", 0xBBD1E4, 0x20

glabel D_80146064
    .incbin "baserom.z64", 0xBBD204, 0x8

glabel D_8014606C
    .incbin "baserom.z64", 0xBBD20C, 0x8

glabel D_80146074
    .incbin "baserom.z64", 0xBBD214, 0x8

glabel D_8014607C
    .incbin "baserom.z64", 0xBBD21C, 0xC

glabel D_80146088
    .incbin "baserom.z64", 0xBBD228, 0x28

glabel D_801460B0
    .incbin "baserom.z64", 0xBBD250, 0x1C

glabel D_801460CC
    .incbin "baserom.z64", 0xBBD26C, 0x14

glabel D_801460E0
    .incbin "baserom.z64", 0xBBD280, 0x10

glabel D_801460F0
    .incbin "baserom.z64", 0xBBD290, 0xC

glabel D_801460FC
    .incbin "baserom.z64", 0xBBD29C, 0x10

glabel D_8014610C
    .incbin "baserom.z64", 0xBBD2AC, 0xC

glabel D_80146118
    .incbin "baserom.z64", 0xBBD2B8, 0x10

glabel D_80146128
    .incbin "baserom.z64", 0xBBD2C8, 0x28

glabel D_80146150
    .incbin "baserom.z64", 0xBBD2F0, 0x10

glabel D_80146160
    .incbin "baserom.z64", 0xBBD300, 0xC

glabel D_8014616C
    .incbin "baserom.z64", 0xBBD30C, 0x2C

glabel D_80146198
    .incbin "baserom.z64", 0xBBD338, 0xC

glabel D_801461A4
    .incbin "baserom.z64", 0xBBD344, 0x28

glabel D_801461CC
    .incbin "baserom.z64", 0xBBD36C, 0x14

glabel D_801461E0
    .incbin "baserom.z64", 0xBBD380, 0x10

glabel D_801461F0
    .incbin "baserom.z64", 0xBBD390, 0x10

glabel D_80146200
    .incbin "baserom.z64", 0xBBD3A0, 0x14

glabel D_80146214
    .incbin "baserom.z64", 0xBBD3B4, 0x1C
