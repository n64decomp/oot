.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_801417C0
    .incbin "baserom.z64", 0xBB8960, 0x10

glabel D_801417D0
    .incbin "baserom.z64", 0xBB8970, 0x10

glabel D_801417E0
    .incbin "baserom.z64", 0xBB8980, 0x14

glabel D_801417F4
    .incbin "baserom.z64", 0xBB8994, 0x10

glabel D_80141804
    .incbin "baserom.z64", 0xBB89A4, 0x10

glabel D_80141814
    .incbin "baserom.z64", 0xBB89B4, 0x10

glabel D_80141824
    .incbin "baserom.z64", 0xBB89C4, 0x2C

glabel D_80141850
    .incbin "baserom.z64", 0xBB89F0, 0x10

glabel D_80141860
    .incbin "baserom.z64", 0xBB8A00, 0x24

glabel D_80141884
    .incbin "baserom.z64", 0xBB8A24, 0x20

glabel D_801418A4
    .incbin "baserom.z64", 0xBB8A44, 0x10

glabel D_801418B4
    .incbin "baserom.z64", 0xBB8A54, 0x10

glabel D_801418C4
    .incbin "baserom.z64", 0xBB8A64, 0x10

glabel D_801418D4
    .incbin "baserom.z64", 0xBB8A74, 0x28

glabel D_801418FC
    .incbin "baserom.z64", 0xBB8A9C, 0x4
