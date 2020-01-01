.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_801479A0
    .incbin "baserom.z64", 0xBBEB40, 0xF8

glabel D_80147A98
    .incbin "baserom.z64", 0xBBEC38, 0xC

glabel D_80147AA4
    .incbin "baserom.z64", 0xBBEC44, 0x8

glabel D_80147AAC
    .incbin "baserom.z64", 0xBBEC4C, 0x8

glabel D_80147AB4
    .incbin "baserom.z64", 0xBBEC54, 0xC

glabel D_80147AC0
    .incbin "baserom.z64", 0xBBEC60, 0x8

glabel D_80147AC8
    .incbin "baserom.z64", 0xBBEC68, 0xC

glabel D_80147AD4
    .incbin "baserom.z64", 0xBBEC74, 0x8

glabel D_80147ADC
    .incbin "baserom.z64", 0xBBEC7C, 0x8

glabel D_80147AE4
    .incbin "baserom.z64", 0xBBEC84, 0x4

glabel D_80147AE8
    .incbin "baserom.z64", 0xBBEC88, 0x8

glabel D_80147AF0
    .incbin "baserom.z64", 0xBBEC90, 0x4

glabel D_80147AF4
    .incbin "baserom.z64", 0xBBEC94, 0x10

glabel D_80147B04
    .incbin "baserom.z64", 0xBBECA4, 0x4

glabel D_80147B08
    .incbin "baserom.z64", 0xBBECA8, 0x10

glabel D_80147B18
    .incbin "baserom.z64", 0xBBECB8, 0x10

glabel D_80147B28
    .incbin "baserom.z64", 0xBBECC8, 0x10

glabel D_80147B38
    .incbin "baserom.z64", 0xBBECD8, 0xC

glabel D_80147B44
    .incbin "baserom.z64", 0xBBECE4, 0xC

glabel D_80147B50
    .incbin "baserom.z64", 0xBBECF0, 0x10

glabel D_80147B60
    .incbin "baserom.z64", 0xBBED00, 0x10

glabel D_80147B70
    .incbin "baserom.z64", 0xBBED10, 0x4

glabel D_80147B74
    .incbin "baserom.z64", 0xBBED14, 0x4

glabel D_80147B78
    .incbin "baserom.z64", 0xBBED18, 0x4

glabel D_80147B7C
    .incbin "baserom.z64", 0xBBED1C, 0x4

glabel D_80147B80
    .incbin "baserom.z64", 0xBBED20, 0x10

glabel D_80147B90
    .incbin "baserom.z64", 0xBBED30, 0xC

glabel D_80147B9C
    .incbin "baserom.z64", 0xBBED3C, 0x8

glabel D_80147BA4
    .incbin "baserom.z64", 0xBBED44, 0x8

glabel D_80147BAC
    .incbin "baserom.z64", 0xBBED4C, 0xC

glabel D_80147BB8
    .incbin "baserom.z64", 0xBBED58, 0x8

glabel D_80147BC0
    .incbin "baserom.z64", 0xBBED60, 0xC

glabel D_80147BCC
    .incbin "baserom.z64", 0xBBED6C, 0x10

glabel D_80147BDC
    .incbin "baserom.z64", 0xBBED7C, 0x4

glabel D_80147BE0
    .incbin "baserom.z64", 0xBBED80, 0x4

glabel D_80147BE4
    .incbin "baserom.z64", 0xBBED84, 0x20

glabel D_80147C04
    .incbin "baserom.z64", 0xBBEDA4, 0x4

glabel D_80147C08
    .incbin "baserom.z64", 0xBBEDA8, 0x190

glabel D_80147D98
    .incbin "baserom.z64", 0xBBEF38, 0x4

glabel D_80147D9C
    .incbin "baserom.z64", 0xBBEF3C, 0x1C

glabel D_80147DB8
    .incbin "baserom.z64", 0xBBEF58, 0x18

glabel D_80147DD0
    .incbin "baserom.z64", 0xBBEF70, 0x44

