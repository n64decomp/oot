glabel func_8086DCE8
/* 00CD8 8086DCE8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00CDC 8086DCEC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CE0 8086DCF0 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 00CE4 8086DCF4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00CE8 8086DCF8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00CEC 8086DCFC 306200FF */  andi    $v0, $v1, 0x00FF           ## $v0 = 00000000
/* 00CF0 8086DD00 10410006 */  beq     $v0, $at, .L8086DD1C       
/* 00CF4 8086DD04 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00CF8 8086DD08 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00CFC 8086DD0C 5041000F */  beql    $v0, $at, .L8086DD4C       
/* 00D00 8086DD10 90CE0179 */  lbu     $t6, 0x0179($a2)           ## 00000179
/* 00D04 8086DD14 10000021 */  beq     $zero, $zero, .L8086DD9C   
/* 00D08 8086DD18 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086DD1C:
/* 00D0C 8086DD1C 00032A03 */  sra     $a1, $v1,  8               
/* 00D10 8086DD20 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00D14 8086DD24 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00D18 8086DD28 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00D1C 8086DD2C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00D20 8086DD30 14400019 */  bne     $v0, $zero, .L8086DD98     
/* 00D24 8086DD34 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00D28 8086DD38 0C21B76A */  jal     func_8086DDA8              
/* 00D2C 8086DD3C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00D30 8086DD40 10000016 */  beq     $zero, $zero, .L8086DD9C   
/* 00D34 8086DD44 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D38 8086DD48 90CE0179 */  lbu     $t6, 0x0179($a2)           ## 00000179
.L8086DD4C:
/* 00D3C 8086DD4C 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 00D40 8086DD50 51E00012 */  beql    $t7, $zero, .L8086DD9C     
/* 00D44 8086DD54 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D48 8086DD58 90D801DC */  lbu     $t8, 0x01DC($a2)           ## 000001DC
/* 00D4C 8086DD5C 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000000
/* 00D50 8086DD60 5720000E */  bnel    $t9, $zero, .L8086DD9C     
/* 00D54 8086DD64 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D58 8086DD68 84C801D8 */  lh      $t0, 0x01D8($a2)           ## 000001D8
/* 00D5C 8086DD6C 2409000A */  addiu   $t1, $zero, 0x000A         ## $t1 = 0000000A
/* 00D60 8086DD70 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00D64 8086DD74 5D000009 */  bgtzl   $t0, .L8086DD9C            
/* 00D68 8086DD78 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D6C 8086DD7C A4C901D8 */  sh      $t1, 0x01D8($a2)           ## 000001D8
/* 00D70 8086DD80 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00D74 8086DD84 0C21B76A */  jal     func_8086DDA8              
/* 00D78 8086DD88 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00D7C 8086DD8C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00D80 8086DD90 0C21B552 */  jal     func_8086D548              
/* 00D84 8086DD94 8FA5001C */  lw      $a1, 0x001C($sp)           
.L8086DD98:
/* 00D88 8086DD98 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086DD9C:
/* 00D8C 8086DD9C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D90 8086DDA0 03E00008 */  jr      $ra                        
/* 00D94 8086DDA4 00000000 */  nop


