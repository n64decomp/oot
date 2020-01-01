.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80149C60
    .incbin "baserom.z64", 0xBC0E00, 0x28

glabel D_80149C88
    .incbin "baserom.z64", 0xBC0E28, 0x28

glabel D_80149CB0
    .incbin "baserom.z64", 0xBC0E50, 0x18

glabel D_80149CC8
    .incbin "baserom.z64", 0xBC0E68, 0x18

glabel D_80149CE0
    .incbin "baserom.z64", 0xBC0E80, 0x18

glabel D_80149CF8
    .incbin "baserom.z64", 0xBC0E98, 0x18

glabel D_80149D10
    .incbin "baserom.z64", 0xBC0EB0, 0x18

glabel D_80149D28
    .incbin "baserom.z64", 0xBC0EC8, 0x4

glabel D_80149D2C
    .incbin "baserom.z64", 0xBC0ECC, 0x14

glabel D_80149D40
    .incbin "baserom.z64", 0xBC0EE0, 0x8

glabel D_80149D48
    .incbin "baserom.z64", 0xBC0EE8, 0x10

glabel D_80149D58
    .incbin "baserom.z64", 0xBC0EF8, 0x4

glabel D_80149D5C
    .incbin "baserom.z64", 0xBC0EFC, 0x8

glabel D_80149D64
    .incbin "baserom.z64", 0xBC0F04, 0x10

glabel D_80149D74
    .incbin "baserom.z64", 0xBC0F14, 0xC

glabel D_80149D80
    .incbin "baserom.z64", 0xBC0F20, 0x14

glabel D_80149D94
    .incbin "baserom.z64", 0xBC0F34, 0x10

glabel D_80149DA4
    .incbin "baserom.z64", 0xBC0F44, 0x14

glabel D_80149DB8
    .incbin "baserom.z64", 0xBC0F58, 0x4

glabel D_80149DBC
    .incbin "baserom.z64", 0xBC0F5C, 0x10

glabel D_80149DCC
    .incbin "baserom.z64", 0xBC0F6C, 0x10

glabel D_80149DDC
    .incbin "baserom.z64", 0xBC0F7C, 0x10

glabel D_80149DEC
    .incbin "baserom.z64", 0xBC0F8C, 0xC

glabel D_80149DF8
    .incbin "baserom.z64", 0xBC0F98, 0x10

glabel D_80149E08
    .incbin "baserom.z64", 0xBC0FA8, 0x10

glabel D_80149E18
    .incbin "baserom.z64", 0xBC0FB8, 0x10

glabel D_80149E28
    .incbin "baserom.z64", 0xBC0FC8, 0x10

glabel D_80149E38
    .incbin "baserom.z64", 0xBC0FD8, 0xC

glabel D_80149E44
    .incbin "baserom.z64", 0xBC0FE4, 0xC

glabel D_80149E50
    .incbin "baserom.z64", 0xBC0FF0, 0x10

glabel D_80149E60
    .incbin "baserom.z64", 0xBC1000, 0x8

glabel D_80149E68
    .incbin "baserom.z64", 0xBC1008, 0x20

glabel D_80149E88
    .incbin "baserom.z64", 0xBC1028, 0x24

glabel D_80149EAC
    .incbin "baserom.z64", 0xBC104C, 0x20

glabel D_80149ECC
    .incbin "baserom.z64", 0xBC106C, 0x24

glabel D_80149EF0
    .incbin "baserom.z64", 0xBC1090, 0x20

glabel D_80149F10
    .incbin "baserom.z64", 0xBC10B0, 0x24

glabel D_80149F34
    .incbin "baserom.z64", 0xBC10D4, 0xC

glabel D_80149F40
    .incbin "baserom.z64", 0xBC10E0, 0x8

glabel D_80149F48
    .incbin "baserom.z64", 0xBC10E8, 0x4

glabel D_80149F4C
    .incbin "baserom.z64", 0xBC10EC, 0x10

glabel D_80149F5C
    .incbin "baserom.z64", 0xBC10FC, 0x10

glabel D_80149F6C
    .incbin "baserom.z64", 0xBC110C, 0x10

