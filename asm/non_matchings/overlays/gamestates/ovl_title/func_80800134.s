glabel func_80800134
/* 00134 80800134 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00138 80800138 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0013C 8080013C AFA70054 */  sw      $a3, 0x0054($sp)           
/* 00140 80800140 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00144 80800144 44856000 */  mtc1    $a1, $f12                  ## $f12 = 0.00
/* 00148 80800148 44867000 */  mtc1    $a2, $f14                  ## $f14 = 0.00
/* 0014C 8080014C C7A40054 */  lwc1    $f4, 0x0054($sp)           
/* 00150 80800150 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 00154 80800154 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00158 80800158 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0015C 8080015C 248400A8 */  addiu   $a0, $a0, 0x00A8           ## $a0 = 000000A8
/* 00160 80800160 AFA4001C */  sw      $a0, 0x001C($sp)           
/* 00164 80800164 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 00168 80800168 3C0541F0 */  lui     $a1, 0x41F0                ## $a1 = 41F00000
/* 0016C 8080016C 3C074648 */  lui     $a3, 0x4648                ## $a3 = 46480000
/* 00170 80800170 E7A00028 */  swc1    $f0, 0x0028($sp)           
/* 00174 80800174 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 00178 80800178 E7A00034 */  swc1    $f0, 0x0034($sp)           
/* 0017C 8080017C E7A00030 */  swc1    $f0, 0x0030($sp)           
/* 00180 80800180 E7A0002C */  swc1    $f0, 0x002C($sp)           
/* 00184 80800184 E7AC0038 */  swc1    $f12, 0x0038($sp)          
/* 00188 80800188 E7AE003C */  swc1    $f14, 0x003C($sp)          
/* 0018C 8080018C E7A40040 */  swc1    $f4, 0x0040($sp)           
/* 00190 80800190 0C02A918 */  jal     func_800AA460              
/* 00194 80800194 E7A60024 */  swc1    $f6, 0x0024($sp)           
/* 00198 80800198 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0019C 8080019C 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFF0
/* 001A0 808001A0 27A6002C */  addiu   $a2, $sp, 0x002C           ## $a2 = FFFFFFE4
/* 001A4 808001A4 0C02A8D6 */  jal     func_800AA358              
/* 001A8 808001A8 27A70020 */  addiu   $a3, $sp, 0x0020           ## $a3 = FFFFFFD8
/* 001AC 808001AC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 001B0 808001B0 0C02AA94 */  jal     func_800AAA50              
/* 001B4 808001B4 2405000F */  addiu   $a1, $zero, 0x000F         ## $a1 = 0000000F
/* 001B8 808001B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001BC 808001BC 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 001C0 808001C0 03E00008 */  jr      $ra                        
/* 001C4 808001C4 00000000 */  nop
