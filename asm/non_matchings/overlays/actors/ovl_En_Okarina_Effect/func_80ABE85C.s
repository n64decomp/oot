glabel func_80ABE85C
/* 000FC 80ABE85C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00100 80ABE860 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00104 80ABE864 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00108 80ABE868 240E0190 */  addiu   $t6, $zero, 0x0190         ## $t6 = 00000190
/* 0010C 80ABE86C 00A11021 */  addu    $v0, $a1, $at              
/* 00110 80ABE870 A48E014C */  sh      $t6, 0x014C($a0)           ## 0000014C
/* 00114 80ABE874 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 00118 80ABE878 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 0011C 80ABE87C A04F0B16 */  sb      $t7, 0x0B16($v0)           ## 00000B16
/* 00120 80ABE880 00250821 */  addu    $at, $at, $a1              
/* 00124 80ABE884 A0230B01 */  sb      $v1, 0x0B01($at)           ## 00010B01
/* 00128 80ABE888 3C188012 */  lui     $t8, 0x8012                ## $t8 = 80120000
/* 0012C 80ABE88C 9318FB30 */  lbu     $t8, -0x04D0($t8)          ## 8011FB30
/* 00130 80ABE890 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00134 80ABE894 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00138 80ABE898 17000003 */  bne     $t8, $zero, .L80ABE8A8     
/* 0013C 80ABE89C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00140 80ABE8A0 90590A3B */  lbu     $t9, 0x0A3B($v0)           ## 00000A3B
/* 00144 80ABE8A4 13200002 */  beq     $t9, $zero, .L80ABE8B0     
.L80ABE8A8:
/* 00148 80ABE8A8 00250821 */  addu    $at, $at, $a1              
/* 0014C 80ABE8AC A0230B02 */  sb      $v1, 0x0B02($at)           ## 00010B02
.L80ABE8B0:
/* 00150 80ABE8B0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00154 80ABE8B4 00250821 */  addu    $at, $at, $a1              
/* 00158 80ABE8B8 A0230B03 */  sb      $v1, 0x0B03($at)           ## 00010B03
/* 0015C 80ABE8BC 0C01DD89 */  jal     func_80077624              
/* 00160 80ABE8C0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00164 80ABE8C4 3C0580AC */  lui     $a1, %hi(func_80ABE8E4)    ## $a1 = 80AC0000
/* 00168 80ABE8C8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0016C 80ABE8CC 0C2AF9D8 */  jal     func_80ABE760              
/* 00170 80ABE8D0 24A5E8E4 */  addiu   $a1, $a1, %lo(func_80ABE8E4) ## $a1 = 80ABE8E4
/* 00174 80ABE8D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00178 80ABE8D8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0017C 80ABE8DC 03E00008 */  jr      $ra                        
/* 00180 80ABE8E0 00000000 */  nop