glabel D_80149F7C
    .incbin "baserom.z64", 0xBC111C, 0xC

glabel D_80149F88
    .incbin "baserom.z64", 0xBC1128, 0xC

glabel D_80149F94
    .incbin "baserom.z64", 0xBC1134, 0x10

glabel D_80149FA4
    .incbin "baserom.z64", 0xBC1144, 0xC

glabel D_80149FB0
    .incbin "baserom.z64", 0xBC1150, 0xC

glabel D_80149FBC
    .incbin "baserom.z64", 0xBC115C, 0x8

glabel D_80149FC4
    .incbin "baserom.z64", 0xBC1164, 0xC

glabel D_80149FD0
    .incbin "baserom.z64", 0xBC1170, 0x10

glabel D_80149FE0
    .incbin "baserom.z64", 0xBC1180, 0xC

glabel D_80149FEC
    .incbin "baserom.z64", 0xBC118C, 0x4

glabel D_80149FF0
    .incbin "baserom.z64", 0xBC1190, 0x4

glabel D_80149FF4
    .incbin "baserom.z64", 0xBC1194, 0x10

glabel D_8014A004
    .incbin "baserom.z64", 0xBC11A4, 0x10

glabel D_8014A014
    .incbin "baserom.z64", 0xBC11B4, 0x10

glabel D_8014A024
    .incbin "baserom.z64", 0xBC11C4, 0xC

glabel D_8014A030
    .incbin "baserom.z64", 0xBC11D0, 0xC

glabel D_8014A03C
    .incbin "baserom.z64", 0xBC11DC, 0xC

glabel D_8014A048
    .incbin "baserom.z64", 0xBC11E8, 0xC

glabel D_8014A054
    .incbin "baserom.z64", 0xBC11F4, 0x4

glabel D_8014A058
    .incbin "baserom.z64", 0xBC11F8, 0x4

glabel D_8014A05C
    .incbin "baserom.z64", 0xBC11FC, 0x4

glabel D_8014A060
    .incbin "baserom.z64", 0xBC1200, 0x4

glabel D_8014A064
    .incbin "baserom.z64", 0xBC1204, 0x4

glabel D_8014A068
    .incbin "baserom.z64", 0xBC1208, 0x4

glabel D_8014A06C
    .incbin "baserom.z64", 0xBC120C, 0x8

glabel D_8014A074
    .incbin "baserom.z64", 0xBC1214, 0xC

glabel D_8014A080
    .incbin "baserom.z64", 0xBC1220, 0xC

glabel D_8014A08C
    .incbin "baserom.z64", 0xBC122C, 0xC

glabel D_8014A098
    .incbin "baserom.z64", 0xBC1238, 0xC

glabel D_8014A0A4
    .incbin "baserom.z64", 0xBC1244, 0x8

glabel D_8014A0AC
    .incbin "baserom.z64", 0xBC124C, 0xC

glabel D_8014A0B8
    .incbin "baserom.z64", 0xBC1258, 0xC

glabel D_8014A0C4
    .incbin "baserom.z64", 0xBC1264, 0xC

glabel D_8014A0D0
    .incbin "baserom.z64", 0xBC1270, 0xC

glabel D_8014A0DC
    .incbin "baserom.z64", 0xBC127C, 0xC

glabel D_8014A0E8
    .incbin "baserom.z64", 0xBC1288, 0xC

glabel D_8014A0F4
    .incbin "baserom.z64", 0xBC1294, 0xC

glabel D_8014A100
    .incbin "baserom.z64", 0xBC12A0, 0x8

glabel D_8014A108
    .incbin "baserom.z64", 0xBC12A8, 0x4

glabel D_8014A10C
    .incbin "baserom.z64", 0xBC12AC, 0x4

glabel D_8014A110
    .incbin "baserom.z64", 0xBC12B0, 0x4

glabel D_8014A114
    .incbin "baserom.z64", 0xBC12B4, 0x4

glabel D_8014A118
    .incbin "baserom.z64", 0xBC12B8, 0x4

glabel D_8014A11C
    .incbin "baserom.z64", 0xBC12BC, 0x4

