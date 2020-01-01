.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

func_808A95E0:
/* 000000 808A95E0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 000004 808A95E4 AFA50034 */  sw    $a1, 0x34($sp)
/* 000008 808A95E8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00000C 808A95EC AFB00018 */  sw    $s0, 0x18($sp)
/* 000010 808A95F0 3C05808B */  lui   $a1, %hi(D_808A9740) # $a1, 0x808b
/* 000014 808A95F4 00808025 */  move  $s0, $a0
/* 000018 808A95F8 AFA00024 */  sw    $zero, 0x24($sp)
/* 00001C 808A95FC 0C01E037 */  jal   Actor_ProcessInitChain
/* 000020 808A9600 24A59740 */   addiu $a1, %lo(D_808A9740) # addiu $a1, $a1, -0x68c0
/* 000024 808A9604 02002025 */  move  $a0, $s0
/* 000028 808A9608 0C010D20 */  jal   DynaPolyInfo_SetActorMove
/* 00002C 808A960C 00002825 */   move  $a1, $zero
/* 000030 808A9610 860E001C */  lh    $t6, 0x1c($s0)
/* 000034 808A9614 24010001 */  li    $at, 1
/* 000038 808A9618 3C040600 */  lui   $a0, %hi(D_06000908) # $a0, 0x600
/* 00003C 808A961C 15C10007 */  bne   $t6, $at, .L808A963C
/* 000040 808A9620 24840908 */   addiu $a0, %lo(D_06000908) # addiu $a0, $a0, 0x908
/* 000044 808A9624 3C040600 */  lui   $a0, %hi(D_06000AF0) # $a0, 0x600
/* 000048 808A9628 24840AF0 */  addiu $a0, %lo(D_06000AF0) # addiu $a0, $a0, 0xaf0
/* 00004C 808A962C 0C010620 */  jal   DynaPolyInfo_Alloc
/* 000050 808A9630 27A50024 */   addiu $a1, $sp, 0x24
/* 000054 808A9634 10000004 */  b     .L808A9648
/* 000058 808A9638 8FA40034 */   lw    $a0, 0x34($sp)
.L808A963C:
/* 00005C 808A963C 0C010620 */  jal   DynaPolyInfo_Alloc
/* 000060 808A9640 27A50024 */   addiu $a1, $sp, 0x24
/* 000064 808A9644 8FA40034 */  lw    $a0, 0x34($sp)
.L808A9648:
/* 000068 808A9648 02003025 */  move  $a2, $s0
/* 00006C 808A964C 8FA70024 */  lw    $a3, 0x24($sp)
/* 000070 808A9650 0C00FA9D */  jal   DynaPolyInfo_RegisterActor
/* 000074 808A9654 24850810 */   addiu $a1, $a0, 0x810
/* 000078 808A9658 AE02014C */  sw    $v0, 0x14c($s0)
/* 00007C 808A965C 3C0F8016 */  lui   $t7, %hi(gSaveContext+4) # $t7, 0x8016
/* 000080 808A9660 8DEFE664 */  lw    $t7, %lo(gSaveContext+4)($t7)
/* 000084 808A9664 51E00004 */  beql  $t7, $zero, .L808A9678
/* 000088 808A9668 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00008C 808A966C 0C00B55C */  jal   Actor_Kill
/* 000090 808A9670 02002025 */   move  $a0, $s0
/* 000094 808A9674 8FBF001C */  lw    $ra, 0x1c($sp)
.L808A9678:
/* 000098 808A9678 8FB00018 */  lw    $s0, 0x18($sp)
/* 00009C 808A967C 27BD0030 */  addiu $sp, $sp, 0x30
/* 0000A0 808A9680 03E00008 */  jr    $ra
/* 0000A4 808A9684 00000000 */   nop   

func_808A9688:
/* 0000A8 808A9688 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0000AC 808A968C AFA40018 */  sw    $a0, 0x18($sp)
/* 0000B0 808A9690 8FAE0018 */  lw    $t6, 0x18($sp)
/* 0000B4 808A9694 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0000B8 808A9698 00A02025 */  move  $a0, $a1
/* 0000BC 808A969C 24A50810 */  addiu $a1, $a1, 0x810
/* 0000C0 808A96A0 0C00FB56 */  jal   DynaPolyInfo_Free
/* 0000C4 808A96A4 8DC6014C */   lw    $a2, 0x14c($t6)
/* 0000C8 808A96A8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0000CC 808A96AC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0000D0 808A96B0 03E00008 */  jr    $ra
/* 0000D4 808A96B4 00000000 */   nop   

func_808A96B8:
/* 0000D8 808A96B8 AFA40000 */  sw    $a0, ($sp)
/* 0000DC 808A96BC 03E00008 */  jr    $ra
/* 0000E0 808A96C0 AFA50004 */   sw    $a1, 4($sp)

func_808A96C4:
/* 0000E4 808A96C4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0000E8 808A96C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0000EC 808A96CC 848E001C */  lh    $t6, 0x1c($a0)
/* 0000F0 808A96D0 00A03025 */  move  $a2, $a1
/* 0000F4 808A96D4 24010001 */  li    $at, 1
/* 0000F8 808A96D8 15C10007 */  bne   $t6, $at, .L808A96F8
/* 0000FC 808A96DC 00C02025 */   move  $a0, $a2
/* 000100 808A96E0 00A02025 */  move  $a0, $a1
/* 000104 808A96E4 3C050600 */  lui   $a1, %hi(D_06000980) # $a1, 0x600
/* 000108 808A96E8 0C00D498 */  jal   Draw_DListOpa
/* 00010C 808A96EC 24A50980 */   addiu $a1, %lo(D_06000980) # addiu $a1, $a1, 0x980
/* 000110 808A96F0 10000005 */  b     .L808A9708
/* 000114 808A96F4 8FBF0014 */   lw    $ra, 0x14($sp)
.L808A96F8:
/* 000118 808A96F8 3C050600 */  lui   $a1, %hi(D_06000440) # $a1, 0x600
/* 00011C 808A96FC 0C00D498 */  jal   Draw_DListOpa
/* 000120 808A9700 24A50440 */   addiu $a1, %lo(D_06000440) # addiu $a1, $a1, 0x440
/* 000124 808A9704 8FBF0014 */  lw    $ra, 0x14($sp)
.L808A9708:
/* 000128 808A9708 27BD0018 */  addiu $sp, $sp, 0x18
/* 00012C 808A970C 03E00008 */  jr    $ra
/* 000130 808A9710 00000000 */   nop   

.section .data

D_808A9720:
.incbin "baserom/ovl_Bg_Spot00_Break", 0x140, 0x20
D_808A9740:
.incbin "baserom/ovl_Bg_Spot00_Break", 0x160, 0x40
