glabel func_80088AA0
/* AFFC40 80088AA0 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* AFFC44 80088AA4 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* AFFC48 80088AA8 AFA40000 */  sw    $a0, ($sp)
/* AFFC4C 80088AAC 240E008C */  li    $t6, 140
/* AFFC50 80088AB0 240F0050 */  li    $t7, 80
/* AFFC54 80088AB4 00042400 */  sll   $a0, $a0, 0x10
/* AFFC58 80088AB8 A44E13D8 */  sh    $t6, 0x13d8($v0)
/* AFFC5C 80088ABC A44F13DC */  sh    $t7, 0x13dc($v0)
/* AFFC60 80088AC0 3C018012 */  lui   $at, %hi(D_80125A5C) # $at, 0x8012
/* AFFC64 80088AC4 00042403 */  sra   $a0, $a0, 0x10
/* AFFC68 80088AC8 A4205A5C */  sh    $zero, %lo(D_80125A5C)($at)
/* AFFC6C 80088ACC 10800004 */  beqz  $a0, .L80088AE0
/* AFFC70 80088AD0 A44413D4 */   sh    $a0, 0x13d4($v0)
/* AFFC74 80088AD4 24180001 */  li    $t8, 1
/* AFFC78 80088AD8 03E00008 */  jr    $ra
/* AFFC7C 80088ADC A45813D2 */   sh    $t8, 0x13d2($v0)
.L80088AE0:
/* AFFC80 80088AE0 24190007 */  li    $t9, 7
/* AFFC84 80088AE4 A45913D2 */  sh    $t9, 0x13d2($v0)
/* AFFC88 80088AE8 03E00008 */  jr    $ra
/* AFFC8C 80088AEC 00000000 */   nop   

