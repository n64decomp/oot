.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8013E770
    .incbin "baserom.z64", 0xBB5910, 0x14

glabel D_8013E784
    .incbin "baserom.z64", 0xBB5924, 0x14

glabel D_8013E798
    .incbin "baserom.z64", 0xBB5938, 0x14

glabel D_8013E7AC
    .incbin "baserom.z64", 0xBB594C, 0x14

glabel D_8013E7C0
    .incbin "baserom.z64", 0xBB5960, 0x14

glabel D_8013E7D4
    .incbin "baserom.z64", 0xBB5974, 0x14

glabel D_8013E7E8
    .incbin "baserom.z64", 0xBB5988, 0x14

glabel D_8013E7FC
    .incbin "baserom.z64", 0xBB599C, 0x14

glabel D_8013E810
    .incbin "baserom.z64", 0xBB59B0, 0x14

glabel D_8013E824
    .incbin "baserom.z64", 0xBB59C4, 0x14

glabel D_8013E838
    .incbin "baserom.z64", 0xBB59D8, 0x14

glabel D_8013E84C
    .incbin "baserom.z64", 0xBB59EC, 0x14

glabel D_8013E860
    .incbin "baserom.z64", 0xBB5A00, 0x14

glabel D_8013E874
    .incbin "baserom.z64", 0xBB5A14, 0x14

glabel D_8013E888
    .incbin "baserom.z64", 0xBB5A28, 0x14

glabel D_8013E89C
    .incbin "baserom.z64", 0xBB5A3C, 0x14

glabel D_8013E8B0
    .incbin "baserom.z64", 0xBB5A50, 0x14

glabel D_8013E8C4
    .incbin "baserom.z64", 0xBB5A64, 0x14

glabel D_8013E8D8
    .incbin "baserom.z64", 0xBB5A78, 0x14

glabel D_8013E8EC
    .incbin "baserom.z64", 0xBB5A8C, 0x14

glabel D_8013E900
    .incbin "baserom.z64", 0xBB5AA0, 0x4

glabel D_8013E904
    .incbin "baserom.z64", 0xBB5AA4, 0x4

glabel D_8013E908
    .incbin "baserom.z64", 0xBB5AA8, 0x4

glabel D_8013E90C
    .incbin "baserom.z64", 0xBB5AAC, 0x4

glabel D_8013E910
    .incbin "baserom.z64", 0xBB5AB0, 0x4

glabel D_8013E914
    .incbin "baserom.z64", 0xBB5AB4, 0x4

glabel D_8013E918
    .incbin "baserom.z64", 0xBB5AB8, 0x4

glabel D_8013E91C
    .incbin "baserom.z64", 0xBB5ABC, 0x4

glabel D_8013E920
    .incbin "baserom.z64", 0xBB5AC0, 0x4

glabel D_8013E924
    .incbin "baserom.z64", 0xBB5AC4, 0x4

glabel D_8013E928
    .incbin "baserom.z64", 0xBB5AC8, 0x4

glabel D_8013E92C
    .incbin "baserom.z64", 0xBB5ACC, 0x4

glabel D_8013E930
    .incbin "baserom.z64", 0xBB5AD0, 0x4

glabel D_8013E934
    .incbin "baserom.z64", 0xBB5AD4, 0x4

glabel D_8013E938
    .incbin "baserom.z64", 0xBB5AD8, 0x4

glabel D_8013E93C
    .incbin "baserom.z64", 0xBB5ADC, 0x4

glabel D_8013E940
    .incbin "baserom.z64", 0xBB5AE0, 0x4

glabel D_8013E944
    .incbin "baserom.z64", 0xBB5AE4, 0x4

glabel D_8013E948
    .incbin "baserom.z64", 0xBB5AE8, 0x4

glabel D_8013E94C
    .incbin "baserom.z64", 0xBB5AEC, 0x4

glabel D_8013E950
    .incbin "baserom.z64", 0xBB5AF0, 0x4

glabel D_8013E954
    .incbin "baserom.z64", 0xBB5AF4, 0x4

glabel D_8013E958
    .incbin "baserom.z64", 0xBB5AF8, 0x4

glabel D_8013E95C
    .incbin "baserom.z64", 0xBB5AFC, 0x4
