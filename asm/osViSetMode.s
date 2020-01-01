.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel osViSetMode
/* 005BE0 80004FE0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 005BE4 80004FE4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 005BE8 80004FE8 0C001CA0 */  jal   __osDisableInt
/* 005BEC 80004FEC AFA40018 */   sw    $a0, 0x18($sp)
/* 005BF0 80004FF0 3C058001 */  lui   $a1, %hi(D_8000AF04) # $a1, 0x8001
/* 005BF4 80004FF4 24A5AF04 */  addiu $a1, %lo(D_8000AF04) # addiu $a1, $a1, -0x50fc
/* 005BF8 80004FF8 8CAF0000 */  lw    $t7, ($a1)
/* 005BFC 80004FFC 8FAE0018 */  lw    $t6, 0x18($sp)
/* 005C00 80005000 24180001 */  li    $t8, 1
/* 005C04 80005004 00402025 */  move  $a0, $v0
/* 005C08 80005008 ADEE0008 */  sw    $t6, 8($t7)
/* 005C0C 8000500C 8CB90000 */  lw    $t9, ($a1)
/* 005C10 80005010 A7380000 */  sh    $t8, ($t9)
/* 005C14 80005014 8CA30000 */  lw    $v1, ($a1)
/* 005C18 80005018 8C680008 */  lw    $t0, 8($v1)
/* 005C1C 8000501C 8D090004 */  lw    $t1, 4($t0)
/* 005C20 80005020 0C001CBC */  jal   func_800072F0
/* 005C24 80005024 AC69000C */   sw    $t1, 0xc($v1)
/* 005C28 80005028 8FBF0014 */  lw    $ra, 0x14($sp)
/* 005C2C 8000502C 27BD0018 */  addiu $sp, $sp, 0x18
/* 005C30 80005030 03E00008 */  jr    $ra
/* 005C34 80005034 00000000 */   nop   
