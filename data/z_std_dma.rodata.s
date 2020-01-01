.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8000B280
    .incbin "baserom.z64", 0xBE80, 0x6494

glabel D_80011714
    .incbin "baserom.z64", 0x12314, 0x2C

glabel D_80011740
    .incbin "baserom.z64", 0x12340, 0x24

glabel D_80011764
    .incbin "baserom.z64", 0x12364, 0x20

glabel D_80011784
    .incbin "baserom.z64", 0x12384, 0x2C

glabel D_800117B0
    .incbin "baserom.z64", 0x123B0, 0x20

glabel D_800117D0
    .incbin "baserom.z64", 0x123D0, 0x18

glabel D_800117E8
    .incbin "baserom.z64", 0x123E8, 0x10

glabel D_800117F8
    .incbin "baserom.z64", 0x123F8, 0x18

glabel D_80011810
    .incbin "baserom.z64", 0x12410, 0x10

glabel D_80011820
    .incbin "baserom.z64", 0x12420, 0xC

glabel D_8001182C
    .incbin "baserom.z64", 0x1242C, 0x10

glabel D_8001183C
    .incbin "baserom.z64", 0x1243C, 0x2C

glabel D_80011868
    .incbin "baserom.z64", 0x12468, 0x8

glabel D_80011870
    .incbin "baserom.z64", 0x12470, 0x4

glabel D_80011874
    .incbin "baserom.z64", 0x12474, 0x8

glabel D_8001187C
    .incbin "baserom.z64", 0x1247C, 0x30

glabel D_800118AC
    .incbin "baserom.z64", 0x124AC, 0x4

glabel D_800118B0
    .incbin "baserom.z64", 0x124B0, 0x4

glabel D_800118B4
    .incbin "baserom.z64", 0x124B4, 0x14

glabel D_800118C8
    .incbin "baserom.z64", 0x124C8, 0x14

glabel D_800118DC
    .incbin "baserom.z64", 0x124DC, 0x4

glabel D_800118E0
    .incbin "baserom.z64", 0x124E0, 0x14

glabel D_800118F4
    .incbin "baserom.z64", 0x124F4, 0x14

glabel D_80011908
    .incbin "baserom.z64", 0x12508, 0x10

glabel D_80011918
    .incbin "baserom.z64", 0x12518, 0x4

glabel D_8001191C
    .incbin "baserom.z64", 0x1251C, 0x10

glabel D_8001192C
    .incbin "baserom.z64", 0x1252C, 0x4

glabel D_80011930
    .incbin "baserom.z64", 0x12530, 0xC

glabel D_8001193C
    .incbin "baserom.z64", 0x1253C, 0x8

glabel D_80011944
    .incbin "baserom.z64", 0x12544, 0x34

glabel D_80011978
    .incbin "baserom.z64", 0x12578, 0x18

glabel D_80011990
    .incbin "baserom.z64", 0x12590, 0x64

glabel D_800119F4
    .incbin "baserom.z64", 0x125F4, 0x18

glabel D_80011A0C
    .incbin "baserom.z64", 0x1260C, 0x40

glabel D_80011A4C
    .incbin "baserom.z64", 0x1264C, 0x18

glabel D_80011A64
    .incbin "baserom.z64", 0x12664, 0x60

glabel D_80011AC4
    .incbin "baserom.z64", 0x126C4, 0x14

glabel D_80011AD8
    .incbin "baserom.z64", 0x126D8, 0x50

glabel D_80011B28
    .incbin "baserom.z64", 0x12728, 0x6C

glabel D_80011B94
    .incbin "baserom.z64", 0x12794, 0x24

glabel D_80011BB8
    .incbin "baserom.z64", 0x127B8, 0x1C

glabel D_80011BD4
    .incbin "baserom.z64", 0x127D4, 0x14

glabel D_80011BE8
    .incbin "baserom.z64", 0x127E8, 0x4

glabel D_80011BEC
    .incbin "baserom.z64", 0x127EC, 0x8

glabel D_80011BF4
    .incbin "baserom.z64", 0x127F4, 0x40

glabel D_80011C34
    .incbin "baserom.z64", 0x12834, 0x10

glabel D_80011C44
    .incbin "baserom.z64", 0x12844, 0x40

glabel D_80011C84
    .incbin "baserom.z64", 0x12884, 0x4

glabel D_80011C88
    .incbin "baserom.z64", 0x12888, 0x10

glabel D_80011C98
    .incbin "baserom.z64", 0x12898, 0x24

glabel D_80011CBC
    .incbin "baserom.z64", 0x128BC, 0x4

glabel D_80011CC0
    .incbin "baserom.z64", 0x128C0, 0x3C

glabel D_80011CFC
    .incbin "baserom.z64", 0x128FC, 0x10

glabel D_80011D0C
    .incbin "baserom.z64", 0x1290C, 0x14
