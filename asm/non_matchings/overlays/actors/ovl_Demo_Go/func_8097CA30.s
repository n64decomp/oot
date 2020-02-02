glabel func_8097CA30
/* 001C0 8097CA30 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 001C4 8097CA34 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 001C8 8097CA38 44810000 */  mtc1    $at, $f0                   ## $f0 = 30.00
/* 001CC 8097CA3C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 001D0 8097CA40 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 001D4 8097CA44 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 001D8 8097CA48 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 001DC 8097CA4C 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 001E0 8097CA50 44070000 */  mfc1    $a3, $f0                   
/* 001E4 8097CA54 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 001E8 8097CA58 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 001EC 8097CA5C 3C064296 */  lui     $a2, 0x4296                ## $a2 = 42960000
/* 001F0 8097CA60 0C00B92D */  jal     func_8002E4B4              
/* 001F4 8097CA64 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 001F8 8097CA68 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 001FC 8097CA6C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00200 8097CA70 03E00008 */  jr      $ra                        
/* 00204 8097CA74 00000000 */  nop


