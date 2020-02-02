.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80AB0300
 .word 0x013E0400, 0x00000009, 0x01270000, 0x00000250
.word func_80AAFD98
.word func_80AAFEBC
.word func_80AB0198
.word func_80AB02AC
glabel D_80AB0320
 .word 0x0A000939, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x00160025, 0x00000000, 0x00000000
glabel D_80AB034C
 .word 0x000A0014, 0x001E0028, 0x0032003C, 0x00460050, 0x005A0064
glabel D_80AB0360
 .word 0x405E405F, 0x40604061, 0x40624063, 0x40644065, 0x40664067
glabel D_80AB0374
 .word 0x801F0002, 0x304C01F4, 0x00000000

