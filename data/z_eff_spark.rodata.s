.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_801354E0
    .incbin "baserom.z64", 0xBAC680, 0x24

glabel D_80135504
    .incbin "baserom.z64", 0xBAC6A4, 0x14

glabel D_80135518
    .incbin "baserom.z64", 0xBAC6B8, 0x30

glabel D_80135548
    .incbin "baserom.z64", 0xBAC6E8, 0x14

glabel D_8013555C
    .incbin "baserom.z64", 0xBAC6FC, 0x38

glabel D_80135594
    .incbin "baserom.z64", 0xBAC734, 0x14

glabel D_801355A8
    .incbin "baserom.z64", 0xBAC748, 0x4

glabel D_801355AC
    .incbin "baserom.z64", 0xBAC74C, 0x4

glabel D_801355B0
    .incbin "baserom.z64", 0xBAC750, 0x4

glabel D_801355B4
    .incbin "baserom.z64", 0xBAC754, 0xC
