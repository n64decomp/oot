glabel func_8009CE1C
/* B13FBC 8009CE1C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B13FC0 8009CE20 AFBF0014 */  sw    $ra, 0x14($sp)
/* B13FC4 8009CE24 AFA5001C */  sw    $a1, 0x1c($sp)
/* B13FC8 8009CE28 24050050 */  li    $a1, 80
/* B13FCC 8009CE2C AFA60020 */  sw    $a2, 0x20($sp)
/* B13FD0 8009CE30 0C031A73 */  jal   Graph_Alloc
/* B13FD4 8009CE34 AFA70024 */   sw    $a3, 0x24($sp)
/* B13FD8 8009CE38 8FA60020 */  lw    $a2, 0x20($sp)
/* B13FDC 8009CE3C 8FA70024 */  lw    $a3, 0x24($sp)
/* B13FE0 8009CE40 8FA30034 */  lw    $v1, 0x34($sp)
/* B13FE4 8009CE44 30C607FF */  andi  $a2, $a2, 0x7ff
/* B13FE8 8009CE48 30CE0FFF */  andi  $t6, $a2, 0xfff
/* B13FEC 8009CE4C 8FA40038 */  lw    $a0, 0x38($sp)
/* B13FF0 8009CE50 000E7B00 */  sll   $t7, $t6, 0xc
/* B13FF4 8009CE54 3C09F200 */  lui   $t1, 0xf200
/* B13FF8 8009CE58 30E707FF */  andi  $a3, $a3, 0x7ff
/* B13FFC 8009CE5C 30F90FFF */  andi  $t9, $a3, 0xfff
/* B14000 8009CE60 01E9C025 */  or    $t8, $t7, $t1
/* B14004 8009CE64 3C08E800 */  lui   $t0, 0xe800
/* B14008 8009CE68 03195025 */  or    $t2, $t8, $t9
/* B1400C 8009CE6C AC480000 */  sw    $t0, ($v0)
/* B14010 8009CE70 AC400004 */  sw    $zero, 4($v0)
/* B14014 8009CE74 AC4A0008 */  sw    $t2, 8($v0)
/* B14018 8009CE78 8FAE0028 */  lw    $t6, 0x28($sp)
/* B1401C 8009CE7C 8FAB001C */  lw    $t3, 0x1c($sp)
/* B14020 8009CE80 306307FF */  andi  $v1, $v1, 0x7ff
/* B14024 8009CE84 25CFFFFF */  addiu $t7, $t6, -1
/* B14028 8009CE88 8FAE002C */  lw    $t6, 0x2c($sp)
/* B1402C 8009CE8C 000FC080 */  sll   $t8, $t7, 2
/* B14030 8009CE90 00D8C821 */  addu  $t9, $a2, $t8
/* B14034 8009CE94 316C0007 */  andi  $t4, $t3, 7
/* B14038 8009CE98 332A0FFF */  andi  $t2, $t9, 0xfff
/* B1403C 8009CE9C 000A5B00 */  sll   $t3, $t2, 0xc
/* B14040 8009CEA0 000C6E00 */  sll   $t5, $t4, 0x18
/* B14044 8009CEA4 25CFFFFF */  addiu $t7, $t6, -1
/* B14048 8009CEA8 000FC080 */  sll   $t8, $t7, 2
/* B1404C 8009CEAC 01AB6025 */  or    $t4, $t5, $t3
/* B14050 8009CEB0 00F8C821 */  addu  $t9, $a3, $t8
/* B14054 8009CEB4 306B0FFF */  andi  $t3, $v1, 0xfff
/* B14058 8009CEB8 332A0FFF */  andi  $t2, $t9, 0xfff
/* B1405C 8009CEBC 000B7300 */  sll   $t6, $t3, 0xc
/* B14060 8009CEC0 308407FF */  andi  $a0, $a0, 0x7ff
/* B14064 8009CEC4 30980FFF */  andi  $t8, $a0, 0xfff
/* B14068 8009CEC8 01C97825 */  or    $t7, $t6, $t1
/* B1406C 8009CECC 018A6825 */  or    $t5, $t4, $t2
/* B14070 8009CED0 01F8C825 */  or    $t9, $t7, $t8
/* B14074 8009CED4 AC4D000C */  sw    $t5, 0xc($v0)
/* B14078 8009CED8 AC400014 */  sw    $zero, 0x14($v0)
/* B1407C 8009CEDC AC480010 */  sw    $t0, 0x10($v0)
/* B14080 8009CEE0 AC590018 */  sw    $t9, 0x18($v0)
/* B14084 8009CEE4 8FAB003C */  lw    $t3, 0x3c($sp)
/* B14088 8009CEE8 8FAC0030 */  lw    $t4, 0x30($sp)
/* B1408C 8009CEEC 256EFFFF */  addiu $t6, $t3, -1
/* B14090 8009CEF0 8FAB0040 */  lw    $t3, 0x40($sp)
/* B14094 8009CEF4 000E7880 */  sll   $t7, $t6, 2
/* B14098 8009CEF8 006FC021 */  addu  $t8, $v1, $t7
/* B1409C 8009CEFC 318A0007 */  andi  $t2, $t4, 7
/* B140A0 8009CF00 33190FFF */  andi  $t9, $t8, 0xfff
/* B140A4 8009CF04 256EFFFF */  addiu $t6, $t3, -1
/* B140A8 8009CF08 000E7880 */  sll   $t7, $t6, 2
/* B140AC 8009CF0C 00196300 */  sll   $t4, $t9, 0xc
/* B140B0 8009CF10 000A6E00 */  sll   $t5, $t2, 0x18
/* B140B4 8009CF14 01AC5025 */  or    $t2, $t5, $t4
/* B140B8 8009CF18 008FC021 */  addu  $t8, $a0, $t7
/* B140BC 8009CF1C 33190FFF */  andi  $t9, $t8, 0xfff
/* B140C0 8009CF20 01596825 */  or    $t5, $t2, $t9
/* B140C4 8009CF24 3C0CFA00 */  lui   $t4, 0xfa00
/* B140C8 8009CF28 AC4D001C */  sw    $t5, 0x1c($v0)
/* B140CC 8009CF2C AC4C0020 */  sw    $t4, 0x20($v0)
/* B140D0 8009CF30 8FB80048 */  lw    $t8, 0x48($sp)
/* B140D4 8009CF34 8FAE0044 */  lw    $t6, 0x44($sp)
/* B140D8 8009CF38 8FAC004C */  lw    $t4, 0x4c($sp)
/* B140DC 8009CF3C 330A00FF */  andi  $t2, $t8, 0xff
/* B140E0 8009CF40 000ACC00 */  sll   $t9, $t2, 0x10
/* B140E4 8009CF44 8FAA0050 */  lw    $t2, 0x50($sp)
/* B140E8 8009CF48 000E7E00 */  sll   $t7, $t6, 0x18
/* B140EC 8009CF4C 01F96825 */  or    $t5, $t7, $t9
/* B140F0 8009CF50 318B00FF */  andi  $t3, $t4, 0xff
/* B140F4 8009CF54 000B7200 */  sll   $t6, $t3, 8
/* B140F8 8009CF58 01AEC025 */  or    $t8, $t5, $t6
/* B140FC 8009CF5C 314F00FF */  andi  $t7, $t2, 0xff
/* B14100 8009CF60 030FC825 */  or    $t9, $t8, $t7
/* B14104 8009CF64 3C0CDF00 */  lui   $t4, 0xdf00
/* B14108 8009CF68 AC590024 */  sw    $t9, 0x24($v0)
/* B1410C 8009CF6C AC4C0028 */  sw    $t4, 0x28($v0)
/* B14110 8009CF70 AC40002C */  sw    $zero, 0x2c($v0)
/* B14114 8009CF74 8FBF0014 */  lw    $ra, 0x14($sp)
/* B14118 8009CF78 27BD0018 */  addiu $sp, $sp, 0x18
/* B1411C 8009CF7C 03E00008 */  jr    $ra
/* B14120 8009CF80 00000000 */   nop   

