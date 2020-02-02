glabel func_8097C8A8
/* 00038 8097C8A8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0003C 8097C8AC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00040 8097C8B0 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00044 8097C8B4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00048 8097C8B8 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 0004C 8097C8BC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00050 8097C8C0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00054 8097C8C4 10400002 */  beq     $v0, $zero, .L8097C8D0     
/* 00058 8097C8C8 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 0005C 8097C8CC 1441000C */  bne     $v0, $at, .L8097C900       
.L8097C8D0:
/* 00060 8097C8D0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00064 8097C8D4 34211D60 */  ori     $at, $at, 0x1D60           ## $at = 00011D60
/* 00068 8097C8D8 00812021 */  addu    $a0, $a0, $at              
/* 0006C 8097C8DC 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 00070 8097C8E0 27A60020 */  addiu   $a2, $sp, 0x0020           ## $a2 = FFFFFFF0
/* 00074 8097C8E4 0C029B84 */  jal     func_800A6E10              
/* 00078 8097C8E8 27A7001C */  addiu   $a3, $sp, 0x001C           ## $a3 = FFFFFFEC
/* 0007C 8097C8EC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00080 8097C8F0 27A50020 */  addiu   $a1, $sp, 0x0020           ## $a1 = FFFFFFF0
/* 00084 8097C8F4 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00088 8097C8F8 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 0008C 8097C8FC 240728A0 */  addiu   $a3, $zero, 0x28A0         ## $a3 = 000028A0
.L8097C900:
/* 00090 8097C900 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00094 8097C904 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00098 8097C908 03E00008 */  jr      $ra                        
/* 0009C 8097C90C 00000000 */  nop


