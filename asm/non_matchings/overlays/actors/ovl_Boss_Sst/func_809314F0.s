glabel func_809314F0
/* 04F20 809314F0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04F24 809314F4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04F28 809314F8 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 04F2C 809314FC 84EE001C */  lh      $t6, 0x001C($a3)           ## 0000001C
/* 04F30 80931500 3C058093 */  lui     $a1, %hi(D_80937854)       ## $a1 = 80930000
/* 04F34 80931504 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 04F38 80931508 000E7880 */  sll     $t7, $t6,  2               
/* 04F3C 8093150C 00AF2821 */  addu    $a1, $a1, $t7              
/* 04F40 80931510 8CA57854 */  lw      $a1, %lo(D_80937854)($a1)  
/* 04F44 80931514 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 04F48 80931518 0C029490 */  jal     func_800A5240              
/* 04F4C 8093151C 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 04F50 80931520 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 04F54 80931524 24180240 */  addiu   $t8, $zero, 0x0240         ## $t8 = 00000240
/* 04F58 80931528 24050020 */  addiu   $a1, $zero, 0x0020         ## $a1 = 00000020
/* 04F5C 8093152C A4800198 */  sh      $zero, 0x0198($a0)         ## 00000198
/* 04F60 80931530 A498019C */  sh      $t8, 0x019C($a0)           ## 0000019C
/* 04F64 80931534 A480019A */  sh      $zero, 0x019A($a0)         ## 0000019A
/* 04F68 80931538 0C24CF20 */  jal     func_80933C80              
/* 04F6C 8093153C A0800195 */  sb      $zero, 0x0195($a0)         ## 00000195
/* 04F70 80931540 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 04F74 80931544 3C198093 */  lui     $t9, %hi(func_80931560)    ## $t9 = 80930000
/* 04F78 80931548 27391560 */  addiu   $t9, $t9, %lo(func_80931560) ## $t9 = 80931560
/* 04F7C 8093154C ACF90190 */  sw      $t9, 0x0190($a3)           ## 00000190
/* 04F80 80931550 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04F84 80931554 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04F88 80931558 03E00008 */  jr      $ra                        
/* 04F8C 8093155C 00000000 */  nop


