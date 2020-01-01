.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80144A20
    .incbin "baserom.z64", 0xBBBBC0, 0x8

glabel D_80144A28
    .incbin "baserom.z64", 0xBBBBC8, 0x10

glabel D_80144A38
    .incbin "baserom.z64", 0xBBBBD8, 0x8

glabel D_80144A40
    .incbin "baserom.z64", 0xBBBBE0, 0x10

glabel D_80144A50
    .incbin "baserom.z64", 0xBBBBF0, 0x8

glabel D_80144A58
    .incbin "baserom.z64", 0xBBBBF8, 0x10

glabel D_80144A68
    .incbin "baserom.z64", 0xBBBC08, 0x8

glabel D_80144A70
    .incbin "baserom.z64", 0xBBBC10, 0x10

glabel D_80144A80
    .incbin "baserom.z64", 0xBBBC20, 0x8

glabel D_80144A88
    .incbin "baserom.z64", 0xBBBC28, 0x10

glabel D_80144A98
    .incbin "baserom.z64", 0xBBBC38, 0x8

glabel D_80144AA0
    .incbin "baserom.z64", 0xBBBC40, 0x10

glabel D_80144AB0
    .incbin "baserom.z64", 0xBBBC50, 0x8

glabel D_80144AB8
    .incbin "baserom.z64", 0xBBBC58, 0x10

glabel D_80144AC8
    .incbin "baserom.z64", 0xBBBC68, 0x8

glabel D_80144AD0
    .incbin "baserom.z64", 0xBBBC70, 0x10

glabel D_80144AE0
    .incbin "baserom.z64", 0xBBBC80, 0x8

glabel D_80144AE8
    .incbin "baserom.z64", 0xBBBC88, 0x10

glabel D_80144AF8
    .incbin "baserom.z64", 0xBBBC98, 0x8

glabel D_80144B00
    .incbin "baserom.z64", 0xBBBCA0, 0x10

glabel D_80144B10
    .incbin "baserom.z64", 0xBBBCB0, 0x8

glabel D_80144B18
    .incbin "baserom.z64", 0xBBBCB8, 0x10

glabel D_80144B28
    .incbin "baserom.z64", 0xBBBCC8, 0x8

glabel D_80144B30
    .incbin "baserom.z64", 0xBBBCD0, 0x10

glabel D_80144B40
    .incbin "baserom.z64", 0xBBBCE0, 0x10

glabel D_80144B50
    .incbin "baserom.z64", 0xBBBCF0, 0x10

glabel D_80144B60
    .incbin "baserom.z64", 0xBBBD00, 0xC

glabel D_80144B6C
    .incbin "baserom.z64", 0xBBBD0C, 0x10

glabel D_80144B7C
    .incbin "baserom.z64", 0xBBBD1C, 0x10

glabel D_80144B8C
    .incbin "baserom.z64", 0xBBBD2C, 0x10

glabel D_80144B9C
    .incbin "baserom.z64", 0xBBBD3C, 0xC

glabel D_80144BA8
    .incbin "baserom.z64", 0xBBBD48, 0x10

glabel D_80144BB8
    .incbin "baserom.z64", 0xBBBD58, 0x10

glabel D_80144BC8
    .incbin "baserom.z64", 0xBBBD68, 0x10

glabel D_80144BD8
    .incbin "baserom.z64", 0xBBBD78, 0x8

glabel D_80144BE0
    .incbin "baserom.z64", 0xBBBD80, 0x10

glabel D_80144BF0
    .incbin "baserom.z64", 0xBBBD90, 0x8

glabel D_80144BF8
    .incbin "baserom.z64", 0xBBBD98, 0x10

glabel D_80144C08
    .incbin "baserom.z64", 0xBBBDA8, 0x8

glabel D_80144C10
    .incbin "baserom.z64", 0xBBBDB0, 0x10

glabel D_80144C20
    .incbin "baserom.z64", 0xBBBDC0, 0x20

glabel D_80144C40
    .incbin "baserom.z64", 0xBBBDE0, 0x40
