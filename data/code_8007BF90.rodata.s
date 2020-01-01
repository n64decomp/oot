.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8013CB80
    .incbin "baserom.z64", 0xBB3D20, 0x4

glabel D_8013CB84
    .incbin "baserom.z64", 0xBB3D24, 0x4

glabel D_8013CB88
    .incbin "baserom.z64", 0xBB3D28, 0x4

glabel D_8013CB8C
    .incbin "baserom.z64", 0xBB3D2C, 0x4

glabel D_8013CB90
    .incbin "baserom.z64", 0xBB3D30, 0x4

glabel D_8013CB94
    .incbin "baserom.z64", 0xBB3D34, 0x4

glabel D_8013CB98
    .incbin "baserom.z64", 0xBB3D38, 0x4

glabel D_8013CB9C
    .incbin "baserom.z64", 0xBB3D3C, 0x4
