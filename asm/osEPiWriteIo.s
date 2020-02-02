.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel osEPiWriteIo
/* 008690 80007A90 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 008694 80007A94 AFBF0014 */  sw    $ra, 0x14($sp)
/* 008698 80007A98 AFA40020 */  sw    $a0, 0x20($sp)
/* 00869C 80007A9C AFA50024 */  sw    $a1, 0x24($sp)
/* 0086A0 80007AA0 0C000BFC */  jal   func_80002FF0
/* 0086A4 80007AA4 AFA60028 */   sw    $a2, 0x28($sp)
/* 0086A8 80007AA8 8FA40020 */  lw    $a0, 0x20($sp)
/* 0086AC 80007AAC 8FA50024 */  lw    $a1, 0x24($sp)
/* 0086B0 80007AB0 0C001EE8 */  jal   func_80007BA0
/* 0086B4 80007AB4 8FA60028 */   lw    $a2, 0x28($sp)
/* 0086B8 80007AB8 0C000C0D */  jal   func_80003034
/* 0086BC 80007ABC AFA2001C */   sw    $v0, 0x1c($sp)
/* 0086C0 80007AC0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0086C4 80007AC4 8FA2001C */  lw    $v0, 0x1c($sp)
/* 0086C8 80007AC8 27BD0020 */  addiu $sp, $sp, 0x20
/* 0086CC 80007ACC 03E00008 */  jr    $ra
/* 0086D0 80007AD0 00000000 */   nop   
