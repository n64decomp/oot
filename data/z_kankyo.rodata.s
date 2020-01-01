.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8013C240
    .incbin "baserom.z64", 0xBB33E0, 0x40

glabel D_8013C280
    .incbin "baserom.z64", 0xBB3420, 0x40

glabel D_8013C2C0
    .incbin "baserom.z64", 0xBB3460, 0x34

glabel D_8013C2F4
    .incbin "baserom.z64", 0xBB3494, 0x3C

glabel D_8013C330
    .incbin "baserom.z64", 0xBB34D0, 0x10

glabel D_8013C340
    .incbin "baserom.z64", 0xBB34E0, 0x10

glabel D_8013C350
    .incbin "baserom.z64", 0xBB34F0, 0x10

glabel D_8013C360
    .incbin "baserom.z64", 0xBB3500, 0x10

glabel D_8013C370
    .incbin "baserom.z64", 0xBB3510, 0x10

glabel D_8013C380
    .incbin "baserom.z64", 0xBB3520, 0x10

glabel D_8013C390
    .incbin "baserom.z64", 0xBB3530, 0x40

glabel D_8013C3D0
    .incbin "baserom.z64", 0xBB3570, 0x8

glabel D_8013C3D8
    .incbin "baserom.z64", 0xBB3578, 0x8

glabel D_8013C3E0
    .incbin "baserom.z64", 0xBB3580, 0x4

glabel D_8013C3E4
    .incbin "baserom.z64", 0xBB3584, 0xC

glabel D_8013C3F0
    .incbin "baserom.z64", 0xBB3590, 0x8

glabel D_8013C3F8
    .incbin "baserom.z64", 0xBB3598, 0x4

glabel D_8013C3FC
    .incbin "baserom.z64", 0xBB359C, 0x4

glabel D_8013C400
    .incbin "baserom.z64", 0xBB35A0, 0x4

glabel D_8013C404
    .incbin "baserom.z64", 0xBB35A4, 0x4

glabel D_8013C408
    .incbin "baserom.z64", 0xBB35A8, 0x8

glabel D_8013C410
    .incbin "baserom.z64", 0xBB35B0, 0x4

glabel D_8013C414
    .incbin "baserom.z64", 0xBB35B4, 0xC

glabel D_8013C420
    .incbin "baserom.z64", 0xBB35C0, 0x8

glabel D_8013C428
    .incbin "baserom.z64", 0xBB35C8, 0x4

glabel D_8013C42C
    .incbin "baserom.z64", 0xBB35CC, 0x4

glabel D_8013C430
    .incbin "baserom.z64", 0xBB35D0, 0x4

glabel D_8013C434
    .incbin "baserom.z64", 0xBB35D4, 0x4

glabel D_8013C438
    .incbin "baserom.z64", 0xBB35D8, 0x8

glabel D_8013C440
    .incbin "baserom.z64", 0xBB35E0, 0x4

glabel D_8013C444
    .incbin "baserom.z64", 0xBB35E4, 0x8

glabel D_8013C44C
    .incbin "baserom.z64", 0xBB35EC, 0x4

glabel D_8013C450
    .incbin "baserom.z64", 0xBB35F0, 0x8

glabel D_8013C458
    .incbin "baserom.z64", 0xBB35F8, 0x18

glabel D_8013C470
    .incbin "baserom.z64", 0xBB3610, 0x10

glabel D_8013C480
    .incbin "baserom.z64", 0xBB3620, 0x10

glabel D_8013C490
    .incbin "baserom.z64", 0xBB3630, 0x38

glabel D_8013C4C8
    .incbin "baserom.z64", 0xBB3668, 0x38

glabel D_8013C500
    .incbin "baserom.z64", 0xBB36A0, 0x2C

glabel D_8013C52C
    .incbin "baserom.z64", 0xBB36CC, 0x30

glabel D_8013C55C
    .incbin "baserom.z64", 0xBB36FC, 0x10

glabel D_8013C56C
    .incbin "baserom.z64", 0xBB370C, 0x10

glabel D_8013C57C
    .incbin "baserom.z64", 0xBB371C, 0x10

glabel D_8013C58C
    .incbin "baserom.z64", 0xBB372C, 0x10

glabel D_8013C59C
    .incbin "baserom.z64", 0xBB373C, 0x10

glabel D_8013C5AC
    .incbin "baserom.z64", 0xBB374C, 0x10

glabel D_8013C5BC
    .incbin "baserom.z64", 0xBB375C, 0x10

glabel D_8013C5CC
    .incbin "baserom.z64", 0xBB376C, 0x10

glabel D_8013C5DC
    .incbin "baserom.z64", 0xBB377C, 0x10