glabel D_8014A120
    .incbin "baserom.z64", 0xBC12C0, 0x4

glabel D_8014A124
    .incbin "baserom.z64", 0xBC12C4, 0x4

glabel D_8014A128
    .incbin "baserom.z64", 0xBC12C8, 0x4

glabel D_8014A12C
    .incbin "baserom.z64", 0xBC12CC, 0x4

glabel D_8014A130
    .incbin "baserom.z64", 0xBC12D0, 0x4

glabel D_8014A134
    .incbin "baserom.z64", 0xBC12D4, 0xC

glabel D_8014A140
    .incbin "baserom.z64", 0xBC12E0, 0x14

glabel D_8014A154
    .incbin "baserom.z64", 0xBC12F4, 0x24

glabel D_8014A178
    .incbin "baserom.z64", 0xBC1318, 0x24

glabel D_8014A19C
    .incbin "baserom.z64", 0xBC133C, 0x20

glabel D_8014A1BC
    .incbin "baserom.z64", 0xBC135C, 0x8

glabel D_8014A1C4
    .incbin "baserom.z64", 0xBC1364, 0x20

glabel D_8014A1E4
    .incbin "baserom.z64", 0xBC1384, 0x8

glabel D_8014A1EC
    .incbin "baserom.z64", 0xBC138C, 0x14

glabel D_8014A200
    .incbin "baserom.z64", 0xBC13A0, 0x10

glabel D_8014A210
    .incbin "baserom.z64", 0xBC13B0, 0x14

glabel D_8014A224
    .incbin "baserom.z64", 0xBC13C4, 0x4

glabel D_8014A228
    .incbin "baserom.z64", 0xBC13C8, 0x14

glabel D_8014A23C
    .incbin "baserom.z64", 0xBC13DC, 0x14

glabel D_8014A250
    .incbin "baserom.z64", 0xBC13F0, 0x10

glabel D_8014A260
    .incbin "baserom.z64", 0xBC1400, 0x8

glabel D_8014A268
    .incbin "baserom.z64", 0xBC1408, 0x14

glabel D_8014A27C
    .incbin "baserom.z64", 0xBC141C, 0x14

glabel D_8014A290
    .incbin "baserom.z64", 0xBC1430, 0x18

glabel D_8014A2A8
    .incbin "baserom.z64", 0xBC1448, 0x18

glabel D_8014A2C0
    .incbin "baserom.z64", 0xBC1460, 0x1C

glabel D_8014A2DC
    .incbin "baserom.z64", 0xBC147C, 0x8

glabel D_8014A2E4
    .incbin "baserom.z64", 0xBC1484, 0x28

glabel D_8014A30C
    .incbin "baserom.z64", 0xBC14AC, 0x4

glabel D_8014A310
    .incbin "baserom.z64", 0xBC14B0, 0x14

glabel D_8014A324
    .incbin "baserom.z64", 0xBC14C4, 0x10

glabel D_8014A334
    .incbin "baserom.z64", 0xBC14D4, 0x10

glabel D_8014A344
    .incbin "baserom.z64", 0xBC14E4, 0xC

glabel D_8014A350
    .incbin "baserom.z64", 0xBC14F0, 0x4

glabel D_8014A354
    .incbin "baserom.z64", 0xBC14F4, 0x10

glabel D_8014A364
    .incbin "baserom.z64", 0xBC1504, 0x20

glabel D_8014A384
    .incbin "baserom.z64", 0xBC1524, 0x18

glabel D_8014A39C
    .incbin "baserom.z64", 0xBC153C, 0x18

glabel D_8014A3B4
    .incbin "baserom.z64", 0xBC1554, 0x24

glabel D_8014A3D8
    .incbin "baserom.z64", 0xBC1578, 0x18

glabel D_8014A3F0
    .incbin "baserom.z64", 0xBC1590, 0x14

glabel D_8014A404
    .incbin "baserom.z64", 0xBC15A4, 0x10

glabel D_8014A414
    .incbin "baserom.z64", 0xBC15B4, 0x14

glabel D_8014A428
    .incbin "baserom.z64", 0xBC15C8, 0x14

