.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80A1E400
 .word 0x01530400, 0x02000019, 0x01330000, 0x000002B0
.word func_80A1D810
.word func_80A1D924
.word func_80A1DF6C
.word func_80A1E2AC
glabel D_80A1E420
 .word 0x0A001139, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x001E0028, 0x00000000, 0x00000000
glabel D_80A1E44C
 .word 0x442F0000, 0x442F0000, 0x00000000
glabel D_80A1E458
 .word 0x06005F20, 0x06006320
glabel D_80A1E460
 .word 0x06006720, 0x06006920, 0x00000000, 0x00000000

