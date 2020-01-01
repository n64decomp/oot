.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_801406F0
    .incbin "baserom.z64", 0xBB7890, 0x10

glabel D_80140700
    .incbin "baserom.z64", 0xBB78A0, 0x1C

glabel D_8014071C
    .incbin "baserom.z64", 0xBB78BC, 0x10

glabel D_8014072C
    .incbin "baserom.z64", 0xBB78CC, 0x10

glabel D_8014073C
    .incbin "baserom.z64", 0xBB78DC, 0x18

glabel D_80140754
    .incbin "baserom.z64", 0xBB78F4, 0x10

glabel D_80140764
    .incbin "baserom.z64", 0xBB7904, 0x10

glabel D_80140774
    .incbin "baserom.z64", 0xBB7914, 0x18

glabel D_8014078C
    .incbin "baserom.z64", 0xBB792C, 0x10

glabel D_8014079C
    .incbin "baserom.z64", 0xBB793C, 0x10

glabel D_801407AC
    .incbin "baserom.z64", 0xBB794C, 0x10

glabel D_801407BC
    .incbin "baserom.z64", 0xBB795C, 0x14

glabel D_801407D0
    .incbin "baserom.z64", 0xBB7970, 0xC

glabel D_801407DC
    .incbin "baserom.z64", 0xBB797C, 0x30

glabel D_8014080C
    .incbin "baserom.z64", 0xBB79AC, 0x4

glabel D_80140810
    .incbin "baserom.z64", 0xBB79B0, 0x34

glabel D_80140844
    .incbin "baserom.z64", 0xBB79E4, 0xC
