glabel func_80B2F65C
/* 0013C 80B2F65C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00140 80B2F660 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00144 80B2F664 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00148 80B2F668 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0014C 80B2F66C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00150 80B2F670 24C502C8 */  addiu   $a1, $a2, 0x02C8           ## $a1 = 000002C8
/* 00154 80B2F674 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00158 80B2F678 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0015C 80B2F67C 03E00008 */  jr      $ra                        
/* 00160 80B2F680 00000000 */  nop


