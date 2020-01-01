.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80138670
    .incbin "baserom.z64", 0xBAF810, 0x8

glabel D_80138678
    .incbin "baserom.z64", 0xBAF818, 0x54

glabel D_801386CC
    .incbin "baserom.z64", 0xBAF86C, 0x4

glabel D_801386D0
    .incbin "baserom.z64", 0xBAF870, 0x14

glabel D_801386E4
    .incbin "baserom.z64", 0xBAF884, 0x10

glabel D_801386F4
    .incbin "baserom.z64", 0xBAF894, 0x14

glabel D_80138708
    .incbin "baserom.z64", 0xBAF8A8, 0x10

glabel D_80138718
    .incbin "baserom.z64", 0xBAF8B8, 0xC

glabel D_80138724
    .incbin "baserom.z64", 0xBAF8C4, 0x5C

glabel D_80138780
    .incbin "baserom.z64", 0xBAF920, 0x4

glabel D_80138784
    .incbin "baserom.z64", 0xBAF924, 0x14

glabel D_80138798
    .incbin "baserom.z64", 0xBAF938, 0x10

glabel D_801387A8
    .incbin "baserom.z64", 0xBAF948, 0x14

glabel D_801387BC
    .incbin "baserom.z64", 0xBAF95C, 0x10

glabel D_801387CC
    .incbin "baserom.z64", 0xBAF96C, 0x44

glabel D_80138810
    .incbin "baserom.z64", 0xBAF9B0, 0x24

glabel D_80138834
    .incbin "baserom.z64", 0xBAF9D4, 0x24

glabel D_80138858
    .incbin "baserom.z64", 0xBAF9F8, 0x24

glabel D_8013887C
    .incbin "baserom.z64", 0xBAFA1C, 0x28

glabel D_801388A4
    .incbin "baserom.z64", 0xBAFA44, 0x10

glabel D_801388B4
    .incbin "baserom.z64", 0xBAFA54, 0x10

glabel D_801388C4
    .incbin "baserom.z64", 0xBAFA64, 0x8

glabel D_801388CC
    .incbin "baserom.z64", 0xBAFA6C, 0x24

glabel D_801388F0
    .incbin "baserom.z64", 0xBAFA90, 0x4

glabel D_801388F4
    .incbin "baserom.z64", 0xBAFA94, 0xC

glabel D_80138900
    .incbin "baserom.z64", 0xBAFAA0, 0x4C

glabel D_8013894C
    .incbin "baserom.z64", 0xBAFAEC, 0x4

glabel D_80138950
    .incbin "baserom.z64", 0xBAFAF0, 0x10

glabel D_80138960
    .incbin "baserom.z64", 0xBAFB00, 0x20

glabel D_80138980
    .incbin "baserom.z64", 0xBAFB20, 0x10

glabel D_80138990
    .incbin "baserom.z64", 0xBAFB30, 0x10

glabel D_801389A0
    .incbin "baserom.z64", 0xBAFB40, 0x20

glabel D_801389C0
    .incbin "baserom.z64", 0xBAFB60, 0x10

glabel D_801389D0
    .incbin "baserom.z64", 0xBAFB70, 0x20

glabel D_801389F0
    .incbin "baserom.z64", 0xBAFB90, 0x10

glabel D_80138A00
    .incbin "baserom.z64", 0xBAFBA0, 0x10

glabel D_80138A10
    .incbin "baserom.z64", 0xBAFBB0, 0x20

glabel D_80138A30
    .incbin "baserom.z64", 0xBAFBD0, 0x20

glabel D_80138A50
    .incbin "baserom.z64", 0xBAFBF0, 0x10

glabel D_80138A60
    .incbin "baserom.z64", 0xBAFC00, 0x20

glabel D_80138A80
    .incbin "baserom.z64", 0xBAFC20, 0x24

glabel D_80138AA4
    .incbin "baserom.z64", 0xBAFC44, 0x10

glabel D_80138AB4
    .incbin "baserom.z64", 0xBAFC54, 0x10

