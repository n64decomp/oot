glabel func_8086DDC0
/* 00DB0 8086DDC0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00DB4 8086DDC4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00DB8 8086DDC8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00DBC 8086DDCC 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00DC0 8086DDD0 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00DC4 8086DDD4 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 00DC8 8086DDD8 15E10009 */  bne     $t7, $at, .L8086DE00       
/* 00DCC 8086DDDC 00000000 */  nop
/* 00DD0 8086DDE0 0C016C66 */  jal     func_8005B198              
/* 00DD4 8086DDE4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00DD8 8086DDE8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00DDC 8086DDEC 90980002 */  lbu     $t8, 0x0002($a0)           ## 00000002
/* 00DE0 8086DDF0 10580003 */  beq     $v0, $t8, .L8086DE00       
/* 00DE4 8086DDF4 00000000 */  nop
/* 00DE8 8086DDF8 849901DA */  lh      $t9, 0x01DA($a0)           ## 000001DA
/* 00DEC 8086DDFC 1F200011 */  bgtz    $t9, .L8086DE44            
.L8086DE00:
/* 00DF0 8086DE00 3C018087 */  lui     $at, %hi(D_8086E26C)       ## $at = 80870000
/* 00DF4 8086DE04 C426E26C */  lwc1    $f6, %lo(D_8086E26C)($at)  
/* 00DF8 8086DE08 C48401C8 */  lwc1    $f4, 0x01C8($a0)           ## 000001C8
/* 00DFC 8086DE0C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00E00 8086DE10 44818000 */  mtc1    $at, $f16                  ## $f16 = 2.00
/* 00E04 8086DE14 46062200 */  add.s   $f8, $f4, $f6              
/* 00E08 8086DE18 E48801C8 */  swc1    $f8, 0x01C8($a0)           ## 000001C8
/* 00E0C 8086DE1C C48A01C8 */  lwc1    $f10, 0x01C8($a0)          ## 000001C8
/* 00E10 8086DE20 460A803E */  c.le.s  $f16, $f10                 
/* 00E14 8086DE24 00000000 */  nop
/* 00E18 8086DE28 45020007 */  bc1fl   .L8086DE48                 
/* 00E1C 8086DE2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E20 8086DE30 0C21B6D3 */  jal     func_8086DB4C              
/* 00E24 8086DE34 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00E28 8086DE38 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00E2C 8086DE3C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00E30 8086DE40 24052815 */  addiu   $a1, $zero, 0x2815         ## $a1 = 00002815
.L8086DE44:
/* 00E34 8086DE44 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086DE48:
/* 00E38 8086DE48 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E3C 8086DE4C 03E00008 */  jr      $ra                        
/* 00E40 8086DE50 00000000 */  nop


