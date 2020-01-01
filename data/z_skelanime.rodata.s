.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8013FF50
    .incbin "baserom.z64", 0xBB70F0, 0x14

glabel D_8013FF64
    .incbin "baserom.z64", 0xBB7104, 0x14

glabel D_8013FF78
    .incbin "baserom.z64", 0xBB7118, 0x14

glabel D_8013FF8C
    .incbin "baserom.z64", 0xBB712C, 0x8

glabel D_8013FF94
    .incbin "baserom.z64", 0xBB7134, 0x24

glabel D_8013FFB8
    .incbin "baserom.z64", 0xBB7158, 0x4

glabel D_8013FFBC
    .incbin "baserom.z64", 0xBB715C, 0x14

glabel D_8013FFD0
    .incbin "baserom.z64", 0xBB7170, 0x14

glabel D_8013FFE4
    .incbin "baserom.z64", 0xBB7184, 0x14

glabel D_8013FFF8
    .incbin "baserom.z64", 0xBB7198, 0x14

glabel D_8014000C
    .incbin "baserom.z64", 0xBB71AC, 0x14

glabel D_80140020
    .incbin "baserom.z64", 0xBB71C0, 0x14

glabel D_80140034
    .incbin "baserom.z64", 0xBB71D4, 0x14

glabel D_80140048
    .incbin "baserom.z64", 0xBB71E8, 0x8

glabel D_80140050
    .incbin "baserom.z64", 0xBB71F0, 0x24

glabel D_80140074
    .incbin "baserom.z64", 0xBB7214, 0x4

glabel D_80140078
    .incbin "baserom.z64", 0xBB7218, 0x14

glabel D_8014008C
    .incbin "baserom.z64", 0xBB722C, 0x14

glabel D_801400A0
    .incbin "baserom.z64", 0xBB7240, 0x14

glabel D_801400B4
    .incbin "baserom.z64", 0xBB7254, 0x14

glabel D_801400C8
    .incbin "baserom.z64", 0xBB7268, 0x14

glabel D_801400DC
    .incbin "baserom.z64", 0xBB727C, 0x14

glabel D_801400F0
    .incbin "baserom.z64", 0xBB7290, 0x14

glabel D_80140104
    .incbin "baserom.z64", 0xBB72A4, 0x8

glabel D_8014010C
    .incbin "baserom.z64", 0xBB72AC, 0x20

glabel D_8014012C
    .incbin "baserom.z64", 0xBB72CC, 0x4

glabel D_80140130
    .incbin "baserom.z64", 0xBB72D0, 0x14

glabel D_80140144
    .incbin "baserom.z64", 0xBB72E4, 0x14

glabel D_80140158
    .incbin "baserom.z64", 0xBB72F8, 0x14

glabel D_8014016C
    .incbin "baserom.z64", 0xBB730C, 0x14

glabel D_80140180
    .incbin "baserom.z64", 0xBB7320, 0x14

glabel D_80140194
    .incbin "baserom.z64", 0xBB7334, 0x14

glabel D_801401A8
    .incbin "baserom.z64", 0xBB7348, 0x14

glabel D_801401BC
    .incbin "baserom.z64", 0xBB735C, 0x8

glabel D_801401C4
    .incbin "baserom.z64", 0xBB7364, 0x20

glabel D_801401E4
    .incbin "baserom.z64", 0xBB7384, 0x4

glabel D_801401E8
    .incbin "baserom.z64", 0xBB7388, 0x14

glabel D_801401FC
    .incbin "baserom.z64", 0xBB739C, 0x14

glabel D_80140210
    .incbin "baserom.z64", 0xBB73B0, 0x14

glabel D_80140224
    .incbin "baserom.z64", 0xBB73C4, 0x14

glabel D_80140238
    .incbin "baserom.z64", 0xBB73D8, 0x14

glabel D_8014024C
    .incbin "baserom.z64", 0xBB73EC, 0xC

glabel D_80140258
    .incbin "baserom.z64", 0xBB73F8, 0x14

glabel D_8014026C
    .incbin "baserom.z64", 0xBB740C, 0x10

glabel D_8014027C
    .incbin "baserom.z64", 0xBB741C, 0x14

glabel D_80140290
    .incbin "baserom.z64", 0xBB7430, 0x14

glabel D_801402A4
    .incbin "baserom.z64", 0xBB7444, 0x14

glabel D_801402B8
    .incbin "baserom.z64", 0xBB7458, 0xC

