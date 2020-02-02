.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80B988D0
 .word 0x017D0600, 0x00000020, 0x00030000, 0x0000014C
.word func_80B98510
.word 0x80035118, 0x80035118
.word func_80B986CC
glabel D_80B988F0
 .word 0x44250000, 0x43E60000, 0x44250000, 0x44250000, 0x43E48000, 0x44070000, 0x44430000, 0x43E30000, 0x44070000, 0x000003FF, 0x02000000, 0xC4174000, 0xC44D0000, 0xC3910000, 0xC3B68000, 0xC4624000, 0xC3910000, 0xC3B68000, 0xC4624000, 0xC3910000, 0x000300FF, 0x00000000
glabel D_80B98948
 .word 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000001
glabel D_80B98960
 .word 0x8002CBB4, 0x8002CB74, 0x00000000, 0x00000000