glabel D_80138AC4
    .incbin "baserom.z64", 0xBAFC64, 0x1C

glabel D_80138AE0
    .incbin "baserom.z64", 0xBAFC80, 0x10

glabel D_80138AF0
    .incbin "baserom.z64", 0xBAFC90, 0x40

glabel D_80138B30
    .incbin "baserom.z64", 0xBAFCD0, 0x10

glabel D_80138B40
    .incbin "baserom.z64", 0xBAFCE0, 0x28

glabel D_80138B68
    .incbin "baserom.z64", 0xBAFD08, 0x10

glabel D_80138B78
    .incbin "baserom.z64", 0xBAFD18, 0x14

glabel D_80138B8C
    .incbin "baserom.z64", 0xBAFD2C, 0x10

glabel D_80138B9C
    .incbin "baserom.z64", 0xBAFD3C, 0x14

glabel D_80138BB0
    .incbin "baserom.z64", 0xBAFD50, 0x10

glabel D_80138BC0
    .incbin "baserom.z64", 0xBAFD60, 0x8

glabel D_80138BC8
    .incbin "baserom.z64", 0xBAFD68, 0x4C

glabel D_80138C14
    .incbin "baserom.z64", 0xBAFDB4, 0x4

glabel D_80138C18
    .incbin "baserom.z64", 0xBAFDB8, 0x8

glabel D_80138C20
    .incbin "baserom.z64", 0xBAFDC0, 0x24

glabel D_80138C44
    .incbin "baserom.z64", 0xBAFDE4, 0x4

glabel D_80138C48
    .incbin "baserom.z64", 0xBAFDE8, 0x8

glabel D_80138C50
    .incbin "baserom.z64", 0xBAFDF0, 0x24

glabel D_80138C74
    .incbin "baserom.z64", 0xBAFE14, 0x4

glabel D_80138C78
    .incbin "baserom.z64", 0xBAFE18, 0x8

glabel D_80138C80
    .incbin "baserom.z64", 0xBAFE20, 0x60

glabel D_80138CE0
    .incbin "baserom.z64", 0xBAFE80, 0x4

glabel D_80138CE4
    .incbin "baserom.z64", 0xBAFE84, 0x8

glabel D_80138CEC
    .incbin "baserom.z64", 0xBAFE8C, 0x70

glabel D_80138D5C
    .incbin "baserom.z64", 0xBAFEFC, 0x4

glabel D_80138D60
    .incbin "baserom.z64", 0xBAFF00, 0x8

glabel D_80138D68
    .incbin "baserom.z64", 0xBAFF08, 0x3C

glabel D_80138DA4
    .incbin "baserom.z64", 0xBAFF44, 0x8

glabel D_80138DAC
    .incbin "baserom.z64", 0xBAFF4C, 0x3C

glabel D_80138DE8
    .incbin "baserom.z64", 0xBAFF88, 0x44

glabel D_80138E2C
    .incbin "baserom.z64", 0xBAFFCC, 0x10

glabel D_80138E3C
    .incbin "baserom.z64", 0xBAFFDC, 0x44

glabel D_80138E80
    .incbin "baserom.z64", 0xBB0020, 0x10

glabel D_80138E90
    .incbin "baserom.z64", 0xBB0030, 0x8

glabel D_80138E98
    .incbin "baserom.z64", 0xBB0038, 0x24

glabel D_80138EBC
    .incbin "baserom.z64", 0xBB005C, 0x4

glabel D_80138EC0
    .incbin "baserom.z64", 0xBB0060, 0x8

glabel D_80138EC8
    .incbin "baserom.z64", 0xBB0068, 0x24

glabel D_80138EEC
    .incbin "baserom.z64", 0xBB008C, 0x4

glabel D_80138EF0
    .incbin "baserom.z64", 0xBB0090, 0x14

glabel D_80138F04
    .incbin "baserom.z64", 0xBB00A4, 0x10

glabel D_80138F14
    .incbin "baserom.z64", 0xBB00B4, 0x14

