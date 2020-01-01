.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8000AFD0
    .incbin "baserom.z64", 0xBBD0, 0x10

glabel D_8000AFE0
    .incbin "baserom.z64", 0xBBE0, 0x1C

glabel D_8000AFFC
    .asciz "../idle.c"
    .balign 4

glabel D_8000B008
    .incbin "baserom.z64", 0xBC08, 0x20

glabel D_8000B028
    .incbin "baserom.z64", 0xBC28, 0x10

glabel D_8000B038
    .incbin "baserom.z64", 0xBC38, 0x20

glabel D_8000B058
    .incbin "baserom.z64", 0xBC58, 0x10

glabel D_8000B068
    .incbin "baserom.z64", 0xBC68, 0x24

glabel D_8000B08C
    .incbin "baserom.z64", 0xBC8C, 0x10

glabel D_8000B09C
    .incbin "baserom.z64", 0xBC9C, 0x10

glabel D_8000B0AC
    .incbin "baserom.z64", 0xBCAC, 0x10

glabel D_8000B0BC
    .incbin "baserom.z64", 0xBCBC, 0x8

glabel D_8000B0C4
    .incbin "baserom.z64", 0xBCC4, 0x3C

glabel D_8000B100
    .incbin "baserom.z64", 0xBD00, 0x40

glabel D_8000B140
    .incbin "baserom.z64", 0xBD40, 0x28

glabel D_8000B168
    .incbin "baserom.z64", 0xBD68, 0x34

glabel D_8000B19C
    .incbin "baserom.z64", 0xBD9C, 0x30

glabel D_8000B1CC
    .incbin "baserom.z64", 0xBDCC, 0x30

glabel D_8000B1FC
    .incbin "baserom.z64", 0xBDFC, 0x30

glabel D_8000B22C
    .incbin "baserom.z64", 0xBE2C, 0x4

glabel D_8000B230
    .incbin "baserom.z64", 0xBE30, 0x8

glabel D_8000B238
    .incbin "baserom.z64", 0xBE38, 0x8
