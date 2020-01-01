.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8013CBA0
    .incbin "baserom.z64", 0xBB3D40, 0x20

glabel D_8013CBC0
    .incbin "baserom.z64", 0xBB3D60, 0x14

glabel D_8013CBD4
    .incbin "baserom.z64", 0xBB3D74, 0x4

glabel D_8013CBD8
    .incbin "baserom.z64", 0xBB3D78, 0x40

glabel D_8013CC18
    .incbin "baserom.z64", 0xBB3DB8, 0x48

glabel D_8013CC60
    .incbin "baserom.z64", 0xBB3E00, 0x48

glabel D_8013CCA8
    .incbin "baserom.z64", 0xBB3E48, 0x34

glabel D_8013CCDC
    .incbin "baserom.z64", 0xBB3E7C, 0x44

glabel D_8013CD20
    .incbin "baserom.z64", 0xBB3EC0, 0x4C

glabel D_8013CD6C
    .incbin "baserom.z64", 0xBB3F0C, 0x48

glabel D_8013CDB4
    .incbin "baserom.z64", 0xBB3F54, 0x38

glabel D_8013CDEC
    .incbin "baserom.z64", 0xBB3F8C, 0x14

glabel D_8013CE00
    .incbin "baserom.z64", 0xBB3FA0, 0x14

glabel D_8013CE14
    .incbin "baserom.z64", 0xBB3FB4, 0x2C

glabel D_8013CE40
    .incbin "baserom.z64", 0xBB3FE0, 0x4

glabel D_8013CE44
    .incbin "baserom.z64", 0xBB3FE4, 0x4

glabel jtbl_8013CE48
    .incbin "baserom.z64", 0xBB3FE8, 0x1E8

glabel jtbl_8013D030
    .incbin "baserom.z64", 0xBB41D0, 0x5C

glabel jtbl_8013D08C
    .incbin "baserom.z64", 0xBB422C, 0x284

glabel jtbl_8013D310
    .incbin "baserom.z64", 0xBB44B0, 0xA8

glabel jtbl_8013D3B8
    .incbin "baserom.z64", 0xBB4558, 0x2D4

glabel D_8013D68C
    .incbin "baserom.z64", 0xBB482C, 0x4

glabel D_8013D690
    .incbin "baserom.z64", 0xBB4830, 0x4

glabel D_8013D694
    .incbin "baserom.z64", 0xBB4834, 0x4

glabel D_8013D698
    .incbin "baserom.z64", 0xBB4838, 0x4

glabel D_8013D69C
    .incbin "baserom.z64", 0xBB483C, 0x4

glabel D_8013D6A0
    .incbin "baserom.z64", 0xBB4840, 0x4

glabel D_8013D6A4
    .incbin "baserom.z64", 0xBB4844, 0x4

glabel D_8013D6A8
    .incbin "baserom.z64", 0xBB4848, 0x4

glabel D_8013D6AC
    .incbin "baserom.z64", 0xBB484C, 0x4

glabel D_8013D6B0
    .incbin "baserom.z64", 0xBB4850, 0x4

glabel D_8013D6B4
    .incbin "baserom.z64", 0xBB4854, 0x4

glabel D_8013D6B8
    .incbin "baserom.z64", 0xBB4858, 0x4

glabel D_8013D6BC
    .incbin "baserom.z64", 0xBB485C, 0x4

glabel D_8013D6C0
    .incbin "baserom.z64", 0xBB4860, 0x4

glabel D_8013D6C4
    .incbin "baserom.z64", 0xBB4864, 0x4

glabel D_8013D6C8
    .incbin "baserom.z64", 0xBB4868, 0x4

glabel D_8013D6CC
    .incbin "baserom.z64", 0xBB486C, 0x4

glabel jtbl_8013D6D0
    .incbin "baserom.z64", 0xBB4870, 0x30
