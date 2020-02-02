glabel func_80AAFD20
/* 00000 80AAFD20 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 80AAFD24 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00008 80AAFD28 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0000C 80AAFD2C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00010 80AAFD30 2405001B */  addiu   $a1, $zero, 0x001B         ## $a1 = 0000001B
/* 00014 80AAFD34 0C01B0D8 */  jal     func_8006C360              
/* 00018 80AAFD38 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 0001C 80AAFD3C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00020 80AAFD40 304EFFFF */  andi    $t6, $v0, 0xFFFF           ## $t6 = 00000000
/* 00024 80AAFD44 15C00010 */  bne     $t6, $zero, .L80AAFD88     
/* 00028 80AAFD48 A4C2010E */  sh      $v0, 0x010E($a2)           ## 0000010E
/* 0002C 80AAFD4C 3C0F8012 */  lui     $t7, 0x8012                ## $t7 = 80120000
/* 00030 80AAFD50 91EF7475 */  lbu     $t7, 0x7475($t7)           ## 80127475
/* 00034 80AAFD54 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00038 80AAFD58 2418406B */  addiu   $t8, $zero, 0x406B         ## $t8 = 0000406B
/* 0003C 80AAFD5C 004F1021 */  addu    $v0, $v0, $t7              
/* 00040 80AAFD60 8042E6EC */  lb      $v0, -0x1914($v0)          ## 8015E6EC
/* 00044 80AAFD64 3C0880AB */  lui     $t0, %hi(D_80AB0360)       ## $t0 = 80AB0000
/* 00048 80AAFD68 2841000A */  slti    $at, $v0, 0x000A           
/* 0004C 80AAFD6C 14200003 */  bne     $at, $zero, .L80AAFD7C     
/* 00050 80AAFD70 0002C840 */  sll     $t9, $v0,  1               
/* 00054 80AAFD74 10000004 */  beq     $zero, $zero, .L80AAFD88   
/* 00058 80AAFD78 A4D8010E */  sh      $t8, 0x010E($a2)           ## 0000010E
.L80AAFD7C:
/* 0005C 80AAFD7C 01194021 */  addu    $t0, $t0, $t9              
/* 00060 80AAFD80 95080360 */  lhu     $t0, %lo(D_80AB0360)($t0)  
/* 00064 80AAFD84 A4C8010E */  sh      $t0, 0x010E($a2)           ## 0000010E
.L80AAFD88:
/* 00068 80AAFD88 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0006C 80AAFD8C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00070 80AAFD90 03E00008 */  jr      $ra                        
/* 00074 80AAFD94 00000000 */  nop


