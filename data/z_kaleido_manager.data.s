.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8012D1A0
    .incbin "baserom.z64", 0xBA4340, 0xC

glabel D_8012D1AC
    .incbin "baserom.z64", 0xBA434C, 0x4

glabel D_8012D1B0
    .incbin "baserom.z64", 0xBA4350, 0xC

glabel D_8012D1BC
    .incbin "baserom.z64", 0xBA435C, 0x1C

glabel D_8012D1D8
    .incbin "baserom.z64", 0xBA4378, 0x4

glabel D_8012D1DC
    .incbin "baserom.z64", 0xBA437C, 0x14