glabel D_8014A43C
    .incbin "baserom.z64", 0xBC15DC, 0x14

glabel D_8014A450
    .incbin "baserom.z64", 0xBC15F0, 0xC

glabel D_8014A45C
    .incbin "baserom.z64", 0xBC15FC, 0x4

glabel D_8014A460
    .incbin "baserom.z64", 0xBC1600, 0x24

glabel jtbl_8014A484
    .incbin "baserom.z64", 0xBC1624, 0x3C

glabel D_8014A4C0
    .incbin "baserom.z64", 0xBC1660, 0x8

glabel D_8014A4C8
    .incbin "baserom.z64", 0xBC1668, 0x8

glabel D_8014A4D0
    .incbin "baserom.z64", 0xBC1670, 0x4

glabel jtbl_8014A4D4
    .incbin "baserom.z64", 0xBC1674, 0x2C

glabel jtbl_8014A500
    .incbin "baserom.z64", 0xBC16A0, 0x20

glabel jtbl_8014A520
    .incbin "baserom.z64", 0xBC16C0, 0x3C

glabel D_8014A55C
    .incbin "baserom.z64", 0xBC16FC, 0x4

glabel D_8014A560
    .incbin "baserom.z64", 0xBC1700, 0x4

glabel D_8014A564
    .incbin "baserom.z64", 0xBC1704, 0x4

glabel D_8014A568
    .incbin "baserom.z64", 0xBC1708, 0x4

glabel D_8014A56C
    .incbin "baserom.z64", 0xBC170C, 0x4

glabel D_8014A570
    .incbin "baserom.z64", 0xBC1710, 0x4

glabel D_8014A574
    .incbin "baserom.z64", 0xBC1714, 0x4

glabel D_8014A578
    .incbin "baserom.z64", 0xBC1718, 0x4

glabel D_8014A57C
    .incbin "baserom.z64", 0xBC171C, 0x4

glabel D_8014A580
    .incbin "baserom.z64", 0xBC1720, 0x4

glabel jtbl_8014A584
    .incbin "baserom.z64", 0xBC1724, 0x1C

glabel D_8014A5A0
    .incbin "baserom.z64", 0xBC1740, 0x8

glabel D_8014A5A8
    .incbin "baserom.z64", 0xBC1748, 0x4

glabel D_8014A5AC
    .incbin "baserom.z64", 0xBC174C, 0x4

glabel D_8014A5B0
    .incbin "baserom.z64", 0xBC1750, 0x4

glabel D_8014A5B4
    .incbin "baserom.z64", 0xBC1754, 0x4

glabel D_8014A5B8
    .incbin "baserom.z64", 0xBC1758, 0x4

glabel jtbl_8014A5BC
    .incbin "baserom.z64", 0xBC175C, 0x1C

glabel D_8014A5D8
    .incbin "baserom.z64", 0xBC1778, 0x4

glabel D_8014A5DC
    .incbin "baserom.z64", 0xBC177C, 0x4

glabel D_8014A5E0
    .incbin "baserom.z64", 0xBC1780, 0x4

glabel D_8014A5E4
    .incbin "baserom.z64", 0xBC1784, 0x4

glabel D_8014A5E8
    .incbin "baserom.z64", 0xBC1788, 0x4

glabel D_8014A5EC
    .incbin "baserom.z64", 0xBC178C, 0x4

glabel D_8014A5F0
    .incbin "baserom.z64", 0xBC1790, 0x8

glabel D_8014A5F8
    .incbin "baserom.z64", 0xBC1798, 0x8

glabel D_8014A600
    .incbin "baserom.z64", 0xBC17A0, 0x8

glabel D_8014A608
    .incbin "baserom.z64", 0xBC17A8, 0x4

glabel D_8014A60C
    .incbin "baserom.z64", 0xBC17AC, 0x4

glabel D_8014A610
    .incbin "baserom.z64", 0xBC17B0, 0x4

glabel D_8014A614
    .incbin "baserom.z64", 0xBC17B4, 0x4

glabel D_8014A618
    .incbin "baserom.z64", 0xBC17B8, 0x8
