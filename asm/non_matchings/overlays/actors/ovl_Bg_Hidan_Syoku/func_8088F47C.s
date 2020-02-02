glabel func_8088F47C
/* 000BC 8088F47C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000C0 8088F480 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000C4 8088F484 240E003C */  addiu   $t6, $zero, 0x003C         ## $t6 = 0000003C
/* 000C8 8088F488 A48E016A */  sh      $t6, 0x016A($a0)           ## 0000016A
/* 000CC 8088F48C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000D0 8088F490 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 000D4 8088F494 24052835 */  addiu   $a1, $zero, 0x2835         ## $a1 = 00002835
/* 000D8 8088F498 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 000DC 8088F49C 3C0F8089 */  lui     $t7, %hi(func_8088F62C)    ## $t7 = 80890000
/* 000E0 8088F4A0 25EFF62C */  addiu   $t7, $t7, %lo(func_8088F62C) ## $t7 = 8088F62C
/* 000E4 8088F4A4 AC8F0164 */  sw      $t7, 0x0164($a0)           ## 00000164
/* 000E8 8088F4A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000EC 8088F4AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000F0 8088F4B0 03E00008 */  jr      $ra                        
/* 000F4 8088F4B4 00000000 */  nop


