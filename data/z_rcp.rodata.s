.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8013EAE0
    .incbin "baserom.z64", 0xBB5C80, 0x8

glabel D_8013EAE8
    .incbin "baserom.z64", 0xBB5C88, 0xC

glabel D_8013EAF4
    .incbin "baserom.z64", 0xBB5C94, 0x8

glabel D_8013EAFC
    .incbin "baserom.z64", 0xBB5C9C, 0xC

glabel D_8013EB08
    .incbin "baserom.z64", 0xBB5CA8, 0xC

glabel D_8013EB14
    .incbin "baserom.z64", 0xBB5CB4, 0xC

glabel D_8013EB20
    .incbin "baserom.z64", 0xBB5CC0, 0xC

glabel D_8013EB2C
    .incbin "baserom.z64", 0xBB5CCC, 0xC

glabel D_8013EB38
    .incbin "baserom.z64", 0xBB5CD8, 0xC

glabel D_8013EB44
    .incbin "baserom.z64", 0xBB5CE4, 0xC

glabel D_8013EB50
    .incbin "baserom.z64", 0xBB5CF0, 0xC

glabel D_8013EB5C
    .incbin "baserom.z64", 0xBB5CFC, 0xC

glabel D_8013EB68
    .incbin "baserom.z64", 0xBB5D08, 0xC

glabel D_8013EB74
    .incbin "baserom.z64", 0xBB5D14, 0xC

glabel D_8013EB80
    .incbin "baserom.z64", 0xBB5D20, 0xC

glabel D_8013EB8C
    .incbin "baserom.z64", 0xBB5D2C, 0xC

glabel D_8013EB98
    .incbin "baserom.z64", 0xBB5D38, 0xC

glabel D_8013EBA4
    .incbin "baserom.z64", 0xBB5D44, 0xC

glabel D_8013EBB0
    .incbin "baserom.z64", 0xBB5D50, 0xC

glabel D_8013EBBC
    .incbin "baserom.z64", 0xBB5D5C, 0xC

glabel D_8013EBC8
    .incbin "baserom.z64", 0xBB5D68, 0xC

glabel D_8013EBD4
    .incbin "baserom.z64", 0xBB5D74, 0xC

glabel D_8013EBE0
    .incbin "baserom.z64", 0xBB5D80, 0xC

glabel D_8013EBEC
    .incbin "baserom.z64", 0xBB5D8C, 0xC

glabel D_8013EBF8
    .incbin "baserom.z64", 0xBB5D98, 0xC

glabel D_8013EC04
    .incbin "baserom.z64", 0xBB5DA4, 0xC

glabel D_8013EC10
    .incbin "baserom.z64", 0xBB5DB0, 0xC

glabel D_8013EC1C
    .incbin "baserom.z64", 0xBB5DBC, 0xC

glabel D_8013EC28
    .incbin "baserom.z64", 0xBB5DC8, 0xC

glabel D_8013EC34
    .incbin "baserom.z64", 0xBB5DD4, 0xC

glabel D_8013EC40
    .incbin "baserom.z64", 0xBB5DE0, 0xC

glabel D_8013EC4C
    .incbin "baserom.z64", 0xBB5DEC, 0xC

glabel D_8013EC58
    .incbin "baserom.z64", 0xBB5DF8, 0xC

glabel D_8013EC64
    .incbin "baserom.z64", 0xBB5E04, 0xC

glabel D_8013EC70
    .incbin "baserom.z64", 0xBB5E10, 0xC

glabel D_8013EC7C
    .incbin "baserom.z64", 0xBB5E1C, 0xC

glabel D_8013EC88
    .incbin "baserom.z64", 0xBB5E28, 0xC

glabel D_8013EC94
    .incbin "baserom.z64", 0xBB5E34, 0xC

glabel D_8013ECA0
    .incbin "baserom.z64", 0xBB5E40, 0xC

glabel D_8013ECAC
    .incbin "baserom.z64", 0xBB5E4C, 0xC

glabel D_8013ECB8
    .incbin "baserom.z64", 0xBB5E58, 0xC

glabel D_8013ECC4
    .incbin "baserom.z64", 0xBB5E64, 0xC

glabel D_8013ECD0
    .incbin "baserom.z64", 0xBB5E70, 0xC

glabel D_8013ECDC
    .incbin "baserom.z64", 0xBB5E7C, 0xC

glabel D_8013ECE8
    .incbin "baserom.z64", 0xBB5E88, 0xC

glabel D_8013ECF4
    .incbin "baserom.z64", 0xBB5E94, 0xC

