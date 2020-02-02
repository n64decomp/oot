glabel func_8097CE78
/* 00608 8097CE78 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0060C 8097CE7C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00610 8097CE80 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00614 8097CE84 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00618 8097CE88 51C00015 */  beql    $t6, $zero, .L8097CEE0     
/* 0061C 8097CE8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00620 8097CE90 0C25F21C */  jal     func_8097C870              
/* 00624 8097CE94 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00628 8097CE98 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0062C 8097CE9C 00027880 */  sll     $t7, $v0,  2               
/* 00630 8097CEA0 24A31D64 */  addiu   $v1, $a1, 0x1D64           ## $v1 = 00001D64
/* 00634 8097CEA4 006FC021 */  addu    $t8, $v1, $t7              
/* 00638 8097CEA8 8F040028 */  lw      $a0, 0x0028($t8)           ## 00000028
/* 0063C 8097CEAC 5080000C */  beql    $a0, $zero, .L8097CEE0     
/* 00640 8097CEB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00644 8097CEB4 94790010 */  lhu     $t9, 0x0010($v1)           ## 00001D74
/* 00648 8097CEB8 94880004 */  lhu     $t0, 0x0004($a0)           ## 00000004
/* 0064C 8097CEBC 0328082A */  slt     $at, $t9, $t0              
/* 00650 8097CEC0 54200007 */  bnel    $at, $zero, .L8097CEE0     
/* 00654 8097CEC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00658 8097CEC8 0C25F29E */  jal     func_8097CA78              
/* 0065C 8097CECC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00660 8097CED0 8FAA0018 */  lw      $t2, 0x0018($sp)           
/* 00664 8097CED4 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 00668 8097CED8 AD490194 */  sw      $t1, 0x0194($t2)           ## 00000194
/* 0066C 8097CEDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8097CEE0:
/* 00670 8097CEE0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00674 8097CEE4 03E00008 */  jr      $ra                        
/* 00678 8097CEE8 00000000 */  nop


