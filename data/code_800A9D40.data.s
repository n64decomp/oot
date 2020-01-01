.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8012A690
    .incbin "baserom.z64", 0xBA1830, 0xC

glabel D_8012A69C
    .incbin "baserom.z64", 0xBA183C, 0x8

glabel D_8012A6A4
    .incbin "baserom.z64", 0xBA1844, 0x60

glabel D_8012A704
    .incbin "baserom.z64", 0xBA18A4, 0x18

glabel D_8012A71C
    .incbin "baserom.z64", 0xBA18BC, 0x24
