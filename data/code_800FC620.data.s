.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80134480
    .incbin "baserom.z64", 0xBAB620, 0x4

glabel D_80134484
    .incbin "baserom.z64", 0xBAB624, 0x1C
