.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4
  
glabel func_80005220
/* 005E20 80005220 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 005E24 80005224 AFBF001C */  sw    $ra, 0x1c($sp)
/* 005E28 80005228 AFA40028 */  sw    $a0, 0x28($sp)
/* 005E2C 8000522C AFA5002C */  sw    $a1, 0x2c($sp)
/* 005E30 80005230 AFA60030 */  sw    $a2, 0x30($sp)
/* 005E34 80005234 0C001CA0 */  jal   __osDisableInt
/* 005E38 80005238 AFB00018 */   sw    $s0, 0x18($sp)
/* 005E3C 8000523C 8FAE0028 */  lw    $t6, 0x28($sp)
/* 005E40 80005240 3C188001 */  lui   $t8, %hi(D_80015A40) # $t8, 0x8001
/* 005E44 80005244 8FA8002C */  lw    $t0, 0x2c($sp)
/* 005E48 80005248 27185A40 */  addiu $t8, %lo(D_80015A40) # addiu $t8, $t8, 0x5a40
/* 005E4C 8000524C 000E78C0 */  sll   $t7, $t6, 3
/* 005E50 80005250 01F8C821 */  addu  $t9, $t7, $t8
/* 005E54 80005254 AFB90020 */  sw    $t9, 0x20($sp)
/* 005E58 80005258 AF280000 */  sw    $t0, ($t9)
/* 005E5C 8000525C 8FAA0020 */  lw    $t2, 0x20($sp)
/* 005E60 80005260 8FA90030 */  lw    $t1, 0x30($sp)
/* 005E64 80005264 2401000E */  li    $at, 14
/* 005E68 80005268 00408025 */  move  $s0, $v0
/* 005E6C 8000526C AD490004 */  sw    $t1, 4($t2)
/* 005E70 80005270 8FAB0028 */  lw    $t3, 0x28($sp)
/* 005E74 80005274 15610010 */  bne   $t3, $at, .L800052B8
/* 005E78 80005278 00000000 */   nop   
/* 005E7C 8000527C 3C0C8001 */  lui   $t4, %hi(D_8000ACFC) # $t4, 0x8001
/* 005E80 80005280 8D8CACFC */  lw    $t4, %lo(D_8000ACFC)($t4)
/* 005E84 80005284 11800009 */  beqz  $t4, .L800052AC
/* 005E88 80005288 00000000 */   nop   
/* 005E8C 8000528C 3C0D8001 */  lui   $t5, %hi(D_8000AD90) # $t5, 0x8001
/* 005E90 80005290 8DADAD90 */  lw    $t5, %lo(D_8000AD90)($t5)
/* 005E94 80005294 15A00005 */  bnez  $t5, .L800052AC
/* 005E98 80005298 00000000 */   nop   
/* 005E9C 8000529C 8FA4002C */  lw    $a0, 0x2c($sp)
/* 005EA0 800052A0 8FA50030 */  lw    $a1, 0x30($sp)
/* 005EA4 800052A4 0C000C18 */  jal   osSendMesg
/* 005EA8 800052A8 00003025 */   move  $a2, $zero
.L800052AC:
/* 005EAC 800052AC 240E0001 */  li    $t6, 1
/* 005EB0 800052B0 3C018001 */  lui   $at, %hi(D_8000AD90) # $at, 0x8001
/* 005EB4 800052B4 AC2EAD90 */  sw    $t6, %lo(D_8000AD90)($at)
.L800052B8:
/* 005EB8 800052B8 0C001CBC */  jal   func_800072F0
/* 005EBC 800052BC 02002025 */   move  $a0, $s0
/* 005EC0 800052C0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 005EC4 800052C4 8FB00018 */  lw    $s0, 0x18($sp)
/* 005EC8 800052C8 27BD0028 */  addiu $sp, $sp, 0x28
/* 005ECC 800052CC 03E00008 */  jr    $ra
/* 005ED0 800052D0 00000000 */   nop   
