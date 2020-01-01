.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80144C80
    .incbin "baserom.z64", 0xBBBE20, 0x3C

glabel D_80144CBC
    .incbin "baserom.z64", 0xBBBE5C, 0x34
