.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80135450
    .incbin "baserom.z64", 0xBAC5F0, 0x8

glabel D_80135458
    .incbin "baserom.z64", 0xBAC5F8, 0x3C

glabel D_80135494
    .incbin "baserom.z64", 0xBAC634, 0x4

glabel D_80135498
    .incbin "baserom.z64", 0xBAC638, 0x1C

glabel D_801354B4
    .incbin "baserom.z64", 0xBAC654, 0x1C

glabel D_801354D0
    .incbin "baserom.z64", 0xBAC670, 0x4

glabel D_801354D4
    .incbin "baserom.z64", 0xBAC674, 0xC
