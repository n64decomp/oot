glabel func_80ABE8E4
/* 00184 80ABE8E4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00188 80ABE8E8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0018C 80ABE8EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00190 80ABE8F0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00194 80ABE8F4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00198 80ABE8F8 0C01B10E */  jal     func_8006C438              
/* 0019C 80ABE8FC 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 001A0 80ABE900 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 001A4 80ABE904 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 001A8 80ABE908 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 001AC 80ABE90C 01C17821 */  addu    $t7, $t6, $at              
/* 001B0 80ABE910 AFAF001C */  sw      $t7, 0x001C($sp)           
/* 001B4 80ABE914 030EC021 */  addu    $t8, $t8, $t6              
/* 001B8 80ABE918 97180934 */  lhu     $t8, 0x0934($t8)           ## 00010934
/* 001BC 80ABE91C 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 001C0 80ABE920 032EC821 */  addu    $t9, $t9, $t6              
/* 001C4 80ABE924 57000015 */  bnel    $t8, $zero, .L80ABE97C     
/* 001C8 80ABE928 8FA30020 */  lw      $v1, 0x0020($sp)           
/* 001CC 80ABE92C 97390A20 */  lhu     $t9, 0x0A20($t9)           ## 00010A20
/* 001D0 80ABE930 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 001D4 80ABE934 010E4021 */  addu    $t0, $t0, $t6              
/* 001D8 80ABE938 57200010 */  bnel    $t9, $zero, .L80ABE97C     
/* 001DC 80ABE93C 8FA30020 */  lw      $v1, 0x0020($sp)           
/* 001E0 80ABE940 8D0803D8 */  lw      $t0, 0x03D8($t0)           ## 000103D8
/* 001E4 80ABE944 5500000D */  bnel    $t0, $zero, .L80ABE97C     
/* 001E8 80ABE948 8FA30020 */  lw      $v1, 0x0020($sp)           
/* 001EC 80ABE94C 0C03034A */  jal     func_800C0D28              
/* 001F0 80ABE950 01C02025 */  or      $a0, $t6, $zero            ## $a0 = 00000000
/* 001F4 80ABE954 14400008 */  bne     $v0, $zero, .L80ABE978     
/* 001F8 80ABE958 8FA9001C */  lw      $t1, 0x001C($sp)           
/* 001FC 80ABE95C 912A241B */  lbu     $t2, 0x241B($t1)           ## 0000241B
/* 00200 80ABE960 3C0B8016 */  lui     $t3, 0x8016                ## $t3 = 80160000
/* 00204 80ABE964 5140000A */  beql    $t2, $zero, .L80ABE990     
/* 00208 80ABE968 8FAD001C */  lw      $t5, 0x001C($sp)           
/* 0020C 80ABE96C 8D6BF9BC */  lw      $t3, -0x0644($t3)          ## 8015F9BC
/* 00210 80ABE970 55600007 */  bnel    $t3, $zero, .L80ABE990     
/* 00214 80ABE974 8FAD001C */  lw      $t5, 0x001C($sp)           
.L80ABE978:
/* 00218 80ABE978 8FA30020 */  lw      $v1, 0x0020($sp)           
.L80ABE97C:
/* 0021C 80ABE97C 946C014C */  lhu     $t4, 0x014C($v1)           ## 0000014C
/* 00220 80ABE980 298100FA */  slti    $at, $t4, 0x00FA           
/* 00224 80ABE984 1420001C */  bne     $at, $zero, .L80ABE9F8     
/* 00228 80ABE988 00000000 */  nop
/* 0022C 80ABE98C 8FAD001C */  lw      $t5, 0x001C($sp)           
.L80ABE990:
/* 00230 80ABE990 8FA30020 */  lw      $v1, 0x0020($sp)           
/* 00234 80ABE994 3C0480AC */  lui     $a0, %hi(D_80ABEC3C)       ## $a0 = 80AC0000
/* 00238 80ABE998 91AF0A42 */  lbu     $t7, 0x0A42($t5)           ## 00000A42
/* 0023C 80ABE99C 9462014C */  lhu     $v0, 0x014C($v1)           ## 0000014C
/* 00240 80ABE9A0 2484EC3C */  addiu   $a0, $a0, %lo(D_80ABEC3C)  ## $a0 = 80ABEC3C
/* 00244 80ABE9A4 15E00005 */  bne     $t7, $zero, .L80ABE9BC     
/* 00248 80ABE9A8 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 0024C 80ABE9AC 91B80A43 */  lbu     $t8, 0x0A43($t5)           ## 00000A43
/* 00250 80ABE9B0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00254 80ABE9B4 13010003 */  beq     $t8, $at, .L80ABE9C4       
/* 00258 80ABE9B8 00000000 */  nop
.L80ABE9BC:
/* 0025C 80ABE9BC A479014C */  sh      $t9, 0x014C($v1)           ## 0000014C
/* 00260 80ABE9C0 3322FFFF */  andi    $v0, $t9, 0xFFFF           ## $v0 = 0000FFFF
.L80ABE9C4:
/* 00264 80ABE9C4 0C00084C */  jal     osSyncPrintf
              
