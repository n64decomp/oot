.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8013F2C0
    .incbin "baserom.z64", 0xBB6460, 0x10

glabel D_8013F2D0
    .incbin "baserom.z64", 0xBB6470, 0x10

glabel D_8013F2E0
    .incbin "baserom.z64", 0xBB6480, 0x10

glabel D_8013F2F0
    .incbin "baserom.z64", 0xBB6490, 0x10

glabel D_8013F300
    .incbin "baserom.z64", 0xBB64A0, 0x10
