.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80139050
    .incbin "baserom.z64", 0xBB01F0, 0x4

glabel D_80139054
    .incbin "baserom.z64", 0xBB01F4, 0xC
