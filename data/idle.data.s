.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80009430
    .incbin "baserom.z64", 0xA030, 0x4

glabel D_80009434
    .incbin "baserom.z64", 0xA034, 0x4

glabel D_80009438
    .incbin "baserom.z64", 0xA038, 0x4

glabel D_8000943C
    .incbin "baserom.z64", 0xA03C, 0x4

glabel D_80009440
    .incbin "baserom.z64", 0xA040, 0x4

glabel D_80009444
    .incbin "baserom.z64", 0xA044, 0xC
