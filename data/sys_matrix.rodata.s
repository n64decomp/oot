.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80146570
    .incbin "baserom.z64", 0xBBD710, 0x10

glabel D_80146580
    .incbin "baserom.z64", 0xBBD720, 0x1C

glabel D_8014659C
    .incbin "baserom.z64", 0xBBD73C, 0x10

glabel D_801465AC
    .incbin "baserom.z64", 0xBBD74C, 0x90

glabel D_8014663C
    .incbin "baserom.z64", 0xBBD7DC, 0x4

glabel D_80146640
    .incbin "baserom.z64", 0xBBD7E0, 0x4

glabel D_80146644
    .incbin "baserom.z64", 0xBBD7E4, 0x4

glabel D_80146648
    .incbin "baserom.z64", 0xBBD7E8, 0x4

glabel D_8014664C
    .incbin "baserom.z64", 0xBBD7EC, 0x4

glabel D_80146650
    .incbin "baserom.z64", 0xBBD7F0, 0x4

glabel D_80146654
    .incbin "baserom.z64", 0xBBD7F4, 0x4

glabel D_80146658
    .incbin "baserom.z64", 0xBBD7F8, 0x4

glabel D_8014665C
    .incbin "baserom.z64", 0xBBD7FC, 0x4

glabel D_80146660
    .incbin "baserom.z64", 0xBBD800, 0x4

glabel D_80146664
    .incbin "baserom.z64", 0xBBD804, 0xC
