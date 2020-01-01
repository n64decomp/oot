.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8013C900
    .incbin "baserom.z64", 0xBB3AA0, 0x24

glabel D_8013C924
    .incbin "baserom.z64", 0xBB3AC4, 0x24

glabel D_8013C948
    .incbin "baserom.z64", 0xBB3AE8, 0x10

glabel D_8013C958
    .incbin "baserom.z64", 0xBB3AF8, 0x8

glabel D_8013C960
    .incbin "baserom.z64", 0xBB3B00, 0x14

glabel D_8013C974
    .incbin "baserom.z64", 0xBB3B14, 0x8

glabel D_8013C97C
    .incbin "baserom.z64", 0xBB3B1C, 0x10

glabel D_8013C98C
    .incbin "baserom.z64", 0xBB3B2C, 0x8

glabel D_8013C994
    .incbin "baserom.z64", 0xBB3B34, 0x18

glabel D_8013C9AC
    .incbin "baserom.z64", 0xBB3B4C, 0x8

glabel D_8013C9B4
    .incbin "baserom.z64", 0xBB3B54, 0x10

glabel D_8013C9C4
    .incbin "baserom.z64", 0xBB3B64, 0x8

glabel D_8013C9CC
    .incbin "baserom.z64", 0xBB3B6C, 0x14

glabel D_8013C9E0
    .incbin "baserom.z64", 0xBB3B80, 0x8

glabel D_8013C9E8
    .incbin "baserom.z64", 0xBB3B88, 0x10

glabel D_8013C9F8
    .incbin "baserom.z64", 0xBB3B98, 0x8

glabel D_8013CA00
    .incbin "baserom.z64", 0xBB3BA0, 0x20
