.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80141070
    .incbin "baserom.z64", 0xBB8210, 0xC

glabel D_8014107C
    .incbin "baserom.z64", 0xBB821C, 0xC

glabel D_80141088
    .incbin "baserom.z64", 0xBB8228, 0x18

glabel D_801410A0
    .incbin "baserom.z64", 0xBB8240, 0xC

glabel D_801410AC
    .incbin "baserom.z64", 0xBB824C, 0xC

glabel D_801410B8
    .incbin "baserom.z64", 0xBB8258, 0xC

glabel D_801410C4
    .incbin "baserom.z64", 0xBB8264, 0xC

glabel D_801410D0
    .incbin "baserom.z64", 0xBB8270, 0x14

glabel D_801410E4
    .incbin "baserom.z64", 0xBB8284, 0xC

glabel D_801410F0
    .incbin "baserom.z64", 0xBB8290, 0x14

glabel D_80141104
    .incbin "baserom.z64", 0xBB82A4, 0xC

glabel D_80141110
    .incbin "baserom.z64", 0xBB82B0, 0xC

glabel D_8014111C
    .incbin "baserom.z64", 0xBB82BC, 0xC

glabel D_80141128
    .incbin "baserom.z64", 0xBB82C8, 0xC

glabel D_80141134
    .incbin "baserom.z64", 0xBB82D4, 0xC

glabel D_80141140
    .incbin "baserom.z64", 0xBB82E0, 0x4

glabel D_80141144
    .incbin "baserom.z64", 0xBB82E4, 0xC

glabel D_80141150
    .incbin "baserom.z64", 0xBB82F0, 0xC

glabel D_8014115C
    .incbin "baserom.z64", 0xBB82FC, 0xC

glabel D_80141168
    .incbin "baserom.z64", 0xBB8308, 0x38

glabel D_801411A0
    .incbin "baserom.z64", 0xBB8340, 0xC

glabel D_801411AC
    .incbin "baserom.z64", 0xBB834C, 0x10

glabel D_801411BC
    .incbin "baserom.z64", 0xBB835C, 0x4

glabel D_801411C0
    .incbin "baserom.z64", 0xBB8360, 0x8

glabel D_801411C8
    .incbin "baserom.z64", 0xBB8368, 0xC

glabel D_801411D4
    .incbin "baserom.z64", 0xBB8374, 0xC

glabel D_801411E0
    .incbin "baserom.z64", 0xBB8380, 0x10

glabel D_801411F0
    .incbin "baserom.z64", 0xBB8390, 0x4

glabel D_801411F4
    .incbin "baserom.z64", 0xBB8394, 0xC

glabel D_80141200
    .incbin "baserom.z64", 0xBB83A0, 0xC

glabel D_8014120C
    .incbin "baserom.z64", 0xBB83AC, 0x4

glabel D_80141210
    .incbin "baserom.z64", 0xBB83B0, 0xC

glabel D_8014121C
    .incbin "baserom.z64", 0xBB83BC, 0xC

glabel D_80141228
    .incbin "baserom.z64", 0xBB83C8, 0xC

glabel D_80141234
    .incbin "baserom.z64", 0xBB83D4, 0xC

glabel D_80141240
    .incbin "baserom.z64", 0xBB83E0, 0xC

glabel D_8014124C
    .incbin "baserom.z64", 0xBB83EC, 0x4

glabel D_80141250
    .incbin "baserom.z64", 0xBB83F0, 0xC

glabel D_8014125C
    .incbin "baserom.z64", 0xBB83FC, 0xC

glabel D_80141268
    .incbin "baserom.z64", 0xBB8408, 0xC

glabel D_80141274
    .incbin "baserom.z64", 0xBB8414, 0xC

glabel D_80141280
    .incbin "baserom.z64", 0xBB8420, 0xC

glabel D_8014128C
    .incbin "baserom.z64", 0xBB842C, 0x4

glabel D_80141290
    .incbin "baserom.z64", 0xBB8430, 0xC

glabel D_8014129C
    .incbin "baserom.z64", 0xBB843C, 0xC

glabel D_801412A8
    .incbin "baserom.z64", 0xBB8448, 0xC

glabel D_801412B4
    .incbin "baserom.z64", 0xBB8454, 0x8

glabel D_801412BC
    .incbin "baserom.z64", 0xBB845C, 0xC

glabel D_801412C8
    .incbin "baserom.z64", 0xBB8468, 0xC

glabel D_801412D4
    .incbin "baserom.z64", 0xBB8474, 0xC

glabel D_801412E0
    .incbin "baserom.z64", 0xBB8480, 0xC

glabel D_801412EC
    .incbin "baserom.z64", 0xBB848C, 0x4

glabel D_801412F0
    .incbin "baserom.z64", 0xBB8490, 0xC

glabel D_801412FC
    .incbin "baserom.z64", 0xBB849C, 0xC

glabel D_80141308
    .incbin "baserom.z64", 0xBB84A8, 0xC

glabel D_80141314
    .incbin "baserom.z64", 0xBB84B4, 0xC

glabel D_80141320
    .incbin "baserom.z64", 0xBB84C0, 0xC

glabel D_8014132C
    .incbin "baserom.z64", 0xBB84CC, 0x8

glabel D_80141334
    .incbin "baserom.z64", 0xBB84D4, 0xC

glabel D_80141340
    .incbin "baserom.z64", 0xBB84E0, 0x8

glabel D_80141348
    .incbin "baserom.z64", 0xBB84E8, 0x38

glabel D_80141380
    .incbin "baserom.z64", 0xBB8520, 0x4

glabel D_80141384
    .incbin "baserom.z64", 0xBB8524, 0x4

glabel D_80141388
    .incbin "baserom.z64", 0xBB8528, 0x4

glabel D_8014138C
    .incbin "baserom.z64", 0xBB852C, 0x4

glabel D_80141390
    .incbin "baserom.z64", 0xBB8530, 0x10
