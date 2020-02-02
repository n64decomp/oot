glabel func_8086DA1C
/* 00A0C 8086DA1C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A10 8086DA20 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A14 8086DA24 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00A18 8086DA28 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00A1C 8086DA2C 8DE303AC */  lw      $v1, 0x03AC($t7)           ## 000003AC
/* 00A20 8086DA30 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00A24 8086DA34 0C010D5B */  jal     func_8004356C              
/* 00A28 8086DA38 AFA3001C */  sw      $v1, 0x001C($sp)           
/* 00A2C 8086DA3C 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 00A30 8086DA40 10400013 */  beq     $v0, $zero, .L8086DA90     
/* 00A34 8086DA44 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00A38 8086DA48 1060000F */  beq     $v1, $zero, .L8086DA88     
/* 00A3C 8086DA4C 24080006 */  addiu   $t0, $zero, 0x0006         ## $t0 = 00000006
/* 00A40 8086DA50 84780000 */  lh      $t8, 0x0000($v1)           ## 00000000
/* 00A44 8086DA54 240100A1 */  addiu   $at, $zero, 0x00A1         ## $at = 000000A1
/* 00A48 8086DA58 1701000B */  bne     $t8, $at, .L8086DA88       
/* 00A4C 8086DA5C 00000000 */  nop
/* 00A50 8086DA60 849901D8 */  lh      $t9, 0x01D8($a0)           ## 000001D8
/* 00A54 8086DA64 5F200010 */  bgtzl   $t9, .L8086DAA8            
/* 00A58 8086DA68 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A5C 8086DA6C 0C21B651 */  jal     func_8086D944              
/* 00A60 8086DA70 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00A64 8086DA74 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00A68 8086DA78 0C21B52D */  jal     func_8086D4B4              
/* 00A6C 8086DA7C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00A70 8086DA80 10000009 */  beq     $zero, $zero, .L8086DAA8   
/* 00A74 8086DA84 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086DA88:
/* 00A78 8086DA88 10000006 */  beq     $zero, $zero, .L8086DAA4   
/* 00A7C 8086DA8C A48801D8 */  sh      $t0, 0x01D8($a0)           ## 000001D8
.L8086DA90:
/* 00A80 8086DA90 848901D8 */  lh      $t1, 0x01D8($a0)           ## 000001D8
/* 00A84 8086DA94 5D200004 */  bgtzl   $t1, .L8086DAA8            
/* 00A88 8086DA98 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A8C 8086DA9C 0C21B6AD */  jal     func_8086DAB4              
/* 00A90 8086DAA0 00000000 */  nop
.L8086DAA4:
/* 00A94 8086DAA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086DAA8:
/* 00A98 8086DAA8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00A9C 8086DAAC 03E00008 */  jr      $ra                        
/* 00AA0 8086DAB0 00000000 */  nop


