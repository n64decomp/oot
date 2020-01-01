.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_800120F0
    .incbin "baserom.z64", 0x12CF0, 0x20

glabel jtbl_80012110
    .incbin "baserom.z64", 0x12D10, 0x30
