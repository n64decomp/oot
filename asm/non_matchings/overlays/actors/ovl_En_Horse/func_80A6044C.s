glabel func_80A6044C
/* 0515C 80A6044C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 05160 80A60450 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 05164 80A60454 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 05168 80A60458 0C29811C */  jal     func_80A60470              
/* 0516C 80A6045C E48401C4 */  swc1    $f4, 0x01C4($a0)           ## 000001C4
/* 05170 80A60460 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 05174 80A60464 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 05178 80A60468 03E00008 */  jr      $ra                        
/* 0517C 80A6046C 00000000 */  nop

