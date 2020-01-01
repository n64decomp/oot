.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_801457B0
    .incbin "baserom.z64", 0xBBC950, 0x40

glabel D_801457F0
    .incbin "baserom.z64", 0xBBC990, 0x3C

glabel D_8014582C
    .incbin "baserom.z64", 0xBBC9CC, 0x34

glabel D_80145860
    .incbin "baserom.z64", 0xBBCA00, 0x34

glabel D_80145894
    .incbin "baserom.z64", 0xBBCA34, 0x8

glabel D_8014589C
    .incbin "baserom.z64", 0xBBCA3C, 0x14

glabel D_801458B0
    .incbin "baserom.z64", 0xBBCA50, 0x1C

glabel D_801458CC
    .incbin "baserom.z64", 0xBBCA6C, 0x4

glabel D_801458D0
    .incbin "baserom.z64", 0xBBCA70, 0x8

glabel D_801458D8
    .incbin "baserom.z64", 0xBBCA78, 0x14

glabel D_801458EC
    .incbin "baserom.z64", 0xBBCA8C, 0x28

glabel D_80145914
    .incbin "baserom.z64", 0xBBCAB4, 0x4

glabel D_80145918
    .incbin "baserom.z64", 0xBBCAB8, 0x8

glabel D_80145920
    .incbin "baserom.z64", 0xBBCAC0, 0x14

glabel D_80145934
    .incbin "baserom.z64", 0xBBCAD4, 0x10

glabel D_80145944
    .incbin "baserom.z64", 0xBBCAE4, 0x4

glabel D_80145948
    .incbin "baserom.z64", 0xBBCAE8, 0x8

glabel D_80145950
    .incbin "baserom.z64", 0xBBCAF0, 0x14

glabel D_80145964
    .incbin "baserom.z64", 0xBBCB04, 0x28

glabel D_8014598C
    .incbin "baserom.z64", 0xBBCB2C, 0x4

glabel D_80145990
    .incbin "baserom.z64", 0xBBCB30, 0x8

glabel D_80145998
    .incbin "baserom.z64", 0xBBCB38, 0x14

glabel D_801459AC
    .incbin "baserom.z64", 0xBBCB4C, 0x20

glabel D_801459CC
    .incbin "baserom.z64", 0xBBCB6C, 0x4

glabel D_801459D0
    .incbin "baserom.z64", 0xBBCB70, 0x8

glabel D_801459D8
    .incbin "baserom.z64", 0xBBCB78, 0x14

glabel D_801459EC
    .incbin "baserom.z64", 0xBBCB8C, 0x38

glabel D_80145A24
    .incbin "baserom.z64", 0xBBCBC4, 0x4

glabel D_80145A28
    .incbin "baserom.z64", 0xBBCBC8, 0x8

glabel D_80145A30
    .incbin "baserom.z64", 0xBBCBD0, 0x14

glabel D_80145A44
    .incbin "baserom.z64", 0xBBCBE4, 0x1C

glabel D_80145A60
    .incbin "baserom.z64", 0xBBCC00, 0x4

glabel D_80145A64
    .incbin "baserom.z64", 0xBBCC04, 0xC

glabel D_80145A70
    .incbin "baserom.z64", 0xBBCC10, 0x10

glabel D_80145A80
    .incbin "baserom.z64", 0xBBCC20, 0x8

glabel D_80145A88
    .incbin "baserom.z64", 0xBBCC28, 0x14

glabel D_80145A9C
    .incbin "baserom.z64", 0xBBCC3C, 0x20

glabel D_80145ABC
    .incbin "baserom.z64", 0xBBCC5C, 0x4

glabel D_80145AC0
    .incbin "baserom.z64", 0xBBCC60, 0x8

glabel D_80145AC8
    .incbin "baserom.z64", 0xBBCC68, 0x14

glabel D_80145ADC
    .incbin "baserom.z64", 0xBBCC7C, 0x10

glabel D_80145AEC
    .incbin "baserom.z64", 0xBBCC8C, 0x4

glabel D_80145AF0
    .incbin "baserom.z64", 0xBBCC90, 0x8

glabel D_80145AF8
    .incbin "baserom.z64", 0xBBCC98, 0x14

glabel D_80145B0C
    .incbin "baserom.z64", 0xBBCCAC, 0x10

glabel D_80145B1C
    .incbin "baserom.z64", 0xBBCCBC, 0x4

glabel D_80145B20
    .incbin "baserom.z64", 0xBBCCC0, 0xC

glabel D_80145B2C
    .incbin "baserom.z64", 0xBBCCCC, 0x1C

glabel D_80145B48
    .incbin "baserom.z64", 0xBBCCE8, 0x8

glabel D_80145B50
    .incbin "baserom.z64", 0xBBCCF0, 0x14

glabel D_80145B64
    .incbin "baserom.z64", 0xBBCD04, 0x1C

glabel D_80145B80
    .incbin "baserom.z64", 0xBBCD20, 0x4

glabel D_80145B84
    .incbin "baserom.z64", 0xBBCD24, 0x8

glabel D_80145B8C
    .incbin "baserom.z64", 0xBBCD2C, 0x14

glabel D_80145BA0
    .incbin "baserom.z64", 0xBBCD40, 0x10

glabel D_80145BB0
    .incbin "baserom.z64", 0xBBCD50, 0x4

glabel D_80145BB4
    .incbin "baserom.z64", 0xBBCD54, 0xC

glabel D_80145BC0
    .incbin "baserom.z64", 0xBBCD60, 0x18

glabel D_80145BD8
    .incbin "baserom.z64", 0xBBCD78, 0xC

glabel D_80145BE4
    .incbin "baserom.z64", 0xBBCD84, 0xC

glabel D_80145BF0
    .incbin "baserom.z64", 0xBBCD90, 0x20

glabel D_80145C10
    .incbin "baserom.z64", 0xBBCDB0, 0x30

glabel D_80145C40
    .incbin "baserom.z64", 0xBBCDE0, 0x18

glabel D_80145C58
    .incbin "baserom.z64", 0xBBCDF8, 0x20

glabel D_80145C78
    .incbin "baserom.z64", 0xBBCE18, 0x28

glabel D_80145CA0
    .incbin "baserom.z64", 0xBBCE40, 0x4

glabel D_80145CA4
    .incbin "baserom.z64", 0xBBCE44, 0xC

glabel D_80145CB0
    .incbin "baserom.z64", 0xBBCE50, 0x24

glabel D_80145CD4
    .incbin "baserom.z64", 0xBBCE74, 0x24

glabel D_80145CF8
    .incbin "baserom.z64", 0xBBCE98, 0x20

glabel D_80145D18
    .incbin "baserom.z64", 0xBBCEB8, 0x28
