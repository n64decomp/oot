glabel EnPubox_Draw
/* 002BC 80AE237C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002C0 80AE2380 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 002C4 80AE2384 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002C8 80AE2388 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002CC 80AE238C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 002D0 80AE2390 0C00D498 */  jal     Draw_DListOpa
              
/* 002D4 80AE2394 24A50380 */  addiu   $a1, $a1, 0x0380           ## $a1 = 06000380
/* 002D8 80AE2398 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002DC 80AE239C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002E0 80AE23A0 03E00008 */  jr      $ra                        
/* 002E4 80AE23A4 00000000 */  nop
/* 002E8 80AE23A8 00000000 */  nop
/* 002EC 80AE23AC 00000000 */  nop

