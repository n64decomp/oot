.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8013B830
    .incbin "baserom.z64", 0xBB29D0, 0x14

glabel D_8013B844
    .incbin "baserom.z64", 0xBB29E4, 0x14

glabel D_8013B858
    .incbin "baserom.z64", 0xBB29F8, 0xC

glabel D_8013B864
    .incbin "baserom.z64", 0xBB2A04, 0x4

glabel D_8013B868
    .incbin "baserom.z64", 0xBB2A08, 0x14

glabel D_8013B87C
    .incbin "baserom.z64", 0xBB2A1C, 0x14

glabel D_8013B890
    .incbin "baserom.z64", 0xBB2A30, 0x14

glabel D_8013B8A4
    .incbin "baserom.z64", 0xBB2A44, 0xC

glabel D_8013B8B0
    .incbin "baserom.z64", 0xBB2A50, 0x4

glabel D_8013B8B4
    .incbin "baserom.z64", 0xBB2A54, 0x14

glabel jtbl_8013B8C8
    .incbin "baserom.z64", 0xBB2A68, 0x108
