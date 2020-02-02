glabel func_8097CE20
/* 005B0 8097CE20 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005B4 8097CE24 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005B8 8097CE28 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 005BC 8097CE2C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 005C0 8097CE30 0C25F36C */  jal     func_8097CDB0              
/* 005C4 8097CE34 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 005C8 8097CE38 1040000B */  beq     $v0, $zero, .L8097CE68     
/* 005CC 8097CE3C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 005D0 8097CE40 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 005D4 8097CE44 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 005D8 8097CE48 AC8E0194 */  sw      $t6, 0x0194($a0)           ## 00000194
/* 005DC 8097CE4C AC8F0198 */  sw      $t7, 0x0198($a0)           ## 00000198
/* 005E0 8097CE50 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 005E4 8097CE54 0C25F2C3 */  jal     func_8097CB0C              
/* 005E8 8097CE58 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 005EC 8097CE5C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 005F0 8097CE60 0C25F22A */  jal     func_8097C8A8              
/* 005F4 8097CE64 8FA5001C */  lw      $a1, 0x001C($sp)           
.L8097CE68:
/* 005F8 8097CE68 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005FC 8097CE6C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00600 8097CE70 03E00008 */  jr      $ra                        
/* 00604 8097CE74 00000000 */  nop


