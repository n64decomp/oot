.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_800120F0
    .incbin "baserom.z64", 0x12CF0, 0x20

glabel jtbl_80012110
    .word L80003EB0
    .word L80003E78
    .word L80003E58
    .word L80003C94
    .word L80003C50
    .word L80003DFC
    .word L80003C18
    .word L80003C24
    .word L80003C30
