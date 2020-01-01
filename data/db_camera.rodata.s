.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80143100
    .incbin "baserom.z64", 0xBBA2A0, 0x1C

glabel D_8014311C
    .incbin "baserom.z64", 0xBBA2BC, 0x20

glabel D_8014313C
    .incbin "baserom.z64", 0xBBA2DC, 0x18

glabel D_80143154
    .incbin "baserom.z64", 0xBBA2F4, 0x384

glabel D_801434D8
    .incbin "baserom.z64", 0xBBA678, 0x20

glabel D_801434F8
    .incbin "baserom.z64", 0xBBA698, 0x20

glabel D_80143518
    .incbin "baserom.z64", 0xBBA6B8, 0x20

glabel D_80143538
    .incbin "baserom.z64", 0xBBA6D8, 0x20

glabel D_80143558
    .incbin "baserom.z64", 0xBBA6F8, 0x20

glabel D_80143578
    .incbin "baserom.z64", 0xBBA718, 0x20

glabel D_80143598
    .incbin "baserom.z64", 0xBBA738, 0x2C

glabel D_801435C4
    .incbin "baserom.z64", 0xBBA764, 0xC

glabel D_801435D0
    .incbin "baserom.z64", 0xBBA770, 0xC

glabel D_801435DC
    .incbin "baserom.z64", 0xBBA77C, 0x14

glabel D_801435F0
    .incbin "baserom.z64", 0xBBA790, 0xC

glabel D_801435FC
    .incbin "baserom.z64", 0xBBA79C, 0xC

glabel D_80143608
    .incbin "baserom.z64", 0xBBA7A8, 0x20

glabel D_80143628
    .incbin "baserom.z64", 0xBBA7C8, 0x18

glabel D_80143640
    .incbin "baserom.z64", 0xBBA7E0, 0x1C

glabel D_8014365C
    .incbin "baserom.z64", 0xBBA7FC, 0x14

glabel D_80143670
    .incbin "baserom.z64", 0xBBA810, 0x1C

glabel D_8014368C
    .incbin "baserom.z64", 0xBBA82C, 0x20

glabel D_801436AC
    .incbin "baserom.z64", 0xBBA84C, 0x20

glabel D_801436CC
    .incbin "baserom.z64", 0xBBA86C, 0x10

glabel D_801436DC
    .incbin "baserom.z64", 0xBBA87C, 0x10

glabel D_801436EC
    .incbin "baserom.z64", 0xBBA88C, 0x10

glabel D_801436FC
    .incbin "baserom.z64", 0xBBA89C, 0x10

glabel D_8014370C
    .incbin "baserom.z64", 0xBBA8AC, 0x10

glabel D_8014371C
    .incbin "baserom.z64", 0xBBA8BC, 0x1C

glabel D_80143738
    .incbin "baserom.z64", 0xBBA8D8, 0x24

glabel D_8014375C
    .incbin "baserom.z64", 0xBBA8FC, 0x18

glabel D_80143774
    .incbin "baserom.z64", 0xBBA914, 0x1C

glabel D_80143790
    .incbin "baserom.z64", 0xBBA930, 0x14

glabel D_801437A4
    .incbin "baserom.z64", 0xBBA944, 0x1C

glabel D_801437C0
    .incbin "baserom.z64", 0xBBA960, 0x20

glabel D_801437E0
    .incbin "baserom.z64", 0xBBA980, 0x20

glabel D_80143800
    .incbin "baserom.z64", 0xBBA9A0, 0x10

glabel D_80143810
    .incbin "baserom.z64", 0xBBA9B0, 0x10

glabel D_80143820
    .incbin "baserom.z64", 0xBBA9C0, 0x10

glabel D_80143830
    .incbin "baserom.z64", 0xBBA9D0, 0x10

glabel D_80143840
    .incbin "baserom.z64", 0xBBA9E0, 0x10

glabel D_80143850
    .incbin "baserom.z64", 0xBBA9F0, 0x1C

glabel D_8014386C
    .incbin "baserom.z64", 0xBBAA0C, 0x40

glabel D_801438AC
    .incbin "baserom.z64", 0xBBAA4C, 0x8

glabel D_801438B4
    .incbin "baserom.z64", 0xBBAA54, 0xC

glabel D_801438C0
    .incbin "baserom.z64", 0xBBAA60, 0x24

glabel D_801438E4
    .incbin "baserom.z64", 0xBBAA84, 0x24

glabel D_80143908
    .incbin "baserom.z64", 0xBBAAA8, 0x24

glabel D_8014392C
    .incbin "baserom.z64", 0xBBAACC, 0x3C

glabel D_80143968
    .incbin "baserom.z64", 0xBBAB08, 0x10

glabel D_80143978
    .incbin "baserom.z64", 0xBBAB18, 0x2C

glabel D_801439A4
    .incbin "baserom.z64", 0xBBAB44, 0x10

glabel D_801439B4
    .incbin "baserom.z64", 0xBBAB54, 0x10

glabel D_801439C4
    .incbin "baserom.z64", 0xBBAB64, 0x2C

glabel D_801439F0
    .incbin "baserom.z64", 0xBBAB90, 0x10

