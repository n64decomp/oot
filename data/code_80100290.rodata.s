.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8014B210
    .incbin "baserom.z64", 0xBC23B0, 0x28

glabel D_8014B238
    .incbin "baserom.z64", 0xBC23D8, 0x8

glabel D_8014B240
    .incbin "baserom.z64", 0xBC23E0, 0x8

glabel D_8014B248
    .incbin "baserom.z64", 0xBC23E8, 0x8

glabel D_8014B250
    .incbin "baserom.z64", 0xBC23F0, 0x10
