.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80007730
/* 008330 80007730 3C038001 */  lui   $v1, %hi(D_8000AD60) # $v1, 0x8001
/* 008334 80007734 2463AD60 */  addiu $v1, %lo(D_8000AD60) # addiu $v1, $v1, -0x52a0
/* 008338 80007738 8C6E0000 */  lw    $t6, ($v1)
/* 00833C 8000773C 55C00004 */  bnezl $t6, .L80007750
/* 008340 80007740 8C620008 */   lw    $v0, 8($v1)
/* 008344 80007744 03E00008 */  jr    $ra
/* 008348 80007748 00001025 */   move  $v0, $zero
/* 00834C 8000774C 8C620008 */  lw    $v0, 8($v1)
.L80007750:
/* 008350 80007750 03E00008 */  jr    $ra
/* 008354 80007754 00000000 */   nop   
