glabel func_80934628
/* 08058 80934628 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0805C 8093462C AFA40000 */  sw      $a0, 0x0000($sp)           
/* 08060 80934630 14A1000B */  bne     $a1, $at, .L80934660       
/* 08064 80934634 AFA60008 */  sw      $a2, 0x0008($sp)           
/* 08068 80934638 8FA20014 */  lw      $v0, 0x0014($sp)           
/* 0806C 8093463C C4E40008 */  lwc1    $f4, 0x0008($a3)           ## 00000008
/* 08070 80934640 8FA30010 */  lw      $v1, 0x0010($sp)           
/* 08074 80934644 C4460014 */  lwc1    $f6, 0x0014($v0)           ## 00000014
/* 08078 80934648 46062200 */  add.s   $f8, $f4, $f6              
/* 0807C 8093464C E4E80008 */  swc1    $f8, 0x0008($a3)           ## 00000008
/* 08080 80934650 844F0018 */  lh      $t7, 0x0018($v0)           ## 00000018
/* 08084 80934654 846E0002 */  lh      $t6, 0x0002($v1)           ## 00000002
/* 08088 80934658 01CFC021 */  addu    $t8, $t6, $t7              
/* 0808C 8093465C A4780002 */  sh      $t8, 0x0002($v1)           ## 00000002
.L80934660:
/* 08090 80934660 03E00008 */  jr      $ra                        
/* 08094 80934664 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000


