glabel func_8086E608
/* 000B8 8086E608 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000BC 8086E60C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000C0 8086E610 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 000C4 8086E614 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000C8 8086E618 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000CC 8086E61C 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 000D0 8086E620 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 000D4 8086E624 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 000D8 8086E628 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000DC 8086E62C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000E0 8086E630 03E00008 */  jr      $ra                        
/* 000E4 8086E634 00000000 */  nop


