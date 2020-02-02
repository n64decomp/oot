glabel func_80086B2C
/* AFDCCC 80086B2C 3C0E8016 */  lui   $t6, %hi(gSaveContext+0x86) # $t6, 0x8016
/* AFDCD0 80086B30 91CEE6E6 */  lbu   $t6, %lo(gSaveContext+0x86)($t6)
/* AFDCD4 80086B34 308200FF */  andi  $v0, $a0, 0xff
/* AFDCD8 80086B38 AFA40000 */  sw    $a0, ($sp)
/* AFDCDC 80086B3C 144E0003 */  bne   $v0, $t6, .L80086B4C
/* AFDCE0 80086B40 3C0F8016 */   lui   $t7, %hi(gSaveContext+0x87)
/* AFDCE4 80086B44 03E00008 */  jr    $ra
/* AFDCE8 80086B48 24020001 */   li    $v0, 1
.L80086B4C:
/* AFDCEC 80086B4C 91EFE6E7 */  lbu   $t7, %lo(gSaveContext+0x87)($t7)
/* AFDCF0 80086B50 3C188016 */  lui   $t8, %hi(gSaveContext+0x88)
/* AFDCF4 80086B54 144F0003 */  bne   $v0, $t7, .L80086B64
/* AFDCF8 80086B58 00000000 */   nop   
/* AFDCFC 80086B5C 03E00008 */  jr    $ra
/* AFDD00 80086B60 24020001 */   li    $v0, 1
.L80086B64:
/* AFDD04 80086B64 9318E6E8 */  lbu   $t8, %lo(gSaveContext+0x88)($t8)
/* AFDD08 80086B68 3C198016 */  lui   $t9, %hi(gSaveContext+0x89)
/* AFDD0C 80086B6C 14580003 */  bne   $v0, $t8, .L80086B7C
/* AFDD10 80086B70 00000000 */   nop   
/* AFDD14 80086B74 03E00008 */  jr    $ra
/* AFDD18 80086B78 24020001 */   li    $v0, 1
.L80086B7C:
/* AFDD1C 80086B7C 9339E6E9 */  lbu   $t9, %lo(gSaveContext+0x89)($t9)
/* AFDD20 80086B80 54590004 */  bnel  $v0, $t9, .L80086B94
/* AFDD24 80086B84 00001025 */   move  $v0, $zero
/* AFDD28 80086B88 03E00008 */  jr    $ra
/* AFDD2C 80086B8C 24020001 */   li    $v0, 1
/* AFDD30 80086B90 00001025 */  move  $v0, $zero
.L80086B94:
/* AFDD34 80086B94 03E00008 */  jr    $ra
/* AFDD38 80086B98 00000000 */   nop   

