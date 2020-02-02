glabel func_80AB02AC
/* 0058C 80AB02AC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00590 80AB02B0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00594 80AB02B4 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00598 80AB02B8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0059C 80AB02BC 0C024F46 */  jal     func_80093D18              
/* 005A0 80AB02C0 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 005A4 80AB02C4 8FA20028 */  lw      $v0, 0x0028($sp)           
/* 005A8 80AB02C8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 005AC 80AB02CC 8C450150 */  lw      $a1, 0x0150($v0)           ## 00000150
/* 005B0 80AB02D0 8C46016C */  lw      $a2, 0x016C($v0)           ## 0000016C
/* 005B4 80AB02D4 9047014E */  lbu     $a3, 0x014E($v0)           ## 0000014E
/* 005B8 80AB02D8 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 005BC 80AB02DC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 005C0 80AB02E0 0C0286B2 */  jal     func_800A1AC8              
/* 005C4 80AB02E4 AFA20018 */  sw      $v0, 0x0018($sp)           
/* 005C8 80AB02E8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 005CC 80AB02EC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 005D0 80AB02F0 03E00008 */  jr      $ra                        
/* 005D4 80AB02F4 00000000 */  nop
/* 005D8 80AB02F8 00000000 */  nop
/* 005DC 80AB02FC 00000000 */  nop

