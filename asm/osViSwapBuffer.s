.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel osViSwapBuffer
/* 007290 80006690 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 007294 80006694 AFBF0014 */  sw    $ra, 0x14($sp)
/* 007298 80006698 0C001CA0 */  jal   __osDisableInt
/* 00729C 8000669C AFA40018 */   sw    $a0, 0x18($sp)
/* 0072A0 800066A0 3C058001 */  lui   $a1, %hi(D_8000AF04) # $a1, 0x8001
/* 0072A4 800066A4 24A5AF04 */  addiu $a1, %lo(D_8000AF04) # addiu $a1, $a1, -0x50fc
/* 0072A8 800066A8 8CAF0000 */  lw    $t7, ($a1)
/* 0072AC 800066AC 8FAE0018 */  lw    $t6, 0x18($sp)
/* 0072B0 800066B0 00402025 */  move  $a0, $v0
/* 0072B4 800066B4 ADEE0004 */  sw    $t6, 4($t7)
/* 0072B8 800066B8 8CA30000 */  lw    $v1, ($a1)
/* 0072BC 800066BC 94780000 */  lhu   $t8, ($v1)
/* 0072C0 800066C0 37190010 */  ori   $t9, $t8, 0x10
/* 0072C4 800066C4 0C001CBC */  jal   func_800072F0
/* 0072C8 800066C8 A4790000 */   sh    $t9, ($v1)
/* 0072CC 800066CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0072D0 800066D0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0072D4 800066D4 03E00008 */  jr    $ra
/* 0072D8 800066D8 00000000 */   nop   