glabel D_80147E14
    .incbin "baserom.z64", 0xBBEFB4, 0x44

glabel D_80147E58
    .incbin "baserom.z64", 0xBBEFF8, 0x8

glabel D_80147E60
    .incbin "baserom.z64", 0xBBF000, 0xC

glabel D_80147E6C
    .incbin "baserom.z64", 0xBBF00C, 0x4

glabel D_80147E70
    .incbin "baserom.z64", 0xBBF010, 0xC

glabel D_80147E7C
    .incbin "baserom.z64", 0xBBF01C, 0x1C

glabel D_80147E98
    .incbin "baserom.z64", 0xBBF038, 0x18

glabel D_80147EB0
    .incbin "baserom.z64", 0xBBF050, 0x14

glabel D_80147EC4
    .incbin "baserom.z64", 0xBBF064, 0x34

glabel D_80147EF8
    .incbin "baserom.z64", 0xBBF098, 0x20

glabel D_80147F18
    .incbin "baserom.z64", 0xBBF0B8, 0x2C

glabel D_80147F44
    .incbin "baserom.z64", 0xBBF0E4, 0x18

glabel D_80147F5C
    .incbin "baserom.z64", 0xBBF0FC, 0x34

glabel D_80147F90
    .incbin "baserom.z64", 0xBBF130, 0x1C

glabel D_80147FAC
    .incbin "baserom.z64", 0xBBF14C, 0x20

glabel D_80147FCC
    .incbin "baserom.z64", 0xBBF16C, 0x20

glabel D_80147FEC
    .incbin "baserom.z64", 0xBBF18C, 0x1C

glabel D_80148008
    .incbin "baserom.z64", 0xBBF1A8, 0x24

glabel D_8014802C
    .incbin "baserom.z64", 0xBBF1CC, 0x18

glabel D_80148044
    .incbin "baserom.z64", 0xBBF1E4, 0x48

glabel D_8014808C
    .incbin "baserom.z64", 0xBBF22C, 0x2E8

glabel D_80148374
    .incbin "baserom.z64", 0xBBF514, 0xC

glabel D_80148380
    .incbin "baserom.z64", 0xBBF520, 0x24

glabel D_801483A4
    .incbin "baserom.z64", 0xBBF544, 0x90

glabel D_80148434
    .incbin "baserom.z64", 0xBBF5D4, 0x18

glabel D_8014844C
    .incbin "baserom.z64", 0xBBF5EC, 0x4

glabel D_80148450
    .incbin "baserom.z64", 0xBBF5F0, 0xC

glabel D_8014845C
    .incbin "baserom.z64", 0xBBF5FC, 0x24

glabel D_80148480
    .incbin "baserom.z64", 0xBBF620, 0x1C

glabel D_8014849C
    .incbin "baserom.z64", 0xBBF63C, 0x24

glabel D_801484C0
    .incbin "baserom.z64", 0xBBF660, 0x1C

glabel D_801484DC
    .incbin "baserom.z64", 0xBBF67C, 0x14

glabel D_801484F0
    .incbin "baserom.z64", 0xBBF690, 0x14

glabel D_80148504
    .incbin "baserom.z64", 0xBBF6A4, 0x14

glabel D_80148518
    .incbin "baserom.z64", 0xBBF6B8, 0x4

glabel D_8014851C
    .incbin "baserom.z64", 0xBBF6BC, 0x28

glabel D_80148544
    .incbin "baserom.z64", 0xBBF6E4, 0x24

glabel D_80148568
    .incbin "baserom.z64", 0xBBF708, 0x24

glabel D_8014858C
    .incbin "baserom.z64", 0xBBF72C, 0x44

glabel D_801485D0
    .incbin "baserom.z64", 0xBBF770, 0x8

glabel D_801485D8
    .incbin "baserom.z64", 0xBBF778, 0x4

glabel D_801485DC
    .incbin "baserom.z64", 0xBBF77C, 0x4

glabel D_801485E0
    .incbin "baserom.z64", 0xBBF780, 0x4

