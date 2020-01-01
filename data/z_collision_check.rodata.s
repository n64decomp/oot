.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8013A5B0
    .incbin "baserom.z64", 0xBB1750, 0x18

glabel D_8013A5C8
    .incbin "baserom.z64", 0xBB1768, 0x10

glabel D_8013A5D8
    .incbin "baserom.z64", 0xBB1778, 0x18

glabel D_8013A5F0
    .incbin "baserom.z64", 0xBB1790, 0x18

glabel D_8013A608
    .incbin "baserom.z64", 0xBB17A8, 0x18

glabel D_8013A620
    .incbin "baserom.z64", 0xBB17C0, 0x18

glabel D_8013A638
    .incbin "baserom.z64", 0xBB17D8, 0x8

glabel D_8013A640
    .incbin "baserom.z64", 0xBB17E0, 0x30

glabel D_8013A670
    .incbin "baserom.z64", 0xBB1810, 0x4

glabel D_8013A674
    .incbin "baserom.z64", 0xBB1814, 0x18

glabel D_8013A68C
    .incbin "baserom.z64", 0xBB182C, 0x8

glabel D_8013A694
    .incbin "baserom.z64", 0xBB1834, 0x30

glabel D_8013A6C4
    .incbin "baserom.z64", 0xBB1864, 0x4

glabel D_8013A6C8
    .incbin "baserom.z64", 0xBB1868, 0x18

glabel D_8013A6E0
    .incbin "baserom.z64", 0xBB1880, 0x8

glabel D_8013A6E8
    .incbin "baserom.z64", 0xBB1888, 0x2C

glabel D_8013A714
    .incbin "baserom.z64", 0xBB18B4, 0x4

glabel D_8013A718
    .incbin "baserom.z64", 0xBB18B8, 0x20

glabel D_8013A738
    .incbin "baserom.z64", 0xBB18D8, 0x18

glabel D_8013A750
    .incbin "baserom.z64", 0xBB18F0, 0x14

glabel D_8013A764
    .incbin "baserom.z64", 0xBB1904, 0x4

glabel D_8013A768
    .incbin "baserom.z64", 0xBB1908, 0x18

glabel D_8013A780
    .incbin "baserom.z64", 0xBB1920, 0x8

glabel D_8013A788
    .incbin "baserom.z64", 0xBB1928, 0x2C

glabel D_8013A7B4
    .incbin "baserom.z64", 0xBB1954, 0x4

glabel D_8013A7B8
    .incbin "baserom.z64", 0xBB1958, 0x18

glabel D_8013A7D0
    .incbin "baserom.z64", 0xBB1970, 0x8

glabel D_8013A7D8
    .incbin "baserom.z64", 0xBB1978, 0x2C

glabel D_8013A804
    .incbin "baserom.z64", 0xBB19A4, 0x4

glabel D_8013A808
    .incbin "baserom.z64", 0xBB19A8, 0x20

glabel D_8013A828
    .incbin "baserom.z64", 0xBB19C8, 0x18

glabel D_8013A840
    .incbin "baserom.z64", 0xBB19E0, 0x28

glabel D_8013A868
    .incbin "baserom.z64", 0xBB1A08, 0x18

glabel D_8013A880
    .incbin "baserom.z64", 0xBB1A20, 0x3C

glabel D_8013A8BC
    .incbin "baserom.z64", 0xBB1A5C, 0x28

glabel D_8013A8E4
    .incbin "baserom.z64", 0xBB1A84, 0x18

glabel D_8013A8FC
    .incbin "baserom.z64", 0xBB1A9C, 0x50

glabel D_8013A94C
    .incbin "baserom.z64", 0xBB1AEC, 0x3C

glabel D_8013A988
    .incbin "baserom.z64", 0xBB1B28, 0x28

glabel D_8013A9B0
    .incbin "baserom.z64", 0xBB1B50, 0x18

glabel D_8013A9C8
    .incbin "baserom.z64", 0xBB1B68, 0x3C

glabel D_8013AA04
    .incbin "baserom.z64", 0xBB1BA4, 0x28

glabel D_8013AA2C
    .incbin "baserom.z64", 0xBB1BCC, 0x18

glabel D_8013AA44
    .incbin "baserom.z64", 0xBB1BE4, 0x50

glabel D_8013AA94
    .incbin "baserom.z64", 0xBB1C34, 0x3C

glabel D_8013AAD0
    .incbin "baserom.z64", 0xBB1C70, 0x28

glabel D_8013AAF8
    .incbin "baserom.z64", 0xBB1C98, 0x18

glabel D_8013AB10
    .incbin "baserom.z64", 0xBB1CB0, 0x3C

glabel D_8013AB4C
    .incbin "baserom.z64", 0xBB1CEC, 0x28

glabel D_8013AB74
    .incbin "baserom.z64", 0xBB1D14, 0x18

glabel D_8013AB8C
    .incbin "baserom.z64", 0xBB1D2C, 0x50

glabel D_8013ABDC
    .incbin "baserom.z64", 0xBB1D7C, 0x3C

glabel D_8013AC18
    .incbin "baserom.z64", 0xBB1DB8, 0x40

glabel D_8013AC58
    .incbin "baserom.z64", 0xBB1DF8, 0x24

glabel D_8013AC7C
    .incbin "baserom.z64", 0xBB1E1C, 0x24

glabel D_8013ACA0
    .incbin "baserom.z64", 0xBB1E40, 0x18

glabel D_8013ACB8
    .incbin "baserom.z64", 0xBB1E58, 0x38

glabel D_8013ACF0
    .incbin "baserom.z64", 0xBB1E90, 0x4

glabel D_8013ACF4
    .incbin "baserom.z64", 0xBB1E94, 0x4

glabel D_8013ACF8
    .incbin "baserom.z64", 0xBB1E98, 0x4

glabel D_8013ACFC
    .incbin "baserom.z64", 0xBB1E9C, 0x4

glabel D_8013AD00
    .incbin "baserom.z64", 0xBB1EA0, 0x4

glabel D_8013AD04
    .incbin "baserom.z64", 0xBB1EA4, 0x4

glabel D_8013AD08
    .incbin "baserom.z64", 0xBB1EA8, 0x4

glabel D_8013AD0C
    .incbin "baserom.z64", 0xBB1EAC, 0x4

glabel D_8013AD10
    .incbin "baserom.z64", 0xBB1EB0, 0x4

glabel D_8013AD14
    .incbin "baserom.z64", 0xBB1EB4, 0x4

glabel D_8013AD18
    .incbin "baserom.z64", 0xBB1EB8, 0x4

glabel D_8013AD1C
    .incbin "baserom.z64", 0xBB1EBC, 0x4

glabel D_8013AD20
    .incbin "baserom.z64", 0xBB1EC0, 0x4

glabel D_8013AD24
    .incbin "baserom.z64", 0xBB1EC4, 0x4

glabel D_8013AD28
    .incbin "baserom.z64", 0xBB1EC8, 0x4

glabel D_8013AD2C
    .incbin "baserom.z64", 0xBB1ECC, 0x4

glabel D_8013AD30
    .incbin "baserom.z64", 0xBB1ED0, 0x10
