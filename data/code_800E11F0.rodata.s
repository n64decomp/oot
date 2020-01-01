.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80149420
    .incbin "baserom.z64", 0xBC05C0, 0xC

glabel D_8014942C
    .incbin "baserom.z64", 0xBC05CC, 0xC

glabel D_80149438
    .incbin "baserom.z64", 0xBC05D8, 0xC

glabel D_80149444
    .incbin "baserom.z64", 0xBC05E4, 0xC

glabel D_80149450
    .incbin "baserom.z64", 0xBC05F0, 0x8

glabel jtbl_80149458
    .incbin "baserom.z64", 0xBC05F8, 0x14

glabel jtbl_8014946C
    .incbin "baserom.z64", 0xBC060C, 0x14

glabel D_80149480
    .incbin "baserom.z64", 0xBC0620, 0x4

glabel D_80149484
    .incbin "baserom.z64", 0xBC0624, 0x4

glabel D_80149488
    .incbin "baserom.z64", 0xBC0628, 0x8

glabel jtbl_80149490
    .incbin "baserom.z64", 0xBC0630, 0x7C

glabel jtbl_8014950C
    .incbin "baserom.z64", 0xBC06AC, 0x40

glabel jtbl_8014954C
    .incbin "baserom.z64", 0xBC06EC, 0x38

glabel jtbl_80149584
    .incbin "baserom.z64", 0xBC0724, 0x3C
