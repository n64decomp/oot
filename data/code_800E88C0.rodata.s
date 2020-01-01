.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel jtbl_801495F0
    .incbin "baserom.z64", 0xBC0790, 0x24

glabel D_80149614
    .incbin "baserom.z64", 0xBC07B4, 0x4

glabel D_80149618
    .incbin "baserom.z64", 0xBC07B8, 0x8
