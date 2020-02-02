glabel func_8086DC48
/* 00C38 8086DC48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C3C 8086DC4C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C40 8086DC50 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00C44 8086DC54 0C016C66 */  jal     func_8005B198              
/* 00C48 8086DC58 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00C4C 8086DC5C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C50 8086DC60 3C018087 */  lui     $at, %hi(D_8086E268)       ## $at = 80870000
/* 00C54 8086DC64 908E0002 */  lbu     $t6, 0x0002($a0)           ## 00000002
/* 00C58 8086DC68 504E0005 */  beql    $v0, $t6, .L8086DC80       
/* 00C5C 8086DC6C C48401C8 */  lwc1    $f4, 0x01C8($a0)           ## 000001C8
/* 00C60 8086DC70 848F01DA */  lh      $t7, 0x01DA($a0)           ## 000001DA
/* 00C64 8086DC74 5DE00012 */  bgtzl   $t7, .L8086DCC0            
/* 00C68 8086DC78 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C6C 8086DC7C C48401C8 */  lwc1    $f4, 0x01C8($a0)           ## 000001C8
.L8086DC80:
/* 00C70 8086DC80 C426E268 */  lwc1    $f6, %lo(D_8086E268)($at)  
/* 00C74 8086DC84 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00C78 8086DC88 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 00C7C 8086DC8C 46062201 */  sub.s   $f8, $f4, $f6              
/* 00C80 8086DC90 E48801C8 */  swc1    $f8, 0x01C8($a0)           ## 000001C8
/* 00C84 8086DC94 C49001C8 */  lwc1    $f16, 0x01C8($a0)          ## 000001C8
/* 00C88 8086DC98 460A803E */  c.le.s  $f16, $f10                 
/* 00C8C 8086DC9C 00000000 */  nop
/* 00C90 8086DCA0 45020007 */  bc1fl   .L8086DCC0                 
/* 00C94 8086DCA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C98 8086DCA8 0C21B733 */  jal     func_8086DCCC              
/* 00C9C 8086DCAC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00CA0 8086DCB0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00CA4 8086DCB4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00CA8 8086DCB8 24052815 */  addiu   $a1, $zero, 0x2815         ## $a1 = 00002815
/* 00CAC 8086DCBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086DCC0:
/* 00CB0 8086DCC0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CB4 8086DCC4 03E00008 */  jr      $ra                        
/* 00CB8 8086DCC8 00000000 */  nop