glabel D_80143A00
    .incbin "baserom.z64", 0xBBABA0, 0x10

glabel D_80143A10
    .incbin "baserom.z64", 0xBBABB0, 0x10

glabel D_80143A20
    .incbin "baserom.z64", 0xBBABC0, 0x10

glabel D_80143A30
    .incbin "baserom.z64", 0xBBABD0, 0x10

glabel D_80143A40
    .incbin "baserom.z64", 0xBBABE0, 0x2C

glabel D_80143A6C
    .incbin "baserom.z64", 0xBBAC0C, 0x10

glabel D_80143A7C
    .incbin "baserom.z64", 0xBBAC1C, 0x10

glabel D_80143A8C
    .incbin "baserom.z64", 0xBBAC2C, 0x2C

glabel D_80143AB8
    .incbin "baserom.z64", 0xBBAC58, 0x10

glabel D_80143AC8
    .incbin "baserom.z64", 0xBBAC68, 0x44

glabel D_80143B0C
    .incbin "baserom.z64", 0xBBACAC, 0x1C

glabel D_80143B28
    .incbin "baserom.z64", 0xBBACC8, 0x8

glabel D_80143B30
    .incbin "baserom.z64", 0xBBACD0, 0xC

glabel D_80143B3C
    .incbin "baserom.z64", 0xBBACDC, 0x24

glabel D_80143B60
    .incbin "baserom.z64", 0xBBAD00, 0x24

glabel D_80143B84
    .incbin "baserom.z64", 0xBBAD24, 0x24

glabel D_80143BA8
    .incbin "baserom.z64", 0xBBAD48, 0x40

glabel D_80143BE8
    .incbin "baserom.z64", 0xBBAD88, 0x10

glabel D_80143BF8
    .incbin "baserom.z64", 0xBBAD98, 0x10

glabel D_80143C08
    .incbin "baserom.z64", 0xBBADA8, 0x10

glabel D_80143C18
    .incbin "baserom.z64", 0xBBADB8, 0x4

glabel D_80143C1C
    .incbin "baserom.z64", 0xBBADBC, 0x4

glabel D_80143C20
    .incbin "baserom.z64", 0xBBADC0, 0x20

glabel D_80143C40
    .incbin "baserom.z64", 0xBBADE0, 0x14

glabel D_80143C54
    .incbin "baserom.z64", 0xBBADF4, 0x4

glabel D_80143C58
    .incbin "baserom.z64", 0xBBADF8, 0x4

glabel D_80143C5C
    .incbin "baserom.z64", 0xBBADFC, 0x4

glabel D_80143C60
    .incbin "baserom.z64", 0xBBAE00, 0x4

glabel D_80143C64
    .incbin "baserom.z64", 0xBBAE04, 0x4

glabel D_80143C68
    .incbin "baserom.z64", 0xBBAE08, 0x4

glabel D_80143C6C
    .incbin "baserom.z64", 0xBBAE0C, 0x4

glabel D_80143C70
    .incbin "baserom.z64", 0xBBAE10, 0x8

glabel D_80143C78
    .incbin "baserom.z64", 0xBBAE18, 0x4

glabel D_80143C7C
    .incbin "baserom.z64", 0xBBAE1C, 0x4

glabel D_80143C80
    .incbin "baserom.z64", 0xBBAE20, 0x4

glabel D_80143C84
    .incbin "baserom.z64", 0xBBAE24, 0x8

glabel D_80143C8C
    .incbin "baserom.z64", 0xBBAE2C, 0x4

glabel D_80143C90
    .incbin "baserom.z64", 0xBBAE30, 0x4

glabel D_80143C94
    .incbin "baserom.z64", 0xBBAE34, 0x4

glabel D_80143C98
    .incbin "baserom.z64", 0xBBAE38, 0x4

glabel D_80143C9C
    .incbin "baserom.z64", 0xBBAE3C, 0x4

glabel D_80143CA0
    .incbin "baserom.z64", 0xBBAE40, 0x4

glabel D_80143CA4
    .incbin "baserom.z64", 0xBBAE44, 0x4

glabel D_80143CA8
    .incbin "baserom.z64", 0xBBAE48, 0x4

glabel D_80143CAC
    .incbin "baserom.z64", 0xBBAE4C, 0x4

glabel D_80143CB0
    .incbin "baserom.z64", 0xBBAE50, 0x4

glabel D_80143CB4
    .incbin "baserom.z64", 0xBBAE54, 0x4

glabel D_80143CB8
    .incbin "baserom.z64", 0xBBAE58, 0x4

glabel D_80143CBC
    .incbin "baserom.z64", 0xBBAE5C, 0x4

glabel D_80143CC0
    .incbin "baserom.z64", 0xBBAE60, 0x4

glabel D_80143CC4
    .incbin "baserom.z64", 0xBBAE64, 0x4

glabel D_80143CC8
    .incbin "baserom.z64", 0xBBAE68, 0x4

glabel D_80143CCC
    .incbin "baserom.z64", 0xBBAE6C, 0x4

glabel D_80143CD0
    .incbin "baserom.z64", 0xBBAE70, 0x10
