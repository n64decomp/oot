glabel func_809B3498
/* 00098 809B3498 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0009C 809B349C 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 000A0 809B34A0 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 000A4 809B34A4 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 000A8 809B34A8 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 000AC 809B34AC C4A40024 */  lwc1    $f4, 0x0024($a1)           ## 00000024
/* 000B0 809B34B0 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 000B4 809B34B4 240700E0 */  addiu   $a3, $zero, 0x00E0         ## $a3 = 000000E0
/* 000B8 809B34B8 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 000BC 809B34BC C4A60028 */  lwc1    $f6, 0x0028($a1)           ## 00000028
/* 000C0 809B34C0 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 000C4 809B34C4 C4A8002C */  lwc1    $f8, 0x002C($a1)           ## 0000002C
/* 000C8 809B34C8 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 000CC 809B34CC E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 000D0 809B34D0 84AE008A */  lh      $t6, 0x008A($a1)           ## 0000008A
/* 000D4 809B34D4 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 000D8 809B34D8 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 000DC 809B34DC AFA00024 */  sw      $zero, 0x0024($sp)         
/* 000E0 809B34E0 0C00C916 */  jal     Actor_SpawnAttached
              
/* 000E4 809B34E4 AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 000E8 809B34E8 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 000EC 809B34EC 3C0F809B */  lui     $t7, %hi(func_809B3510)    ## $t7 = 809B0000
/* 000F0 809B34F0 10400003 */  beq     $v0, $zero, .L809B3500     
/* 000F4 809B34F4 ACA20150 */  sw      $v0, 0x0150($a1)           ## 00000150
/* 000F8 809B34F8 25EF3510 */  addiu   $t7, $t7, %lo(func_809B3510) ## $t7 = 809B3510
/* 000FC 809B34FC ACAF014C */  sw      $t7, 0x014C($a1)           ## 0000014C
.L809B3500:
/* 00100 809B3500 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00104 809B3504 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00108 809B3508 03E00008 */  jr      $ra                        
/* 0010C 809B350C 00000000 */  nop


