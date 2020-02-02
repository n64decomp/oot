glabel func_80B30C74
/* 01754 80B30C74 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01758 80B30C78 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0175C 80B30C7C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 01760 80B30C80 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01764 80B30C84 8C8F0190 */  lw      $t7, 0x0190($a0)           ## 00000190
/* 01768 80B30C88 3C0E80B3 */  lui     $t6, %hi(func_80B2FD38)    ## $t6 = 80B30000
/* 0176C 80B30C8C 25CEFD38 */  addiu   $t6, $t6, %lo(func_80B2FD38) ## $t6 = 80B2FD38
/* 01770 80B30C90 11CF000F */  beq     $t6, $t7, .L80B30CD0       
/* 01774 80B30C94 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01778 80B30C98 0C024F46 */  jal     func_80093D18              
/* 0177C 80B30C9C 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 01780 80B30CA0 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 01784 80B30CA4 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 01788 80B30CA8 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 0178C 80B30CAC 3C1980B3 */  lui     $t9, %hi(func_80B30AD4)    ## $t9 = 80B30000
/* 01790 80B30CB0 3C0880B3 */  lui     $t0, %hi(func_80B30B48)    ## $t0 = 80B30000
/* 01794 80B30CB4 25080B48 */  addiu   $t0, $t0, %lo(func_80B30B48) ## $t0 = 80B30B48
/* 01798 80B30CB8 27390AD4 */  addiu   $t9, $t9, %lo(func_80B30AD4) ## $t9 = 80B30AD4
/* 0179C 80B30CBC AFB90010 */  sw      $t9, 0x0010($sp)           
/* 017A0 80B30CC0 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 017A4 80B30CC4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 017A8 80B30CC8 0C0286B2 */  jal     func_800A1AC8              
/* 017AC 80B30CCC 8FA40034 */  lw      $a0, 0x0034($sp)           
.L80B30CD0:
/* 017B0 80B30CD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017B4 80B30CD4 0C2CC23D */  jal     func_80B308F4              
/* 017B8 80B30CD8 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 017BC 80B30CDC 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 017C0 80B30CE0 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 017C4 80B30CE4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 017C8 80B30CE8 03E00008 */  jr      $ra                        
/* 017CC 80B30CEC 00000000 */  nop

