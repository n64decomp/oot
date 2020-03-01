glabel func_80094F40
/* B0C0E0 80094F40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0C0E4 80094F44 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0C0E8 80094F48 AFA5001C */  sw    $a1, 0x1c($sp)
/* B0C0EC 80094F4C 24050028 */  li    $a1, 40
/* B0C0F0 80094F50 AFA60020 */  sw    $a2, 0x20($sp)
/* B0C0F4 80094F54 0C031A73 */  jal   Graph_Alloc
/* B0C0F8 80094F58 AFA70024 */   sw    $a3, 0x24($sp)
/* B0C0FC 80094F5C 8FA60020 */  lw    $a2, 0x20($sp)
/* B0C100 80094F60 8FA70024 */  lw    $a3, 0x24($sp)
/* B0C104 80094F64 8FA30034 */  lw    $v1, 0x34($sp)
/* B0C108 80094F68 30C607FF */  andi  $a2, $a2, 0x7ff
/* B0C10C 80094F6C 30CE0FFF */  andi  $t6, $a2, 0xfff
/* B0C110 80094F70 8FA40038 */  lw    $a0, 0x38($sp)
/* B0C114 80094F74 000E7B00 */  sll   $t7, $t6, 0xc
/* B0C118 80094F78 3C09F200 */  lui   $t1, 0xf200
/* B0C11C 80094F7C 30E707FF */  andi  $a3, $a3, 0x7ff
/* B0C120 80094F80 30F90FFF */  andi  $t9, $a3, 0xfff
/* B0C124 80094F84 01E9C025 */  or    $t8, $t7, $t1
/* B0C128 80094F88 3C08E800 */  lui   $t0, 0xe800
/* B0C12C 80094F8C 03195025 */  or    $t2, $t8, $t9
/* B0C130 80094F90 AC480000 */  sw    $t0, ($v0)
/* B0C134 80094F94 AC400004 */  sw    $zero, 4($v0)
/* B0C138 80094F98 AC4A0008 */  sw    $t2, 8($v0)
/* B0C13C 80094F9C 8FAE0028 */  lw    $t6, 0x28($sp)
/* B0C140 80094FA0 8FAB001C */  lw    $t3, 0x1c($sp)
/* B0C144 80094FA4 306307FF */  andi  $v1, $v1, 0x7ff
/* B0C148 80094FA8 25CFFFFF */  addiu $t7, $t6, -1
/* B0C14C 80094FAC 8FAE002C */  lw    $t6, 0x2c($sp)
/* B0C150 80094FB0 000FC080 */  sll   $t8, $t7, 2
/* B0C154 80094FB4 00D8C821 */  addu  $t9, $a2, $t8
/* B0C158 80094FB8 316C0007 */  andi  $t4, $t3, 7
/* B0C15C 80094FBC 332A0FFF */  andi  $t2, $t9, 0xfff
/* B0C160 80094FC0 000A5B00 */  sll   $t3, $t2, 0xc
/* B0C164 80094FC4 000C6E00 */  sll   $t5, $t4, 0x18
/* B0C168 80094FC8 25CFFFFF */  addiu $t7, $t6, -1
/* B0C16C 80094FCC 000FC080 */  sll   $t8, $t7, 2
/* B0C170 80094FD0 01AB6025 */  or    $t4, $t5, $t3
/* B0C174 80094FD4 00F8C821 */  addu  $t9, $a3, $t8
/* B0C178 80094FD8 306B0FFF */  andi  $t3, $v1, 0xfff
/* B0C17C 80094FDC 332A0FFF */  andi  $t2, $t9, 0xfff
/* B0C180 80094FE0 000B7300 */  sll   $t6, $t3, 0xc
/* B0C184 80094FE4 308407FF */  andi  $a0, $a0, 0x7ff
/* B0C188 80094FE8 30980FFF */  andi  $t8, $a0, 0xfff
/* B0C18C 80094FEC 01C97825 */  or    $t7, $t6, $t1
/* B0C190 80094FF0 018A6825 */  or    $t5, $t4, $t2
/* B0C194 80094FF4 01F8C825 */  or    $t9, $t7, $t8
/* B0C198 80094FF8 AC4D000C */  sw    $t5, 0xc($v0)
/* B0C19C 80094FFC AC400014 */  sw    $zero, 0x14($v0)
/* B0C1A0 80095000 AC480010 */  sw    $t0, 0x10($v0)
/* B0C1A4 80095004 AC590018 */  sw    $t9, 0x18($v0)
/* B0C1A8 80095008 8FAB003C */  lw    $t3, 0x3c($sp)
/* B0C1AC 8009500C 8FAC0030 */  lw    $t4, 0x30($sp)
/* B0C1B0 80095010 256EFFFF */  addiu $t6, $t3, -1
/* B0C1B4 80095014 8FAB0040 */  lw    $t3, 0x40($sp)
/* B0C1B8 80095018 000E7880 */  sll   $t7, $t6, 2
/* B0C1BC 8009501C 006FC021 */  addu  $t8, $v1, $t7
/* B0C1C0 80095020 318A0007 */  andi  $t2, $t4, 7
/* B0C1C4 80095024 33190FFF */  andi  $t9, $t8, 0xfff
/* B0C1C8 80095028 256EFFFF */  addiu $t6, $t3, -1
/* B0C1CC 8009502C 000E7880 */  sll   $t7, $t6, 2
/* B0C1D0 80095030 00196300 */  sll   $t4, $t9, 0xc
/* B0C1D4 80095034 000A6E00 */  sll   $t5, $t2, 0x18
/* B0C1D8 80095038 01AC5025 */  or    $t2, $t5, $t4
/* B0C1DC 8009503C 008FC021 */  addu  $t8, $a0, $t7
/* B0C1E0 80095040 33190FFF */  andi  $t9, $t8, 0xfff
/* B0C1E4 80095044 01596825 */  or    $t5, $t2, $t9
/* B0C1E8 80095048 3C0CDF00 */  lui   $t4, 0xdf00
/* B0C1EC 8009504C AC4D001C */  sw    $t5, 0x1c($v0)
/* B0C1F0 80095050 AC4C0020 */  sw    $t4, 0x20($v0)
/* B0C1F4 80095054 AC400024 */  sw    $zero, 0x24($v0)
/* B0C1F8 80095058 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0C1FC 8009505C 27BD0018 */  addiu $sp, $sp, 0x18
/* B0C200 80095060 03E00008 */  jr    $ra
/* B0C204 80095064 00000000 */   nop   

