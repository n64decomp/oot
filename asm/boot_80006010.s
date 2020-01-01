.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4
 
glabel func_80006010
/* 006C10 80006010 3C0E8001 */  lui   $t6, %hi(D_8000AD60) # $t6, 0x8001
/* 006C14 80006014 8DCEAD60 */  lw    $t6, %lo(D_8000AD60)($t6)
/* 006C18 80006018 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 006C1C 8000601C AFBF0014 */  sw    $ra, 0x14($sp)
/* 006C20 80006020 15C00003 */  bnez  $t6, .L80006030
/* 006C24 80006024 00000000 */   nop   
/* 006C28 80006028 1000001C */  b     .L8000609C
/* 006C2C 8000602C 2402FFFF */   li    $v0, -1
.L80006030:
/* 006C30 80006030 14C00004 */  bnez  $a2, .L80006044
/* 006C34 80006034 ACA40014 */   sw    $a0, 0x14($a1)
/* 006C38 80006038 240F000F */  li    $t7, 15
/* 006C3C 8000603C 10000003 */  b     .L8000604C
/* 006C40 80006040 A4AF0000 */   sh    $t7, ($a1)
.L80006044:
/* 006C44 80006044 24180010 */  li    $t8, 16
/* 006C48 80006048 A4B80000 */  sh    $t8, ($a1)
.L8000604C:
/* 006C4C 8000604C 90B90002 */  lbu   $t9, 2($a1)
/* 006C50 80006050 24010001 */  li    $at, 1
/* 006C54 80006054 17210009 */  bne   $t9, $at, .L8000607C
/* 006C58 80006058 00000000 */   nop   
/* 006C5C 8000605C 0C001DCC */  jal   func_80007730
/* 006C60 80006060 AFA5001C */   sw    $a1, 0x1c($sp)
/* 006C64 80006064 8FA5001C */  lw    $a1, 0x1c($sp)
/* 006C68 80006068 00402025 */  move  $a0, $v0
/* 006C6C 8000606C 0C0018B8 */  jal   osJamMesg
/* 006C70 80006070 00003025 */   move  $a2, $zero
/* 006C74 80006074 10000008 */  b     .L80006098
/* 006C78 80006078 00401825 */   move  $v1, $v0
.L8000607C:
/* 006C7C 8000607C 0C001DCC */  jal   func_80007730
/* 006C80 80006080 AFA5001C */   sw    $a1, 0x1c($sp)
/* 006C84 80006084 8FA5001C */  lw    $a1, 0x1c($sp)
/* 006C88 80006088 00402025 */  move  $a0, $v0
/* 006C8C 8000608C 0C000C18 */  jal   osSendMesg
/* 006C90 80006090 00003025 */   move  $a2, $zero
/* 006C94 80006094 00401825 */  move  $v1, $v0
.L80006098:
/* 006C98 80006098 00601025 */  move  $v0, $v1
.L8000609C:
/* 006C9C 8000609C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 006CA0 800060A0 27BD0018 */  addiu $sp, $sp, 0x18
/* 006CA4 800060A4 03E00008 */  jr    $ra
/* 006CA8 800060A8 00000000 */   nop   
