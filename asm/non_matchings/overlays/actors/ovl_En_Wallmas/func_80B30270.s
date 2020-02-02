glabel func_80B30270
/* 00D50 80B30270 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00D54 80B30274 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00D58 80B30278 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D5C 80B3027C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00D60 80B30280 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00D64 80B30284 3C063AC4 */  lui     $a2, 0x3AC4                ## $a2 = 3AC40000
/* 00D68 80B30288 34C69BA6 */  ori     $a2, $a2, 0x9BA6           ## $a2 = 3AC49BA6
/* 00D6C 80B3028C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00D70 80B30290 0C01DE80 */  jal     Math_ApproxF
              
/* 00D74 80B30294 24840050 */  addiu   $a0, $a0, 0x0050           ## $a0 = 00000050
/* 00D78 80B30298 1040000B */  beq     $v0, $zero, .L80B302C8     
/* 00D7C 80B3029C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D80 80B302A0 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00D84 80B302A4 0C00B58B */  jal     Actor_SetScale
              
/* 00D88 80B302A8 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00D8C 80B302AC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00D90 80B302B0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00D94 80B302B4 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 00D98 80B302B8 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00D9C 80B302BC 240700C0 */  addiu   $a3, $zero, 0x00C0         ## $a3 = 000000C0
/* 00DA0 80B302C0 0C00B55C */  jal     Actor_Kill
              
/* 00DA4 80B302C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B302C8:
/* 00DA8 80B302C8 C6000050 */  lwc1    $f0, 0x0050($s0)           ## 00000050
/* 00DAC 80B302CC E6000058 */  swc1    $f0, 0x0058($s0)           ## 00000058
/* 00DB0 80B302D0 E6000054 */  swc1    $f0, 0x0054($s0)           ## 00000054
/* 00DB4 80B302D4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00DB8 80B302D8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00DBC 80B302DC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00DC0 80B302E0 03E00008 */  jr      $ra                        
/* 00DC4 80B302E4 00000000 */  nop


