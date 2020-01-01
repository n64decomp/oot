.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8013AD40
    .incbin "baserom.z64", 0xBB1EE0, 0x10

glabel D_8013AD50
    .incbin "baserom.z64", 0xBB1EF0, 0x4

glabel D_8013AD54
    .incbin "baserom.z64", 0xBB1EF4, 0xC

glabel D_8013AD60
    .incbin "baserom.z64", 0xBB1F00, 0x10

glabel D_8013AD70
    .incbin "baserom.z64", 0xBB1F10, 0x10

glabel jtbl_8013AD80
    .incbin "baserom.z64", 0xBB1F20, 0x20
