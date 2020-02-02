glabel func_8086DB68
/* 00B58 8086DB68 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B5C 8086DB6C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B60 8086DB70 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00B64 8086DB74 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00B68 8086DB78 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00B6C 8086DB7C 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 00000000
/* 00B70 8086DB80 10410005 */  beq     $v0, $at, .L8086DB98       
/* 00B74 8086DB84 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00B78 8086DB88 50410014 */  beql    $v0, $at, .L8086DBDC       
/* 00B7C 8086DB8C 90880179 */  lbu     $t0, 0x0179($a0)           ## 00000179
/* 00B80 8086DB90 10000024 */  beq     $zero, $zero, .L8086DC24   
/* 00B84 8086DB94 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086DB98:
/* 00B88 8086DB98 908E0179 */  lbu     $t6, 0x0179($a0)           ## 00000179
/* 00B8C 8086DB9C 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 00B90 8086DBA0 51E00020 */  beql    $t7, $zero, .L8086DC24     
/* 00B94 8086DBA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B98 8086DBA8 849801D8 */  lh      $t8, 0x01D8($a0)           ## 000001D8
/* 00B9C 8086DBAC 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 00BA0 8086DBB0 5F00001C */  bgtzl   $t8, .L8086DC24            
/* 00BA4 8086DBB4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BA8 8086DBB8 A49901D8 */  sh      $t9, 0x01D8($a0)           ## 000001D8
/* 00BAC 8086DBBC 0C21B70C */  jal     func_8086DC30              
/* 00BB0 8086DBC0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00BB4 8086DBC4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00BB8 8086DBC8 0C21B52D */  jal     func_8086D4B4              
/* 00BBC 8086DBCC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00BC0 8086DBD0 10000014 */  beq     $zero, $zero, .L8086DC24   
/* 00BC4 8086DBD4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BC8 8086DBD8 90880179 */  lbu     $t0, 0x0179($a0)           ## 00000179
.L8086DBDC:
/* 00BCC 8086DBDC 31090002 */  andi    $t1, $t0, 0x0002           ## $t1 = 00000000
/* 00BD0 8086DBE0 51200010 */  beql    $t1, $zero, .L8086DC24     
/* 00BD4 8086DBE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BD8 8086DBE8 908A01DC */  lbu     $t2, 0x01DC($a0)           ## 000001DC
/* 00BDC 8086DBEC 314B0002 */  andi    $t3, $t2, 0x0002           ## $t3 = 00000000
/* 00BE0 8086DBF0 5560000C */  bnel    $t3, $zero, .L8086DC24     
/* 00BE4 8086DBF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BE8 8086DBF8 848C01D8 */  lh      $t4, 0x01D8($a0)           ## 000001D8
/* 00BEC 8086DBFC 240D000A */  addiu   $t5, $zero, 0x000A         ## $t5 = 0000000A
/* 00BF0 8086DC00 5D800008 */  bgtzl   $t4, .L8086DC24            
/* 00BF4 8086DC04 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BF8 8086DC08 A48D01D8 */  sh      $t5, 0x01D8($a0)           ## 000001D8
/* 00BFC 8086DC0C 0C21B70C */  jal     func_8086DC30              
/* 00C00 8086DC10 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00C04 8086DC14 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C08 8086DC18 0C21B52D */  jal     func_8086D4B4              
/* 00C0C 8086DC1C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00C10 8086DC20 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086DC24:
/* 00C14 8086DC24 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C18 8086DC28 03E00008 */  jr      $ra                        
/* 00C1C 8086DC2C 00000000 */  nop


