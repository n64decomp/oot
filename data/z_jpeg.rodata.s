.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8013BD40
    .incbin "baserom.z64", 0xBB2EE0, 0xC

glabel D_8013BD4C
    .incbin "baserom.z64", 0xBB2EEC, 0x10

glabel D_8013BD5C
    .incbin "baserom.z64", 0xBB2EFC, 0x10

glabel D_8013BD6C
    .incbin "baserom.z64", 0xBB2F0C, 0x10

glabel D_8013BD7C
    .incbin "baserom.z64", 0xBB2F1C, 0x18

glabel D_8013BD94
    .incbin "baserom.z64", 0xBB2F34, 0x18

glabel D_8013BDAC
    .incbin "baserom.z64", 0xBB2F4C, 0x10

glabel D_8013BDBC
    .incbin "baserom.z64", 0xBB2F5C, 0xCC

glabel D_8013BE88
    .incbin "baserom.z64", 0xBB3028, 0x10

glabel D_8013BE98
    .incbin "baserom.z64", 0xBB3038, 0xC

glabel D_8013BEA4
    .incbin "baserom.z64", 0xBB3044, 0x14

glabel D_8013BEB8
    .incbin "baserom.z64", 0xBB3058, 0x3C

glabel D_8013BEF4
    .incbin "baserom.z64", 0xBB3094, 0xC

glabel D_8013BF00
    .incbin "baserom.z64", 0xBB30A0, 0x30

glabel D_8013BF30
    .incbin "baserom.z64", 0xBB30D0, 0x3C

glabel D_8013BF6C
    .incbin "baserom.z64", 0xBB310C, 0x2C

glabel D_8013BF98
    .incbin "baserom.z64", 0xBB3138, 0x24

glabel D_8013BFBC
    .incbin "baserom.z64", 0xBB315C, 0x24

glabel D_8013BFE0
    .incbin "baserom.z64", 0xBB3180, 0x24

glabel D_8013C004
    .incbin "baserom.z64", 0xBB31A4, 0x24

glabel D_8013C028
    .incbin "baserom.z64", 0xBB31C8, 0x24

glabel D_8013C04C
    .incbin "baserom.z64", 0xBB31EC, 0x30

glabel D_8013C07C
    .incbin "baserom.z64", 0xBB321C, 0x8

glabel D_8013C084
    .incbin "baserom.z64", 0xBB3224, 0x1C

glabel D_8013C0A0
    .incbin "baserom.z64", 0xBB3240, 0x4

glabel D_8013C0A4
    .incbin "baserom.z64", 0xBB3244, 0x28

glabel jtbl_8013C0CC
    .incbin "baserom.z64", 0xBB326C, 0x94
