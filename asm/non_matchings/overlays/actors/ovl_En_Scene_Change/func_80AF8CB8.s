glabel func_80AF8CB8
/* 00048 80AF8CB8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0004C 80AF8CBC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00050 80AF8CC0 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 00054 80AF8CC4 0320F809 */  jalr    $ra, $t9                   
/* 00058 80AF8CC8 00000000 */  nop
/* 0005C 80AF8CCC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00060 80AF8CD0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00064 80AF8CD4 03E00008 */  jr      $ra                        
/* 00068 80AF8CD8 00000000 */  nop


