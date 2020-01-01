.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80145180
    .incbin "baserom.z64", 0xBBC320, 0xC

glabel D_8014518C
    .incbin "baserom.z64", 0xBBC32C, 0x10

glabel D_8014519C
    .incbin "baserom.z64", 0xBBC33C, 0x10

glabel D_801451AC
    .incbin "baserom.z64", 0xBBC34C, 0x10

glabel D_801451BC
    .incbin "baserom.z64", 0xBBC35C, 0x10

glabel D_801451CC
    .incbin "baserom.z64", 0xBBC36C, 0x10

glabel D_801451DC
    .incbin "baserom.z64", 0xBBC37C, 0x10

glabel D_801451EC
    .incbin "baserom.z64", 0xBBC38C, 0x14

glabel D_80145200
    .incbin "baserom.z64", 0xBBC3A0, 0x10

glabel D_80145210
    .incbin "baserom.z64", 0xBBC3B0, 0xC

glabel D_8014521C
    .incbin "baserom.z64", 0xBBC3BC, 0xC

glabel D_80145228
    .incbin "baserom.z64", 0xBBC3C8, 0x18

glabel D_80145240
    .incbin "baserom.z64", 0xBBC3E0, 0x8

glabel D_80145248
    .incbin "baserom.z64", 0xBBC3E8, 0x1C

glabel D_80145264
    .incbin "baserom.z64", 0xBBC404, 0x4

glabel D_80145268
    .incbin "baserom.z64", 0xBBC408, 0x14

glabel D_8014527C
    .incbin "baserom.z64", 0xBBC41C, 0x10

glabel D_8014528C
    .incbin "baserom.z64", 0xBBC42C, 0xC

glabel D_80145298
    .incbin "baserom.z64", 0xBBC438, 0xC

glabel D_801452A4
    .incbin "baserom.z64", 0xBBC444, 0xC

glabel D_801452B0
    .incbin "baserom.z64", 0xBBC450, 0x10

glabel D_801452C0
    .incbin "baserom.z64", 0xBBC460, 0x14

glabel D_801452D4
    .incbin "baserom.z64", 0xBBC474, 0x14

glabel D_801452E8
    .incbin "baserom.z64", 0xBBC488, 0x14

glabel D_801452FC
    .incbin "baserom.z64", 0xBBC49C, 0xC

glabel D_80145308
    .incbin "baserom.z64", 0xBBC4A8, 0xC

glabel D_80145314
    .incbin "baserom.z64", 0xBBC4B4, 0x10

glabel D_80145324
    .incbin "baserom.z64", 0xBBC4C4, 0x14

glabel D_80145338
    .incbin "baserom.z64", 0xBBC4D8, 0x14

glabel D_8014534C
    .incbin "baserom.z64", 0xBBC4EC, 0x14

glabel D_80145360
    .incbin "baserom.z64", 0xBBC500, 0xC

glabel D_8014536C
    .incbin "baserom.z64", 0xBBC50C, 0xC

glabel D_80145378
    .incbin "baserom.z64", 0xBBC518, 0xC

glabel D_80145384
    .incbin "baserom.z64", 0xBBC524, 0x10

glabel D_80145394
    .incbin "baserom.z64", 0xBBC534, 0x4

glabel D_80145398
    .incbin "baserom.z64", 0xBBC538, 0x34

glabel D_801453CC
    .incbin "baserom.z64", 0xBBC56C, 0xC

glabel D_801453D8
    .incbin "baserom.z64", 0xBBC578, 0x4

glabel D_801453DC
    .incbin "baserom.z64", 0xBBC57C, 0x34

glabel D_80145410
    .incbin "baserom.z64", 0xBBC5B0, 0xC

glabel D_8014541C
    .incbin "baserom.z64", 0xBBC5BC, 0x4

glabel D_80145420
    .incbin "baserom.z64", 0xBBC5C0, 0x3C

glabel D_8014545C
    .incbin "baserom.z64", 0xBBC5FC, 0x4

glabel D_80145460
    .incbin "baserom.z64", 0xBBC600, 0x3C

glabel D_8014549C
    .incbin "baserom.z64", 0xBBC63C, 0x4

glabel D_801454A0
    .incbin "baserom.z64", 0xBBC640, 0x3C

glabel D_801454DC
    .incbin "baserom.z64", 0xBBC67C, 0x34

glabel D_80145510
    .incbin "baserom.z64", 0xBBC6B0, 0x20

glabel D_80145530
    .incbin "baserom.z64", 0xBBC6D0, 0x18

glabel D_80145548
    .incbin "baserom.z64", 0xBBC6E8, 0xC

glabel D_80145554
    .incbin "baserom.z64", 0xBBC6F4, 0xC

glabel D_80145560
    .incbin "baserom.z64", 0xBBC700, 0x18

glabel D_80145578
    .incbin "baserom.z64", 0xBBC718, 0x1C

glabel D_80145594
    .incbin "baserom.z64", 0xBBC734, 0xC

glabel D_801455A0
    .incbin "baserom.z64", 0xBBC740, 0x20

glabel D_801455C0
    .incbin "baserom.z64", 0xBBC760, 0x44

glabel D_80145604
    .incbin "baserom.z64", 0xBBC7A4, 0x4C