/* 00268 80ABE9C8 00402825 */  or      $a1, $v0, $zero            ## $a1 = 0000FFFF
/* 0026C 80ABE9CC 8FA80020 */  lw      $t0, 0x0020($sp)           
/* 00270 80ABE9D0 24010134 */  addiu   $at, $zero, 0x0134         ## $at = 00000134
/* 00274 80ABE9D4 3C0480AC */  lui     $a0, %hi(D_80ABEC50)       ## $a0 = 80AC0000
/* 00278 80ABE9D8 950E014C */  lhu     $t6, 0x014C($t0)           ## 0000014C
/* 0027C 80ABE9DC 15C10006 */  bne     $t6, $at, .L80ABE9F8       
/* 00280 80ABE9E0 00000000 */  nop
/* 00284 80ABE9E4 0C00084C */  jal     osSyncPrintf
              
/* 00288 80ABE9E8 2484EC50 */  addiu   $a0, $a0, %lo(D_80ABEC50)  ## $a0 = 80ABEC50
/* 0028C 80ABE9EC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00290 80ABE9F0 0C01B0F4 */  jal     func_8006C3D0              
/* 00294 80ABE9F4 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
.L80ABE9F8:
/* 00298 80ABE9F8 3C098012 */  lui     $t1, 0x8012                ## $t1 = 80120000
/* 0029C 80ABE9FC 9129FB38 */  lbu     $t1, -0x04C8($t1)          ## 8011FB38
/* 002A0 80ABEA00 8FA30020 */  lw      $v1, 0x0020($sp)           
/* 002A4 80ABEA04 51200003 */  beql    $t1, $zero, .L80ABEA14     
/* 002A8 80ABEA08 946A014C */  lhu     $t2, 0x014C($v1)           ## 0000014C
/* 002AC 80ABEA0C A460014C */  sh      $zero, 0x014C($v1)         ## 0000014C
/* 002B0 80ABEA10 946A014C */  lhu     $t2, 0x014C($v1)           ## 0000014C
.L80ABEA14:
/* 002B4 80ABEA14 8FAB001C */  lw      $t3, 0x001C($sp)           
/* 002B8 80ABEA18 5540003E */  bnel    $t2, $zero, .L80ABEB14     
/* 002BC 80ABEA1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002C0 80ABEA20 A1600B16 */  sb      $zero, 0x0B16($t3)         ## 00000B16
/* 002C4 80ABEA24 8FAC0024 */  lw      $t4, 0x0024($sp)           
/* 002C8 80ABEA28 918F1D6C */  lbu     $t7, 0x1D6C($t4)           ## 00001D6C
/* 002CC 80ABEA2C 15E00005 */  bne     $t7, $zero, .L80ABEA44     
/* 002D0 80ABEA30 00000000 */  nop
/* 002D4 80ABEA34 0C01DDA1 */  jal     func_80077684              
/* 002D8 80ABEA38 01802025 */  or      $a0, $t4, $zero            ## $a0 = 00000000
/* 002DC 80ABEA3C 1000000D */  beq     $zero, $zero, .L80ABEA74   
/* 002E0 80ABEA40 00000000 */  nop
.L80ABEA44:
/* 002E4 80ABEA44 0C03E82D */  jal     func_800FA0B4              
/* 002E8 80ABEA48 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 002EC 80ABEA4C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 002F0 80ABEA50 14410008 */  bne     $v0, $at, .L80ABEA74       
/* 002F4 80ABEA54 2404000F */  addiu   $a0, $zero, 0x000F         ## $a0 = 0000000F
/* 002F8 80ABEA58 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 002FC 80ABEA5C 0C03DB56 */  jal     func_800F6D58              
/* 00300 80ABEA60 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00304 80ABEA64 2404000E */  addiu   $a0, $zero, 0x000E         ## $a0 = 0000000E
/* 00308 80ABEA68 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0030C 80ABEA6C 0C03DB56 */  jal     func_800F6D58              
/* 00310 80ABEA70 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
.L80ABEA74:
/* 00314 80ABEA74 3C0480AC */  lui     $a0, %hi(D_80ABEC68)       ## $a0 = 80AC0000
/* 00318 80ABEA78 3C058012 */  lui     $a1, 0x8012                ## $a1 = 80120000
/* 0031C 80ABEA7C 90A5FB30 */  lbu     $a1, -0x04D0($a1)          ## 8011FB30
/* 00320 80ABEA80 0C00084C */  jal     osSyncPrintf
              
