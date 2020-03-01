glabel BgSpot15Saku_Update
/* 001E4 808B4A34 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001E8 808B4A38 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001EC 808B4A3C 8482017C */  lh      $v0, 0x017C($a0)           ## 0000017C
/* 001F0 808B4A40 10400002 */  beq     $v0, $zero, .L808B4A4C     
/* 001F4 808B4A44 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 001F8 808B4A48 A48E017C */  sh      $t6, 0x017C($a0)           ## 0000017C
.L808B4A4C:
/* 001FC 808B4A4C 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00200 808B4A50 0320F809 */  jalr    $ra, $t9                   
/* 00204 808B4A54 00000000 */  nop
/* 00208 808B4A58 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0020C 808B4A5C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00210 808B4A60 03E00008 */  jr      $ra                        
/* 00214 808B4A64 00000000 */  nop


