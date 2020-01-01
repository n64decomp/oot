.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_801356C0
    .incbin "baserom.z64", 0xBAC860, 0x38

glabel D_801356F8
    .incbin "baserom.z64", 0xBAC898, 0x24

glabel D_8013571C
    .incbin "baserom.z64", 0xBAC8BC, 0x14

glabel D_80135730
    .incbin "baserom.z64", 0xBAC8D0, 0x20
