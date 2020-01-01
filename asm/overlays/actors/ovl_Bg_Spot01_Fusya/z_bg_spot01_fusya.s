.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

func_808AA9C0:
/* 000000 808AA9C0 03E00008 */  jr    $ra
/* 000004 808AA9C4 AC85014C */   sw    $a1, 0x14c($a0)

/* 000008 808AA9C8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00000C 808AA9CC AFA5001C */  sw    $a1, 0x1c($sp)
/* 000010 808AA9D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 000014 808AA9D4 3C05808B */  lui   $a1, %hi(D_808AAC20) # $a1, 0x808b
/* 000018 808AA9D8 24A5AC20 */  addiu $a1, %lo(D_808AAC20) # addiu $a1, $a1, -0x53e0
/* 00001C 808AA9DC 0C01E037 */  jal   Actor_ProcessInitChain
/* 000020 808AA9E0 AFA40018 */   sw    $a0, 0x18($sp)
/* 000024 808AA9E4 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 000028 808AA9E8 44810000 */  mtc1  $at, $f0
/* 00002C 808AA9EC 8FA40018 */  lw    $a0, 0x18($sp)
/* 000030 808AA9F0 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 000034 808AA9F4 44812000 */  mtc1  $at, $f4
/* 000038 808AA9F8 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* 00003C 808AA9FC 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* 000040 808AAA00 E4800154 */  swc1  $f0, 0x154($a0)
/* 000044 808AAA04 E4800158 */  swc1  $f0, 0x158($a0)
/* 000048 808AAA08 E484015C */  swc1  $f4, 0x15c($a0)
/* 00004C 808AAA0C 8C4E1360 */  lw    $t6, 0x1360($v0)
/* 000050 808AAA10 3C05808B */  lui   $a1, %hi(func_808AAA50) # $a1, 0x808b
/* 000054 808AAA14 29C10004 */  slti  $at, $t6, 4
/* 000058 808AAA18 10200004 */  beqz  $at, .L808AAA2C
/* 00005C 808AAA1C 00000000 */   nop   
/* 000060 808AAA20 944F0EE0 */  lhu   $t7, 0xee0($v0)
/* 000064 808AAA24 31F8FFDF */  andi  $t8, $t7, 0xffdf
/* 000068 808AAA28 A4580EE0 */  sh    $t8, 0xee0($v0)
.L808AAA2C:
/* 00006C 808AAA2C 0C22AA70 */  jal   func_808AA9C0
/* 000070 808AAA30 24A5AA50 */   addiu $a1, %lo(func_808AAA50) # addiu $a1, $a1, -0x55b0
/* 000074 808AAA34 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000078 808AAA38 27BD0018 */  addiu $sp, $sp, 0x18
/* 00007C 808AAA3C 03E00008 */  jr    $ra
/* 000080 808AAA40 00000000 */   nop   

/* 000084 808AAA44 AFA40000 */  sw    $a0, ($sp)
/* 000088 808AAA48 03E00008 */  jr    $ra
/* 00008C 808AAA4C AFA50004 */   sw    $a1, 4($sp)

func_808AAA50:
.incbin "baserom/ovl_Bg_Spot01_Fusya", 0x90, 0xBC

func_808AAB0C:
.incbin "baserom/ovl_Bg_Spot01_Fusya", 0x14C, 0x24

func_808AAB30:
.incbin "baserom/ovl_Bg_Spot01_Fusya", 0x170, 0xD0

.section .data

D_808AAC00:
.incbin "baserom/ovl_Bg_Spot01_Fusya", 0x240, 0x20
D_808AAC20:
.incbin "baserom/ovl_Bg_Spot01_Fusya", 0x260, 0x10
D_808AAC30:
.incbin "baserom/ovl_Bg_Spot01_Fusya", 0x270, 0x18
D_808AAC48:
.incbin "baserom/ovl_Bg_Spot01_Fusya", 0x288, 0x18
D_808AAC60:
.incbin "baserom/ovl_Bg_Spot01_Fusya", 0x2A0, 0x18
D_808AAC78:
.incbin "baserom/ovl_Bg_Spot01_Fusya", 0x2B8, 0x68
