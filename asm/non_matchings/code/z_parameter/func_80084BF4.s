glabel func_80084BF4
/* AFBD94 80084BF4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AFBD98 80084BF8 AFA5001C */  sw    $a1, 0x1c($sp)
/* AFBD9C 80084BFC 30A5FFFF */  andi  $a1, $a1, 0xffff
/* AFBDA0 80084C00 AFBF0014 */  sw    $ra, 0x14($sp)
/* AFBDA4 80084C04 10A00036 */  beqz  $a1, .L80084CE0
/* AFBDA8 80084C08 00803825 */   move  $a3, $a0
/* AFBDAC 80084C0C 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* AFBDB0 80084C10 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* AFBDB4 80084C14 90620068 */  lbu   $v0, 0x68($v1)
/* AFBDB8 80084C18 24050006 */  li    $a1, 6
/* AFBDBC 80084C1C 24010003 */  li    $at, 3
/* AFBDC0 80084C20 10A2000B */  beq   $a1, $v0, .L80084C50
/* AFBDC4 80084C24 00000000 */   nop   
/* AFBDC8 80084C28 10410009 */  beq   $v0, $at, .L80084C50
/* AFBDCC 80084C2C 24010009 */   li    $at, 9
/* AFBDD0 80084C30 10410007 */  beq   $v0, $at, .L80084C50
/* AFBDD4 80084C34 24010059 */   li    $at, 89
/* AFBDD8 80084C38 10410005 */  beq   $v0, $at, .L80084C50
/* AFBDDC 80084C3C 00000000 */   nop   
/* AFBDE0 80084C40 906613E2 */  lbu   $a2, 0x13e2($v1)
/* AFBDE4 80084C44 240400FF */  li    $a0, 255
/* AFBDE8 80084C48 14860011 */  bne   $a0, $a2, .L80084C90
/* AFBDEC 80084C4C 00000000 */   nop   
.L80084C50:
/* AFBDF0 80084C50 10A20007 */  beq   $a1, $v0, .L80084C70
/* AFBDF4 80084C54 24010003 */   li    $at, 3
/* AFBDF8 80084C58 10410005 */  beq   $v0, $at, .L80084C70
/* AFBDFC 80084C5C 24010009 */   li    $at, 9
/* AFBE00 80084C60 10410003 */  beq   $v0, $at, .L80084C70
/* AFBE04 80084C64 24010059 */   li    $at, 89
/* AFBE08 80084C68 54410016 */  bnel  $v0, $at, .L80084CC4
/* AFBE0C 80084C6C A06013E5 */   sb    $zero, 0x13e5($v1)
.L80084C70:
/* AFBE10 80084C70 906E13E2 */  lbu   $t6, 0x13e2($v1)
/* AFBE14 80084C74 00E02025 */  move  $a0, $a3
/* AFBE18 80084C78 00002825 */  move  $a1, $zero
/* AFBE1C 80084C7C 0C02129B */  jal   func_80084A6C
/* AFBE20 80084C80 A06E0068 */   sb    $t6, 0x68($v1)
/* AFBE24 80084C84 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* AFBE28 80084C88 1000000D */  b     .L80084CC0
/* AFBE2C 80084C8C 2463E660 */   addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
.L80084C90:
/* AFBE30 80084C90 5482000C */  bnel  $a0, $v0, .L80084CC4
/* AFBE34 80084C94 A06013E5 */   sb    $zero, 0x13e5($v1)
/* AFBE38 80084C98 14820004 */  bne   $a0, $v0, .L80084CAC
/* AFBE3C 80084C9C 00002825 */   move  $a1, $zero
/* AFBE40 80084CA0 946F0F32 */  lhu   $t7, 0xf32($v1)
/* AFBE44 80084CA4 55E00007 */  bnezl $t7, .L80084CC4
/* AFBE48 80084CA8 A06013E5 */   sb    $zero, 0x13e5($v1)
.L80084CAC:
/* AFBE4C 80084CAC A0660068 */  sb    $a2, 0x68($v1)
/* AFBE50 80084CB0 0C02129B */  jal   func_80084A6C
/* AFBE54 80084CB4 00E02025 */   move  $a0, $a3
/* AFBE58 80084CB8 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* AFBE5C 80084CBC 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
.L80084CC0:
/* AFBE60 80084CC0 A06013E5 */  sb    $zero, 0x13e5($v1)
.L80084CC4:
/* AFBE64 80084CC4 A06013E4 */  sb    $zero, 0x13e4($v1)
/* AFBE68 80084CC8 A06013E3 */  sb    $zero, 0x13e3($v1)
/* AFBE6C 80084CCC A06013E2 */  sb    $zero, 0x13e2($v1)
/* AFBE70 80084CD0 0C020978 */  jal   func_800825E0
/* AFBE74 80084CD4 24040007 */   li    $a0, 7
/* AFBE78 80084CD8 1000000A */  b     .L80084D04
/* AFBE7C 80084CDC 8FBF0014 */   lw    $ra, 0x14($sp)
.L80084CE0:
/* AFBE80 80084CE0 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* AFBE84 80084CE4 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* AFBE88 80084CE8 A06013E5 */  sb    $zero, 0x13e5($v1)
/* AFBE8C 80084CEC A06013E4 */  sb    $zero, 0x13e4($v1)
/* AFBE90 80084CF0 A06013E3 */  sb    $zero, 0x13e3($v1)
/* AFBE94 80084CF4 A06013E2 */  sb    $zero, 0x13e2($v1)
/* AFBE98 80084CF8 0C020C42 */  jal   func_80083108
/* AFBE9C 80084CFC 00E02025 */   move  $a0, $a3
/* AFBEA0 80084D00 8FBF0014 */  lw    $ra, 0x14($sp)
.L80084D04:
/* AFBEA4 80084D04 27BD0018 */  addiu $sp, $sp, 0x18
/* AFBEA8 80084D08 03E00008 */  jr    $ra
/* AFBEAC 80084D0C 00000000 */   nop   

