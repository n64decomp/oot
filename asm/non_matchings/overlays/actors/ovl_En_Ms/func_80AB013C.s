glabel func_80AB013C
/* 0041C 80AB013C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00420 80AB0140 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00424 80AB0144 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00428 80AB0148 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0042C 80AB014C 0C042F6F */  jal     func_8010BDBC              
/* 00430 80AB0150 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00434 80AB0154 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00438 80AB0158 5441000C */  bnel    $v0, $at, .L80AB018C       
/* 0043C 80AB015C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00440 80AB0160 0C041AF2 */  jal     func_80106BC8              
/* 00444 80AB0164 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00448 80AB0168 10400007 */  beq     $v0, $zero, .L80AB0188     
/* 0044C 80AB016C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00450 80AB0170 0C042DC8 */  jal     func_8010B720              
/* 00454 80AB0174 2405406C */  addiu   $a1, $zero, 0x406C         ## $a1 = 0000406C
/* 00458 80AB0178 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 0045C 80AB017C 3C0E80AB */  lui     $t6, %hi(func_80AAFF8C)    ## $t6 = 80AB0000
/* 00460 80AB0180 25CEFF8C */  addiu   $t6, $t6, %lo(func_80AAFF8C) ## $t6 = 80AAFF8C
/* 00464 80AB0184 ADEE01FC */  sw      $t6, 0x01FC($t7)           ## 000001FC
.L80AB0188:
/* 00468 80AB0188 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AB018C:
/* 0046C 80AB018C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00470 80AB0190 03E00008 */  jr      $ra                        
/* 00474 80AB0194 00000000 */  nop


