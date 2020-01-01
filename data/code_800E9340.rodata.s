.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel jtbl_80149620
    .incbin "baserom.z64", 0xBC07C0, 0x38

glabel D_80149658
    .incbin "baserom.z64", 0xBC07F8, 0x4

glabel jtbl_8014965C
    .incbin "baserom.z64", 0xBC07FC, 0x3C

glabel jtbl_80149698
    .incbin "baserom.z64", 0xBC0838, 0x14

glabel D_801496AC
    .incbin "baserom.z64", 0xBC084C, 0x4

glabel D_801496B0
    .incbin "baserom.z64", 0xBC0850, 0x4

glabel jtbl_801496B4
    .incbin "baserom.z64", 0xBC0854, 0x108

glabel jtbl_801497BC
    .incbin "baserom.z64", 0xBC095C, 0xA4

glabel jtbl_80149860
    .incbin "baserom.z64", 0xBC0A00, 0x184

glabel jtbl_801499E4
    .incbin "baserom.z64", 0xBC0B84, 0xB8

glabel jtbl_80149A9C
    .incbin "baserom.z64", 0xBC0C3C, 0x1C4
