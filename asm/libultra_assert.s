.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel __assert
/* 002BF0 80001FF0 27BDFED8 */  addiu $sp, $sp, -0x128
/* 002BF4 80001FF4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 002BF8 80001FF8 AFA40128 */  sw    $a0, 0x128($sp)
/* 002BFC 80001FFC AFA5012C */  sw    $a1, 0x12c($sp)
/* 002C00 80002000 AFA60130 */  sw    $a2, 0x130($sp)
/* 002C04 80002004 0C0013C8 */  jal   osGetThreadId
/* 002C08 80002008 00002025 */   move  $a0, $zero
/* 002C0C 8000200C 3C048001 */  lui   $a0, %hi(D_80011DB0) # $a0, 0x8001
/* 002C10 80002010 24841DB0 */  addiu $a0, %lo(D_80011DB0) # addiu $a0, $a0, 0x1db0
/* 002C14 80002014 8FA50128 */  lw    $a1, 0x128($sp)
/* 002C18 80002018 8FA6012C */  lw    $a2, 0x12c($sp)
/* 002C1C 8000201C 8FA70130 */  lw    $a3, 0x130($sp)
/* 002C20 80002020 0C00084C */  jal   osSyncPrintf
/* 002C24 80002024 AFA20010 */   sw    $v0, 0x10($sp)
/* 002C28 80002028 0C0013C8 */  jal   osGetThreadId
/* 002C2C 8000202C 00002025 */   move  $a0, $zero
/* 002C30 80002030 3C058001 */  lui   $a1, %hi(D_80011DE4) # $a1, 0x8001
/* 002C34 80002034 24A51DE4 */  addiu $a1, %lo(D_80011DE4) # addiu $a1, $a1, 0x1de4
/* 002C38 80002038 27A40028 */  addiu $a0, $sp, 0x28
/* 002C3C 8000203C 8FA6012C */  lw    $a2, 0x12c($sp)
/* 002C40 80002040 8FA70130 */  lw    $a3, 0x130($sp)
/* 002C44 80002044 0C000BD1 */  jal   func_80002F44
/* 002C48 80002048 AFA20010 */   sw    $v0, 0x10($sp)
/* 002C4C 8000204C 27A40028 */  addiu $a0, $sp, 0x28
/* 002C50 80002050 0C0359AD */  jal   Fault_AddHungupAndCrashImpl
/* 002C54 80002054 8FA50128 */   lw    $a1, 0x128($sp)
/* 002C58 80002058 8FBF001C */  lw    $ra, 0x1c($sp)
/* 002C5C 8000205C 27BD0128 */  addiu $sp, $sp, 0x128
/* 002C60 80002060 03E00008 */  jr    $ra
/* 002C64 80002064 00000000 */   nop   

/* 002C68 80002068 00000000 */  nop   
/* 002C6C 8000206C 00000000 */  nop   
/* 002C70 80002070 00000000 */  nop   
/* 002C74 80002074 00000000 */  nop   
/* 002C78 80002078 00000000 */  nop   
/* 002C7C 8000207C 00000000 */  nop 
