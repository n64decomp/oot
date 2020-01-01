.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80127120
    .incbin "baserom.z64", 0xB9E2C0, 0x4

glabel D_80127124
    .incbin "baserom.z64", 0xB9E2C4, 0x4

glabel D_80127128
    .incbin "baserom.z64", 0xB9E2C8, 0x4

glabel D_8012712C
    .incbin "baserom.z64", 0xB9E2CC, 0x4

glabel D_80127130
    .incbin "baserom.z64", 0xB9E2D0, 0x8

glabel D_80127138
    .incbin "baserom.z64", 0xB9E2D8, 0xC

glabel D_80127144
    .incbin "baserom.z64", 0xB9E2E4, 0x4

glabel D_80127148
    .incbin "baserom.z64", 0xB9E2E8, 0x8

glabel D_80127150
    .incbin "baserom.z64", 0xB9E2F0, 0xC

glabel D_8012715C
    .incbin "baserom.z64", 0xB9E2FC, 0x10

glabel D_8012716C
    .incbin "baserom.z64", 0xB9E30C, 0x4

glabel D_80127170
    .incbin "baserom.z64", 0xB9E310, 0x30

glabel D_801271A0
    .incbin "baserom.z64", 0xB9E340, 0x2

glabel D_801271A2
    .incbin "baserom.z64", 0xB9E342, 0x2

glabel D_801271A4
    .incbin "baserom.z64", 0xB9E344, 0x4

glabel D_801271A8
    .incbin "baserom.z64", 0xB9E348, 0x2

glabel D_801271AA
    .incbin "baserom.z64", 0xB9E34A, 0x6

glabel D_801271B0
    .incbin "baserom.z64", 0xB9E350, 0x4

glabel D_801271B4
    .incbin "baserom.z64", 0xB9E354, 0x4

glabel D_801271B8
    .incbin "baserom.z64", 0xB9E358, 0x8

glabel D_801271C0
    .incbin "baserom.z64", 0xB9E360, 0x4

glabel D_801271C4
    .incbin "baserom.z64", 0xB9E364, 0x4

glabel D_801271C8
    .incbin "baserom.z64", 0xB9E368, 0x4

glabel D_801271CC
    .incbin "baserom.z64", 0xB9E36C, 0x4

glabel D_801271D0
    .incbin "baserom.z64", 0xB9E370, 0x20

glabel D_801271F0
    .incbin "baserom.z64", 0xB9E390, 0x1

glabel D_801271F1
    .incbin "baserom.z64", 0xB9E391, 0x1

glabel D_801271F2
    .incbin "baserom.z64", 0xB9E392, 0x1

glabel D_801271F3
    .incbin "baserom.z64", 0xB9E393, 0x1

glabel D_801271F4
    .incbin "baserom.z64", 0xB9E394, 0x1

glabel D_801271F5
    .incbin "baserom.z64", 0xB9E395, 0x1

glabel D_801271F6
    .incbin "baserom.z64", 0xB9E396, 0x2

glabel D_801271F8
    .incbin "baserom.z64", 0xB9E398, 0x1

glabel D_801271F9
    .incbin "baserom.z64", 0xB9E399, 0x1

glabel D_801271FA
    .incbin "baserom.z64", 0xB9E39A, 0x1

glabel D_801271FB
    .incbin "baserom.z64", 0xB9E39B, 0x1

glabel D_801271FC
    .incbin "baserom.z64", 0xB9E39C, 0x2

glabel D_801271FE
    .incbin "baserom.z64", 0xB9E39E, 0x2

glabel D_80127200
    .incbin "baserom.z64", 0xB9E3A0, 0x2

glabel D_80127202
    .incbin "baserom.z64", 0xB9E3A2, 0x2

glabel D_80127204
    .incbin "baserom.z64", 0xB9E3A4, 0x2

glabel D_80127206
    .incbin "baserom.z64", 0xB9E3A6, 0x2

glabel D_80127208
    .incbin "baserom.z64", 0xB9E3A8, 0x2

glabel D_8012720A
    .incbin "baserom.z64", 0xB9E3AA, 0x12

glabel D_8012721C
    .incbin "baserom.z64", 0xB9E3BC, 0x8

glabel D_80127224
    .incbin "baserom.z64", 0xB9E3C4, 0x4

glabel D_80127228
    .incbin "baserom.z64", 0xB9E3C8, 0x2

glabel D_8012722A
    .incbin "baserom.z64", 0xB9E3CA, 0x2

glabel D_8012722C
    .incbin "baserom.z64", 0xB9E3CC, 0x4

glabel D_80127230
    .incbin "baserom.z64", 0xB9E3D0, 0x2

glabel D_80127232
    .incbin "baserom.z64", 0xB9E3D2, 0x2

glabel D_80127234
    .incbin "baserom.z64", 0xB9E3D4, 0x4

glabel D_80127238
    .incbin "baserom.z64", 0xB9E3D8, 0x2

glabel D_8012723A
    .incbin "baserom.z64", 0xB9E3DA, 0x22

glabel D_8012725C
    .incbin "baserom.z64", 0xB9E3FC, 0x208

glabel D_80127464
    .incbin "baserom.z64", 0xB9E604, 0x1

glabel D_80127465
    .incbin "baserom.z64", 0xB9E605, 0x1

glabel D_80127466
    .incbin "baserom.z64", 0xB9E606, 0x1

glabel D_80127467
    .incbin "baserom.z64", 0xB9E607, 0x3

glabel D_8012746A
    .incbin "baserom.z64", 0xB9E60A, 0x3

glabel D_8012746D
    .incbin "baserom.z64", 0xB9E60D, 0x7

glabel D_80127474
    .incbin "baserom.z64", 0xB9E614, 0x1

glabel D_80127475
    .incbin "baserom.z64", 0xB9E615, 0x1

glabel D_80127476
    .incbin "baserom.z64", 0xB9E616, 0x6

glabel D_8012747C
    .incbin "baserom.z64", 0xB9E61C, 0x2

glabel D_8012747E
    .incbin "baserom.z64", 0xB9E61E, 0x13

glabel D_80127491
    .incbin "baserom.z64", 0xB9E631, 0x2

glabel D_80127493
    .incbin "baserom.z64", 0xB9E633, 0xD
