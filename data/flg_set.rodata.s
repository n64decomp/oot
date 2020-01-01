.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80135C60
    .incbin "baserom.z64", 0xBACE00, 0x378

glabel D_80135FD8
    .incbin "baserom.z64", 0xBAD178, 0x10

glabel D_80135FE8
    .incbin "baserom.z64", 0xBAD188, 0x4

glabel D_80135FEC
    .incbin "baserom.z64", 0xBAD18C, 0x4

glabel D_80135FF0
    .incbin "baserom.z64", 0xBAD190, 0x4

glabel D_80135FF4
    .incbin "baserom.z64", 0xBAD194, 0x1C
