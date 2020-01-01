.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_801463C0
    .incbin "baserom.z64", 0xBBD560, 0x4

glabel D_801463C4
    .incbin "baserom.z64", 0xBBD564, 0x4

glabel D_801463C8
    .incbin "baserom.z64", 0xBBD568, 0x4

glabel D_801463CC
    .incbin "baserom.z64", 0xBBD56C, 0x4
