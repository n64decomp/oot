.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8000ADA0
    .incbin "baserom.z64", 0xB9A0, 0x24

glabel D_8000ADC4
    .incbin "baserom.z64", 0xB9C4, 0x2C
