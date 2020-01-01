.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80142E80
    .incbin "baserom.z64", 0xBBA020, 0x14

glabel D_80142E94
    .incbin "baserom.z64", 0xBBA034, 0x14

glabel D_80142EA8
    .incbin "baserom.z64", 0xBBA048, 0x14

glabel D_80142EBC
    .incbin "baserom.z64", 0xBBA05C, 0x14
