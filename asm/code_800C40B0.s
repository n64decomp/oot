.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800C40B0
/* B3B250 800C40B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3B254 800C40B4 AFA40018 */  sw    $a0, 0x18($sp)
/* B3B258 800C40B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3B25C 800C40BC 3C048014 */  lui   $a0, %hi(D_80144CF0) # $a0, 0x8014
/* B3B260 800C40C0 0C00084C */  jal   osSyncPrintf
/* B3B264 800C40C4 24844CF0 */   addiu $a0, %lo(D_80144CF0) # addiu $a0, $a0, 0x4cf0
/* B3B268 800C40C8 0C018D90 */  jal   SaveContext_Init
/* B3B26C 800C40CC 00000000 */   nop   
/* B3B270 800C40D0 8FA20018 */  lw    $v0, 0x18($sp)
/* B3B274 800C40D4 3C0E8080 */  lui   $t6, %hi(func_80800878) # $t6, 0x8080
/* B3B278 800C40D8 25CE0878 */  addiu $t6, %lo(func_80800878) # addiu $t6, $t6, 0x878
/* B3B27C 800C40DC 240F01E8 */  li    $t7, 488
/* B3B280 800C40E0 AC400098 */  sw    $zero, 0x98($v0)
/* B3B284 800C40E4 AC4F0010 */  sw    $t7, 0x10($v0)
/* B3B288 800C40E8 AC4E000C */  sw    $t6, 0xc($v0)
/* B3B28C 800C40EC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3B290 800C40F0 27BD0018 */  addiu $sp, $sp, 0x18
/* B3B294 800C40F4 03E00008 */  jr    $ra
/* B3B298 800C40F8 00000000 */   nop   

glabel func_800C40FC
/* B3B29C 800C40FC 03E00008 */  jr    $ra
/* B3B2A0 800C4100 AFA40000 */   sw    $a0, ($sp)

glabel func_800C4104
/* B3B2A4 800C4104 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3B2A8 800C4108 3C0E800C */  lui   $t6, %hi(func_800C40FC) # $t6, 0x800c
/* B3B2AC 800C410C AFBF0014 */  sw    $ra, 0x14($sp)
/* B3B2B0 800C4110 25CE40FC */  addiu $t6, %lo(func_800C40FC) # addiu $t6, $t6, 0x40fc
/* B3B2B4 800C4114 0C03102C */  jal   func_800C40B0
/* B3B2B8 800C4118 AC8E0008 */   sw    $t6, 8($a0)
/* B3B2BC 800C411C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3B2C0 800C4120 27BD0018 */  addiu $sp, $sp, 0x18
/* B3B2C4 800C4124 03E00008 */  jr    $ra
/* B3B2C8 800C4128 00000000 */   nop   
