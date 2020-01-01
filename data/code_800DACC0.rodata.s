.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel jtbl_801493D0
    .incbin "baserom.z64", 0xBC0570, 0x20