glabel D_801485E4
    .incbin "baserom.z64", 0xBBF784, 0x4

glabel D_801485E8
    .incbin "baserom.z64", 0xBBF788, 0x4

glabel D_801485EC
    .incbin "baserom.z64", 0xBBF78C, 0x4

glabel D_801485F0
    .incbin "baserom.z64", 0xBBF790, 0x4

glabel D_801485F4
    .incbin "baserom.z64", 0xBBF794, 0x4

glabel D_801485F8
    .incbin "baserom.z64", 0xBBF798, 0x1C

glabel D_80148614
    .incbin "baserom.z64", 0xBBF7B4, 0x24

glabel D_80148638
    .incbin "baserom.z64", 0xBBF7D8, 0x1C

glabel D_80148654
    .incbin "baserom.z64", 0xBBF7F4, 0x44

glabel D_80148698
    .incbin "baserom.z64", 0xBBF838, 0x8

glabel D_801486A0
    .incbin "baserom.z64", 0xBBF840, 0x4

glabel D_801486A4
    .incbin "baserom.z64", 0xBBF844, 0x4

glabel D_801486A8
    .incbin "baserom.z64", 0xBBF848, 0x4

glabel D_801486AC
    .incbin "baserom.z64", 0xBBF84C, 0x4

glabel D_801486B0
    .incbin "baserom.z64", 0xBBF850, 0x4

glabel D_801486B4
    .incbin "baserom.z64", 0xBBF854, 0x4

glabel D_801486B8
    .incbin "baserom.z64", 0xBBF858, 0x4

glabel D_801486BC
    .incbin "baserom.z64", 0xBBF85C, 0x4

glabel D_801486C0
    .incbin "baserom.z64", 0xBBF860, 0x24

glabel D_801486E4
    .incbin "baserom.z64", 0xBBF884, 0x1C

glabel D_80148700
    .incbin "baserom.z64", 0xBBF8A0, 0x24

glabel D_80148724
    .incbin "baserom.z64", 0xBBF8C4, 0x1C

glabel D_80148740
    .incbin "baserom.z64", 0xBBF8E0, 0x24

glabel D_80148764
    .incbin "baserom.z64", 0xBBF904, 0x1C

glabel D_80148780
    .incbin "baserom.z64", 0xBBF920, 0x1C

glabel D_8014879C
    .incbin "baserom.z64", 0xBBF93C, 0x1C

glabel D_801487B8
    .incbin "baserom.z64", 0xBBF958, 0x1C

glabel D_801487D4
    .incbin "baserom.z64", 0xBBF974, 0x1C

glabel D_801487F0
    .incbin "baserom.z64", 0xBBF990, 0x2C

glabel D_8014881C
    .incbin "baserom.z64", 0xBBF9BC, 0x10

glabel D_8014882C
    .incbin "baserom.z64", 0xBBF9CC, 0x1C

glabel D_80148848
    .incbin "baserom.z64", 0xBBF9E8, 0x10

glabel D_80148858
    .incbin "baserom.z64", 0xBBF9F8, 0x10

glabel D_80148868
    .incbin "baserom.z64", 0xBBFA08, 0x10

glabel D_80148878
    .incbin "baserom.z64", 0xBBFA18, 0xC

glabel D_80148884
    .incbin "baserom.z64", 0xBBFA24, 0x14

glabel D_80148898
    .incbin "baserom.z64", 0xBBFA38, 0x20

glabel D_801488B8
    .incbin "baserom.z64", 0xBBFA58, 0x24

glabel D_801488DC
    .incbin "baserom.z64", 0xBBFA7C, 0x24

glabel D_80148900
    .incbin "baserom.z64", 0xBBFAA0, 0x24

glabel D_80148924
    .incbin "baserom.z64", 0xBBFAC4, 0x20

glabel D_80148944
    .incbin "baserom.z64", 0xBBFAE4, 0x20

glabel D_80148964
    .incbin "baserom.z64", 0xBBFB04, 0x18

