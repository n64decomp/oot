glabel func_8008E8DC
/* B05A7C 8008E8DC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B05A80 8008E8E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B05A84 8008E8E4 8CA3067C */  lw    $v1, 0x67c($a1)
/* B05A88 8008E8E8 3C012000 */  lui   $at, (0x20000080 >> 16) # lui $at, 0x2000
/* B05A8C 8008E8EC 34210080 */  ori   $at, (0x20000080 & 0xFFFF) # ori $at, $at, 0x80
/* B05A90 8008E8F0 00611024 */  and   $v0, $v1, $at
/* B05A94 8008E8F4 0002102B */  sltu  $v0, $zero, $v0
/* B05A98 8008E8F8 54400020 */  bnezl $v0, .L8008E97C
/* B05A9C 8008E8FC 8FBF0014 */   lw    $ra, 0x14($sp)
/* B05AA0 8008E900 90A20444 */  lbu   $v0, 0x444($a1)
/* B05AA4 8008E904 0002102B */  sltu  $v0, $zero, $v0
/* B05AA8 8008E908 5440001C */  bnezl $v0, .L8008E97C
/* B05AAC 8008E90C 8FBF0014 */   lw    $ra, 0x14($sp)
/* B05AB0 8008E910 3C020001 */  lui   $v0, 1
/* B05AB4 8008E914 00441021 */  addu  $v0, $v0, $a0
/* B05AB8 8008E918 80421E15 */  lb    $v0, 0x1e15($v0)
/* B05ABC 8008E91C 38420014 */  xori  $v0, $v0, 0x14
/* B05AC0 8008E920 2C420001 */  sltiu $v0, $v0, 1
/* B05AC4 8008E924 54400015 */  bnezl $v0, .L8008E97C
/* B05AC8 8008E928 8FBF0014 */   lw    $ra, 0x14($sp)
/* B05ACC 8008E92C 30620001 */  andi  $v0, $v1, 1
/* B05AD0 8008E930 0002102B */  sltu  $v0, $zero, $v0
/* B05AD4 8008E934 54400011 */  bnezl $v0, .L8008E97C
/* B05AD8 8008E938 8FBF0014 */   lw    $ra, 0x14($sp)
/* B05ADC 8008E93C 90A20692 */  lbu   $v0, 0x692($a1)
/* B05AE0 8008E940 30420080 */  andi  $v0, $v0, 0x80
/* B05AE4 8008E944 0002102B */  sltu  $v0, $zero, $v0
/* B05AE8 8008E948 5440000C */  bnezl $v0, .L8008E97C
/* B05AEC 8008E94C 8FBF0014 */   lw    $ra, 0x14($sp)
/* B05AF0 8008E950 3C028016 */  lui   $v0, %hi(gSaveContext+0x13f0) # $v0, 0x8016
/* B05AF4 8008E954 8442FA50 */  lh    $v0, %lo(gSaveContext+0x13f0)($v0)
/* B05AF8 8008E958 00A02025 */  move  $a0, $a1
/* B05AFC 8008E95C 0002102B */  sltu  $v0, $zero, $v0
/* B05B00 8008E960 50400006 */  beql  $v0, $zero, .L8008E97C
/* B05B04 8008E964 8FBF0014 */   lw    $ra, 0x14($sp)
/* B05B08 8008E968 0C023C36 */  jal   func_8008F0D8
/* B05B0C 8008E96C 80A50154 */   lb    $a1, 0x154($a1)
/* B05B10 8008E970 28420000 */  slti  $v0, $v0, 0
/* B05B14 8008E974 38420001 */  xori  $v0, $v0, 1
/* B05B18 8008E978 8FBF0014 */  lw    $ra, 0x14($sp)
.L8008E97C:
/* B05B1C 8008E97C 27BD0018 */  addiu $sp, $sp, 0x18
/* B05B20 8008E980 03E00008 */  jr    $ra
/* B05B24 8008E984 00000000 */   nop   

