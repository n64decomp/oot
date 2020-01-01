.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8013A580
    .incbin "baserom.z64", 0xBB1720, 0x30
