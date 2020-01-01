.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80143E10
    .incbin "baserom.z64", 0xBBAFB0, 0x20

glabel D_80143E30
    .incbin "baserom.z64", 0xBBAFD0, 0x14

glabel D_80143E44
    .incbin "baserom.z64", 0xBBAFE4, 0x18

glabel D_80143E5C
    .incbin "baserom.z64", 0xBBAFFC, 0x8

glabel D_80143E64
    .incbin "baserom.z64", 0xBBB004, 0x30

glabel D_80143E94
    .incbin "baserom.z64", 0xBBB034, 0x4

glabel D_80143E98
    .incbin "baserom.z64", 0xBBB038, 0x8

glabel D_80143EA0
    .incbin "baserom.z64", 0xBBB040, 0x34

glabel D_80143ED4
    .incbin "baserom.z64", 0xBBB074, 0x4

glabel D_80143ED8
    .incbin "baserom.z64", 0xBBB078, 0x18

glabel D_80143EF0
    .incbin "baserom.z64", 0xBBB090, 0x14

glabel D_80143F04
    .incbin "baserom.z64", 0xBBB0A4, 0x18

glabel D_80143F1C
    .incbin "baserom.z64", 0xBBB0BC, 0x8

glabel D_80143F24
    .incbin "baserom.z64", 0xBBB0C4, 0x1C

glabel D_80143F40
    .incbin "baserom.z64", 0xBBB0E0, 0x4

glabel D_80143F44
    .incbin "baserom.z64", 0xBBB0E4, 0xC
