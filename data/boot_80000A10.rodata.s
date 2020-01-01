.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8000B240
    .incbin "baserom.z64", 0xBE40, 0x20

glabel D_8000B260
    .incbin "baserom.z64", 0xBE60, 0x20
