.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_801463D0
    .incbin "baserom.z64", 0xBBD570, 0xC

glabel D_801463DC
    .incbin "baserom.z64", 0xBBD57C, 0x38

glabel D_80146414
    .incbin "baserom.z64", 0xBBD5B4, 0x1C

glabel D_80146430
    .incbin "baserom.z64", 0xBBD5D0, 0x4

glabel D_80146434
    .incbin "baserom.z64", 0xBBD5D4, 0xC

glabel D_80146440
    .incbin "baserom.z64", 0xBBD5E0, 0x3C

glabel D_8014647C
    .incbin "baserom.z64", 0xBBD61C, 0x4

glabel D_80146480
    .incbin "baserom.z64", 0xBBD620, 0xC

glabel D_8014648C
    .incbin "baserom.z64", 0xBBD62C, 0x44

glabel D_801464D0
    .incbin "baserom.z64", 0xBBD670, 0x4

glabel D_801464D4
    .incbin "baserom.z64", 0xBBD674, 0x4

glabel D_801464D8
    .incbin "baserom.z64", 0xBBD678, 0x4

glabel D_801464DC
    .incbin "baserom.z64", 0xBBD67C, 0x4

glabel D_801464E0
    .incbin "baserom.z64", 0xBBD680, 0x4

glabel D_801464E4
    .incbin "baserom.z64", 0xBBD684, 0x4

glabel D_801464E8
    .incbin "baserom.z64", 0xBBD688, 0x4

glabel D_801464EC
    .incbin "baserom.z64", 0xBBD68C, 0x4

glabel D_801464F0
    .incbin "baserom.z64", 0xBBD690, 0x4

glabel D_801464F4
    .incbin "baserom.z64", 0xBBD694, 0x4

glabel D_801464F8
    .incbin "baserom.z64", 0xBBD698, 0x4

glabel D_801464FC
    .incbin "baserom.z64", 0xBBD69C, 0x4

glabel D_80146500
    .incbin "baserom.z64", 0xBBD6A0, 0x4

glabel D_80146504
    .incbin "baserom.z64", 0xBBD6A4, 0x4

glabel D_80146508
    .incbin "baserom.z64", 0xBBD6A8, 0x4

glabel D_8014650C
    .incbin "baserom.z64", 0xBBD6AC, 0x4

glabel D_80146510
    .incbin "baserom.z64", 0xBBD6B0, 0x4

glabel D_80146514
    .incbin "baserom.z64", 0xBBD6B4, 0x4

glabel D_80146518
    .incbin "baserom.z64", 0xBBD6B8, 0x4

glabel D_8014651C
    .incbin "baserom.z64", 0xBBD6BC, 0x4

glabel D_80146520
    .incbin "baserom.z64", 0xBBD6C0, 0x4

glabel D_80146524
    .incbin "baserom.z64", 0xBBD6C4, 0x4

glabel D_80146528
    .incbin "baserom.z64", 0xBBD6C8, 0x4

glabel D_8014652C
    .incbin "baserom.z64", 0xBBD6CC, 0x4

glabel D_80146530
    .incbin "baserom.z64", 0xBBD6D0, 0x4

glabel D_80146534
    .incbin "baserom.z64", 0xBBD6D4, 0x4

glabel D_80146538
    .incbin "baserom.z64", 0xBBD6D8, 0x4

glabel D_8014653C
    .incbin "baserom.z64", 0xBBD6DC, 0x4

glabel D_80146540
    .incbin "baserom.z64", 0xBBD6E0, 0x4

glabel D_80146544
    .incbin "baserom.z64", 0xBBD6E4, 0x4

glabel D_80146548
    .incbin "baserom.z64", 0xBBD6E8, 0x4

glabel D_8014654C
    .incbin "baserom.z64", 0xBBD6EC, 0x4

glabel D_80146550
    .incbin "baserom.z64", 0xBBD6F0, 0x4

glabel D_80146554
    .incbin "baserom.z64", 0xBBD6F4, 0x4

glabel D_80146558
    .incbin "baserom.z64", 0xBBD6F8, 0x4

glabel D_8014655C
    .incbin "baserom.z64", 0xBBD6FC, 0x4
