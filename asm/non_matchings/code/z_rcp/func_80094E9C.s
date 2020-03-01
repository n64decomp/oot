glabel func_80094E9C
/* B0C03C 80094E9C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0C040 80094EA0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0C044 80094EA4 AFA5001C */  sw    $a1, 0x1c($sp)
/* B0C048 80094EA8 AFA70024 */  sw    $a3, 0x24($sp)
/* B0C04C 80094EAC 24050018 */  li    $a1, 24
/* B0C050 80094EB0 0C031A73 */  jal   Graph_Alloc
/* B0C054 80094EB4 AFA60020 */   sw    $a2, 0x20($sp)
/* B0C058 80094EB8 8FA3001C */  lw    $v1, 0x1c($sp)
/* B0C05C 80094EBC 8FA60020 */  lw    $a2, 0x20($sp)
/* B0C060 80094EC0 3C01F200 */  lui   $at, 0xf200
/* B0C064 80094EC4 306307FF */  andi  $v1, $v1, 0x7ff
/* B0C068 80094EC8 306F0FFF */  andi  $t7, $v1, 0xfff
/* B0C06C 80094ECC 000FC300 */  sll   $t8, $t7, 0xc
/* B0C070 80094ED0 30C607FF */  andi  $a2, $a2, 0x7ff
/* B0C074 80094ED4 30C80FFF */  andi  $t0, $a2, 0xfff
/* B0C078 80094ED8 0301C825 */  or    $t9, $t8, $at
/* B0C07C 80094EDC 3C0EE800 */  lui   $t6, 0xe800
/* B0C080 80094EE0 03284825 */  or    $t1, $t9, $t0
/* B0C084 80094EE4 AC4E0000 */  sw    $t6, ($v0)
/* B0C088 80094EE8 AC400004 */  sw    $zero, 4($v0)
/* B0C08C 80094EEC AC490008 */  sw    $t1, 8($v0)
/* B0C090 80094EF0 8FAA0024 */  lw    $t2, 0x24($sp)
/* B0C094 80094EF4 8FB80028 */  lw    $t8, 0x28($sp)
/* B0C098 80094EF8 AC400014 */  sw    $zero, 0x14($v0)
/* B0C09C 80094EFC 254BFFFF */  addiu $t3, $t2, -1
/* B0C0A0 80094F00 000B6080 */  sll   $t4, $t3, 2
/* B0C0A4 80094F04 2719FFFF */  addiu $t9, $t8, -1
/* B0C0A8 80094F08 00194080 */  sll   $t0, $t9, 2
/* B0C0AC 80094F0C 01836821 */  addu  $t5, $t4, $v1
/* B0C0B0 80094F10 31AE0FFF */  andi  $t6, $t5, 0xfff
/* B0C0B4 80094F14 00C84821 */  addu  $t1, $a2, $t0
/* B0C0B8 80094F18 312A0FFF */  andi  $t2, $t1, 0xfff
/* B0C0BC 80094F1C 000E7B00 */  sll   $t7, $t6, 0xc
/* B0C0C0 80094F20 01EA5825 */  or    $t3, $t7, $t2
/* B0C0C4 80094F24 3C0CDF00 */  lui   $t4, 0xdf00
/* B0C0C8 80094F28 AC4B000C */  sw    $t3, 0xc($v0)
/* B0C0CC 80094F2C AC4C0010 */  sw    $t4, 0x10($v0)
/* B0C0D0 80094F30 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0C0D4 80094F34 27BD0018 */  addiu $sp, $sp, 0x18
/* B0C0D8 80094F38 03E00008 */  jr    $ra
/* B0C0DC 80094F3C 00000000 */   nop   

