.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

func_808AFC30:
/* 000000 808AFC30 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 000004 808AFC34 AFBF001C */  sw    $ra, 0x1c($sp)
/* 000008 808AFC38 AFB00018 */  sw    $s0, 0x18($sp)
/* 00000C 808AFC3C AFA50034 */  sw    $a1, 0x34($sp)
/* 000010 808AFC40 00808025 */  move  $s0, $a0
/* 000014 808AFC44 AFA00024 */  sw    $zero, 0x24($sp)
/* 000018 808AFC48 0C010D20 */  jal   DynaPolyInfo_SetActorMove
/* 00001C 808AFC4C 24050001 */   li    $a1, 1
/* 000020 808AFC50 3C05808B */  lui   $a1, %hi(D_808B0200) # $a1, 0x808b
/* 000024 808AFC54 24A50200 */  addiu $a1, %lo(D_808B0200) # addiu $a1, $a1, 0x200
/* 000028 808AFC58 0C01E037 */  jal   Actor_ProcessInitChain
/* 00002C 808AFC5C 02002025 */   move  $a0, $s0
/* 000030 808AFC60 3C0E8016 */  lui   $t6, %hi(gSaveContext+4) # $t6, 0x8016
/* 000034 808AFC64 8DCEE664 */  lw    $t6, %lo(gSaveContext+4)($t6)
/* 000038 808AFC68 15C00013 */  bnez  $t6, .L808AFCB8
/* 00003C 808AFC6C 00000000 */   nop   
/* 000040 808AFC70 860F001C */  lh    $t7, 0x1c($s0)
/* 000044 808AFC74 3C040600 */  lui   $a0, %hi(D_060038FC) # $a0, 0x600
/* 000048 808AFC78 27A50024 */  addiu $a1, $sp, 0x24
/* 00004C 808AFC7C 15E00006 */  bnez  $t7, .L808AFC98
/* 000050 808AFC80 248438FC */   addiu $a0, %lo(D_060038FC) # addiu $a0, $a0, 0x38fc
/* 000054 808AFC84 3C040600 */  lui   $a0, %hi(D_06002590) # $a0, 0x600
/* 000058 808AFC88 0C010620 */  jal   DynaPolyInfo_Alloc
/* 00005C 808AFC8C 24842590 */   addiu $a0, %lo(D_06002590) # addiu $a0, $a0, 0x2590
/* 000060 808AFC90 10000004 */  b     .L808AFCA4
/* 000064 808AFC94 8FA40034 */   lw    $a0, 0x34($sp)
.L808AFC98:
/* 000068 808AFC98 0C010620 */  jal   DynaPolyInfo_Alloc
/* 00006C 808AFC9C 27A50024 */   addiu $a1, $sp, 0x24
/* 000070 808AFCA0 8FA40034 */  lw    $a0, 0x34($sp)
.L808AFCA4:
/* 000074 808AFCA4 02003025 */  move  $a2, $s0
/* 000078 808AFCA8 8FA70024 */  lw    $a3, 0x24($sp)
/* 00007C 808AFCAC 0C00FA9D */  jal   DynaPolyInfo_RegisterActor
/* 000080 808AFCB0 24850810 */   addiu $a1, $a0, 0x810
/* 000084 808AFCB4 AE02014C */  sw    $v0, 0x14c($s0)
.L808AFCB8:
/* 000088 808AFCB8 3C18808B */  lui   $t8, %hi(func_808AFD08) # $t8, 0x808b
/* 00008C 808AFCBC 2718FD08 */  addiu $t8, %lo(func_808AFD08) # addiu $t8, $t8, -0x2f8
/* 000090 808AFCC0 AE180164 */  sw    $t8, 0x164($s0)
/* 000094 808AFCC4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 000098 808AFCC8 8FB00018 */  lw    $s0, 0x18($sp)
/* 00009C 808AFCCC 27BD0030 */  addiu $sp, $sp, 0x30
/* 0000A0 808AFCD0 03E00008 */  jr    $ra
/* 0000A4 808AFCD4 00000000 */   nop   

func_808AFCD8:
/* 0000A8 808AFCD8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0000AC 808AFCDC AFA40018 */  sw    $a0, 0x18($sp)
/* 0000B0 808AFCE0 8FAE0018 */  lw    $t6, 0x18($sp)
/* 0000B4 808AFCE4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0000B8 808AFCE8 00A02025 */  move  $a0, $a1
/* 0000BC 808AFCEC 24A50810 */  addiu $a1, $a1, 0x810
/* 0000C0 808AFCF0 0C00FB56 */  jal   DynaPolyInfo_Free
/* 0000C4 808AFCF4 8DC6014C */   lw    $a2, 0x14c($t6)
/* 0000C8 808AFCF8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0000CC 808AFCFC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0000D0 808AFD00 03E00008 */  jr    $ra
/* 0000D4 808AFD04 00000000 */   nop   

func_808AFD08:
.incbin "baserom/ovl_Bg_Spot07_Taki", 0xD8, 0xC

func_808AFD14:
.incbin "baserom/ovl_Bg_Spot07_Taki", 0xE4, 0x24

func_808AFD38:
.incbin "baserom/ovl_Bg_Spot07_Taki", 0x108, 0x4A8

.section .data

D_808B01E0:
.incbin "baserom/ovl_Bg_Spot07_Taki", 0x5B0, 0x20
D_808B0200:
.incbin "baserom/ovl_Bg_Spot07_Taki", 0x5D0, 0x10
D_808B0210:
.incbin "baserom/ovl_Bg_Spot07_Taki", 0x5E0, 0x18
D_808B0228:
.incbin "baserom/ovl_Bg_Spot07_Taki", 0x5F8, 0x18
D_808B0240:
.incbin "baserom/ovl_Bg_Spot07_Taki", 0x610, 0x18
D_808B0258:
.incbin "baserom/ovl_Bg_Spot07_Taki", 0x628, 0x78
