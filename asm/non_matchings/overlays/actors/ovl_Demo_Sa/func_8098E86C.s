glabel func_8098E86C
/* 0040C 8098E86C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00410 8098E870 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00414 8098E874 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 00418 8098E878 C4800024 */  lwc1    $f0, 0x0024($a0)           ## 00000024
/* 0041C 8098E87C C4820028 */  lwc1    $f2, 0x0028($a0)           ## 00000028
/* 00420 8098E880 C48C002C */  lwc1    $f12, 0x002C($a0)          ## 0000002C
/* 00424 8098E884 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 00428 8098E888 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 0042C 8098E88C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00430 8098E890 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 00434 8098E894 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 00438 8098E898 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 0043C 8098E89C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00440 8098E8A0 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00444 8098E8A4 2407005D */  addiu   $a3, $zero, 0x005D         ## $a3 = 0000005D
/* 00448 8098E8A8 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 0044C 8098E8AC E7A20014 */  swc1    $f2, 0x0014($sp)           
/* 00450 8098E8B0 0C00C916 */  jal     Actor_SpawnAttached
              
/* 00454 8098E8B4 E7AC0018 */  swc1    $f12, 0x0018($sp)          
/* 00458 8098E8B8 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 0045C 8098E8BC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00460 8098E8C0 03E00008 */  jr      $ra                        
/* 00464 8098E8C4 00000000 */  nop


