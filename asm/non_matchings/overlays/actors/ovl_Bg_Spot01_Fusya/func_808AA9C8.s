glabel func_808AA9C8
/* 00008 808AA9C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0000C 808AA9CC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00010 808AA9D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00014 808AA9D4 3C05808B */  lui     $a1, %hi(D_808AAC20)       ## $a1 = 808B0000
/* 00018 808AA9D8 24A5AC20 */  addiu   $a1, $a1, %lo(D_808AAC20)  ## $a1 = 808AAC20
/* 0001C 808AA9DC 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 808AA9E0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00024 808AA9E4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00028 808AA9E8 44810000 */  mtc1    $at, $f0                   ## $f0 = 100.00
/* 0002C 808AA9EC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00030 808AA9F0 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00034 808AA9F4 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00038 808AA9F8 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0003C 808AA9FC 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00040 808AAA00 E4800154 */  swc1    $f0, 0x0154($a0)           ## 00000154
/* 00044 808AAA04 E4800158 */  swc1    $f0, 0x0158($a0)           ## 00000158
/* 00048 808AAA08 E484015C */  swc1    $f4, 0x015C($a0)           ## 0000015C
/* 0004C 808AAA0C 8C4E1360 */  lw      $t6, 0x1360($v0)           ## 8015F9C0
/* 00050 808AAA10 3C05808B */  lui     $a1, %hi(func_808AAA50)    ## $a1 = 808B0000
/* 00054 808AAA14 29C10004 */  slti    $at, $t6, 0x0004           
/* 00058 808AAA18 10200004 */  beq     $at, $zero, .L808AAA2C     
/* 0005C 808AAA1C 00000000 */  nop
/* 00060 808AAA20 944F0EE0 */  lhu     $t7, 0x0EE0($v0)           ## 8015F540
/* 00064 808AAA24 31F8FFDF */  andi    $t8, $t7, 0xFFDF           ## $t8 = 00000000
/* 00068 808AAA28 A4580EE0 */  sh      $t8, 0x0EE0($v0)           ## 8015F540
.L808AAA2C:
/* 0006C 808AAA2C 0C22AA70 */  jal     func_808AA9C0              
/* 00070 808AAA30 24A5AA50 */  addiu   $a1, $a1, %lo(func_808AAA50) ## $a1 = 808AAA50
/* 00074 808AAA34 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00078 808AAA38 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0007C 808AAA3C 03E00008 */  jr      $ra                        
/* 00080 808AAA40 00000000 */  nop


