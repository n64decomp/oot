.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80142ED0
    .incbin "baserom.z64", 0xBBA070, 0x10

glabel D_80142EE0
    .incbin "baserom.z64", 0xBBA080, 0x38

glabel D_80142F18
    .incbin "baserom.z64", 0xBBA0B8, 0x10

glabel D_80142F28
    .incbin "baserom.z64", 0xBBA0C8, 0x18

glabel D_80142F40
    .incbin "baserom.z64", 0xBBA0E0, 0x18

glabel D_80142F58
    .incbin "baserom.z64", 0xBBA0F8, 0x10

glabel D_80142F68
    .incbin "baserom.z64", 0xBBA108, 0x10

glabel D_80142F78
    .incbin "baserom.z64", 0xBBA118, 0x10

glabel D_80142F88
    .incbin "baserom.z64", 0xBBA128, 0x10

glabel D_80142F98
    .incbin "baserom.z64", 0xBBA138, 0x10

glabel D_80142FA8
    .incbin "baserom.z64", 0xBBA148, 0x1C

glabel D_80142FC4
    .incbin "baserom.z64", 0xBBA164, 0x10

glabel D_80142FD4
    .incbin "baserom.z64", 0xBBA174, 0x10

glabel D_80142FE4
    .incbin "baserom.z64", 0xBBA184, 0x10

glabel D_80142FF4
    .incbin "baserom.z64", 0xBBA194, 0x10

glabel D_80143004
    .incbin "baserom.z64", 0xBBA1A4, 0x20

glabel D_80143024
    .incbin "baserom.z64", 0xBBA1C4, 0x10

glabel D_80143034
    .incbin "baserom.z64", 0xBBA1D4, 0x10

glabel D_80143044
    .incbin "baserom.z64", 0xBBA1E4, 0x10

glabel D_80143054
    .incbin "baserom.z64", 0xBBA1F4, 0x1C
