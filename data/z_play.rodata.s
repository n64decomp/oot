.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80144190
    .incbin "baserom.z64", 0xBBB330, 0x1C

glabel D_801441AC
    .incbin "baserom.z64", 0xBBB34C, 0xC

glabel D_801441B8
    .incbin "baserom.z64", 0xBBB358, 0x24

glabel D_801441DC
    .incbin "baserom.z64", 0xBBB37C, 0xC

glabel D_801441E8
    .incbin "baserom.z64", 0xBBB388, 0x1C

glabel D_80144204
    .incbin "baserom.z64", 0xBBB3A4, 0x1C

glabel D_80144220
    .incbin "baserom.z64", 0xBBB3C0, 0xC

glabel D_8014422C
    .incbin "baserom.z64", 0xBBB3CC, 0x18

glabel D_80144244
    .incbin "baserom.z64", 0xBBB3E4, 0xC

glabel D_80144250
    .incbin "baserom.z64", 0xBBB3F0, 0x18

glabel D_80144268
    .incbin "baserom.z64", 0xBBB408, 0x2C

glabel D_80144294
    .incbin "baserom.z64", 0xBBB434, 0x14

glabel D_801442A8
    .incbin "baserom.z64", 0xBBB448, 0x20

glabel D_801442C8
    .incbin "baserom.z64", 0xBBB468, 0x18

glabel D_801442E0
    .incbin "baserom.z64", 0xBBB480, 0x1C

glabel D_801442FC
    .incbin "baserom.z64", 0xBBB49C, 0x4

glabel D_80144300
    .incbin "baserom.z64", 0xBBB4A0, 0x1C

glabel D_8014431C
    .incbin "baserom.z64", 0xBBB4BC, 0x24

glabel D_80144340
    .incbin "baserom.z64", 0xBBB4E0, 0x24

glabel D_80144364
    .incbin "baserom.z64", 0xBBB504, 0xC

glabel D_80144370
    .incbin "baserom.z64", 0xBBB510, 0x24

glabel D_80144394
    .incbin "baserom.z64", 0xBBB534, 0x1C

glabel D_801443B0
    .incbin "baserom.z64", 0xBBB550, 0xC

glabel D_801443BC
    .incbin "baserom.z64", 0xBBB55C, 0x8

glabel D_801443C4
    .incbin "baserom.z64", 0xBBB564, 0xC

glabel D_801443D0
    .incbin "baserom.z64", 0xBBB570, 0x8

glabel D_801443D8
    .incbin "baserom.z64", 0xBBB578, 0xC

glabel D_801443E4
    .incbin "baserom.z64", 0xBBB584, 0x8

glabel D_801443EC
    .incbin "baserom.z64", 0xBBB58C, 0xC

glabel D_801443F8
    .incbin "baserom.z64", 0xBBB598, 0x8

glabel D_80144400
    .incbin "baserom.z64", 0xBBB5A0, 0xC

glabel D_8014440C
    .incbin "baserom.z64", 0xBBB5AC, 0x8

glabel D_80144414
    .incbin "baserom.z64", 0xBBB5B4, 0xC

glabel D_80144420
    .incbin "baserom.z64", 0xBBB5C0, 0x8

glabel D_80144428
    .incbin "baserom.z64", 0xBBB5C8, 0xC

glabel D_80144434
    .incbin "baserom.z64", 0xBBB5D4, 0x8

glabel D_8014443C
    .incbin "baserom.z64", 0xBBB5DC, 0xC

glabel D_80144448
    .incbin "baserom.z64", 0xBBB5E8, 0xC

glabel D_80144454
    .incbin "baserom.z64", 0xBBB5F4, 0x8

glabel D_8014445C
    .incbin "baserom.z64", 0xBBB5FC, 0xC

glabel D_80144468
    .incbin "baserom.z64", 0xBBB608, 0x8

glabel D_80144470
    .incbin "baserom.z64", 0xBBB610, 0xC

