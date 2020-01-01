.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80141060
    .incbin "baserom.z64", 0xBB8200, 0x4

glabel D_80141064
    .incbin "baserom.z64", 0xBB8204, 0xC
