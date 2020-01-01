.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80133BC0
    .incbin "baserom.z64", 0xBAAD60, 0x10

glabel D_80133BD0
    .incbin "baserom.z64", 0xBAAD70, 0x80

glabel D_80133C50
    .incbin "baserom.z64", 0xBAADF0, 0x20

glabel D_80133C70
    .incbin "baserom.z64", 0xBAAE10, 0x8

glabel D_80133C78
    .incbin "baserom.z64", 0xBAAE18, 0x808
