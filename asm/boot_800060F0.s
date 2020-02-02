.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800060F0
/* 006CF0 800060F0 908E0000 */  lbu   $t6, ($a0)
/* 006CF4 800060F4 00801825 */  move  $v1, $a0
/* 006CF8 800060F8 11C00005 */  beqz  $t6, .L80006110
/* 006CFC 800060FC 00000000 */   nop   
/* 006D00 80006100 906F0001 */  lbu   $t7, 1($v1)
.L80006104:
/* 006D04 80006104 24630001 */  addiu $v1, $v1, 1
/* 006D08 80006108 55E0FFFE */  bnezl $t7, .L80006104
/* 006D0C 8000610C 906F0001 */   lbu   $t7, 1($v1)
.L80006110:
/* 006D10 80006110 03E00008 */  jr    $ra
/* 006D14 80006114 00641023 */   subu  $v0, $v1, $a0

glabel memcpy
/* 006D18 80006118 00801025 */  move  $v0, $a0
/* 006D1C 8000611C 10C00007 */  beqz  $a2, .L8000613C
/* 006D20 80006120 00A01825 */   move  $v1, $a1
.L80006124:
/* 006D24 80006124 906E0000 */  lbu   $t6, ($v1)
/* 006D28 80006128 24C6FFFF */  addiu $a2, $a2, -1
/* 006D2C 8000612C 24420001 */  addiu $v0, $v0, 1
/* 006D30 80006130 24630001 */  addiu $v1, $v1, 1
/* 006D34 80006134 14C0FFFB */  bnez  $a2, .L80006124
/* 006D38 80006138 A04EFFFF */   sb    $t6, -1($v0)
.L8000613C:
/* 006D3C 8000613C 03E00008 */  jr    $ra
/* 006D40 80006140 00801025 */   move  $v0, $a0