glabel D_8013C5EC
    .incbin "baserom.z64", 0xBB378C, 0x10

glabel D_8013C5FC
    .incbin "baserom.z64", 0xBB379C, 0x10

glabel D_8013C60C
    .incbin "baserom.z64", 0xBB37AC, 0x10

glabel D_8013C61C
    .incbin "baserom.z64", 0xBB37BC, 0x10

glabel D_8013C62C
    .incbin "baserom.z64", 0xBB37CC, 0x10

glabel D_8013C63C
    .incbin "baserom.z64", 0xBB37DC, 0x10

glabel D_8013C64C
    .incbin "baserom.z64", 0xBB37EC, 0x10

glabel D_8013C65C
    .incbin "baserom.z64", 0xBB37FC, 0x10

glabel D_8013C66C
    .incbin "baserom.z64", 0xBB380C, 0x10

glabel D_8013C67C
    .incbin "baserom.z64", 0xBB381C, 0x10

glabel D_8013C68C
    .incbin "baserom.z64", 0xBB382C, 0x10

glabel D_8013C69C
    .incbin "baserom.z64", 0xBB383C, 0x38

glabel D_8013C6D4
    .incbin "baserom.z64", 0xBB3874, 0x14

glabel D_8013C6E8
    .incbin "baserom.z64", 0xBB3888, 0x14

glabel D_8013C6FC
    .incbin "baserom.z64", 0xBB389C, 0x14

glabel D_8013C710
    .incbin "baserom.z64", 0xBB38B0, 0x14

glabel D_8013C724
    .incbin "baserom.z64", 0xBB38C4, 0x14

glabel D_8013C738
    .incbin "baserom.z64", 0xBB38D8, 0x18

glabel D_8013C750
    .incbin "baserom.z64", 0xBB38F0, 0x10

glabel D_8013C760
    .incbin "baserom.z64", 0xBB3900, 0x10

glabel D_8013C770
    .incbin "baserom.z64", 0xBB3910, 0x10

glabel D_8013C780
    .incbin "baserom.z64", 0xBB3920, 0x10

glabel jtbl_8013C790
    .incbin "baserom.z64", 0xBB3930, 0x14

glabel D_8013C7A4
    .incbin "baserom.z64", 0xBB3944, 0x4

glabel D_8013C7A8
    .incbin "baserom.z64", 0xBB3948, 0x4

glabel D_8013C7AC
    .incbin "baserom.z64", 0xBB394C, 0x4

glabel D_8013C7B0
    .incbin "baserom.z64", 0xBB3950, 0x4

glabel D_8013C7B4
    .incbin "baserom.z64", 0xBB3954, 0x4

glabel D_8013C7B8
    .incbin "baserom.z64", 0xBB3958, 0x8

glabel D_8013C7C0
    .incbin "baserom.z64", 0xBB3960, 0x8

glabel D_8013C7C8
    .incbin "baserom.z64", 0xBB3968, 0x4

glabel D_8013C7CC
    .incbin "baserom.z64", 0xBB396C, 0x4

glabel D_8013C7D0
    .incbin "baserom.z64", 0xBB3970, 0x4

glabel D_8013C7D4
    .incbin "baserom.z64", 0xBB3974, 0x4

glabel D_8013C7D8
    .incbin "baserom.z64", 0xBB3978, 0x4

glabel D_8013C7DC
    .incbin "baserom.z64", 0xBB397C, 0x4

glabel D_8013C7E0
    .incbin "baserom.z64", 0xBB3980, 0x4

glabel D_8013C7E4
    .incbin "baserom.z64", 0xBB3984, 0x4

glabel D_8013C7E8
    .incbin "baserom.z64", 0xBB3988, 0x4

glabel D_8013C7EC
    .incbin "baserom.z64", 0xBB398C, 0x4

glabel D_8013C7F0
    .incbin "baserom.z64", 0xBB3990, 0x4

glabel D_8013C7F4
    .incbin "baserom.z64", 0xBB3994, 0x4

glabel D_8013C7F8
    .incbin "baserom.z64", 0xBB3998, 0x4

glabel D_8013C7FC
    .incbin "baserom.z64", 0xBB399C, 0x4

glabel D_8013C800
    .incbin "baserom.z64", 0xBB39A0, 0x4

glabel D_8013C804
    .incbin "baserom.z64", 0xBB39A4, 0x4

glabel D_8013C808
    .incbin "baserom.z64", 0xBB39A8, 0x4

glabel jtbl_8013C80C
    .incbin "baserom.z64", 0xBB39AC, 0x24

glabel D_8013C830
    .incbin "baserom.z64", 0xBB39D0, 0x4

glabel D_8013C834
    .incbin "baserom.z64", 0xBB39D4, 0xC
