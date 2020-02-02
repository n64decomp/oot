.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808BF2E0
 .word 0x00510600, 0x00000000, 0x00360000, 0x00000244
.word func_808BED40
.word func_808BEFA0
.word func_808BF268
.word func_808BF28C
glabel D_808BF300
 .word 0x00000000, 0x20000000, 0x00040000, 0x00000004, 0x00000000, 0x11010000, 0x435C0000, 0xC1200000, 0x00000000, 0x435C0000, 0x41200000, 0x00000000, 0xC35C0000, 0x41200000, 0x00000000
glabel D_808BF33C
 .word 0x00000000, 0x20000000, 0x00040000, 0x00000004, 0x00000000, 0x11010000, 0x41800000, 0x00000000, 0x00000000, 0x41800000, 0x43070000, 0x00000000, 0xC1800000, 0x43070000, 0x00000000
glabel D_808BF378
 .word 0x0A110900, 0x20020000, 0x00000002
.word D_808BF300
glabel D_808BF388
 .word 0x48500064, 0x00000000