glabel D_8014447C
    .incbin "baserom.z64", 0xBBB61C, 0x8

glabel D_80144484
    .incbin "baserom.z64", 0xBBB624, 0xC

glabel D_80144490
    .incbin "baserom.z64", 0xBBB630, 0x8

glabel D_80144498
    .incbin "baserom.z64", 0xBBB638, 0xC

glabel D_801444A4
    .incbin "baserom.z64", 0xBBB644, 0x8

glabel D_801444AC
    .incbin "baserom.z64", 0xBBB64C, 0xC

glabel D_801444B8
    .incbin "baserom.z64", 0xBBB658, 0x8

glabel D_801444C0
    .incbin "baserom.z64", 0xBBB660, 0xC

glabel D_801444CC
    .incbin "baserom.z64", 0xBBB66C, 0x8

glabel D_801444D4
    .incbin "baserom.z64", 0xBBB674, 0xC

glabel D_801444E0
    .incbin "baserom.z64", 0xBBB680, 0x8

glabel D_801444E8
    .incbin "baserom.z64", 0xBBB688, 0xC

glabel D_801444F4
    .incbin "baserom.z64", 0xBBB694, 0x8

glabel D_801444FC
    .incbin "baserom.z64", 0xBBB69C, 0xC

glabel D_80144508
    .incbin "baserom.z64", 0xBBB6A8, 0x8

glabel D_80144510
    .incbin "baserom.z64", 0xBBB6B0, 0xC

glabel D_8014451C
    .incbin "baserom.z64", 0xBBB6BC, 0x8

glabel D_80144524
    .incbin "baserom.z64", 0xBBB6C4, 0xC

glabel D_80144530
    .incbin "baserom.z64", 0xBBB6D0, 0x8

glabel D_80144538
    .incbin "baserom.z64", 0xBBB6D8, 0xC

glabel D_80144544
    .incbin "baserom.z64", 0xBBB6E4, 0x8

glabel D_8014454C
    .incbin "baserom.z64", 0xBBB6EC, 0xC

glabel D_80144558
    .incbin "baserom.z64", 0xBBB6F8, 0x8

glabel D_80144560
    .incbin "baserom.z64", 0xBBB700, 0x3C

glabel D_8014459C
    .incbin "baserom.z64", 0xBBB73C, 0x30

glabel D_801445CC
    .incbin "baserom.z64", 0xBBB76C, 0xC

glabel D_801445D8
    .incbin "baserom.z64", 0xBBB778, 0x8

glabel D_801445E0
    .incbin "baserom.z64", 0xBBB780, 0xC

glabel D_801445EC
    .incbin "baserom.z64", 0xBBB78C, 0x8

glabel D_801445F4
    .incbin "baserom.z64", 0xBBB794, 0xC

glabel D_80144600
    .incbin "baserom.z64", 0xBBB7A0, 0x8

glabel D_80144608
    .incbin "baserom.z64", 0xBBB7A8, 0xC

glabel D_80144614
    .incbin "baserom.z64", 0xBBB7B4, 0x8

glabel D_8014461C
    .incbin "baserom.z64", 0xBBB7BC, 0xC

glabel D_80144628
    .incbin "baserom.z64", 0xBBB7C8, 0x8

glabel D_80144630
    .incbin "baserom.z64", 0xBBB7D0, 0xC

glabel D_8014463C
    .incbin "baserom.z64", 0xBBB7DC, 0x8

glabel D_80144644
    .incbin "baserom.z64", 0xBBB7E4, 0xC

glabel D_80144650
    .incbin "baserom.z64", 0xBBB7F0, 0x8

glabel D_80144658
    .incbin "baserom.z64", 0xBBB7F8, 0xC

glabel D_80144664
    .incbin "baserom.z64", 0xBBB804, 0x8

glabel D_8014466C
    .incbin "baserom.z64", 0xBBB80C, 0xC

glabel D_80144678
    .incbin "baserom.z64", 0xBBB818, 0x8

