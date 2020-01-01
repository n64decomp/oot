.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80154D50
    .incbin "baserom.z64", 0xBCBEF0, 0x28

glabel D_80154D78
    .incbin "baserom.z64", 0xBCBF18, 0x14

glabel D_80154D8C
    .incbin "baserom.z64", 0xBCBF2C, 0x20

glabel D_80154DAC
    .incbin "baserom.z64", 0xBCBF4C, 0x24

glabel D_80154DD0
    .incbin "baserom.z64", 0xBCBF70, 0x14

glabel D_80154DE4
    .incbin "baserom.z64", 0xBCBF84, 0x14

glabel D_80154DF8
    .incbin "baserom.z64", 0xBCBF98, 0x14

glabel D_80154E0C
    .incbin "baserom.z64", 0xBCBFAC, 0x24

glabel D_80154E30
    .incbin "baserom.z64", 0xBCBFD0, 0x20

glabel D_80154E50
    .incbin "baserom.z64", 0xBCBFF0, 0x24

glabel D_80154E74
    .incbin "baserom.z64", 0xBCC014, 0x14

glabel D_80154E88
    .incbin "baserom.z64", 0xBCC028, 0x14

glabel D_80154E9C
    .incbin "baserom.z64", 0xBCC03C, 0x14

glabel D_80154EB0
    .incbin "baserom.z64", 0xBCC050, 0x14

glabel D_80154EC4
    .incbin "baserom.z64", 0xBCC064, 0x24

glabel D_80154EE8
    .incbin "baserom.z64", 0xBCC088, 0x20

glabel D_80154F08
    .incbin "baserom.z64", 0xBCC0A8, 0x24

glabel D_80154F2C
    .incbin "baserom.z64", 0xBCC0CC, 0x14

glabel D_80154F40
    .incbin "baserom.z64", 0xBCC0E0, 0x20

glabel D_80154F60
    .incbin "baserom.z64", 0xBCC100, 0x14

glabel D_80154F74
    .incbin "baserom.z64", 0xBCC114, 0x14

glabel D_80154F88
    .incbin "baserom.z64", 0xBCC128, 0x14

glabel D_80154F9C
    .incbin "baserom.z64", 0xBCC13C, 0x14

glabel D_80154FB0
    .incbin "baserom.z64", 0xBCC150, 0x14

glabel D_80154FC4
    .incbin "baserom.z64", 0xBCC164, 0x10

glabel D_80154FD4
    .incbin "baserom.z64", 0xBCC174, 0x14

glabel D_80154FE8
    .incbin "baserom.z64", 0xBCC188, 0x40

glabel D_80155028
    .incbin "baserom.z64", 0xBCC1C8, 0x1C

glabel D_80155044
    .incbin "baserom.z64", 0xBCC1E4, 0x14

glabel D_80155058
    .incbin "baserom.z64", 0xBCC1F8, 0x20

glabel D_80155078
    .incbin "baserom.z64", 0xBCC218, 0x18

glabel D_80155090
    .incbin "baserom.z64", 0xBCC230, 0x24

glabel D_801550B4
    .incbin "baserom.z64", 0xBCC254, 0x1C
