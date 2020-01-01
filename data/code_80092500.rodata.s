.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8013E9E0
    .incbin "baserom.z64", 0xBB5B80, 0x40

glabel D_8013EA20
    .incbin "baserom.z64", 0xBB5BC0, 0x38

glabel jtbl_8013EA58
    .incbin "baserom.z64", 0xBB5BF8, 0x80

glabel D_8013EAD8
    .incbin "baserom.z64", 0xBB5C78, 0x8
