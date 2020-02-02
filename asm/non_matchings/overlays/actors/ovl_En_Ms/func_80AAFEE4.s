glabel func_80AAFEE4
/* 001C4 80AAFEE4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 001C8 80AAFEE8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001CC 80AAFEEC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 001D0 80AAFEF0 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 001D4 80AAFEF4 848E008A */  lh      $t6, 0x008A($a0)           ## 0000008A
/* 001D8 80AAFEF8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 001DC 80AAFEFC 01CF1823 */  subu    $v1, $t6, $t7              
/* 001E0 80AAFF00 00031C00 */  sll     $v1, $v1, 16               
/* 001E4 80AAFF04 00031C03 */  sra     $v1, $v1, 16               
/* 001E8 80AAFF08 0C2ABF48 */  jal     func_80AAFD20              
/* 001EC 80AAFF0C A7A3001E */  sh      $v1, 0x001E($sp)           
/* 001F0 80AAFF10 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 001F4 80AAFF14 0C00BC65 */  jal     func_8002F194              
/* 001F8 80AAFF18 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 001FC 80AAFF1C 87A3001E */  lh      $v1, 0x001E($sp)           
/* 00200 80AAFF20 10400005 */  beq     $v0, $zero, .L80AAFF38     
/* 00204 80AAFF24 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00208 80AAFF28 3C1880AB */  lui     $t8, %hi(func_80AAFF8C)    ## $t8 = 80AB0000
/* 0020C 80AAFF2C 2718FF8C */  addiu   $t8, $t8, %lo(func_80AAFF8C) ## $t8 = 80AAFF8C
/* 00210 80AAFF30 10000012 */  beq     $zero, $zero, .L80AAFF7C   
/* 00214 80AAFF34 AC9801FC */  sw      $t8, 0x01FC($a0)           ## 000001FC
.L80AAFF38:
/* 00218 80AAFF38 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 0021C 80AAFF3C 44810000 */  mtc1    $at, $f0                   ## $f0 = 90.00
/* 00220 80AAFF40 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00224 80AAFF44 4600203C */  c.lt.s  $f4, $f0                   
/* 00228 80AAFF48 00000000 */  nop
/* 0022C 80AAFF4C 4502000C */  bc1fl   .L80AAFF80                 
/* 00230 80AAFF50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00234 80AAFF54 04600003 */  bltz    $v1, .L80AAFF64            
/* 00238 80AAFF58 00031023 */  subu    $v0, $zero, $v1            
/* 0023C 80AAFF5C 10000001 */  beq     $zero, $zero, .L80AAFF64   
/* 00240 80AAFF60 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80AAFF64:
/* 00244 80AAFF64 28412000 */  slti    $at, $v0, 0x2000           
/* 00248 80AAFF68 50200005 */  beql    $at, $zero, .L80AAFF80     
/* 0024C 80AAFF6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00250 80AAFF70 44060000 */  mfc1    $a2, $f0                   
/* 00254 80AAFF74 0C00BCB3 */  jal     func_8002F2CC              
/* 00258 80AAFF78 8FA50024 */  lw      $a1, 0x0024($sp)           
.L80AAFF7C:
/* 0025C 80AAFF7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AAFF80:
/* 00260 80AAFF80 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00264 80AAFF84 03E00008 */  jr      $ra                        
/* 00268 80AAFF88 00000000 */  nop


