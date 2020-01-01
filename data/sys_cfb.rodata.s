.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_801462D0
    .incbin "baserom.z64", 0xBBD470, 0x2C

glabel D_801462FC
    .incbin "baserom.z64", 0xBBD49C, 0x1C

glabel D_80146318
    .incbin "baserom.z64", 0xBBD4B8, 0x2C

glabel D_80146344
    .incbin "baserom.z64", 0xBBD4E4, 0xC

glabel D_80146350
    .incbin "baserom.z64", 0xBBD4F0, 0x10

glabel D_80146360
    .incbin "baserom.z64", 0xBBD500, 0x2C

glabel D_8014638C
    .incbin "baserom.z64", 0xBBD52C, 0x34
