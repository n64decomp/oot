glabel func_80981994
/* 04324 80981994 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04328 80981998 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0432C 8098199C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 04330 809819A0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 04334 809819A4 0C25FA09 */  jal     func_8097E824              
/* 04338 809819A8 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 0433C 809819AC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 04340 809819B0 0C26063F */  jal     func_809818FC              
/* 04344 809819B4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 04348 809819B8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0434C 809819BC 0C26064C */  jal     func_80981930              
/* 04350 809819C0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 04354 809819C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04358 809819C8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0435C 809819CC 03E00008 */  jr      $ra                        
/* 04360 809819D0 00000000 */  nop


