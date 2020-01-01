glabel DynaPolyInfo_Alloc
/* AB8A20 80041880 00047100 */  sll   $t6, $a0, 4
/* AB8A24 80041884 000E7F02 */  srl   $t7, $t6, 0x1c
/* AB8A28 80041888 000FC080 */  sll   $t8, $t7, 2
/* AB8A2C 8004188C 3C198016 */  lui   $t9, %hi(D_80166FA8)
/* AB8A30 80041890 0338C821 */  addu  $t9, $t9, $t8
/* AB8A34 80041894 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* AB8A38 80041898 8F396FA8 */  lw    $t9, %lo(D_80166FA8)($t9)
/* AB8A3C 8004189C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* AB8A40 800418A0 00814024 */  and   $t0, $a0, $at
/* AB8A44 800418A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB8A48 800418A8 3C018000 */  lui   $at, 0x8000
/* AB8A4C 800418AC 03284821 */  addu  $t1, $t9, $t0
/* AB8A50 800418B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB8A54 800418B4 01212021 */  addu  $a0, $t1, $at
/* AB8A58 800418B8 0C0105E8 */  jal   func_800417A0
/* AB8A5C 800418BC ACA40000 */   sw    $a0, ($a1)
/* AB8A60 800418C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB8A64 800418C4 27BD0018 */  addiu $sp, $sp, 0x18
/* AB8A68 800418C8 03E00008 */  jr    $ra
/* AB8A6C 800418CC 00000000 */   nop   

/* AB8A70 800418D0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AB8A74 800418D4 AFB30024 */  sw    $s3, 0x24($sp)
/* AB8A78 800418D8 AFB60030 */  sw    $s6, 0x30($sp)
/* AB8A7C 800418DC AFB5002C */  sw    $s5, 0x2c($sp)
/* AB8A80 800418E0 AFB40028 */  sw    $s4, 0x28($sp)
/* AB8A84 800418E4 AFB20020 */  sw    $s2, 0x20($sp)
/* AB8A88 800418E8 AFB1001C */  sw    $s1, 0x1c($sp)
/* AB8A8C 800418EC 24930050 */  addiu $s3, $a0, 0x50
/* AB8A90 800418F0 00A0A025 */  move  $s4, $a1
/* AB8A94 800418F4 AFBF0034 */  sw    $ra, 0x34($sp)
/* AB8A98 800418F8 AFB00018 */  sw    $s0, 0x18($sp)
/* AB8A9C 800418FC 02609025 */  move  $s2, $s3
/* AB8AA0 80041900 00008825 */  move  $s1, $zero
/* AB8AA4 80041904 24150064 */  li    $s5, 100
/* AB8AA8 80041908 24160032 */  li    $s6, 50
.L8004190C:
/* AB8AAC 8004190C 9642138C */  lhu   $v0, 0x138c($s2)
/* AB8AB0 80041910 304E0001 */  andi  $t6, $v0, 1
/* AB8AB4 80041914 11C0000B */  beqz  $t6, .L80041944
/* AB8AB8 80041918 304F0002 */   andi  $t7, $v0, 2
/* AB8ABC 8004191C 55E0000A */  bnezl $t7, .L80041948
/* AB8AC0 80041920 26310001 */   addiu $s1, $s1, 1
/* AB8AC4 80041924 02350019 */  multu $s1, $s5
/* AB8AC8 80041928 02802025 */  move  $a0, $s4
/* AB8ACC 8004192C 0000C012 */  mflo  $t8
/* AB8AD0 80041930 02788021 */  addu  $s0, $s3, $t8
/* AB8AD4 80041934 0C00B591 */  jal   Actor_SetObjectDependency
/* AB8AD8 80041938 8E050004 */   lw    $a1, 4($s0)
/* AB8ADC 8004193C 0C0105E8 */  jal   func_800417A0
/* AB8AE0 80041940 8E040008 */   lw    $a0, 8($s0)
.L80041944:
/* AB8AE4 80041944 26310001 */  addiu $s1, $s1, 1
.L80041948:
/* AB8AE8 80041948 1636FFF0 */  bne   $s1, $s6, .L8004190C
/* AB8AEC 8004194C 26520002 */   addiu $s2, $s2, 2
/* AB8AF0 80041950 8FBF0034 */  lw    $ra, 0x34($sp)
/* AB8AF4 80041954 8FB00018 */  lw    $s0, 0x18($sp)
/* AB8AF8 80041958 8FB1001C */  lw    $s1, 0x1c($sp)
/* AB8AFC 8004195C 8FB20020 */  lw    $s2, 0x20($sp)
/* AB8B00 80041960 8FB30024 */  lw    $s3, 0x24($sp)
/* AB8B04 80041964 8FB40028 */  lw    $s4, 0x28($sp)
/* AB8B08 80041968 8FB5002C */  lw    $s5, 0x2c($sp)
/* AB8B0C 8004196C 8FB60030 */  lw    $s6, 0x30($sp)
/* AB8B10 80041970 03E00008 */  jr    $ra
/* AB8B14 80041974 27BD0038 */   addiu $sp, $sp, 0x38

