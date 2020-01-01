.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80135C00
    .incbin "baserom.z64", 0xBACDA0, 0x24

glabel D_80135C24
    .incbin "baserom.z64", 0xBACDC4, 0x24

glabel D_80135C48
    .incbin "baserom.z64", 0xBACDE8, 0x4

glabel D_80135C4C
    .incbin "baserom.z64", 0xBACDEC, 0x4

glabel D_80135C50
    .incbin "baserom.z64", 0xBACDF0, 0x4

glabel D_80135C54
    .incbin "baserom.z64", 0xBACDF4, 0x4

glabel D_80135C58
    .incbin "baserom.z64", 0xBACDF8, 0x4

glabel D_80135C5C
    .incbin "baserom.z64", 0xBACDFC, 0x4
