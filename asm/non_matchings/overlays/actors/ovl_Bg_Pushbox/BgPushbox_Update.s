glabel BgPushbox_Update
/* 001A8 808A8C88 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001AC 808A8C8C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001B0 808A8C90 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001B4 808A8C94 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 001B8 808A8C98 0320F809 */  jalr    $ra, $t9                   
/* 001BC 808A8C9C 00000000 */  nop
/* 001C0 808A8CA0 0C00B7E4 */  jal     func_8002DF90              
/* 001C4 808A8CA4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 001C8 808A8CA8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001CC 808A8CAC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001D0 808A8CB0 03E00008 */  jr      $ra                        
/* 001D4 808A8CB4 00000000 */  nop