glabel D_80138F28
    .incbin "baserom.z64", 0xBB00C8, 0x10

glabel D_80138F38
    .incbin "baserom.z64", 0xBB00D8, 0x4

glabel D_80138F3C
    .incbin "baserom.z64", 0xBB00DC, 0x4

glabel D_80138F40
    .incbin "baserom.z64", 0xBB00E0, 0x4

glabel D_80138F44
    .incbin "baserom.z64", 0xBB00E4, 0x4

glabel D_80138F48
    .incbin "baserom.z64", 0xBB00E8, 0x4

glabel D_80138F4C
    .incbin "baserom.z64", 0xBB00EC, 0x4

glabel D_80138F50
    .incbin "baserom.z64", 0xBB00F0, 0x4

glabel D_80138F54
    .incbin "baserom.z64", 0xBB00F4, 0x4

glabel D_80138F58
    .incbin "baserom.z64", 0xBB00F8, 0x4

glabel D_80138F5C
    .incbin "baserom.z64", 0xBB00FC, 0x4

glabel D_80138F60
    .incbin "baserom.z64", 0xBB0100, 0x4

glabel D_80138F64
    .incbin "baserom.z64", 0xBB0104, 0x4

glabel D_80138F68
    .incbin "baserom.z64", 0xBB0108, 0x4

glabel D_80138F6C
    .incbin "baserom.z64", 0xBB010C, 0x4

glabel D_80138F70
    .incbin "baserom.z64", 0xBB0110, 0x4

glabel D_80138F74
    .incbin "baserom.z64", 0xBB0114, 0x4

glabel D_80138F78
    .incbin "baserom.z64", 0xBB0118, 0x4

glabel D_80138F7C
    .incbin "baserom.z64", 0xBB011C, 0x4

glabel D_80138F80
    .incbin "baserom.z64", 0xBB0120, 0x4

glabel D_80138F84
    .incbin "baserom.z64", 0xBB0124, 0x4

glabel D_80138F88
    .incbin "baserom.z64", 0xBB0128, 0x4

glabel D_80138F8C
    .incbin "baserom.z64", 0xBB012C, 0x4

glabel D_80138F90
    .incbin "baserom.z64", 0xBB0130, 0x4

glabel D_80138F94
    .incbin "baserom.z64", 0xBB0134, 0x4

glabel D_80138F98
    .incbin "baserom.z64", 0xBB0138, 0x4

glabel D_80138F9C
    .incbin "baserom.z64", 0xBB013C, 0x4

glabel D_80138FA0
    .incbin "baserom.z64", 0xBB0140, 0x4

glabel D_80138FA4
    .incbin "baserom.z64", 0xBB0144, 0x4

glabel D_80138FA8
    .incbin "baserom.z64", 0xBB0148, 0x4

glabel D_80138FAC
    .incbin "baserom.z64", 0xBB014C, 0x4

glabel D_80138FB0
    .incbin "baserom.z64", 0xBB0150, 0x4

glabel D_80138FB4
    .incbin "baserom.z64", 0xBB0154, 0x4

glabel D_80138FB8
    .incbin "baserom.z64", 0xBB0158, 0x4

glabel D_80138FBC
    .incbin "baserom.z64", 0xBB015C, 0x4

glabel D_80138FC0
    .incbin "baserom.z64", 0xBB0160, 0x4

glabel D_80138FC4
    .incbin "baserom.z64", 0xBB0164, 0x4

glabel D_80138FC8
    .incbin "baserom.z64", 0xBB0168, 0x8

glabel D_80138FD0
    .incbin "baserom.z64", 0xBB0170, 0x8

glabel D_80138FD8
    .incbin "baserom.z64", 0xBB0178, 0x60

glabel D_80139038
    .incbin "baserom.z64", 0xBB01D8, 0x4

glabel D_8013903C
    .incbin "baserom.z64", 0xBB01DC, 0x4

glabel D_80139040
    .incbin "baserom.z64", 0xBB01E0, 0x10
