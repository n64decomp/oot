.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8014A980
    .incbin "baserom.z64", 0xBC1B20, 0x38

glabel D_8014A9B8
    .incbin "baserom.z64", 0xBC1B58, 0x34

glabel D_8014A9EC
    .incbin "baserom.z64", 0xBC1B8C, 0x34

glabel D_8014AA20
    .incbin "baserom.z64", 0xBC1BC0, 0x18

glabel D_8014AA38
    .incbin "baserom.z64", 0xBC1BD8, 0x24

glabel D_8014AA5C
    .incbin "baserom.z64", 0xBC1BFC, 0x24

glabel D_8014AA80
    .incbin "baserom.z64", 0xBC1C20, 0x40
