glabel func_80AAFEBC
/* 0019C 80AAFEBC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001A0 80AAFEC0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 001A4 80AAFEC4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001A8 80AAFEC8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001AC 80AAFECC 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 001B0 80AAFED0 24C50200 */  addiu   $a1, $a2, 0x0200           ## $a1 = 00000200
/* 001B4 80AAFED4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001B8 80AAFED8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001BC 80AAFEDC 03E00008 */  jr      $ra                        
/* 001C0 80AAFEE0 00000000 */  nop


