.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80146230
    .incbin "baserom.z64", 0xBBD3D0, 0x8

glabel D_80146238
    .incbin "baserom.z64", 0xBBD3D8, 0x14

glabel D_8014624C
    .incbin "baserom.z64", 0xBBD3EC, 0x14

glabel D_80146260
    .incbin "baserom.z64", 0xBBD400, 0x14

glabel D_80146274
    .incbin "baserom.z64", 0xBBD414, 0x8

glabel D_8014627C
    .incbin "baserom.z64", 0xBBD41C, 0x14

glabel D_80146290
    .incbin "baserom.z64", 0xBBD430, 0x14

glabel D_801462A4
    .incbin "baserom.z64", 0xBBD444, 0x4

glabel D_801462A8
    .incbin "baserom.z64", 0xBBD448, 0x14

glabel D_801462BC
    .incbin "baserom.z64", 0xBBD45C, 0x14
