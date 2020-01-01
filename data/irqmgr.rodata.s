.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80146690
    .incbin "baserom.z64", 0xBBD830, 0x8

glabel D_80146698
    .incbin "baserom.z64", 0xBBD838, 0xC

glabel D_801466A4
    .incbin "baserom.z64", 0xBBD844, 0x4

glabel D_801466A8
    .incbin "baserom.z64", 0xBBD848, 0xC

glabel D_801466B4
    .incbin "baserom.z64", 0xBBD854, 0x8

glabel D_801466BC
    .incbin "baserom.z64", 0xBBD85C, 0xC

glabel D_801466C8
    .incbin "baserom.z64", 0xBBD868, 0x8

glabel D_801466D0
    .incbin "baserom.z64", 0xBBD870, 0xC

glabel D_801466DC
    .incbin "baserom.z64", 0xBBD87C, 0x4

glabel D_801466E0
    .incbin "baserom.z64", 0xBBD880, 0xC

glabel D_801466EC
    .incbin "baserom.z64", 0xBBD88C, 0x58

glabel D_80146744
    .incbin "baserom.z64", 0xBBD8E4, 0x54

glabel D_80146798
    .incbin "baserom.z64", 0xBBD938, 0x20

glabel D_801467B8
    .incbin "baserom.z64", 0xBBD958, 0x1C

glabel D_801467D4
    .incbin "baserom.z64", 0xBBD974, 0x4

glabel D_801467D8
    .incbin "baserom.z64", 0xBBD978, 0x8

glabel D_801467E0
    .incbin "baserom.z64", 0xBBD980, 0x30

glabel D_80146810
    .incbin "baserom.z64", 0xBBD9B0, 0x48

glabel D_80146858
    .incbin "baserom.z64", 0xBBD9F8, 0x4

glabel D_8014685C
    .incbin "baserom.z64", 0xBBD9FC, 0x28

glabel D_80146884
    .incbin "baserom.z64", 0xBBDA24, 0x24

glabel D_801468A8
    .incbin "baserom.z64", 0xBBDA48, 0x10

glabel D_801468B8
    .incbin "baserom.z64", 0xBBDA58, 0x28

glabel D_801468E0
    .incbin "baserom.z64", 0xBBDA80, 0x10

glabel D_801468F0
    .incbin "baserom.z64", 0xBBDA90, 0x2C

glabel D_8014691C
    .incbin "baserom.z64", 0xBBDABC, 0x10

glabel D_8014692C
    .incbin "baserom.z64", 0xBBDACC, 0x2C

glabel D_80146958
    .incbin "baserom.z64", 0xBBDAF8, 0x10

glabel D_80146968
    .incbin "baserom.z64", 0xBBDB08, 0x2C

glabel D_80146994
    .incbin "baserom.z64", 0xBBDB34, 0x38

glabel D_801469CC
    .incbin "baserom.z64", 0xBBDB6C, 0x24

glabel D_801469F0
    .incbin "baserom.z64", 0xBBDB90, 0x8

glabel D_801469F8
    .incbin "baserom.z64", 0xBBDB98, 0xC

glabel D_80146A04
    .incbin "baserom.z64", 0xBBDBA4, 0x8

glabel D_80146A0C
    .incbin "baserom.z64", 0xBBDBAC, 0xC

glabel jtbl_80146A18
    .incbin "baserom.z64", 0xBBDBB8, 0x28
