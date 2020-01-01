.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80135750
    .incbin "baserom.z64", 0xBAC8F0, 0x30

glabel D_80135780
    .incbin "baserom.z64", 0xBAC920, 0x1C

glabel D_8013579C
    .incbin "baserom.z64", 0xBAC93C, 0x24

glabel D_801357C0
    .incbin "baserom.z64", 0xBAC960, 0x1C

glabel D_801357DC
    .incbin "baserom.z64", 0xBAC97C, 0x1C

glabel D_801357F8
    .incbin "baserom.z64", 0xBAC998, 0x24

glabel D_8013581C
    .incbin "baserom.z64", 0xBAC9BC, 0x1C

glabel D_80135838
    .incbin "baserom.z64", 0xBAC9D8, 0x40

glabel D_80135878
    .incbin "baserom.z64", 0xBACA18, 0x1C

glabel D_80135894
    .incbin "baserom.z64", 0xBACA34, 0x8

glabel D_8013589C
    .incbin "baserom.z64", 0xBACA3C, 0xBC

glabel D_80135958
    .incbin "baserom.z64", 0xBACAF8, 0x4

glabel D_8013595C
    .incbin "baserom.z64", 0xBACAFC, 0x8

glabel D_80135964
    .incbin "baserom.z64", 0xBACB04, 0x48

glabel D_801359AC
    .incbin "baserom.z64", 0xBACB4C, 0x4

glabel D_801359B0
    .incbin "baserom.z64", 0xBACB50, 0x9C

glabel D_80135A4C
    .incbin "baserom.z64", 0xBACBEC, 0x8

glabel D_80135A54
    .incbin "baserom.z64", 0xBACBF4, 0x88

glabel D_80135ADC
    .incbin "baserom.z64", 0xBACC7C, 0x4

glabel D_80135AE0
    .incbin "baserom.z64", 0xBACC80, 0x8

glabel D_80135AE8
    .incbin "baserom.z64", 0xBACC88, 0xCC

glabel D_80135BB4
    .incbin "baserom.z64", 0xBACD54, 0x8

glabel D_80135BBC
    .incbin "baserom.z64", 0xBACD5C, 0x38

glabel D_80135BF4
    .incbin "baserom.z64", 0xBACD94, 0xC
