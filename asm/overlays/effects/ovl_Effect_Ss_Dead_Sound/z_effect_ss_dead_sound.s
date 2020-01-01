.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

func_809A1B30:
/* 000000 809A1B30 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 000004 809A1B34 AFBF0014 */  sw    $ra, 0x14($sp)
/* 000008 809A1B38 AFA40018 */  sw    $a0, 0x18($sp)
/* 00000C 809A1B3C AFA5001C */  sw    $a1, 0x1c($sp)
/* 000010 809A1B40 8CEF0000 */  lw    $t7, ($a3)
/* 000014 809A1B44 240A0002 */  li    $t2, 2
/* 000018 809A1B48 3C0C809A */  lui   $t4, %hi(func_809A1BD8) # $t4, 0x809a
/* 00001C 809A1B4C ACCF0000 */  sw    $t7, ($a2)
/* 000020 809A1B50 8CEE0004 */  lw    $t6, 4($a3)
/* 000024 809A1B54 258C1BD8 */  addiu $t4, %lo(func_809A1BD8) # addiu $t4, $t4, 0x1bd8
/* 000028 809A1B58 3C04809A */  lui   $a0, %hi(D_809A1C60) # $a0, 0x809a
/* 00002C 809A1B5C ACCE0004 */  sw    $t6, 4($a2)
/* 000030 809A1B60 8CEF0008 */  lw    $t7, 8($a3)
/* 000034 809A1B64 24841C60 */  addiu $a0, %lo(D_809A1C60) # addiu $a0, $a0, 0x1c60
/* 000038 809A1B68 ACCF0008 */  sw    $t7, 8($a2)
/* 00003C 809A1B6C 8CF9000C */  lw    $t9, 0xc($a3)
/* 000040 809A1B70 ACD9000C */  sw    $t9, 0xc($a2)
/* 000044 809A1B74 8CF80010 */  lw    $t8, 0x10($a3)
/* 000048 809A1B78 ACD80010 */  sw    $t8, 0x10($a2)
/* 00004C 809A1B7C 8CF90014 */  lw    $t9, 0x14($a3)
/* 000050 809A1B80 ACD90014 */  sw    $t9, 0x14($a2)
/* 000054 809A1B84 8CE90018 */  lw    $t1, 0x18($a3)
/* 000058 809A1B88 ACC90018 */  sw    $t1, 0x18($a2)
/* 00005C 809A1B8C 8CE8001C */  lw    $t0, 0x1c($a3)
/* 000060 809A1B90 ACC8001C */  sw    $t0, 0x1c($a2)
/* 000064 809A1B94 8CE90020 */  lw    $t1, 0x20($a3)
/* 000068 809A1B98 A4CA005A */  sh    $t2, 0x5a($a2)
/* 00006C 809A1B9C ACC90020 */  sw    $t1, 0x20($a2)
/* 000070 809A1BA0 8CEB002C */  lw    $t3, 0x2c($a3)
/* 000074 809A1BA4 ACC00028 */  sw    $zero, 0x28($a2)
/* 000078 809A1BA8 ACCC0024 */  sw    $t4, 0x24($a2)
/* 00007C 809A1BAC A4CB005C */  sh    $t3, 0x5c($a2)
/* 000080 809A1BB0 84ED0028 */  lh    $t5, 0x28($a3)
/* 000084 809A1BB4 A4CD0056 */  sh    $t5, 0x56($a2)
/* 000088 809A1BB8 94EE0024 */  lhu   $t6, 0x24($a3)
/* 00008C 809A1BBC 0C00084C */  jal   osSyncPrintf
/* 000090 809A1BC0 A4CE0054 */   sh    $t6, 0x54($a2)
/* 000094 809A1BC4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000098 809A1BC8 27BD0018 */  addiu $sp, $sp, 0x18
/* 00009C 809A1BCC 24020001 */  li    $v0, 1
/* 0000A0 809A1BD0 03E00008 */  jr    $ra
/* 0000A4 809A1BD4 00000000 */   nop   

func_809A1BD8:
/* 0000A8 809A1BD8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0000AC 809A1BDC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0000B0 809A1BE0 AFA40020 */  sw    $a0, 0x20($sp)
/* 0000B4 809A1BE4 AFA50024 */  sw    $a1, 0x24($sp)
/* 0000B8 809A1BE8 84C30056 */  lh    $v1, 0x56($a2)
/* 0000BC 809A1BEC 24010001 */  li    $at, 1
/* 0000C0 809A1BF0 00C02825 */  move  $a1, $a2
/* 0000C4 809A1BF4 10610006 */  beq   $v1, $at, .L809A1C10
/* 0000C8 809A1BF8 00601025 */   move  $v0, $v1
/* 0000CC 809A1BFC 24010002 */  li    $at, 2
/* 0000D0 809A1C00 10410005 */  beq   $v0, $at, .L809A1C18
/* 0000D4 809A1C04 00000000 */   nop   
/* 0000D8 809A1C08 1000000D */  b     .L809A1C40
/* 0000DC 809A1C0C 8FBF001C */   lw    $ra, 0x1c($sp)
.L809A1C10:
/* 0000E0 809A1C10 246EFFFF */  addiu $t6, $v1, -1
/* 0000E4 809A1C14 A4AE0056 */  sh    $t6, 0x56($a1)
.L809A1C18:
/* 0000E8 809A1C18 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* 0000EC 809A1C1C 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* 0000F0 809A1C20 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* 0000F4 809A1C24 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* 0000F8 809A1C28 94A40054 */  lhu   $a0, 0x54($a1)
/* 0000FC 809A1C2C AFAF0014 */  sw    $t7, 0x14($sp)
/* 000100 809A1C30 AFA70010 */  sw    $a3, 0x10($sp)
/* 000104 809A1C34 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* 000108 809A1C38 24060004 */   li    $a2, 4
/* 00010C 809A1C3C 8FBF001C */  lw    $ra, 0x1c($sp)
.L809A1C40:
/* 000110 809A1C40 27BD0020 */  addiu $sp, $sp, 0x20
/* 000114 809A1C44 03E00008 */  jr    $ra
/* 000118 809A1C48 00000000 */   nop   

.section .data

D_809A1C50:
.incbin "baserom/ovl_Effect_Ss_Dead_Sound", 0x120, 0x10
D_809A1C60:
.incbin "baserom/ovl_Effect_Ss_Dead_Sound", 0x130, 0x50
