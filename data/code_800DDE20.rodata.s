.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_801493F0
    .incbin "baserom.z64", 0xBC0590, 0x4

glabel D_801493F4
    .incbin "baserom.z64", 0xBC0594, 0x4

glabel D_801493F8
    .incbin "baserom.z64", 0xBC0598, 0x4

glabel jtbl_801493FC
    .incbin "baserom.z64", 0xBC059C, 0x14

glabel D_80149410
    .incbin "baserom.z64", 0xBC05B0, 0x10
