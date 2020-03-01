glabel BgBomGuard_Update
/* 001B4 8086E704 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001B8 8086E708 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001BC 8086E70C 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 001C0 8086E710 0320F809 */  jalr    $ra, $t9                   
/* 001C4 8086E714 00000000 */  nop
/* 001C8 8086E718 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001CC 8086E71C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001D0 8086E720 03E00008 */  jr      $ra                        
/* 001D4 8086E724 00000000 */  nop
/* 001D8 8086E728 00000000 */  nop
/* 001DC 8086E72C 00000000 */  nop

