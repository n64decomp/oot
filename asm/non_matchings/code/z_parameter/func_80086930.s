glabel func_80086930
/* AFDAD0 80086930 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AFDAD4 80086934 3088FFFF */  andi  $t0, $a0, 0xffff
/* AFDAD8 80086938 24010010 */  li    $at, 16
/* AFDADC 8008693C AFBF0014 */  sw    $ra, 0x14($sp)
/* AFDAE0 80086940 AFA40020 */  sw    $a0, 0x20($sp)
/* AFDAE4 80086944 15010007 */  bne   $t0, $at, .L80086964
/* AFDAE8 80086948 AFA50024 */   sw    $a1, 0x24($sp)
/* AFDAEC 8008694C 3C0E8012 */  lui   $t6, %hi(D_80127475) # $t6, 0x8012
/* AFDAF0 80086950 91CE7475 */  lbu   $t6, %lo(D_80127475)($t6)
/* AFDAF4 80086954 3C098016 */  lui   $t1, %hi(gSaveContext) # $t1, 0x8016
/* AFDAF8 80086958 2529E660 */  addiu $t1, %lo(gSaveContext) # addiu $t1, $t1, -0x19a0
/* AFDAFC 8008695C 012E7821 */  addu  $t7, $t1, $t6
/* AFDB00 80086960 A1E0008C */  sb    $zero, 0x8c($t7)
.L80086964:
/* AFDB04 80086964 97B80026 */  lhu   $t8, 0x26($sp)
/* AFDB08 80086968 3C098016 */  lui   $t1, %hi(gSaveContext) # $t1, 0x8016
/* AFDB0C 8008696C 2529E660 */  addiu $t1, %lo(gSaveContext) # addiu $t1, $t1, -0x19a0
/* AFDB10 80086970 240700FF */  li    $a3, 255
/* AFDB14 80086974 3C048014 */  lui   $a0, %hi(D_8013E138) # $a0, 0x8014
/* AFDB18 80086978 01381021 */  addu  $v0, $t1, $t8
/* AFDB1C 8008697C A0470074 */  sb    $a3, 0x74($v0)
/* AFDB20 80086980 2484E138 */  addiu $a0, %lo(D_8013E138) # addiu $a0, $a0, -0x1ec8
/* AFDB24 80086984 30E600FF */  andi  $a2, $a3, 0xff
/* AFDB28 80086988 97A50026 */  lhu   $a1, 0x26($sp)
/* AFDB2C 8008698C 0C00084C */  jal   osSyncPrintf
/* AFDB30 80086990 AFA80018 */   sw    $t0, 0x18($sp)
/* AFDB34 80086994 3C098016 */  lui   $t1, %hi(gSaveContext) # $t1, 0x8016
/* AFDB38 80086998 2529E660 */  addiu $t1, %lo(gSaveContext) # addiu $t1, $t1, -0x19a0
/* AFDB3C 8008699C 240700FF */  li    $a3, 255
/* AFDB40 800869A0 8FA80018 */  lw    $t0, 0x18($sp)
/* AFDB44 800869A4 24020001 */  li    $v0, 1
/* AFDB48 800869A8 01221821 */  addu  $v1, $t1, $v0
.L800869AC:
/* AFDB4C 800869AC 90790068 */  lbu   $t9, 0x68($v1)
/* AFDB50 800869B0 24420001 */  addiu $v0, $v0, 1
/* AFDB54 800869B4 00021400 */  sll   $v0, $v0, 0x10
/* AFDB58 800869B8 15190003 */  bne   $t0, $t9, .L800869C8
/* AFDB5C 800869BC 00021403 */   sra   $v0, $v0, 0x10
/* AFDB60 800869C0 A0670068 */  sb    $a3, 0x68($v1)
/* AFDB64 800869C4 A067006B */  sb    $a3, 0x6b($v1)
.L800869C8:
/* AFDB68 800869C8 28410004 */  slti  $at, $v0, 4
/* AFDB6C 800869CC 5420FFF7 */  bnezl $at, .L800869AC
/* AFDB70 800869D0 01221821 */   addu  $v1, $t1, $v0
/* AFDB74 800869D4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AFDB78 800869D8 27BD0020 */  addiu $sp, $sp, 0x20
/* AFDB7C 800869DC 03E00008 */  jr    $ra
/* AFDB80 800869E0 00000000 */   nop   

