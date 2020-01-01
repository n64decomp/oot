.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8014A900
    .incbin "baserom.z64", 0xBC1AA0, 0x20

glabel D_8014A920
    .incbin "baserom.z64", 0xBC1AC0, 0x30

glabel D_8014A950
    .incbin "baserom.z64", 0xBC1AF0, 0x18

glabel D_8014A968
    .incbin "baserom.z64", 0xBC1B08, 0x18
