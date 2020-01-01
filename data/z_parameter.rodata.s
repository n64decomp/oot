.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8013DCF0
    .incbin "baserom.z64", 0xBB4E90, 0x30

glabel D_8013DD20
    .incbin "baserom.z64", 0xBB4EC0, 0x20

glabel D_8013DD40
    .incbin "baserom.z64", 0xBB4EE0, 0x18

glabel D_8013DD58
    .incbin "baserom.z64", 0xBB4EF8, 0x10

glabel D_8013DD68
    .incbin "baserom.z64", 0xBB4F08, 0x64

glabel D_8013DDCC
    .incbin "baserom.z64", 0xBB4F6C, 0x2C

glabel D_8013DDF8
    .incbin "baserom.z64", 0xBB4F98, 0x8

glabel D_8013DE00
    .incbin "baserom.z64", 0xBB4FA0, 0x28

glabel D_8013DE28
    .incbin "baserom.z64", 0xBB4FC8, 0x34

glabel D_8013DE5C
    .incbin "baserom.z64", 0xBB4FFC, 0x34

glabel D_8013DE90
    .incbin "baserom.z64", 0xBB5030, 0x34

glabel D_8013DEC4
    .incbin "baserom.z64", 0xBB5064, 0x4

glabel D_8013DEC8
    .incbin "baserom.z64", 0xBB5068, 0x1C

glabel D_8013DEE4
    .incbin "baserom.z64", 0xBB5084, 0x1C

glabel D_8013DF00
    .incbin "baserom.z64", 0xBB50A0, 0x14

glabel D_8013DF14
    .incbin "baserom.z64", 0xBB50B4, 0x14

glabel D_8013DF28
    .incbin "baserom.z64", 0xBB50C8, 0x8

glabel D_8013DF30
    .incbin "baserom.z64", 0xBB50D0, 0x24

glabel D_8013DF54
    .incbin "baserom.z64", 0xBB50F4, 0x4

glabel D_8013DF58
    .incbin "baserom.z64", 0xBB50F8, 0x8

glabel D_8013DF60
    .incbin "baserom.z64", 0xBB5100, 0xC

glabel D_8013DF6C
    .incbin "baserom.z64", 0xBB510C, 0x4

glabel D_8013DF70
    .incbin "baserom.z64", 0xBB5110, 0x8

glabel D_8013DF78
    .incbin "baserom.z64", 0xBB5118, 0xC

glabel D_8013DF84
    .incbin "baserom.z64", 0xBB5124, 0x18

glabel D_8013DF9C
    .incbin "baserom.z64", 0xBB513C, 0x4

glabel D_8013DFA0
    .incbin "baserom.z64", 0xBB5140, 0x8

glabel D_8013DFA8
    .incbin "baserom.z64", 0xBB5148, 0x10

glabel D_8013DFB8
    .incbin "baserom.z64", 0xBB5158, 0x4

glabel D_8013DFBC
    .incbin "baserom.z64", 0xBB515C, 0x8

glabel D_8013DFC4
    .incbin "baserom.z64", 0xBB5164, 0x10

glabel D_8013DFD4
    .incbin "baserom.z64", 0xBB5174, 0x4

glabel D_8013DFD8
    .incbin "baserom.z64", 0xBB5178, 0x8

glabel D_8013DFE0
    .incbin "baserom.z64", 0xBB5180, 0x14

glabel D_8013DFF4
    .incbin "baserom.z64", 0xBB5194, 0x4

glabel D_8013DFF8
    .incbin "baserom.z64", 0xBB5198, 0x24

glabel D_8013E01C
    .incbin "baserom.z64", 0xBB51BC, 0x2C

glabel D_8013E048
    .incbin "baserom.z64", 0xBB51E8, 0x18

glabel D_8013E060
    .incbin "baserom.z64", 0xBB5200, 0x20

glabel D_8013E080
    .incbin "baserom.z64", 0xBB5220, 0x40

glabel D_8013E0C0
    .incbin "baserom.z64", 0xBB5260, 0x1C

glabel D_8013E0DC
    .incbin "baserom.z64", 0xBB527C, 0x8

glabel D_8013E0E4
    .incbin "baserom.z64", 0xBB5284, 0x28

glabel D_8013E10C
    .incbin "baserom.z64", 0xBB52AC, 0x4

glabel D_8013E110
    .incbin "baserom.z64", 0xBB52B0, 0x28

glabel D_8013E138
    .incbin "baserom.z64", 0xBB52D8, 0x14

glabel D_8013E14C
    .incbin "baserom.z64", 0xBB52EC, 0x14

glabel D_8013E160
    .incbin "baserom.z64", 0xBB5300, 0x30

glabel D_8013E190
    .incbin "baserom.z64", 0xBB5330, 0x10

glabel D_8013E1A0
    .incbin "baserom.z64", 0xBB5340, 0x14

glabel D_8013E1B4
    .incbin "baserom.z64", 0xBB5354, 0x14

glabel D_8013E1C8
    .incbin "baserom.z64", 0xBB5368, 0x30

glabel D_8013E1F8
    .incbin "baserom.z64", 0xBB5398, 0x18

glabel D_8013E210
    .incbin "baserom.z64", 0xBB53B0, 0x28

