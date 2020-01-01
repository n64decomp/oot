.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80011EF0
    .incbin "baserom.z64", 0x12AF0, 0x30

glabel D_80011F20
    .incbin "baserom.z64", 0x12B20, 0x30

glabel D_80011F50
    .incbin "baserom.z64", 0x12B50, 0x10

glabel D_80011F60
    .incbin "baserom.z64", 0x12B60, 0x54

glabel D_80011FB4
    .incbin "baserom.z64", 0x12BB4, 0xC

glabel D_80011FC0
    .incbin "baserom.z64", 0x12BC0, 0x8

glabel D_80011FC8
    .incbin "baserom.z64", 0x12BC8, 0x4

glabel D_80011FCC
    .incbin "baserom.z64", 0x12BCC, 0x4

glabel D_80011FD0
    .incbin "baserom.z64", 0x12BD0, 0x4

glabel D_80011FD4
    .incbin "baserom.z64", 0x12BD4, 0x4

glabel D_80011FD8
    .incbin "baserom.z64", 0x12BD8, 0x4

glabel D_80011FDC
    .incbin "baserom.z64", 0x12BDC, 0x2C

glabel D_80012008
    .incbin "baserom.z64", 0x12C08, 0x38

glabel D_80012040
    .incbin "baserom.z64", 0x12C40, 0x2C

glabel D_8001206C
    .incbin "baserom.z64", 0x12C6C, 0x30

glabel D_8001209C
    .incbin "baserom.z64", 0x12C9C, 0xC

glabel D_800120A8
    .incbin "baserom.z64", 0x12CA8, 0x28

glabel D_800120D0
    .incbin "baserom.z64", 0x12CD0, 0x10

glabel D_800120E0
    .incbin "baserom.z64", 0x12CE0, 0x10