glabel D_8014897C
    .incbin "baserom.z64", 0xBBFB1C, 0x1C

glabel D_80148998
    .incbin "baserom.z64", 0xBBFB38, 0x24

glabel D_801489BC
    .incbin "baserom.z64", 0xBBFB5C, 0x20

glabel D_801489DC
    .incbin "baserom.z64", 0xBBFB7C, 0x1C

glabel D_801489F8
    .incbin "baserom.z64", 0xBBFB98, 0x4

glabel D_801489FC
    .incbin "baserom.z64", 0xBBFB9C, 0x4

glabel D_80148A00
    .incbin "baserom.z64", 0xBBFBA0, 0x4

glabel D_80148A04
    .incbin "baserom.z64", 0xBBFBA4, 0x134

glabel D_80148B38
    .incbin "baserom.z64", 0xBBFCD8, 0x24

glabel D_80148B5C
    .incbin "baserom.z64", 0xBBFCFC, 0x20

glabel D_80148B7C
    .incbin "baserom.z64", 0xBBFD1C, 0x14

glabel D_80148B90
    .incbin "baserom.z64", 0xBBFD30, 0x10

glabel D_80148BA0
    .incbin "baserom.z64", 0xBBFD40, 0x18

glabel D_80148BB8
    .incbin "baserom.z64", 0xBBFD58, 0x14

glabel D_80148BCC
    .incbin "baserom.z64", 0xBBFD6C, 0x14

glabel D_80148BE0
    .incbin "baserom.z64", 0xBBFD80, 0x1C

glabel D_80148BFC
    .incbin "baserom.z64", 0xBBFD9C, 0x14

glabel D_80148C10
    .incbin "baserom.z64", 0xBBFDB0, 0x1C

glabel D_80148C2C
    .incbin "baserom.z64", 0xBBFDCC, 0x30

glabel D_80148C5C
    .incbin "baserom.z64", 0xBBFDFC, 0x24

glabel D_80148C80
    .incbin "baserom.z64", 0xBBFE20, 0x20

glabel D_80148CA0
    .incbin "baserom.z64", 0xBBFE40, 0x30

glabel D_80148CD0
    .incbin "baserom.z64", 0xBBFE70, 0x24

glabel D_80148CF4
    .incbin "baserom.z64", 0xBBFE94, 0x8

glabel D_80148CFC
    .incbin "baserom.z64", 0xBBFE9C, 0x8

glabel D_80148D04
    .incbin "baserom.z64", 0xBBFEA4, 0x28

glabel D_80148D2C
    .incbin "baserom.z64", 0xBBFECC, 0x8

glabel D_80148D34
    .incbin "baserom.z64", 0xBBFED4, 0x8

glabel D_80148D3C
    .incbin "baserom.z64", 0xBBFEDC, 0x20

glabel D_80148D5C
    .incbin "baserom.z64", 0xBBFEFC, 0x28

glabel D_80148D84
    .incbin "baserom.z64", 0xBBFF24, 0x18

glabel D_80148D9C
    .incbin "baserom.z64", 0xBBFF3C, 0x4

glabel D_80148DA0
    .incbin "baserom.z64", 0xBBFF40, 0x18

glabel D_80148DB8
    .incbin "baserom.z64", 0xBBFF58, 0x4

glabel D_80148DBC
    .incbin "baserom.z64", 0xBBFF5C, 0x18

glabel D_80148DD4
    .incbin "baserom.z64", 0xBBFF74, 0x4

glabel D_80148DD8
    .incbin "baserom.z64", 0xBBFF78, 0x14

glabel D_80148DEC
    .incbin "baserom.z64", 0xBBFF8C, 0x4

glabel D_80148DF0
    .incbin "baserom.z64", 0xBBFF90, 0x4

glabel D_80148DF4
    .incbin "baserom.z64", 0xBBFF94, 0x1C

glabel D_80148E10
    .incbin "baserom.z64", 0xBBFFB0, 0x20