glabel D_8013E238
    .incbin "baserom.z64", 0xBB53D8, 0x24

glabel D_8013E25C
    .incbin "baserom.z64", 0xBB53FC, 0x10

glabel D_8013E26C
    .incbin "baserom.z64", 0xBB540C, 0x1C

glabel D_8013E288
    .incbin "baserom.z64", 0xBB5428, 0x14

glabel D_8013E29C
    .incbin "baserom.z64", 0xBB543C, 0x14

glabel D_8013E2B0
    .incbin "baserom.z64", 0xBB5450, 0x14

glabel D_8013E2C4
    .incbin "baserom.z64", 0xBB5464, 0x14

glabel D_8013E2D8
    .incbin "baserom.z64", 0xBB5478, 0x14

glabel D_8013E2EC
    .incbin "baserom.z64", 0xBB548C, 0x14

glabel D_8013E300
    .incbin "baserom.z64", 0xBB54A0, 0x14

glabel D_8013E314
    .incbin "baserom.z64", 0xBB54B4, 0x14

glabel D_8013E328
    .incbin "baserom.z64", 0xBB54C8, 0x14

glabel D_8013E33C
    .incbin "baserom.z64", 0xBB54DC, 0x14

glabel D_8013E350
    .incbin "baserom.z64", 0xBB54F0, 0x14

glabel D_8013E364
    .incbin "baserom.z64", 0xBB5504, 0x14

glabel D_8013E378
    .incbin "baserom.z64", 0xBB5518, 0x14

glabel D_8013E38C
    .incbin "baserom.z64", 0xBB552C, 0x14

glabel D_8013E3A0
    .incbin "baserom.z64", 0xBB5540, 0x14

glabel D_8013E3B4
    .incbin "baserom.z64", 0xBB5554, 0x10

glabel D_8013E3C4
    .incbin "baserom.z64", 0xBB5564, 0x34

glabel D_8013E3F8
    .incbin "baserom.z64", 0xBB5598, 0x14

glabel D_8013E40C
    .incbin "baserom.z64", 0xBB55AC, 0x14

glabel D_8013E420
    .incbin "baserom.z64", 0xBB55C0, 0x10

glabel D_8013E430
    .incbin "baserom.z64", 0xBB55D0, 0x10

glabel D_8013E440
    .incbin "baserom.z64", 0xBB55E0, 0x10

glabel D_8013E450
    .incbin "baserom.z64", 0xBB55F0, 0x20

glabel D_8013E470
    .incbin "baserom.z64", 0xBB5610, 0x1C

glabel D_8013E48C
    .incbin "baserom.z64", 0xBB562C, 0x30

glabel D_8013E4BC
    .incbin "baserom.z64", 0xBB565C, 0x18

glabel D_8013E4D4
    .incbin "baserom.z64", 0xBB5674, 0x8

glabel D_8013E4DC
    .incbin "baserom.z64", 0xBB567C, 0x2C

glabel D_8013E508
    .incbin "baserom.z64", 0xBB56A8, 0x10

glabel D_8013E518
    .incbin "baserom.z64", 0xBB56B8, 0x10

glabel D_8013E528
    .incbin "baserom.z64", 0xBB56C8, 0x14

glabel D_8013E53C
    .incbin "baserom.z64", 0xBB56DC, 0x14

glabel D_8013E550
    .incbin "baserom.z64", 0xBB56F0, 0x4

glabel jtbl_8013E554
    .incbin "baserom.z64", 0xBB56F4, 0x34

glabel jtbl_8013E588
    .incbin "baserom.z64", 0xBB5728, 0x50

glabel jtbl_8013E5D8
    .incbin "baserom.z64", 0xBB5778, 0x18

glabel jtbl_8013E5F0
    .incbin "baserom.z64", 0xBB5790, 0x28

glabel D_8013E618
    .incbin "baserom.z64", 0xBB57B8, 0x4

glabel jtbl_8013E61C
    .incbin "baserom.z64", 0xBB57BC, 0x38

glabel D_8013E654
    .incbin "baserom.z64", 0xBB57F4, 0x4

glabel jtbl_8013E658
    .incbin "baserom.z64", 0xBB57F8, 0x3C

glabel jtbl_8013E694
    .incbin "baserom.z64", 0xBB5834, 0x28

glabel jtbl_8013E6BC
    .incbin "baserom.z64", 0xBB585C, 0x34

glabel jtbl_8013E6F0
    .incbin "baserom.z64", 0xBB5890, 0x50

glabel D_8013E740
    .incbin "baserom.z64", 0xBB58E0, 0x4

glabel D_8013E744
    .incbin "baserom.z64", 0xBB58E4, 0x4

glabel D_8013E748
    .incbin "baserom.z64", 0xBB58E8, 0x4

glabel D_8013E74C
    .incbin "baserom.z64", 0xBB58EC, 0x4

glabel D_8013E750
    .incbin "baserom.z64", 0xBB58F0, 0x4

glabel D_8013E754
    .incbin "baserom.z64", 0xBB58F4, 0x4

glabel D_8013E758
    .incbin "baserom.z64", 0xBB58F8, 0x4

glabel D_8013E75C
    .incbin "baserom.z64", 0xBB58FC, 0x4

glabel D_8013E760
    .incbin "baserom.z64", 0xBB5900, 0x10
