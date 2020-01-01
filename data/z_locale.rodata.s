.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80011D20
    .incbin "baserom.z64", 0x12920, 0xC

glabel D_80011D2C
    .incbin "baserom.z64", 0x1292C, 0x34

glabel D_80011D60
    .incbin "baserom.z64", 0x12960, 0x10

glabel D_80011D70
    .incbin "baserom.z64", 0x12970, 0x4

glabel D_80011D74
    .incbin "baserom.z64", 0x12974, 0x3C
