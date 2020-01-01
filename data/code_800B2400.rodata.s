.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80143070
    .incbin "baserom.z64", 0xBBA210, 0x20

glabel D_80143090
    .incbin "baserom.z64", 0xBBA230, 0x4

glabel D_80143094
    .incbin "baserom.z64", 0xBBA234, 0x4

glabel D_80143098
    .incbin "baserom.z64", 0xBBA238, 0x4

glabel D_8014309C
    .incbin "baserom.z64", 0xBBA23C, 0x4
