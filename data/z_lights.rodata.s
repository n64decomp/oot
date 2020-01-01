.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8013C8A0
    .incbin "baserom.z64", 0xBB3A40, 0x10

glabel D_8013C8B0
    .incbin "baserom.z64", 0xBB3A50, 0x10

glabel D_8013C8C0
    .incbin "baserom.z64", 0xBB3A60, 0x10

glabel D_8013C8D0
    .incbin "baserom.z64", 0xBB3A70, 0x10

glabel D_8013C8E0
    .incbin "baserom.z64", 0xBB3A80, 0x10

glabel D_8013C8F0
    .incbin "baserom.z64", 0xBB3A90, 0x4

glabel D_8013C8F4
    .incbin "baserom.z64", 0xBB3A94, 0xC
