glabel func_80ABE768
/* 00008 80ABE768 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0000C 80ABE76C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00010 80ABE770 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00014 80ABE774 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00018 80ABE778 00A11021 */  addu    $v0, $a1, $at              
/* 0001C 80ABE77C A0400B16 */  sb      $zero, 0x0B16($v0)         ## 00000B16
/* 00020 80ABE780 3C038012 */  lui     $v1, 0x8012                ## $v1 = 80120000
/* 00024 80ABE784 9063FB30 */  lbu     $v1, -0x04D0($v1)          ## 8011FB30
/* 00028 80ABE788 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0002C 80ABE78C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00030 80ABE790 1061000D */  beq     $v1, $at, .L80ABE7C8       
/* 00034 80ABE794 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00038 80ABE798 5061000C */  beql    $v1, $at, .L80ABE7CC       
/* 0003C 80ABE79C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00040 80ABE7A0 904E0B01 */  lbu     $t6, 0x0B01($v0)           ## 00000B01
/* 00044 80ABE7A4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00048 80ABE7A8 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 0004C 80ABE7AC 15C10006 */  bne     $t6, $at, .L80ABE7C8       
/* 00050 80ABE7B0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00054 80ABE7B4 00250821 */  addu    $at, $at, $a1              
/* 00058 80ABE7B8 A02F0B01 */  sb      $t7, 0x0B01($at)           ## 00010B01
/* 0005C 80ABE7BC 0C01DDA1 */  jal     func_80077684              
/* 00060 80ABE7C0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00064 80ABE7C4 8FA4001C */  lw      $a0, 0x001C($sp)           
.L80ABE7C8:
/* 00068 80ABE7C8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80ABE7CC:
/* 0006C 80ABE7CC 00240821 */  addu    $at, $at, $a0              
/* 00070 80ABE7D0 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 00074 80ABE7D4 A0380B03 */  sb      $t8, 0x0B03($at)           ## 00010B03
/* 00078 80ABE7D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0007C 80ABE7DC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00080 80ABE7E0 03E00008 */  jr      $ra                        
/* 00084 80ABE7E4 00000000 */  nop


