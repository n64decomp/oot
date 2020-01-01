.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_801355C0
    .incbin "baserom.z64", 0xBAC760, 0x14

glabel D_801355D4
    .incbin "baserom.z64", 0xBAC774, 0x14

glabel D_801355E8
    .incbin "baserom.z64", 0xBAC788, 0x14

glabel D_801355FC
    .incbin "baserom.z64", 0xBAC79C, 0x14

glabel D_80135610
    .incbin "baserom.z64", 0xBAC7B0, 0x14

glabel D_80135624
    .incbin "baserom.z64", 0xBAC7C4, 0x14

glabel D_80135638
    .incbin "baserom.z64", 0xBAC7D8, 0x14

glabel D_8013564C
    .incbin "baserom.z64", 0xBAC7EC, 0x14

glabel D_80135660
    .incbin "baserom.z64", 0xBAC800, 0x14

glabel D_80135674
    .incbin "baserom.z64", 0xBAC814, 0x14

glabel D_80135688
    .incbin "baserom.z64", 0xBAC828, 0x14

glabel D_8013569C
    .incbin "baserom.z64", 0xBAC83C, 0x14

glabel D_801356B0
    .incbin "baserom.z64", 0xBAC850, 0x4

glabel D_801356B4
    .incbin "baserom.z64", 0xBAC854, 0xC
