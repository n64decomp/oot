.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80143CF0
    .incbin "baserom.z64", 0xBBAE90, 0x18

glabel D_80143D08
    .incbin "baserom.z64", 0xBBAEA8, 0x20

glabel D_80143D28
    .incbin "baserom.z64", 0xBBAEC8, 0x28

glabel D_80143D50
    .incbin "baserom.z64", 0xBBAEF0, 0x24

glabel D_80143D74
    .incbin "baserom.z64", 0xBBAF14, 0x24

glabel D_80143D98
    .incbin "baserom.z64", 0xBBAF38, 0x24

glabel D_80143DBC
    .incbin "baserom.z64", 0xBBAF5C, 0x30

glabel D_80143DEC
    .incbin "baserom.z64", 0xBBAF8C, 0x24
