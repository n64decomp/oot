.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8013D700
    .incbin "baserom.z64", 0xBB48A0, 0x8

glabel D_8013D708
    .incbin "baserom.z64", 0xBB48A8, 0x54

glabel D_8013D75C
    .incbin "baserom.z64", 0xBB48FC, 0x4

glabel D_8013D760
    .incbin "baserom.z64", 0xBB4900, 0x8

glabel D_8013D768
    .incbin "baserom.z64", 0xBB4908, 0xC

glabel D_8013D774
    .incbin "baserom.z64", 0xBB4914, 0x4

glabel D_8013D778
    .incbin "baserom.z64", 0xBB4918, 0x10

glabel D_8013D788
    .incbin "baserom.z64", 0xBB4928, 0x8

glabel D_8013D790
    .incbin "baserom.z64", 0xBB4930, 0x50

glabel D_8013D7E0
    .incbin "baserom.z64", 0xBB4980, 0x4

glabel D_8013D7E4
    .incbin "baserom.z64", 0xBB4984, 0x10

glabel D_8013D7F4
    .incbin "baserom.z64", 0xBB4994, 0x1C

glabel D_8013D810
    .incbin "baserom.z64", 0xBB49B0, 0x54

glabel D_8013D864
    .incbin "baserom.z64", 0xBB4A04, 0x18

glabel D_8013D87C
    .incbin "baserom.z64", 0xBB4A1C, 0x8

glabel D_8013D884
    .incbin "baserom.z64", 0xBB4A24, 0x10

glabel D_8013D894
    .incbin "baserom.z64", 0xBB4A34, 0x4

glabel D_8013D898
    .incbin "baserom.z64", 0xBB4A38, 0x10

glabel D_8013D8A8
    .incbin "baserom.z64", 0xBB4A48, 0x40

glabel D_8013D8E8
    .incbin "baserom.z64", 0xBB4A88, 0x20

glabel D_8013D908
    .incbin "baserom.z64", 0xBB4AA8, 0x10

glabel D_8013D918
    .incbin "baserom.z64", 0xBB4AB8, 0x10

glabel D_8013D928
    .incbin "baserom.z64", 0xBB4AC8, 0x10

glabel D_8013D938
    .incbin "baserom.z64", 0xBB4AD8, 0x10

glabel D_8013D948
    .incbin "baserom.z64", 0xBB4AE8, 0x10

glabel D_8013D958
    .incbin "baserom.z64", 0xBB4AF8, 0x10

glabel D_8013D968
    .incbin "baserom.z64", 0xBB4B08, 0x20

glabel D_8013D988
    .incbin "baserom.z64", 0xBB4B28, 0x10

glabel D_8013D998
    .incbin "baserom.z64", 0xBB4B38, 0x28

glabel D_8013D9C0
    .incbin "baserom.z64", 0xBB4B60, 0x8

glabel D_8013D9C8
    .incbin "baserom.z64", 0xBB4B68, 0x10

glabel D_8013D9D8
    .incbin "baserom.z64", 0xBB4B78, 0x4

glabel jtbl_8013D9DC
    .incbin "baserom.z64", 0xBB4B7C, 0x64

glabel jtbl_8013DA40
    .incbin "baserom.z64", 0xBB4BE0, 0x50

glabel jtbl_8013DA90
    .incbin "baserom.z64", 0xBB4C30, 0x64

glabel jtbl_8013DAF4
    .incbin "baserom.z64", 0xBB4C94, 0x64

glabel jtbl_8013DB58
    .incbin "baserom.z64", 0xBB4CF8, 0x50

glabel jtbl_8013DBA8
    .incbin "baserom.z64", 0xBB4D48, 0x64

glabel D_8013DC0C
    .incbin "baserom.z64", 0xBB4DAC, 0x4

glabel D_8013DC10
    .incbin "baserom.z64", 0xBB4DB0, 0x4

glabel jtbl_8013DC14
    .incbin "baserom.z64", 0xBB4DB4, 0x50

glabel jtbl_8013DC64
    .incbin "baserom.z64", 0xBB4E04, 0x28

glabel jtbl_8013DC8C
    .incbin "baserom.z64", 0xBB4E2C, 0x64
