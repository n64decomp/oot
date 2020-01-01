.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80143F50
    .incbin "baserom.z64", 0xBBB0F0, 0x8

glabel D_80143F58
    .incbin "baserom.z64", 0xBBB0F8, 0x18

glabel D_80143F70
    .incbin "baserom.z64", 0xBBB110, 0x4

glabel D_80143F74
    .incbin "baserom.z64", 0xBBB114, 0x8

glabel D_80143F7C
    .incbin "baserom.z64", 0xBBB11C, 0x18

glabel D_80143F94
    .incbin "baserom.z64", 0xBBB134, 0x4

glabel D_80143F98
    .incbin "baserom.z64", 0xBBB138, 0x2C

glabel D_80143FC4
    .incbin "baserom.z64", 0xBBB164, 0x1C

glabel D_80143FE0
    .incbin "baserom.z64", 0xBBB180, 0x1C

glabel D_80143FFC
    .incbin "baserom.z64", 0xBBB19C, 0x1C

glabel D_80144018
    .incbin "baserom.z64", 0xBBB1B8, 0x20

glabel D_80144038
    .incbin "baserom.z64", 0xBBB1D8, 0x1C

glabel D_80144054
    .incbin "baserom.z64", 0xBBB1F4, 0x1C

glabel D_80144070
    .incbin "baserom.z64", 0xBBB210, 0x1C

glabel D_8014408C
    .incbin "baserom.z64", 0xBBB22C, 0x20

glabel D_801440AC
    .incbin "baserom.z64", 0xBBB24C, 0x2C

glabel D_801440D8
    .incbin "baserom.z64", 0xBBB278, 0x1C

glabel D_801440F4
    .incbin "baserom.z64", 0xBBB294, 0x8

glabel D_801440FC
    .incbin "baserom.z64", 0xBBB29C, 0x24

glabel D_80144120
    .incbin "baserom.z64", 0xBBB2C0, 0x4

glabel D_80144124
    .incbin "baserom.z64", 0xBBB2C4, 0x8

glabel D_8014412C
    .incbin "baserom.z64", 0xBBB2CC, 0x24

glabel D_80144150
    .incbin "baserom.z64", 0xBBB2F0, 0x4

glabel D_80144154
    .incbin "baserom.z64", 0xBBB2F4, 0x8

glabel D_8014415C
    .incbin "baserom.z64", 0xBBB2FC, 0x24

glabel D_80144180
    .incbin "baserom.z64", 0xBBB320, 0x10
