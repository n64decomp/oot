glabel func_8088E6D0
/* 00300 8088E6D0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00304 8088E6D4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00308 8088E6D8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0030C 8088E6DC 0C010D5B */  jal     func_8004356C              
/* 00310 8088E6E0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00314 8088E6E4 10400004 */  beq     $v0, $zero, .L8088E6F8     
/* 00318 8088E6E8 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 0031C 8088E6EC 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 00320 8088E6F0 10000005 */  beq     $zero, $zero, .L8088E708   
/* 00324 8088E6F4 A4EE0168 */  sh      $t6, 0x0168($a3)           ## 00000168
.L8088E6F8:
/* 00328 8088E6F8 84E20168 */  lh      $v0, 0x0168($a3)           ## 00000168
/* 0032C 8088E6FC 10400002 */  beq     $v0, $zero, .L8088E708     
/* 00330 8088E700 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 00334 8088E704 A4EF0168 */  sh      $t7, 0x0168($a3)           ## 00000168
.L8088E708:
/* 00338 8088E708 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0033C 8088E70C 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 00340 8088E710 C4E4000C */  lwc1    $f4, 0x000C($a3)           ## 0000000C
/* 00344 8088E714 3C063FD9 */  lui     $a2, 0x3FD9                ## $a2 = 3FD90000
/* 00348 8088E718 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3FD9999A
/* 0034C 8088E71C 46062201 */  sub.s   $f8, $f4, $f6              
/* 00350 8088E720 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00354 8088E724 24E40028 */  addiu   $a0, $a3, 0x0028           ## $a0 = 00000028
/* 00358 8088E728 44054000 */  mfc1    $a1, $f8                   
/* 0035C 8088E72C 0C01DE80 */  jal     Math_ApproxF
              
/* 00360 8088E730 00000000 */  nop
/* 00364 8088E734 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00368 8088E738 3C198089 */  lui     $t9, %hi(func_8088E518)    ## $t9 = 80890000
/* 0036C 8088E73C 2739E518 */  addiu   $t9, $t9, %lo(func_8088E518) ## $t9 = 8088E518
/* 00370 8088E740 84F80168 */  lh      $t8, 0x0168($a3)           ## 00000168
/* 00374 8088E744 57000003 */  bnel    $t8, $zero, .L8088E754     
/* 00378 8088E748 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0037C 8088E74C ACF90164 */  sw      $t9, 0x0164($a3)           ## 00000164
/* 00380 8088E750 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8088E754:
/* 00384 8088E754 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00388 8088E758 03E00008 */  jr      $ra                        
/* 0038C 8088E75C 00000000 */  nop