glabel D_80148E30
    .incbin "baserom.z64", 0xBBFFD0, 0x14

glabel D_80148E44
    .incbin "baserom.z64", 0xBBFFE4, 0x1C

glabel D_80148E60
    .incbin "baserom.z64", 0xBC0000, 0x18

glabel D_80148E78
    .incbin "baserom.z64", 0xBC0018, 0x18

glabel D_80148E90
    .incbin "baserom.z64", 0xBC0030, 0x18

glabel D_80148EA8
    .incbin "baserom.z64", 0xBC0048, 0x20

glabel D_80148EC8
    .incbin "baserom.z64", 0xBC0068, 0x1C

glabel D_80148EE4
    .incbin "baserom.z64", 0xBC0084, 0x18

glabel D_80148EFC
    .incbin "baserom.z64", 0xBC009C, 0x1C

glabel D_80148F18
    .incbin "baserom.z64", 0xBC00B8, 0x18

glabel D_80148F30
    .incbin "baserom.z64", 0xBC00D0, 0x18

glabel D_80148F48
    .incbin "baserom.z64", 0xBC00E8, 0x18

glabel D_80148F60
    .incbin "baserom.z64", 0xBC0100, 0x20

glabel D_80148F80
    .incbin "baserom.z64", 0xBC0120, 0x14

glabel D_80148F94
    .incbin "baserom.z64", 0xBC0134, 0x20

glabel D_80148FB4
    .incbin "baserom.z64", 0xBC0154, 0x20

glabel D_80148FD4
    .incbin "baserom.z64", 0xBC0174, 0x20

glabel D_80148FF4
    .incbin "baserom.z64", 0xBC0194, 0x24

glabel D_80149018
    .incbin "baserom.z64", 0xBC01B8, 0x24

glabel D_8014903C
    .incbin "baserom.z64", 0xBC01DC, 0x24

glabel D_80149060
    .incbin "baserom.z64", 0xBC0200, 0x20

glabel D_80149080
    .incbin "baserom.z64", 0xBC0220, 0x24

glabel D_801490A4
    .incbin "baserom.z64", 0xBC0244, 0x24

glabel D_801490C8
    .incbin "baserom.z64", 0xBC0268, 0x28

glabel D_801490F0
    .incbin "baserom.z64", 0xBC0290, 0x24

glabel D_80149114
    .incbin "baserom.z64", 0xBC02B4, 0x24

glabel D_80149138
    .incbin "baserom.z64", 0xBC02D8, 0x2C

glabel D_80149164
    .incbin "baserom.z64", 0xBC0304, 0x30

glabel D_80149194
    .incbin "baserom.z64", 0xBC0334, 0x1C

glabel D_801491B0
    .incbin "baserom.z64", 0xBC0350, 0x20

glabel D_801491D0
    .incbin "baserom.z64", 0xBC0370, 0x18

glabel D_801491E8
    .incbin "baserom.z64", 0xBC0388, 0x1C

glabel D_80149204
    .incbin "baserom.z64", 0xBC03A4, 0x14

glabel D_80149218
    .incbin "baserom.z64", 0xBC03B8, 0x4

glabel jtbl_8014921C
    .incbin "baserom.z64", 0xBC03BC, 0x20

glabel jtbl_8014923C
    .incbin "baserom.z64", 0xBC03DC, 0x20

glabel jtbl_8014925C
    .incbin "baserom.z64", 0xBC03FC, 0x20

glabel jtbl_8014927C
    .incbin "baserom.z64", 0xBC041C, 0x8C

glabel jtbl_80149308
    .incbin "baserom.z64", 0xBC04A8, 0x24

glabel jtbl_8014932C
    .incbin "baserom.z64", 0xBC04CC, 0x18

glabel jtbl_80149344
    .incbin "baserom.z64", 0xBC04E4, 0x20

glabel jtbl_80149364
    .incbin "baserom.z64", 0xBC0504, 0x34

glabel jtbl_80149398
    .incbin "baserom.z64", 0xBC0538, 0x38
