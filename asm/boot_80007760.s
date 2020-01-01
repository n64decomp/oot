.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4
 
glabel func_80007760
/* 008360 80007760 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 008364 80007764 AFBF0014 */  sw    $ra, 0x14($sp)
/* 008368 80007768 AFA40020 */  sw    $a0, 0x20($sp)
/* 00836C 8000776C AFA50024 */  sw    $a1, 0x24($sp)
/* 008370 80007770 0C000BFC */  jal   func_80002FF0
/* 008374 80007774 AFA60028 */   sw    $a2, 0x28($sp)
/* 008378 80007778 8FA40020 */  lw    $a0, 0x20($sp)
/* 00837C 8000777C 8FA50024 */  lw    $a1, 0x24($sp)
/* 008380 80007780 0C00194C */  jal   func_80006530
/* 008384 80007784 8FA60028 */   lw    $a2, 0x28($sp)
/* 008388 80007788 0C000C0D */  jal   func_80003034
/* 00838C 8000778C AFA2001C */   sw    $v0, 0x1c($sp)
/* 008390 80007790 8FBF0014 */  lw    $ra, 0x14($sp)
/* 008394 80007794 8FA2001C */  lw    $v0, 0x1c($sp)
/* 008398 80007798 27BD0020 */  addiu $sp, $sp, 0x20
/* 00839C 8000779C 03E00008 */  jr    $ra
/* 0083A0 800077A0 00000000 */   nop   
