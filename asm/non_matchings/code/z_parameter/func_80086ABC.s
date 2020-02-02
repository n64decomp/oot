glabel func_80086ABC
/* AFDC5C 80086ABC 3C0E8016 */  lui   $t6, %hi(gSaveContext+0x86) # $t6, 0x8016
/* AFDC60 80086AC0 91CEE6E6 */  lbu   $t6, %lo(gSaveContext+0x86)($t6)
/* AFDC64 80086AC4 24020014 */  li    $v0, 20
/* AFDC68 80086AC8 3C0F8016 */  lui   $t7, %hi(gSaveContext+0x87)
/* AFDC6C 80086ACC 144E0003 */  bne   $v0, $t6, .L80086ADC
/* AFDC70 80086AD0 00000000 */   nop   
/* AFDC74 80086AD4 03E00008 */  jr    $ra
/* AFDC78 80086AD8 24020001 */   li    $v0, 1
.L80086ADC:
/* AFDC7C 80086ADC 91EFE6E7 */  lbu   $t7, %lo(gSaveContext+0x87)($t7)
/* AFDC80 80086AE0 3C188016 */  lui   $t8, %hi(gSaveContext+0x88)
/* AFDC84 80086AE4 144F0003 */  bne   $v0, $t7, .L80086AF4
/* AFDC88 80086AE8 00000000 */   nop   
/* AFDC8C 80086AEC 03E00008 */  jr    $ra
/* AFDC90 80086AF0 24020001 */   li    $v0, 1
.L80086AF4:
/* AFDC94 80086AF4 9318E6E8 */  lbu   $t8, %lo(gSaveContext+0x88)($t8)
/* AFDC98 80086AF8 3C198016 */  lui   $t9, %hi(gSaveContext+0x89)
/* AFDC9C 80086AFC 14580003 */  bne   $v0, $t8, .L80086B0C
/* AFDCA0 80086B00 00000000 */   nop   
/* AFDCA4 80086B04 03E00008 */  jr    $ra
/* AFDCA8 80086B08 24020001 */   li    $v0, 1
.L80086B0C:
/* AFDCAC 80086B0C 9339E6E9 */  lbu   $t9, %lo(gSaveContext+0x89)($t9)
/* AFDCB0 80086B10 54590004 */  bnel  $v0, $t9, .L80086B24
/* AFDCB4 80086B14 00001025 */   move  $v0, $zero
/* AFDCB8 80086B18 03E00008 */  jr    $ra
/* AFDCBC 80086B1C 24020001 */   li    $v0, 1
/* AFDCC0 80086B20 00001025 */  move  $v0, $zero
.L80086B24:
/* AFDCC4 80086B24 03E00008 */  jr    $ra
/* AFDCC8 80086B28 00000000 */   nop   

