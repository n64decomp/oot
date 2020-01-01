.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_801413A0
    .incbin "baserom.z64", 0xBB8540, 0x10

glabel D_801413B0
    .incbin "baserom.z64", 0xBB8550, 0x14

glabel D_801413C4
    .incbin "baserom.z64", 0xBB8564, 0x10

glabel D_801413D4
    .incbin "baserom.z64", 0xBB8574, 0x20

glabel D_801413F4
    .incbin "baserom.z64", 0xBB8594, 0x10

glabel D_80141404
    .incbin "baserom.z64", 0xBB85A4, 0x24

glabel D_80141428
    .incbin "baserom.z64", 0xBB85C8, 0x10

glabel D_80141438
    .incbin "baserom.z64", 0xBB85D8, 0x24

glabel D_8014145C
    .incbin "baserom.z64", 0xBB85FC, 0x10

glabel D_8014146C
    .incbin "baserom.z64", 0xBB860C, 0x24

glabel D_80141490
    .incbin "baserom.z64", 0xBB8630, 0x10

glabel D_801414A0
    .incbin "baserom.z64", 0xBB8640, 0x24

glabel D_801414C4
    .incbin "baserom.z64", 0xBB8664, 0x10

glabel D_801414D4
    .incbin "baserom.z64", 0xBB8674, 0x20

glabel D_801414F4
    .incbin "baserom.z64", 0xBB8694, 0x10

glabel D_80141504
    .incbin "baserom.z64", 0xBB86A4, 0x24

glabel D_80141528
    .incbin "baserom.z64", 0xBB86C8, 0x10

glabel D_80141538
    .incbin "baserom.z64", 0xBB86D8, 0x24

glabel D_8014155C
    .incbin "baserom.z64", 0xBB86FC, 0x10

glabel D_8014156C
    .incbin "baserom.z64", 0xBB870C, 0x28

glabel D_80141594
    .incbin "baserom.z64", 0xBB8734, 0x10

glabel D_801415A4
    .incbin "baserom.z64", 0xBB8744, 0x28

glabel D_801415CC
    .incbin "baserom.z64", 0xBB876C, 0x10

glabel D_801415DC
    .incbin "baserom.z64", 0xBB877C, 0x28

glabel D_80141604
    .incbin "baserom.z64", 0xBB87A4, 0x10

glabel D_80141614
    .incbin "baserom.z64", 0xBB87B4, 0x28

glabel D_8014163C
    .incbin "baserom.z64", 0xBB87DC, 0x10

glabel D_8014164C
    .incbin "baserom.z64", 0xBB87EC, 0x24

glabel D_80141670
    .incbin "baserom.z64", 0xBB8810, 0x10

glabel D_80141680
    .incbin "baserom.z64", 0xBB8820, 0x28

glabel D_801416A8
    .incbin "baserom.z64", 0xBB8848, 0x10

glabel D_801416B8
    .incbin "baserom.z64", 0xBB8858, 0x28

glabel D_801416E0
    .incbin "baserom.z64", 0xBB8880, 0x10

glabel D_801416F0
    .incbin "baserom.z64", 0xBB8890, 0x28

glabel D_80141718
    .incbin "baserom.z64", 0xBB88B8, 0x10

glabel D_80141728
    .incbin "baserom.z64", 0xBB88C8, 0x28

glabel D_80141750
    .incbin "baserom.z64", 0xBB88F0, 0x10

glabel D_80141760
    .incbin "baserom.z64", 0xBB8900, 0x24

glabel D_80141784
    .incbin "baserom.z64", 0xBB8924, 0x14

glabel D_80141798
    .incbin "baserom.z64", 0xBB8938, 0x14

glabel D_801417AC
    .incbin "baserom.z64", 0xBB894C, 0x14
