.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8012D270
    .incbin "baserom.z64", 0xBA4410, 0x2

glabel D_8012D272
    .incbin "baserom.z64", 0xBA4412, 0x2

glabel D_8012D274
    .incbin "baserom.z64", 0xBA4414, 0x4

glabel D_8012D278
    .incbin "baserom.z64", 0xBA4418, 0x8
