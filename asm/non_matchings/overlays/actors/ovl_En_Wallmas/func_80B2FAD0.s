glabel func_80B2FAD0
/* 005B0 80B2FAD0 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 005B4 80B2FAD4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 005B8 80B2FAD8 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 005BC 80B2FADC AFB00048 */  sw      $s0, 0x0048($sp)           
/* 005C0 80B2FAE0 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 005C4 80B2FAE4 E4800068 */  swc1    $f0, 0x0068($a0)           ## 00000068
/* 005C8 80B2FAE8 E4800060 */  swc1    $f0, 0x0060($a0)           ## 00000060
/* 005CC 80B2FAEC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005D0 80B2FAF0 3C0680B3 */  lui     $a2, %hi(D_80B30D70)       ## $a2 = 80B30000
/* 005D4 80B2FAF4 24C60D70 */  addiu   $a2, $a2, %lo(D_80B30D70)  ## $a2 = 80B30D70
/* 005D8 80B2FAF8 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 005DC 80B2FAFC 240E00FA */  addiu   $t6, $zero, 0x00FA         ## $t6 = 000000FA
/* 005E0 80B2FB00 240FFFF6 */  addiu   $t7, $zero, 0xFFF6         ## $t7 = FFFFFFF6
/* 005E4 80B2FB04 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 005E8 80B2FB08 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 005EC 80B2FB0C 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 005F0 80B2FB10 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 005F4 80B2FB14 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 005F8 80B2FB18 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 005FC 80B2FB1C 240C0009 */  addiu   $t4, $zero, 0x0009         ## $t4 = 00000009
/* 00600 80B2FB20 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 00604 80B2FB24 AFAD003C */  sw      $t5, 0x003C($sp)           
/* 00608 80B2FB28 AFAC0038 */  sw      $t4, 0x0038($sp)           
/* 0060C 80B2FB2C AFAB0034 */  sw      $t3, 0x0034($sp)           
/* 00610 80B2FB30 AFAA0030 */  sw      $t2, 0x0030($sp)           
/* 00614 80B2FB34 AFA90024 */  sw      $t1, 0x0024($sp)           
/* 00618 80B2FB38 AFA80020 */  sw      $t0, 0x0020($sp)           
/* 0061C 80B2FB3C AFB9001C */  sw      $t9, 0x001C($sp)           
/* 00620 80B2FB40 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00624 80B2FB44 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00628 80B2FB48 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0062C 80B2FB4C AFA50054 */  sw      $a1, 0x0054($sp)           
/* 00630 80B2FB50 00C03825 */  or      $a3, $a2, $zero            ## $a3 = 80B30D70
/* 00634 80B2FB54 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 00638 80B2FB58 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 0063C 80B2FB5C 0C00A9AE */  jal     func_8002A6B8              
/* 00640 80B2FB60 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00644 80B2FB64 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 00648 80B2FB68 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0064C 80B2FB6C 8FA60054 */  lw      $a2, 0x0054($sp)           
/* 00650 80B2FB70 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00654 80B2FB74 240700C0 */  addiu   $a3, $zero, 0x00C0         ## $a3 = 000000C0
/* 00658 80B2FB78 3C0E80B3 */  lui     $t6, %hi(func_80B30270)    ## $t6 = 80B30000
/* 0065C 80B2FB7C 25CE0270 */  addiu   $t6, $t6, %lo(func_80B30270) ## $t6 = 80B30270
/* 00660 80B2FB80 AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
/* 00664 80B2FB84 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 00668 80B2FB88 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 0066C 80B2FB8C 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 00670 80B2FB90 03E00008 */  jr      $ra                        
/* 00674 80B2FB94 00000000 */  nop


