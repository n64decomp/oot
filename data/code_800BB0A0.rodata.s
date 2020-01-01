.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80143CE0
    .incbin "baserom.z64", 0xBBAE80, 0x4

glabel D_80143CE4
    .incbin "baserom.z64", 0xBBAE84, 0xC