glabel D_80144680
    .incbin "baserom.z64", 0xBBB820, 0xC

glabel D_8014468C
    .incbin "baserom.z64", 0xBBB82C, 0x8

glabel D_80144694
    .incbin "baserom.z64", 0xBBB834, 0xC

glabel D_801446A0
    .incbin "baserom.z64", 0xBBB840, 0x8

glabel D_801446A8
    .incbin "baserom.z64", 0xBBB848, 0xC

glabel D_801446B4
    .incbin "baserom.z64", 0xBBB854, 0x8

glabel D_801446BC
    .incbin "baserom.z64", 0xBBB85C, 0xC

glabel D_801446C8
    .incbin "baserom.z64", 0xBBB868, 0x8

glabel D_801446D0
    .incbin "baserom.z64", 0xBBB870, 0xC

glabel D_801446DC
    .incbin "baserom.z64", 0xBBB87C, 0x8

glabel D_801446E4
    .incbin "baserom.z64", 0xBBB884, 0xC

glabel D_801446F0
    .incbin "baserom.z64", 0xBBB890, 0x8

glabel D_801446F8
    .incbin "baserom.z64", 0xBBB898, 0xC

glabel D_80144704
    .incbin "baserom.z64", 0xBBB8A4, 0x8

glabel D_8014470C
    .incbin "baserom.z64", 0xBBB8AC, 0xC

glabel D_80144718
    .incbin "baserom.z64", 0xBBB8B8, 0x8

glabel D_80144720
    .incbin "baserom.z64", 0xBBB8C0, 0xC

glabel D_8014472C
    .incbin "baserom.z64", 0xBBB8CC, 0xC

glabel D_80144738
    .incbin "baserom.z64", 0xBBB8D8, 0xC

glabel D_80144744
    .incbin "baserom.z64", 0xBBB8E4, 0xC

glabel D_80144750
    .incbin "baserom.z64", 0xBBB8F0, 0x8

glabel D_80144758
    .incbin "baserom.z64", 0xBBB8F8, 0xC

glabel D_80144764
    .incbin "baserom.z64", 0xBBB904, 0x8

glabel D_8014476C
    .incbin "baserom.z64", 0xBBB90C, 0xC

glabel D_80144778
    .incbin "baserom.z64", 0xBBB918, 0x8

glabel D_80144780
    .incbin "baserom.z64", 0xBBB920, 0xC

glabel D_8014478C
    .incbin "baserom.z64", 0xBBB92C, 0xC

glabel D_80144798
    .incbin "baserom.z64", 0xBBB938, 0x14

glabel D_801447AC
    .incbin "baserom.z64", 0xBBB94C, 0x1C

glabel D_801447C8
    .incbin "baserom.z64", 0xBBB968, 0xC

glabel D_801447D4
    .incbin "baserom.z64", 0xBBB974, 0x10

glabel D_801447E4
    .incbin "baserom.z64", 0xBBB984, 0x44

glabel D_80144828
    .incbin "baserom.z64", 0xBBB9C8, 0x48

glabel D_80144870
    .incbin "baserom.z64", 0xBBBA10, 0x3C

glabel D_801448AC
    .incbin "baserom.z64", 0xBBBA4C, 0x40

glabel D_801448EC
    .incbin "baserom.z64", 0xBBBA8C, 0x40

glabel D_8014492C
    .incbin "baserom.z64", 0xBBBACC, 0x54

glabel jtbl_80144980
    .incbin "baserom.z64", 0xBBBB20, 0x50

glabel jtbl_801449D0
    .incbin "baserom.z64", 0xBBBB70, 0x38

glabel D_80144A08
    .incbin "baserom.z64", 0xBBBBA8, 0x4

glabel D_80144A0C
    .incbin "baserom.z64", 0xBBBBAC, 0x4

glabel D_80144A10
    .incbin "baserom.z64", 0xBBBBB0, 0x10