glabel D_8013ED00
    .incbin "baserom.z64", 0xBB5EA0, 0xC

glabel D_8013ED0C
    .incbin "baserom.z64", 0xBB5EAC, 0xC

glabel D_8013ED18
    .incbin "baserom.z64", 0xBB5EB8, 0xC

glabel D_8013ED24
    .incbin "baserom.z64", 0xBB5EC4, 0xC

glabel D_8013ED30
    .incbin "baserom.z64", 0xBB5ED0, 0xC

glabel D_8013ED3C
    .incbin "baserom.z64", 0xBB5EDC, 0xC

glabel D_8013ED48
    .incbin "baserom.z64", 0xBB5EE8, 0xC

glabel D_8013ED54
    .incbin "baserom.z64", 0xBB5EF4, 0xC

glabel D_8013ED60
    .incbin "baserom.z64", 0xBB5F00, 0xC

glabel D_8013ED6C
    .incbin "baserom.z64", 0xBB5F0C, 0xC

glabel D_8013ED78
    .incbin "baserom.z64", 0xBB5F18, 0xC

glabel D_8013ED84
    .incbin "baserom.z64", 0xBB5F24, 0xC

glabel D_8013ED90
    .incbin "baserom.z64", 0xBB5F30, 0xC

glabel D_8013ED9C
    .incbin "baserom.z64", 0xBB5F3C, 0xC

glabel D_8013EDA8
    .incbin "baserom.z64", 0xBB5F48, 0xC

glabel D_8013EDB4
    .incbin "baserom.z64", 0xBB5F54, 0xC

glabel D_8013EDC0
    .incbin "baserom.z64", 0xBB5F60, 0xC

glabel D_8013EDCC
    .incbin "baserom.z64", 0xBB5F6C, 0xC

glabel D_8013EDD8
    .incbin "baserom.z64", 0xBB5F78, 0xC

glabel D_8013EDE4
    .incbin "baserom.z64", 0xBB5F84, 0xC

glabel D_8013EDF0
    .incbin "baserom.z64", 0xBB5F90, 0xC

glabel D_8013EDFC
    .incbin "baserom.z64", 0xBB5F9C, 0xC

glabel D_8013EE08
    .incbin "baserom.z64", 0xBB5FA8, 0xC

glabel D_8013EE14
    .incbin "baserom.z64", 0xBB5FB4, 0xC

glabel D_8013EE20
    .incbin "baserom.z64", 0xBB5FC0, 0xC

glabel D_8013EE2C
    .incbin "baserom.z64", 0xBB5FCC, 0xC

glabel D_8013EE38
    .incbin "baserom.z64", 0xBB5FD8, 0xC

glabel D_8013EE44
    .incbin "baserom.z64", 0xBB5FE4, 0xC

glabel D_8013EE50
    .incbin "baserom.z64", 0xBB5FF0, 0xC

glabel D_8013EE5C
    .incbin "baserom.z64", 0xBB5FFC, 0xC

glabel D_8013EE68
    .incbin "baserom.z64", 0xBB6008, 0xC

glabel D_8013EE74
    .incbin "baserom.z64", 0xBB6014, 0xC

glabel D_8013EE80
    .incbin "baserom.z64", 0xBB6020, 0xC

glabel D_8013EE8C
    .incbin "baserom.z64", 0xBB602C, 0xC

glabel D_8013EE98
    .incbin "baserom.z64", 0xBB6038, 0xC

glabel D_8013EEA4
    .incbin "baserom.z64", 0xBB6044, 0xC

glabel D_8013EEB0
    .incbin "baserom.z64", 0xBB6050, 0xC

glabel D_8013EEBC
    .incbin "baserom.z64", 0xBB605C, 0xC

glabel D_8013EEC8
    .incbin "baserom.z64", 0xBB6068, 0xC

glabel D_8013EED4
    .incbin "baserom.z64", 0xBB6074, 0xC

glabel D_8013EEE0
    .incbin "baserom.z64", 0xBB6080, 0xC

glabel D_8013EEEC
    .incbin "baserom.z64", 0xBB608C, 0xC

glabel D_8013EEF8
    .incbin "baserom.z64", 0xBB6098, 0xC

glabel D_8013EF04
    .incbin "baserom.z64", 0xBB60A4, 0xC

glabel D_8013EF10
    .incbin "baserom.z64", 0xBB60B0, 0xC

glabel D_8013EF1C
    .incbin "baserom.z64", 0xBB60BC, 0x14
