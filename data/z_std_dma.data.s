.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80009450
    .incbin "baserom.z64", 0xA050, 0x10

glabel D_80009460
    .incbin "baserom.z64", 0xA060, 0x4

glabel D_80009464
    .incbin "baserom.z64", 0xA064, 0x4

glabel D_80009468
    .incbin "baserom.z64", 0xA068, 0x4

glabel D_8000946C
    .incbin "baserom.z64", 0xA06C, 0x17F0

glabel D_8000AC5C
    .incbin "baserom.z64", 0xB85C, 0x4
