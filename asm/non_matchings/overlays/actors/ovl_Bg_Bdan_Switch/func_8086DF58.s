glabel func_8086DF58
/* 00F48 8086DF58 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F4C 8086DF5C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F50 8086DF60 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00F54 8086DF64 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00F58 8086DF68 C48601D0 */  lwc1    $f6, 0x01D0($a0)           ## 000001D0
/* 00F5C 8086DF6C C48400BC */  lwc1    $f4, 0x00BC($a0)           ## 000000BC
/* 00F60 8086DF70 C48A0028 */  lwc1    $f10, 0x0028($a0)          ## 00000028
/* 00F64 8086DF74 8C86002C */  lw      $a2, 0x002C($a0)           ## 0000002C
/* 00F68 8086DF78 46062202 */  mul.s   $f8, $f4, $f6              
/* 00F6C 8086DF7C C48C0024 */  lwc1    $f12, 0x0024($a0)          ## 00000024
/* 00F70 8086DF80 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00F74 8086DF84 248700B4 */  addiu   $a3, $a0, 0x00B4           ## $a3 = 000000B4
/* 00F78 8086DF88 0C0345A5 */  jal     func_800D1694              
/* 00F7C 8086DF8C 46085380 */  add.s   $f14, $f10, $f8            
/* 00F80 8086DF90 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00F84 8086DF94 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00F88 8086DF98 C48C01D4 */  lwc1    $f12, 0x01D4($a0)          ## 000001D4
/* 00F8C 8086DF9C C48E01D0 */  lwc1    $f14, 0x01D0($a0)          ## 000001D0
/* 00F90 8086DFA0 44066000 */  mfc1    $a2, $f12                  
/* 00F94 8086DFA4 0C0342A3 */  jal     func_800D0A8C              
/* 00F98 8086DFA8 00000000 */  nop
/* 00F9C 8086DFAC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00FA0 8086DFB0 0C00D498 */  jal     Draw_DListOpa
              
/* 00FA4 8086DFB4 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00FA8 8086DFB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00FAC 8086DFBC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00FB0 8086DFC0 03E00008 */  jr      $ra                        
/* 00FB4 8086DFC4 00000000 */  nop


