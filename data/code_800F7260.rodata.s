.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel jtbl_8014A620
    .incbin "baserom.z64", 0xBC17C0, 0x18

glabel D_8014A638
    .incbin "baserom.z64", 0xBC17D8, 0x8
