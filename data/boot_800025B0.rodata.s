.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80011E20
    .incbin "baserom.z64", 0x12A20, 0x38

glabel D_80011E58
    .incbin "baserom.z64", 0x12A58, 0x38

glabel D_80011E90
    .incbin "baserom.z64", 0x12A90, 0x8

glabel D_80011E98
    .incbin "baserom.z64", 0x12A98, 0x8

glabel D_80011EA0
    .incbin "baserom.z64", 0x12AA0, 0x8

glabel D_80011EA8
    .incbin "baserom.z64", 0x12AA8, 0x38

glabel D_80011EE0
    .incbin "baserom.z64", 0x12AE0, 0x8

glabel D_80011EE8
    .incbin "baserom.z64", 0x12AE8, 0x8
