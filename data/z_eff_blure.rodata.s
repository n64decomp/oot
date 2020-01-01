.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80135130
    .incbin "baserom.z64", 0xBAC2D0, 0x28

glabel D_80135158
    .incbin "baserom.z64", 0xBAC2F8, 0x28

glabel D_80135180
    .incbin "baserom.z64", 0xBAC320, 0x14

glabel D_80135194
    .incbin "baserom.z64", 0xBAC334, 0x14

glabel D_801351A8
    .incbin "baserom.z64", 0xBAC348, 0x14

glabel D_801351BC
    .incbin "baserom.z64", 0xBAC35C, 0x3C

glabel D_801351F8
    .incbin "baserom.z64", 0xBAC398, 0x14

glabel D_8013520C
    .incbin "baserom.z64", 0xBAC3AC, 0x14

glabel D_80135220
    .incbin "baserom.z64", 0xBAC3C0, 0x10

glabel D_80135230
    .incbin "baserom.z64", 0xBAC3D0, 0x14

glabel D_80135244
    .incbin "baserom.z64", 0xBAC3E4, 0x20

glabel D_80135264
    .incbin "baserom.z64", 0xBAC404, 0x14

glabel D_80135278
    .incbin "baserom.z64", 0xBAC418, 0x40

glabel D_801352B8
    .incbin "baserom.z64", 0xBAC458, 0x14

glabel D_801352CC
    .incbin "baserom.z64", 0xBAC46C, 0x14

glabel D_801352E0
    .incbin "baserom.z64", 0xBAC480, 0x14

glabel D_801352F4
    .incbin "baserom.z64", 0xBAC494, 0x14

glabel D_80135308
    .incbin "baserom.z64", 0xBAC4A8, 0x14

glabel D_8013531C
    .incbin "baserom.z64", 0xBAC4BC, 0x14

glabel D_80135330
    .incbin "baserom.z64", 0xBAC4D0, 0x14

glabel D_80135344
    .incbin "baserom.z64", 0xBAC4E4, 0x14

glabel D_80135358
    .incbin "baserom.z64", 0xBAC4F8, 0x4C

glabel D_801353A4
    .incbin "baserom.z64", 0xBAC544, 0x14

glabel D_801353B8
    .incbin "baserom.z64", 0xBAC558, 0x28

glabel D_801353E0
    .incbin "baserom.z64", 0xBAC580, 0x14

glabel D_801353F4
    .incbin "baserom.z64", 0xBAC594, 0x24

glabel D_80135418
    .incbin "baserom.z64", 0xBAC5B8, 0x14

glabel D_8013542C
    .incbin "baserom.z64", 0xBAC5CC, 0x4

glabel D_80135430
    .incbin "baserom.z64", 0xBAC5D0, 0x4

glabel jtbl_80135434
    .incbin "baserom.z64", 0xBAC5D4, 0x14

glabel D_80135448
    .incbin "baserom.z64", 0xBAC5E8, 0x4

glabel D_8013544C
    .incbin "baserom.z64", 0xBAC5EC, 0x4
