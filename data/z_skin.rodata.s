.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80140680
    .incbin "baserom.z64", 0xBB7820, 0xC

glabel D_8014068C
    .incbin "baserom.z64", 0xBB782C, 0xC

glabel D_80140698
    .incbin "baserom.z64", 0xBB7838, 0xC

glabel D_801406A4
    .incbin "baserom.z64", 0xBB7844, 0xC

glabel D_801406B0
    .incbin "baserom.z64", 0xBB7850, 0xC

glabel D_801406BC
    .incbin "baserom.z64", 0xBB785C, 0xC

glabel D_801406C8
    .incbin "baserom.z64", 0xBB7868, 0xC

glabel D_801406D4
    .incbin "baserom.z64", 0xBB7874, 0xC

glabel D_801406E0
    .incbin "baserom.z64", 0xBB7880, 0x10
