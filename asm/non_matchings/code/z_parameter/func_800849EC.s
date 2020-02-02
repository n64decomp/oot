glabel func_800849EC
/* AFBB8C 800849EC 3C058012 */  lui   $a1, %hi(D_80127120) # $a1, 0x8012
/* AFBB90 800849F0 24A57120 */  addiu $a1, %lo(D_80127120) # addiu $a1, $a1, 0x7120
/* AFBB94 800849F4 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* AFBB98 800849F8 3C028012 */  lui   $v0, %hi(D_801271F0) # $v0, 0x8012
/* AFBB9C 800849FC 904271F0 */  lbu   $v0, %lo(D_801271F0)($v0)
/* AFBBA0 80084A00 8CAF0008 */  lw    $t7, 8($a1)
/* AFBBA4 80084A04 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* AFBBA8 80084A08 946E009C */  lhu   $t6, 0x9c($v1)
/* AFBBAC 80084A0C 24090008 */  li    $t1, 8
/* AFBBB0 80084A10 004FC004 */  sllv  $t8, $t7, $v0
/* AFBBB4 80084A14 8CAC000C */  lw    $t4, 0xc($a1)
/* AFBBB8 80084A18 00495004 */  sllv  $t2, $t1, $v0
/* AFBBBC 80084A1C 01D84025 */  or    $t0, $t6, $t8
/* AFBBC0 80084A20 010A5826 */  xor   $t3, $t0, $t2
/* AFBBC4 80084A24 316DFFFF */  andi  $t5, $t3, 0xffff
/* AFBBC8 80084A28 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AFBBCC 80084A2C A468009C */  sh    $t0, 0x9c($v1)
/* AFBBD0 80084A30 018D7824 */  and   $t7, $t4, $t5
/* AFBBD4 80084A34 AFBF0014 */  sw    $ra, 0x14($sp)
/* AFBBD8 80084A38 11E00004 */  beqz  $t7, .L80084A4C
/* AFBBDC 80084A3C A46B009C */   sh    $t3, 0x9c($v1)
/* AFBBE0 80084A40 240E0055 */  li    $t6, 85
/* AFBBE4 80084A44 10000003 */  b     .L80084A54
/* AFBBE8 80084A48 A06E0068 */   sb    $t6, 0x68($v1)
.L80084A4C:
/* AFBBEC 80084A4C 2418003D */  li    $t8, 61
/* AFBBF0 80084A50 A0780068 */  sb    $t8, 0x68($v1)
.L80084A54:
/* AFBBF4 80084A54 0C02129B */  jal   func_80084A6C
/* AFBBF8 80084A58 00002825 */   move  $a1, $zero
/* AFBBFC 80084A5C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AFBC00 80084A60 27BD0018 */  addiu $sp, $sp, 0x18
/* AFBC04 80084A64 03E00008 */  jr    $ra
/* AFBC08 80084A68 00000000 */   nop   

