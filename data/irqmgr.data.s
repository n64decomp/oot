.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8012DBD0
    .incbin "baserom.z64", 0xBA4D70, 0x8

glabel D_8012DBD8
    .incbin "baserom.z64", 0xBA4D78, 0x8

glabel D_8012DBE0
    .incbin "baserom.z64", 0xBA4D80, 0x8

glabel D_8012DBE8
    .incbin "baserom.z64", 0xBA4D88, 0x8
