.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8013C190
    .incbin "baserom.z64", 0xBB3330, 0x10

glabel D_8013C1A0
    .incbin "baserom.z64", 0xBB3340, 0x10

glabel D_8013C1B0
    .incbin "baserom.z64", 0xBB3350, 0x10

glabel D_8013C1C0
    .incbin "baserom.z64", 0xBB3360, 0x24

glabel D_8013C1E4
    .incbin "baserom.z64", 0xBB3384, 0x34

glabel D_8013C218
    .incbin "baserom.z64", 0xBB33B8, 0x14

glabel D_8013C22C
    .incbin "baserom.z64", 0xBB33CC, 0x14