/* 00324 80ABEA84 2484EC68 */  addiu   $a0, $a0, %lo(D_80ABEC68)  ## $a0 = 80ABEC68
/* 00328 80ABEA88 8FAD001C */  lw      $t5, 0x001C($sp)           
/* 0032C 80ABEA8C 3C0480AC */  lui     $a0, %hi(D_80ABEC80)       ## $a0 = 80AC0000
/* 00330 80ABEA90 2484EC80 */  addiu   $a0, $a0, %lo(D_80ABEC80)  ## $a0 = 80ABEC80
/* 00334 80ABEA94 0C00084C */  jal     osSyncPrintf
              
/* 00338 80ABEA98 91A50B01 */  lbu     $a1, 0x0B01($t5)           ## 00000B01
/* 0033C 80ABEA9C 3C188012 */  lui     $t8, 0x8012                ## $t8 = 80120000
/* 00340 80ABEAA0 9318FB30 */  lbu     $t8, -0x04D0($t8)          ## 8011FB30
/* 00344 80ABEAA4 8FB9001C */  lw      $t9, 0x001C($sp)           
/* 00348 80ABEAA8 8FAA0024 */  lw      $t2, 0x0024($sp)           
/* 0034C 80ABEAAC 5700000B */  bnel    $t8, $zero, .L80ABEADC     
/* 00350 80ABEAB0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00354 80ABEAB4 93280B01 */  lbu     $t0, 0x0B01($t9)           ## 00000B01
/* 00358 80ABEAB8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0035C 80ABEABC 8FA90024 */  lw      $t1, 0x0024($sp)           
/* 00360 80ABEAC0 15010005 */  bne     $t0, $at, .L80ABEAD8       
/* 00364 80ABEAC4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00368 80ABEAC8 00290821 */  addu    $at, $at, $t1              
/* 0036C 80ABEACC 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00370 80ABEAD0 10000008 */  beq     $zero, $zero, .L80ABEAF4   
/* 00374 80ABEAD4 A02E0B01 */  sb      $t6, 0x0B01($at)           ## 00010B01
.L80ABEAD8:
/* 00378 80ABEAD8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80ABEADC:
/* 0037C 80ABEADC 002A0821 */  addu    $at, $at, $t2              
/* 00380 80ABEAE0 A0200B01 */  sb      $zero, 0x0B01($at)         ## 00010B01
/* 00384 80ABEAE4 8FAB0024 */  lw      $t3, 0x0024($sp)           
/* 00388 80ABEAE8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0038C 80ABEAEC 002B0821 */  addu    $at, $at, $t3              
/* 00390 80ABEAF0 A0200B02 */  sb      $zero, 0x0B02($at)         ## 00010B02
.L80ABEAF4:
/* 00394 80ABEAF4 8FAC0024 */  lw      $t4, 0x0024($sp)           
/* 00398 80ABEAF8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0039C 80ABEAFC 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 003A0 80ABEB00 002C0821 */  addu    $at, $at, $t4              
/* 003A4 80ABEB04 A02F0B03 */  sb      $t7, 0x0B03($at)           ## 00010B03
/* 003A8 80ABEB08 0C00B55C */  jal     Actor_Kill
              
/* 003AC 80ABEB0C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 003B0 80ABEB10 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ABEB14:
/* 003B4 80ABEB14 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 003B8 80ABEB18 03E00008 */  jr      $ra                        
/* 003BC 80ABEB1C 00000000 */  nop


