glabel func_80088B84
/* AFFD24 80088B84 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AFFD28 80088B88 AFA50054 */  sw    $a1, 0x54($sp)
/* AFFD2C 80088B8C 00802825 */  move  $a1, $a0
/* AFFD30 80088B90 AFBF0014 */  sw    $ra, 0x14($sp)
/* AFFD34 80088B94 AFA40050 */  sw    $a0, 0x50($sp)
/* AFFD38 80088B98 3C068014 */  lui   $a2, %hi(D_8013E2B0) # $a2, 0x8014
/* AFFD3C 80088B9C 24C6E2B0 */  addiu $a2, %lo(D_8013E2B0) # addiu $a2, $a2, -0x1d50
/* AFFD40 80088BA0 AFA50050 */  sw    $a1, 0x50($sp)
/* AFFD44 80088BA4 27A4003C */  addiu $a0, $sp, 0x3c
/* AFFD48 80088BA8 0C031AB1 */  jal   func_800C6AC4
/* AFFD4C 80088BAC 24070B04 */   li    $a3, 2820
/* AFFD50 80088BB0 8FA50050 */  lw    $a1, 0x50($sp)
/* AFFD54 80088BB4 3C0FFD70 */  lui   $t7, 0xfd70
/* AFFD58 80088BB8 3C08F570 */  lui   $t0, 0xf570
/* AFFD5C 80088BBC 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* AFFD60 80088BC0 3C090700 */  lui   $t1, 0x700
/* AFFD64 80088BC4 3C0BE600 */  lui   $t3, 0xe600
/* AFFD68 80088BC8 244E0008 */  addiu $t6, $v0, 8
/* AFFD6C 80088BCC ACAE02B0 */  sw    $t6, 0x2b0($a1)
/* AFFD70 80088BD0 AC4F0000 */  sw    $t7, ($v0)
/* AFFD74 80088BD4 8FB80054 */  lw    $t8, 0x54($sp)
/* AFFD78 80088BD8 3C0E070B */  lui   $t6, (0x070BF2AB >> 16) # lui $t6, 0x70b
/* AFFD7C 80088BDC 35CEF2AB */  ori   $t6, (0x070BF2AB & 0xFFFF) # ori $t6, $t6, 0xf2ab
/* AFFD80 80088BE0 AC580004 */  sw    $t8, 4($v0)
/* AFFD84 80088BE4 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* AFFD88 80088BE8 3C0DF300 */  lui   $t5, 0xf300
/* AFFD8C 80088BEC 3C18E700 */  lui   $t8, 0xe700
/* AFFD90 80088BF0 24590008 */  addiu $t9, $v0, 8
/* AFFD94 80088BF4 ACB902B0 */  sw    $t9, 0x2b0($a1)
/* AFFD98 80088BF8 AC490004 */  sw    $t1, 4($v0)
/* AFFD9C 80088BFC AC480000 */  sw    $t0, ($v0)
/* AFFDA0 80088C00 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* AFFDA4 80088C04 3C08F560 */  lui   $t0, (0xF5600600 >> 16) # lui $t0, 0xf560
/* AFFDA8 80088C08 35080600 */  ori   $t0, (0xF5600600 & 0xFFFF) # ori $t0, $t0, 0x600
/* AFFDAC 80088C0C 244A0008 */  addiu $t2, $v0, 8
/* AFFDB0 80088C10 ACAA02B0 */  sw    $t2, 0x2b0($a1)
/* AFFDB4 80088C14 AC400004 */  sw    $zero, 4($v0)
/* AFFDB8 80088C18 AC4B0000 */  sw    $t3, ($v0)
/* AFFDBC 80088C1C 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* AFFDC0 80088C20 3C0B000B */  lui   $t3, (0x000BC03C >> 16) # lui $t3, 0xb
/* AFFDC4 80088C24 356BC03C */  ori   $t3, (0x000BC03C & 0xFFFF) # ori $t3, $t3, 0xc03c
/* AFFDC8 80088C28 244C0008 */  addiu $t4, $v0, 8
/* AFFDCC 80088C2C ACAC02B0 */  sw    $t4, 0x2b0($a1)
/* AFFDD0 80088C30 AC4E0004 */  sw    $t6, 4($v0)
/* AFFDD4 80088C34 AC4D0000 */  sw    $t5, ($v0)
/* AFFDD8 80088C38 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* AFFDDC 80088C3C 3C0AF200 */  lui   $t2, 0xf200
/* AFFDE0 80088C40 3C0D0700 */  lui   $t5, (0x07000406 >> 16) # lui $t5, 0x700
/* AFFDE4 80088C44 244F0008 */  addiu $t7, $v0, 8
/* AFFDE8 80088C48 ACAF02B0 */  sw    $t7, 0x2b0($a1)
/* AFFDEC 80088C4C AC400004 */  sw    $zero, 4($v0)
/* AFFDF0 80088C50 AC580000 */  sw    $t8, ($v0)
/* AFFDF4 80088C54 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* AFFDF8 80088C58 35AD0406 */  ori   $t5, (0x07000406 & 0xFFFF) # ori $t5, $t5, 0x406
/* AFFDFC 80088C5C 240E0602 */  li    $t6, 1538
/* AFFE00 80088C60 24590008 */  addiu $t9, $v0, 8
/* AFFE04 80088C64 ACB902B0 */  sw    $t9, 0x2b0($a1)
/* AFFE08 80088C68 AC400004 */  sw    $zero, 4($v0)
/* AFFE0C 80088C6C AC480000 */  sw    $t0, ($v0)
/* AFFE10 80088C70 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* AFFE14 80088C74 3C068014 */  lui   $a2, %hi(D_8013E2C4) # $a2, 0x8014
/* AFFE18 80088C78 24C6E2C4 */  addiu $a2, %lo(D_8013E2C4) # addiu $a2, $a2, -0x1d3c
/* AFFE1C 80088C7C 24490008 */  addiu $t1, $v0, 8
/* AFFE20 80088C80 ACA902B0 */  sw    $t1, 0x2b0($a1)
/* AFFE24 80088C84 AC4B0004 */  sw    $t3, 4($v0)
/* AFFE28 80088C88 AC4A0000 */  sw    $t2, ($v0)
/* AFFE2C 80088C8C 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* AFFE30 80088C90 27A4003C */  addiu $a0, $sp, 0x3c
/* AFFE34 80088C94 24070B0D */  li    $a3, 2829
/* AFFE38 80088C98 244C0008 */  addiu $t4, $v0, 8
/* AFFE3C 80088C9C ACAC02B0 */  sw    $t4, 0x2b0($a1)
/* AFFE40 80088CA0 AC4E0004 */  sw    $t6, 4($v0)
/* AFFE44 80088CA4 0C031AD5 */  jal   func_800C6B54
/* AFFE48 80088CA8 AC4D0000 */   sw    $t5, ($v0)
/* AFFE4C 80088CAC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AFFE50 80088CB0 27BD0050 */  addiu $sp, $sp, 0x50
/* AFFE54 80088CB4 03E00008 */  jr    $ra
/* AFFE58 80088CB8 00000000 */   nop   

