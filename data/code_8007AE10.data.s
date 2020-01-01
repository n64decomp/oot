.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80120040
    .incbin "baserom.z64", 0xB971E0, 0x4

glabel D_80120044
    .incbin "baserom.z64", 0xB971E4, 0xC
