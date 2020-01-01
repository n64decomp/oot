.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel jtbl_8014A640
    .incbin "baserom.z64", 0xBC17E0, 0x40

glabel jtbl_8014A680
    .incbin "baserom.z64", 0xBC1820, 0x42

glabel D_8014A6C2
    .incbin "baserom.z64", 0xBC1862, 0x2

glabel D_8014A6C4
    .incbin "baserom.z64", 0xBC1864, 0x4

glabel D_8014A6C8
    .incbin "baserom.z64", 0xBC1868, 0x4

glabel D_8014A6CC
    .incbin "baserom.z64", 0xBC186C, 0x4
