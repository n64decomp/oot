.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8014AAC0
    .incbin "baserom.z64", 0xBC1C60, 0x24

glabel D_8014AAE4
    .incbin "baserom.z64", 0xBC1C84, 0x4

glabel D_8014AAE8
    .incbin "baserom.z64", 0xBC1C88, 0x4

glabel D_8014AAEC
    .incbin "baserom.z64", 0xBC1C8C, 0x4

glabel D_8014AAF0
    .incbin "baserom.z64", 0xBC1C90, 0x4

glabel D_8014AAF4
    .incbin "baserom.z64", 0xBC1C94, 0x4

glabel D_8014AAF8
    .incbin "baserom.z64", 0xBC1C98, 0x4

glabel D_8014AAFC
    .incbin "baserom.z64", 0xBC1C9C, 0x4

glabel D_8014AB00
    .incbin "baserom.z64", 0xBC1CA0, 0x4

glabel D_8014AB04
    .incbin "baserom.z64", 0xBC1CA4, 0x4

glabel D_8014AB08
    .incbin "baserom.z64", 0xBC1CA8, 0x4

glabel D_8014AB0C
    .incbin "baserom.z64", 0xBC1CAC, 0x4

glabel D_8014AB10
    .incbin "baserom.z64", 0xBC1CB0, 0x24

glabel D_8014AB34
    .incbin "baserom.z64", 0xBC1CD4, 0x24

glabel D_8014AB58
    .incbin "baserom.z64", 0xBC1CF8, 0x8

glabel D_8014AB60
    .incbin "baserom.z64", 0xBC1D00, 0x8

glabel D_8014AB68
    .incbin "baserom.z64", 0xBC1D08, 0x10

glabel D_8014AB78
    .incbin "baserom.z64", 0xBC1D18, 0x8

glabel D_8014AB80
    .incbin "baserom.z64", 0xBC1D20, 0xC

glabel D_8014AB8C
    .incbin "baserom.z64", 0xBC1D2C, 0x8

glabel D_8014AB94
    .incbin "baserom.z64", 0xBC1D34, 0x10

glabel D_8014ABA4
    .incbin "baserom.z64", 0xBC1D44, 0x8

glabel D_8014ABAC
    .incbin "baserom.z64", 0xBC1D4C, 0x8

glabel D_8014ABB4
    .incbin "baserom.z64", 0xBC1D54, 0x8

glabel D_8014ABBC
    .incbin "baserom.z64", 0xBC1D5C, 0x10

glabel D_8014ABCC
    .incbin "baserom.z64", 0xBC1D6C, 0x8

glabel D_8014ABD4
    .incbin "baserom.z64", 0xBC1D74, 0x8

glabel D_8014ABDC
    .incbin "baserom.z64", 0xBC1D7C, 0x8

glabel D_8014ABE4
    .incbin "baserom.z64", 0xBC1D84, 0x1C
