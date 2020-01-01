.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8013B9E0
    .incbin "baserom.z64", 0xBB2B80, 0x20

glabel D_8013BA00
    .incbin "baserom.z64", 0xBB2BA0, 0x18

glabel D_8013BA18
    .incbin "baserom.z64", 0xBB2BB8, 0x20

glabel D_8013BA38
    .incbin "baserom.z64", 0xBB2BD8, 0x20

glabel D_8013BA58
    .incbin "baserom.z64", 0xBB2BF8, 0x20

glabel D_8013BA78
    .incbin "baserom.z64", 0xBB2C18, 0x20

glabel D_8013BA98
    .incbin "baserom.z64", 0xBB2C38, 0x20

glabel D_8013BAB8
    .incbin "baserom.z64", 0xBB2C58, 0x20

glabel D_8013BAD8
    .incbin "baserom.z64", 0xBB2C78, 0x24

glabel D_8013BAFC
    .incbin "baserom.z64", 0xBB2C9C, 0x20

glabel D_8013BB1C
    .incbin "baserom.z64", 0xBB2CBC, 0x4
