glabel func_800611A0
/* AD8340 800611A0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD8344 800611A4 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD8348 800611A8 AFB30020 */  sw    $s3, 0x20($sp)
/* AD834C 800611AC AFB2001C */  sw    $s2, 0x1c($sp)
/* AD8350 800611B0 AFB10018 */  sw    $s1, 0x18($sp)
/* AD8354 800611B4 AFB00014 */  sw    $s0, 0x14($sp)
/* AD8358 800611B8 8CAE00CC */  lw    $t6, 0xcc($a1)
/* AD835C 800611BC 24B000D0 */  addiu $s0, $a1, 0xd0
/* AD8360 800611C0 00A08825 */  move  $s1, $a1
/* AD8364 800611C4 000E7880 */  sll   $t7, $t6, 2
/* AD8368 800611C8 00AF1821 */  addu  $v1, $a1, $t7
/* AD836C 800611CC 246300D0 */  addiu $v1, $v1, 0xd0
/* AD8370 800611D0 0203082B */  sltu  $at, $s0, $v1
/* AD8374 800611D4 10200020 */  beqz  $at, .L80061258
/* AD8378 800611D8 00809825 */   move  $s3, $a0
/* AD837C 800611DC 3C128012 */  lui   $s2, %hi(D_8011DF5C) # $s2, 0x8012
/* AD8380 800611E0 2652DF5C */  addiu $s2, %lo(D_8011DF5C) # addiu $s2, $s2, -0x20a4
/* AD8384 800611E4 8E060000 */  lw    $a2, ($s0)
.L800611E8:
/* AD8388 800611E8 50C00018 */  beql  $a2, $zero, .L8006124C
/* AD838C 800611EC 26100004 */   addiu $s0, $s0, 4
/* AD8390 800611F0 90D80011 */  lbu   $t8, 0x11($a2)
/* AD8394 800611F4 33190001 */  andi  $t9, $t8, 1
/* AD8398 800611F8 53200014 */  beql  $t9, $zero, .L8006124C
/* AD839C 800611FC 26100004 */   addiu $s0, $s0, 4
/* AD83A0 80061200 8CC20000 */  lw    $v0, ($a2)
/* AD83A4 80061204 50400005 */  beql  $v0, $zero, .L8006121C
/* AD83A8 80061208 90C90015 */   lbu   $t1, 0x15($a2)
/* AD83AC 8006120C 8C480130 */  lw    $t0, 0x130($v0)
/* AD83B0 80061210 5100000E */  beql  $t0, $zero, .L8006124C
/* AD83B4 80061214 26100004 */   addiu $s0, $s0, 4
/* AD83B8 80061218 90C90015 */  lbu   $t1, 0x15($a2)
.L8006121C:
/* AD83BC 8006121C 02602025 */  move  $a0, $s3
/* AD83C0 80061220 02202825 */  move  $a1, $s1
/* AD83C4 80061224 00095080 */  sll   $t2, $t1, 2
/* AD83C8 80061228 024A5821 */  addu  $t3, $s2, $t2
/* AD83CC 8006122C 8D790000 */  lw    $t9, ($t3)
/* AD83D0 80061230 0320F809 */  jalr  $t9
/* AD83D4 80061234 00000000 */  nop   
/* AD83D8 80061238 8E2C00CC */  lw    $t4, 0xcc($s1)
/* AD83DC 8006123C 000C6880 */  sll   $t5, $t4, 2
/* AD83E0 80061240 022D1821 */  addu  $v1, $s1, $t5
/* AD83E4 80061244 246300D0 */  addiu $v1, $v1, 0xd0
/* AD83E8 80061248 26100004 */  addiu $s0, $s0, 4
.L8006124C:
/* AD83EC 8006124C 0203082B */  sltu  $at, $s0, $v1
/* AD83F0 80061250 5420FFE5 */  bnezl $at, .L800611E8
/* AD83F4 80061254 8E060000 */   lw    $a2, ($s0)
.L80061258:
/* AD83F8 80061258 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD83FC 8006125C 8FB00014 */  lw    $s0, 0x14($sp)
/* AD8400 80061260 8FB10018 */  lw    $s1, 0x18($sp)
/* AD8404 80061264 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD8408 80061268 8FB30020 */  lw    $s3, 0x20($sp)
/* AD840C 8006126C 03E00008 */  jr    $ra
/* AD8410 80061270 27BD0028 */   addiu $sp, $sp, 0x28

