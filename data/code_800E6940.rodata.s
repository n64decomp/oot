.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_801495C0
    .incbin "baserom.z64", 0xBC0760, 0x4

glabel D_801495C4
    .incbin "baserom.z64", 0xBC0764, 0x4

glabel D_801495C8
    .incbin "baserom.z64", 0xBC0768, 0x4

glabel D_801495CC
    .incbin "baserom.z64", 0xBC076C, 0x4

glabel D_801495D0
    .incbin "baserom.z64", 0xBC0770, 0x4

glabel D_801495D4
    .incbin "baserom.z64", 0xBC0774, 0x4

glabel D_801495D8
    .incbin "baserom.z64", 0xBC0778, 0x4

glabel D_801495DC
    .incbin "baserom.z64", 0xBC077C, 0x4

glabel D_801495E0
    .incbin "baserom.z64", 0xBC0780, 0x4

glabel D_801495E4
    .incbin "baserom.z64", 0xBC0784, 0x4

glabel D_801495E8
    .incbin "baserom.z64", 0xBC0788, 0x4

glabel D_801495EC
    .incbin "baserom.z64", 0xBC078C, 0x4
