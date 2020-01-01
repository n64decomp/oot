.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_800121E0
    .incbin "baserom.z64", 0x12DE0, 0x4

glabel D_800121E4
    .incbin "baserom.z64", 0x12DE4, 0x8

glabel D_800121EC
    .incbin "baserom.z64", 0x12DEC, 0x18

glabel jtbl_80012204
    .incbin "baserom.z64", 0x12E04, 0xDC
