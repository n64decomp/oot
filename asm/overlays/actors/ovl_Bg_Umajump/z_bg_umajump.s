.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

/* 000000 808BDBE0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 000004 808BDBE4 AFA50034 */  sw    $a1, 0x34($sp)
/* 000008 808BDBE8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00000C 808BDBEC AFB00018 */  sw    $s0, 0x18($sp)
/* 000010 808BDBF0 3C05808C */  lui   $a1, %hi(D_808BDD20) # $a1, 0x808c
/* 000014 808BDBF4 00808025 */  move  $s0, $a0
/* 000018 808BDBF8 AFA00024 */  sw    $zero, 0x24($sp)
/* 00001C 808BDBFC 0C01E037 */  jal   Actor_ProcessInitChain
/* 000020 808BDC00 24A5DD20 */   addiu $a1, %lo(D_808BDD20) # addiu $a1, $a1, -0x22e0
/* 000024 808BDC04 02002025 */  move  $a0, $s0
/* 000028 808BDC08 0C010D20 */  jal   DynaPolyInfo_SetActorMove
/* 00002C 808BDC0C 00002825 */   move  $a1, $zero
/* 000030 808BDC10 3C040600 */  lui   $a0, %hi(D_06001438) # $a0, 0x600
/* 000034 808BDC14 24841438 */  addiu $a0, %lo(D_06001438) # addiu $a0, $a0, 0x1438
/* 000038 808BDC18 0C010620 */  jal   DynaPolyInfo_Alloc
/* 00003C 808BDC1C 27A50024 */   addiu $a1, $sp, 0x24
/* 000040 808BDC20 8FA40034 */  lw    $a0, 0x34($sp)
/* 000044 808BDC24 02003025 */  move  $a2, $s0
/* 000048 808BDC28 8FA70024 */  lw    $a3, 0x24($sp)
/* 00004C 808BDC2C 0C00FA9D */  jal   DynaPolyInfo_RegisterActor
/* 000050 808BDC30 24850810 */   addiu $a1, $a0, 0x810
/* 000054 808BDC34 860E001C */  lh    $t6, 0x1c($s0)
/* 000058 808BDC38 24010001 */  li    $at, 1
/* 00005C 808BDC3C AE02014C */  sw    $v0, 0x14c($s0)
/* 000060 808BDC40 55C10011 */  bnel  $t6, $at, .L808BDC88
/* 000064 808BDC44 8FBF001C */   lw    $ra, 0x1c($sp)
/* 000068 808BDC48 0C00D6D3 */  jal   Flags_GetEventChkInf
/* 00006C 808BDC4C 24040018 */   li    $a0, 24
/* 000070 808BDC50 14400009 */  bnez  $v0, .L808BDC78
/* 000074 808BDC54 3C0F8016 */   lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* 000078 808BDC58 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* 00007C 808BDC5C 85F80556 */  lh    $t8, 0x556($t7)
/* 000080 808BDC60 57000006 */  bnezl $t8, .L808BDC7C
/* 000084 808BDC64 8E190004 */   lw    $t9, 4($s0)
/* 000088 808BDC68 0C00B55C */  jal   Actor_Kill
/* 00008C 808BDC6C 02002025 */   move  $a0, $s0
/* 000090 808BDC70 10000005 */  b     .L808BDC88
/* 000094 808BDC74 8FBF001C */   lw    $ra, 0x1c($sp)
.L808BDC78:
/* 000098 808BDC78 8E190004 */  lw    $t9, 4($s0)
.L808BDC7C:
/* 00009C 808BDC7C 37280030 */  ori   $t0, $t9, 0x30
/* 0000A0 808BDC80 AE080004 */  sw    $t0, 4($s0)
/* 0000A4 808BDC84 8FBF001C */  lw    $ra, 0x1c($sp)
.L808BDC88:
/* 0000A8 808BDC88 8FB00018 */  lw    $s0, 0x18($sp)
/* 0000AC 808BDC8C 27BD0030 */  addiu $sp, $sp, 0x30
/* 0000B0 808BDC90 03E00008 */  jr    $ra
/* 0000B4 808BDC94 00000000 */   nop   

/* 0000B8 808BDC98 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0000BC 808BDC9C AFA40018 */  sw    $a0, 0x18($sp)
/* 0000C0 808BDCA0 8FAE0018 */  lw    $t6, 0x18($sp)
/* 0000C4 808BDCA4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0000C8 808BDCA8 00A02025 */  move  $a0, $a1
/* 0000CC 808BDCAC 24A50810 */  addiu $a1, $a1, 0x810
/* 0000D0 808BDCB0 0C00FB56 */  jal   DynaPolyInfo_Free
/* 0000D4 808BDCB4 8DC6014C */   lw    $a2, 0x14c($t6)
/* 0000D8 808BDCB8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0000DC 808BDCBC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0000E0 808BDCC0 03E00008 */  jr    $ra
/* 0000E4 808BDCC4 00000000 */   nop   

/* 0000E8 808BDCC8 AFA40000 */  sw    $a0, ($sp)
/* 0000EC 808BDCCC 03E00008 */  jr    $ra
/* 0000F0 808BDCD0 AFA50004 */   sw    $a1, 4($sp)

/* 0000F4 808BDCD4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0000F8 808BDCD8 AFA40018 */  sw    $a0, 0x18($sp)
/* 0000FC 808BDCDC 00A02025 */  move  $a0, $a1
/* 000100 808BDCE0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 000104 808BDCE4 3C050600 */  lui   $a1, %hi(D_06001220) # $a1, 0x600
/* 000108 808BDCE8 0C00D498 */  jal   Draw_DListOpa
/* 00010C 808BDCEC 24A51220 */   addiu $a1, %lo(D_06001220) # addiu $a1, $a1, 0x1220
/* 000110 808BDCF0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000114 808BDCF4 27BD0018 */  addiu $sp, $sp, 0x18
/* 000118 808BDCF8 03E00008 */  jr    $ra
/* 00011C 808BDCFC 00000000 */   nop   

.section .data

# Actor Init
D_808BDD00:
.incbin "baserom/ovl_Bg_Umajump", 0x120, 0x20

D_808BDD20:
.incbin "baserom/ovl_Bg_Umajump", 0x140, 0x40
