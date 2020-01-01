.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80125870
    .incbin "baserom.z64", 0xB9CA10, 0xB0

glabel D_80125920
    .incbin "baserom.z64", 0xB9CAC0, 0x4C

glabel D_8012596C
    .incbin "baserom.z64", 0xB9CB0C, 0x4

glabel D_80125970
    .incbin "baserom.z64", 0xB9CB10, 0x4

glabel D_80125974
    .incbin "baserom.z64", 0xB9CB14, 0x20

glabel D_80125994
    .incbin "baserom.z64", 0xB9CB34, 0x70

glabel D_80125A04
    .incbin "baserom.z64", 0xB9CBA4, 0x4

glabel D_80125A08
    .incbin "baserom.z64", 0xB9CBA8, 0x8

glabel D_80125A10
    .incbin "baserom.z64", 0xB9CBB0, 0x4

glabel D_80125A14
    .incbin "baserom.z64", 0xB9CBB4, 0x4

glabel D_80125A18
    .incbin "baserom.z64", 0xB9CBB8, 0x8

glabel D_80125A20
    .incbin "baserom.z64", 0xB9CBC0, 0x8

glabel D_80125A28
    .incbin "baserom.z64", 0xB9CBC8, 0x4

glabel D_80125A2C
    .incbin "baserom.z64", 0xB9CBCC, 0x4

glabel D_80125A30
    .incbin "baserom.z64", 0xB9CBD0, 0x28

glabel D_80125A58
    .incbin "baserom.z64", 0xB9CBF8, 0x4

glabel D_80125A5C
    .incbin "baserom.z64", 0xB9CBFC, 0x4

glabel D_80125A60
    .incbin "baserom.z64", 0xB9CC00, 0x48

glabel D_80125AA8
    .incbin "baserom.z64", 0xB9CC48, 0x8

glabel D_80125AB0
    .incbin "baserom.z64", 0xB9CC50, 0x18

glabel D_80125AC8
    .incbin "baserom.z64", 0xB9CC68, 0x8

glabel D_80125AD0
    .incbin "baserom.z64", 0xB9CC70, 0x4

glabel D_80125AD4
    .incbin "baserom.z64", 0xB9CC74, 0x4

glabel D_80125AD8
    .incbin "baserom.z64", 0xB9CC78, 0xC

glabel D_80125AE4
    .incbin "baserom.z64", 0xB9CC84, 0x8

glabel D_80125AEC
    .incbin "baserom.z64", 0xB9CC8C, 0x8

glabel D_80125AF4
    .incbin "baserom.z64", 0xB9CC94, 0x8

glabel D_80125AFC
    .incbin "baserom.z64", 0xB9CC9C, 0x8

glabel D_80125B04
    .incbin "baserom.z64", 0xB9CCA4, 0xC

glabel D_80125B10
    .incbin "baserom.z64", 0xB9CCB0, 0x2C

glabel D_80125B3C
    .incbin "baserom.z64", 0xB9CCDC, 0x8

glabel D_80125B44
    .incbin "baserom.z64", 0xB9CCE4, 0x8

glabel D_80125B4C
    .incbin "baserom.z64", 0xB9CCEC, 0x14

glabel D_80125B60
    .incbin "baserom.z64", 0xB9CD00, 0x4

glabel D_80125B64
    .incbin "baserom.z64", 0xB9CD04, 0xC
