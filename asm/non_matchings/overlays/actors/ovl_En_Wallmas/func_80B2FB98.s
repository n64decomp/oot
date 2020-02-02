glabel func_80B2FB98
/* 00678 80B2FB98 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0067C 80B2FB9C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00680 80B2FBA0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00684 80B2FBA4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00688 80B2FBA8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 0068C 80B2FBAC 24A59520 */  addiu   $a1, $a1, 0x9520           ## $a1 = 06009520
/* 00690 80B2FBB0 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00694 80B2FBB4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00698 80B2FBB8 0C029490 */  jal     func_800A5240              
/* 0069C 80B2FBBC 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 006A0 80B2FBC0 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 006A4 80B2FBC4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 006A8 80B2FBC8 3C0F80B3 */  lui     $t7, %hi(func_80B302E8)    ## $t7 = 80B30000
/* 006AC 80B2FBCC C4A40094 */  lwc1    $f4, 0x0094($a1)           ## 00000094
/* 006B0 80B2FBD0 240EFFE2 */  addiu   $t6, $zero, 0xFFE2         ## $t6 = FFFFFFE2
/* 006B4 80B2FBD4 25EF02E8 */  addiu   $t7, $t7, %lo(func_80B302E8) ## $t7 = 80B302E8
/* 006B8 80B2FBD8 A4AE0194 */  sh      $t6, 0x0194($a1)           ## 00000194
/* 006BC 80B2FBDC ACAF0190 */  sw      $t7, 0x0190($a1)           ## 00000190
/* 006C0 80B2FBE0 E4A00068 */  swc1    $f0, 0x0068($a1)           ## 00000068
/* 006C4 80B2FBE4 E4A00060 */  swc1    $f0, 0x0060($a1)           ## 00000060
/* 006C8 80B2FBE8 E4A402C4 */  swc1    $f4, 0x02C4($a1)           ## 000002C4
/* 006CC 80B2FBEC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 006D0 80B2FBF0 0C00B7CE */  jal     func_8002DF38              
/* 006D4 80B2FBF4 24060025 */  addiu   $a2, $zero, 0x0025         ## $a2 = 00000025
/* 006D8 80B2FBF8 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 006DC 80B2FBFC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 006E0 80B2FC00 2405251C */  addiu   $a1, $zero, 0x251C         ## $a1 = 0000251C
/* 006E4 80B2FC04 2406270F */  addiu   $a2, $zero, 0x270F         ## $a2 = 0000270F
/* 006E8 80B2FC08 0C02003E */  jal     func_800800F8              
/* 006EC 80B2FC0C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 006F0 80B2FC10 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 006F4 80B2FC14 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 006F8 80B2FC18 03E00008 */  jr      $ra                        
/* 006FC 80B2FC1C 00000000 */  nop