glabel D_801402C4
    .incbin "baserom.z64", 0xBB7464, 0x14

glabel D_801402D8
    .incbin "baserom.z64", 0xBB7478, 0x8

glabel D_801402E0
    .incbin "baserom.z64", 0xBB7480, 0x30

glabel D_80140310
    .incbin "baserom.z64", 0xBB74B0, 0x4

glabel D_80140314
    .incbin "baserom.z64", 0xBB74B4, 0x14

glabel D_80140328
    .incbin "baserom.z64", 0xBB74C8, 0x14

glabel D_8014033C
    .incbin "baserom.z64", 0xBB74DC, 0x14

glabel D_80140350
    .incbin "baserom.z64", 0xBB74F0, 0x8

glabel D_80140358
    .incbin "baserom.z64", 0xBB74F8, 0x34

glabel D_8014038C
    .incbin "baserom.z64", 0xBB752C, 0x4

glabel D_80140390
    .incbin "baserom.z64", 0xBB7530, 0x14

glabel D_801403A4
    .incbin "baserom.z64", 0xBB7544, 0x14

glabel D_801403B8
    .incbin "baserom.z64", 0xBB7558, 0x14

glabel D_801403CC
    .incbin "baserom.z64", 0xBB756C, 0x14

glabel D_801403E0
    .incbin "baserom.z64", 0xBB7580, 0x14

glabel D_801403F4
    .incbin "baserom.z64", 0xBB7594, 0x1C

glabel D_80140410
    .incbin "baserom.z64", 0xBB75B0, 0x14

glabel D_80140424
    .incbin "baserom.z64", 0xBB75C4, 0x8

glabel D_8014042C
    .incbin "baserom.z64", 0xBB75CC, 0x34

glabel D_80140460
    .incbin "baserom.z64", 0xBB7600, 0x4

glabel D_80140464
    .incbin "baserom.z64", 0xBB7604, 0x14

glabel D_80140478
    .incbin "baserom.z64", 0xBB7618, 0x14

glabel D_8014048C
    .incbin "baserom.z64", 0xBB762C, 0x24

glabel D_801404B0
    .incbin "baserom.z64", 0xBB7650, 0x14

glabel D_801404C4
    .incbin "baserom.z64", 0xBB7664, 0x8

glabel D_801404CC
    .incbin "baserom.z64", 0xBB766C, 0x30

glabel D_801404FC
    .incbin "baserom.z64", 0xBB769C, 0x4

glabel D_80140500
    .incbin "baserom.z64", 0xBB76A0, 0x14

glabel D_80140514
    .incbin "baserom.z64", 0xBB76B4, 0x14

glabel D_80140528
    .incbin "baserom.z64", 0xBB76C8, 0x24

glabel D_8014054C
    .incbin "baserom.z64", 0xBB76EC, 0x14

glabel D_80140560
    .incbin "baserom.z64", 0xBB7700, 0x8

glabel D_80140568
    .incbin "baserom.z64", 0xBB7708, 0x34

glabel D_8014059C
    .incbin "baserom.z64", 0xBB773C, 0x4

glabel D_801405A0
    .incbin "baserom.z64", 0xBB7740, 0x14

glabel D_801405B4
    .incbin "baserom.z64", 0xBB7754, 0x14

glabel D_801405C8
    .incbin "baserom.z64", 0xBB7768, 0x8

glabel D_801405D0
    .incbin "baserom.z64", 0xBB7770, 0x34

glabel D_80140604
    .incbin "baserom.z64", 0xBB77A4, 0x4

glabel D_80140608
    .incbin "baserom.z64", 0xBB77A8, 0x14

glabel D_8014061C
    .incbin "baserom.z64", 0xBB77BC, 0x1C

glabel D_80140638
    .incbin "baserom.z64", 0xBB77D8, 0x14

glabel D_8014064C
    .incbin "baserom.z64", 0xBB77EC, 0x1C

glabel D_80140668
    .incbin "baserom.z64", 0xBB7808, 0x4

glabel D_8014066C
    .incbin "baserom.z64", 0xBB780C, 0x4

glabel D_80140670
    .incbin "baserom.z64", 0xBB7810, 0x4

glabel D_80140674
    .incbin "baserom.z64", 0xBB7814, 0x4

glabel D_80140678
    .incbin "baserom.z64", 0xBB7818, 0x4

glabel D_8014067C
    .incbin "baserom.z64", 0xBB781C, 0x4
