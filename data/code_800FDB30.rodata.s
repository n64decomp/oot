.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8014AC00
    .incbin "baserom.z64", 0xBC1DA0, 0x38

glabel D_8014AC38
    .incbin "baserom.z64", 0xBC1DD8, 0x38

glabel D_8014AC70
    .incbin "baserom.z64", 0xBC1E10, 0x4C

glabel D_8014ACBC
    .incbin "baserom.z64", 0xBC1E5C, 0x24

glabel D_8014ACE0
    .incbin "baserom.z64", 0xBC1E80, 0x24

glabel D_8014AD04
    .incbin "baserom.z64", 0xBC1EA4, 0x44

glabel D_8014AD48
    .incbin "baserom.z64", 0xBC1EE8, 0x30

glabel D_8014AD78
    .incbin "baserom.z64", 0xBC1F18, 0x30

glabel D_8014ADA8
    .incbin "baserom.z64", 0xBC1F48, 0x44

glabel D_8014ADEC
    .incbin "baserom.z64", 0xBC1F8C, 0x18

glabel D_8014AE04
    .incbin "baserom.z64", 0xBC1FA4, 0x34

glabel D_8014AE38
    .incbin "baserom.z64", 0xBC1FD8, 0x3C

glabel D_8014AE74
    .incbin "baserom.z64", 0xBC2014, 0x30

glabel D_8014AEA4
    .incbin "baserom.z64", 0xBC2044, 0x38

glabel D_8014AEDC
    .incbin "baserom.z64", 0xBC207C, 0x3C

glabel D_8014AF18
    .incbin "baserom.z64", 0xBC20B8, 0x30

glabel D_8014AF48
    .incbin "baserom.z64", 0xBC20E8, 0x20

glabel D_8014AF68
    .incbin "baserom.z64", 0xBC2108, 0x1C

glabel D_8014AF84
    .incbin "baserom.z64", 0xBC2124, 0x44

glabel D_8014AFC8
    .incbin "baserom.z64", 0xBC2168, 0x14

glabel D_8014AFDC
    .incbin "baserom.z64", 0xBC217C, 0x8

glabel D_8014AFE4
    .incbin "baserom.z64", 0xBC2184, 0x8

glabel D_8014AFEC
    .incbin "baserom.z64", 0xBC218C, 0x18

glabel D_8014B004
    .incbin "baserom.z64", 0xBC21A4, 0xC

glabel D_8014B010
    .incbin "baserom.z64", 0xBC21B0, 0x4

glabel D_8014B014
    .incbin "baserom.z64", 0xBC21B4, 0x14

glabel D_8014B028
    .incbin "baserom.z64", 0xBC21C8, 0x28

glabel D_8014B050
    .incbin "baserom.z64", 0xBC21F0, 0x28

glabel D_8014B078
    .incbin "baserom.z64", 0xBC2218, 0x28

glabel D_8014B0A0
    .incbin "baserom.z64", 0xBC2240, 0x18

glabel D_8014B0B8
    .incbin "baserom.z64", 0xBC2258, 0x18

glabel D_8014B0D0
    .incbin "baserom.z64", 0xBC2270, 0x24

glabel D_8014B0F4
    .incbin "baserom.z64", 0xBC2294, 0x14

glabel D_8014B108
    .incbin "baserom.z64", 0xBC22A8, 0x4

glabel D_8014B10C
    .incbin "baserom.z64", 0xBC22AC, 0x4

glabel D_8014B110
    .incbin "baserom.z64", 0xBC22B0, 0x4

glabel D_8014B114
    .incbin "baserom.z64", 0xBC22B4, 0x14

glabel D_8014B128
    .incbin "baserom.z64", 0xBC22C8, 0x20

glabel D_8014B148
    .incbin "baserom.z64", 0xBC22E8, 0x20

glabel D_8014B168
    .incbin "baserom.z64", 0xBC2308, 0x20

glabel D_8014B188
    .incbin "baserom.z64", 0xBC2328, 0x34

glabel D_8014B1BC
    .incbin "baserom.z64", 0xBC235C, 0x28

glabel D_8014B1E4
    .incbin "baserom.z64", 0xBC2384, 0x2C
