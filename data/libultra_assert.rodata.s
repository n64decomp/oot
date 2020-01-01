.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80011DB0
    .incbin "baserom.z64", 0x129B0, 0x34

glabel D_80011DE4
    .incbin "baserom.z64", 0x129E4, 0x1C
