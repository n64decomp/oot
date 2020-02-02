.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

func_80803BF0:
/* 000000 80803BF0 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* 000004 80803BF4 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* 000008 80803BF8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00000C 80803BFC 240E0001 */  li    $t6, 1
/* 000010 80803C00 AFBF0014 */  sw    $ra, 0x14($sp)
/* 000014 80803C04 AC4E135C */  sw    $t6, 0x135c($v0)
/* 000018 80803C08 AC800098 */  sw    $zero, 0x98($a0)
/* 00001C 80803C0C AC400004 */  sw    $zero, 4($v0)
/* 000020 80803C10 0C02A0B2 */  jal   func_800A82C8
/* 000024 80803C14 AFA40018 */   sw    $a0, 0x18($sp)
/* 000028 80803C18 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* 00002C 80803C1C 8FA40018 */  lw    $a0, 0x18($sp)
/* 000030 80803C20 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* 000034 80803C24 340FFFF3 */  li    $t7, 65523
/* 000038 80803C28 24180007 */  li    $t8, 7
/* 00003C 80803C2C AC4F0008 */  sw    $t7, 8($v0)
/* 000040 80803C30 AC581360 */  sw    $t8, 0x1360($v0)
/* 000044 80803C34 3C19800C */  lui   $t9, %hi(func_800BCA64) # $t9, 0x800c
/* 000048 80803C38 3C080001 */  lui   $t0, (0x00012518 >> 16) # lui $t0, 1
/* 00004C 80803C3C 35082518 */  ori   $t0, (0x00012518 & 0xFFFF) # ori $t0, $t0, 0x2518
/* 000050 80803C40 2739CA64 */  addiu $t9, %lo(func_800BCA64) # addiu $t9, $t9, -0x359c
/* 000054 80803C44 AC99000C */  sw    $t9, 0xc($a0)
/* 000058 80803C48 AC880010 */  sw    $t0, 0x10($a0)
/* 00005C 80803C4C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000060 80803C50 27BD0018 */  addiu $sp, $sp, 0x18
/* 000064 80803C54 03E00008 */  jr    $ra
/* 000068 80803C58 00000000 */   nop   

func_80803C5C:
/* 00006C 80803C5C 03E00008 */  jr    $ra
/* 000070 80803C60 AFA40000 */   sw    $a0, ($sp)

func_80803C64:
/* 000074 80803C64 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 000078 80803C68 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00007C 80803C6C AFA40018 */  sw    $a0, 0x18($sp)
/* 000080 80803C70 8C840000 */  lw    $a0, ($a0)
/* 000084 80803C74 00002825 */  move  $a1, $zero
/* 000088 80803C78 00003025 */  move  $a2, $zero
/* 00008C 80803C7C 0C025492 */  jal   func_80095248
/* 000090 80803C80 00003825 */   move  $a3, $zero
/* 000094 80803C84 0C200EFC */  jal   func_80803BF0
/* 000098 80803C88 8FA40018 */   lw    $a0, 0x18($sp)
/* 00009C 80803C8C 0C200F17 */  jal   func_80803C5C
/* 0000A0 80803C90 8FA40018 */   lw    $a0, 0x18($sp)
/* 0000A4 80803C94 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0000A8 80803C98 27BD0018 */  addiu $sp, $sp, 0x18
/* 0000AC 80803C9C 03E00008 */  jr    $ra
/* 0000B0 80803CA0 00000000 */   nop   

func_80803CA4:
.incbin "baserom/ovl_opening", 0xB4, 0x8

glabel func_80803CAC
.incbin "baserom/ovl_opening", 0xBC, 0x94
