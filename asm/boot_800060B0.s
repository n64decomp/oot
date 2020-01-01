.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4
 
glabel func_800060B0
/* 006CB0 800060B0 90830000 */  lbu   $v1, ($a0)
/* 006CB4 800060B4 30AE00FF */  andi  $t6, $a1, 0xff
/* 006CB8 800060B8 30A200FF */  andi  $v0, $a1, 0xff
/* 006CBC 800060BC 51C3000A */  beql  $t6, $v1, .L800060E8
/* 006CC0 800060C0 00801025 */   move  $v0, $a0
.L800060C4:
/* 006CC4 800060C4 54600004 */  bnezl $v1, .L800060D8
/* 006CC8 800060C8 90830001 */   lbu   $v1, 1($a0)
/* 006CCC 800060CC 03E00008 */  jr    $ra
/* 006CD0 800060D0 00001025 */   move  $v0, $zero
/* 006CD4 800060D4 90830001 */  lbu   $v1, 1($a0)
.L800060D8:
/* 006CD8 800060D8 24840001 */  addiu $a0, $a0, 1
/* 006CDC 800060DC 1443FFF9 */  bne   $v0, $v1, .L800060C4
/* 006CE0 800060E0 00000000 */   nop   
/* 006CE4 800060E4 00801025 */  move  $v0, $a0
.L800060E8:
/* 006CE8 800060E8 03E00008 */  jr    $ra
/* 006CEC 800060EC 00000000 */   nop   
