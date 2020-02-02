glabel func_80AB00A8
/* 00388 80AB00A8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0038C 80AB00AC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00390 80AB00B0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00394 80AB00B4 0C00BD04 */  jal     func_8002F410              
/* 00398 80AB00B8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0039C 80AB00BC 10400014 */  beq     $v0, $zero, .L80AB0110     
/* 003A0 80AB00C0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 003A4 80AB00C4 3C0E8012 */  lui     $t6, 0x8012                ## $t6 = 80120000
/* 003A8 80AB00C8 91CE7475 */  lbu     $t6, 0x7475($t6)           ## 80127475
/* 003AC 80AB00CC 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 003B0 80AB00D0 3C0480AB */  lui     $a0, %hi(D_80AB034C)       ## $a0 = 80AB0000
/* 003B4 80AB00D4 01EE7821 */  addu    $t7, $t7, $t6              
/* 003B8 80AB00D8 81EFE6EC */  lb      $t7, -0x1914($t7)          ## 8015E6EC
/* 003BC 80AB00DC 000FC040 */  sll     $t8, $t7,  1               
/* 003C0 80AB00E0 00982021 */  addu    $a0, $a0, $t8              
/* 003C4 80AB00E4 8484034C */  lh      $a0, %lo(D_80AB034C)($a0)  
/* 003C8 80AB00E8 00042023 */  subu    $a0, $zero, $a0            
/* 003CC 80AB00EC 00042400 */  sll     $a0, $a0, 16               
/* 003D0 80AB00F0 0C021CC3 */  jal     func_8008730C              
/* 003D4 80AB00F4 00042403 */  sra     $a0, $a0, 16               
/* 003D8 80AB00F8 8FA20020 */  lw      $v0, 0x0020($sp)           
/* 003DC 80AB00FC 3C1980AB */  lui     $t9, %hi(func_80AB013C)    ## $t9 = 80AB0000
/* 003E0 80AB0100 2739013C */  addiu   $t9, $t9, %lo(func_80AB013C) ## $t9 = 80AB013C
/* 003E4 80AB0104 AC400118 */  sw      $zero, 0x0118($v0)         ## 00000118
/* 003E8 80AB0108 10000008 */  beq     $zero, $zero, .L80AB012C   
/* 003EC 80AB010C AC5901FC */  sw      $t9, 0x01FC($v0)           ## 000001FC
.L80AB0110:
/* 003F0 80AB0110 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 003F4 80AB0114 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 003F8 80AB0118 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 003FC 80AB011C 24060016 */  addiu   $a2, $zero, 0x0016         ## $a2 = 00000016
/* 00400 80AB0120 3C0742B4 */  lui     $a3, 0x42B4                ## $a3 = 42B40000
/* 00404 80AB0124 0C00BD0D */  jal     func_8002F434              
/* 00408 80AB0128 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80AB012C:
/* 0040C 80AB012C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00410 80AB0130 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00414 80AB0134 03E00008 */  jr      $ra                        
/* 00418 80AB0138 00000000 */  nop


