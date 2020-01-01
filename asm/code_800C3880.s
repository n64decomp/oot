.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800C3880
/* B3AA20 800C3880 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3AA24 800C3884 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3AA28 800C3888 0C030EF5 */  jal   func_800C3BD4
/* B3AA2C 800C388C 00000000 */   nop   
/* B3AA30 800C3890 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3AA34 800C3894 27BD0018 */  addiu $sp, $sp, 0x18
/* B3AA38 800C3898 03E00008 */  jr    $ra
/* B3AA3C 800C389C 00000000 */   nop   

glabel func_800C38A0
/* B3AA40 800C38A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3AA44 800C38A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3AA48 800C38A8 0C030EFE */  jal   func_800C3BF8
/* B3AA4C 800C38AC 00000000 */   nop   
/* B3AA50 800C38B0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3AA54 800C38B4 27BD0018 */  addiu $sp, $sp, 0x18
/* B3AA58 800C38B8 03E00008 */  jr    $ra
/* B3AA5C 800C38BC 00000000 */   nop   

glabel func_800C38C0
/* B3AA60 800C38C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3AA64 800C38C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3AA68 800C38C8 0C030EE6 */  jal   func_800C3B98
/* B3AA6C 800C38CC 00000000 */   nop   
/* B3AA70 800C38D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3AA74 800C38D4 27BD0018 */  addiu $sp, $sp, 0x18
/* B3AA78 800C38D8 03E00008 */  jr    $ra
/* B3AA7C 800C38DC 00000000 */   nop   

glabel func_800C38E0
/* B3AA80 800C38E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3AA84 800C38E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3AA88 800C38E8 0C030EEF */  jal   func_800C3BBC
/* B3AA8C 800C38EC 00000000 */   nop   
/* B3AA90 800C38F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3AA94 800C38F4 27BD0018 */  addiu $sp, $sp, 0x18
/* B3AA98 800C38F8 03E00008 */  jr    $ra
/* B3AA9C 800C38FC 00000000 */   nop   

glabel func_800C3900
/* B3AAA0 800C3900 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3AAA4 800C3904 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3AAA8 800C3908 0C030EE2 */  jal   func_800C3B88
/* B3AAAC 800C390C 00000000 */   nop   
/* B3AAB0 800C3910 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3AAB4 800C3914 27BD0018 */  addiu $sp, $sp, 0x18
/* B3AAB8 800C3918 03E00008 */  jr    $ra
/* B3AABC 800C391C 00000000 */   nop   

glabel func_800C3920
/* B3AAC0 800C3920 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3AAC4 800C3924 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3AAC8 800C3928 0C030EA0 */  jal   func_800C3A80
/* B3AACC 800C392C 00000000 */   nop   
/* B3AAD0 800C3930 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3AAD4 800C3934 27BD0018 */  addiu $sp, $sp, 0x18
/* B3AAD8 800C3938 03E00008 */  jr    $ra
/* B3AADC 800C393C 00000000 */   nop   

glabel func_800C3940
/* B3AAE0 800C3940 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3AAE4 800C3944 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3AAE8 800C3948 0C030EA2 */  jal   func_800C3A88
/* B3AAEC 800C394C 00000000 */   nop   
/* B3AAF0 800C3950 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3AAF4 800C3954 27BD0018 */  addiu $sp, $sp, 0x18
/* B3AAF8 800C3958 03E00008 */  jr    $ra
/* B3AAFC 800C395C 00000000 */   nop   

glabel func_800C3960
/* B3AB00 800C3960 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3AB04 800C3964 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3AB08 800C3968 0C030EA4 */  jal   func_800C3A90
/* B3AB0C 800C396C 00000000 */   nop   
/* B3AB10 800C3970 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3AB14 800C3974 27BD0018 */  addiu $sp, $sp, 0x18
/* B3AB18 800C3978 03E00008 */  jr    $ra
/* B3AB1C 800C397C 00000000 */   nop   

glabel func_800C3980
/* B3AB20 800C3980 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3AB24 800C3984 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3AB28 800C3988 0C030EA6 */  jal   func_800C3A98
/* B3AB2C 800C398C 000528C0 */   sll   $a1, $a1, 3
/* B3AB30 800C3990 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3AB34 800C3994 27BD0018 */  addiu $sp, $sp, 0x18
/* B3AB38 800C3998 03E00008 */  jr    $ra
/* B3AB3C 800C399C 00000000 */   nop   

glabel func_800C39A0
/* B3AB40 800C39A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3AB44 800C39A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3AB48 800C39A8 0C030E60 */  jal   func_800C3980
/* B3AB4C 800C39AC 24050001 */   li    $a1, 1
/* B3AB50 800C39B0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3AB54 800C39B4 27BD0018 */  addiu $sp, $sp, 0x18
/* B3AB58 800C39B8 03E00008 */  jr    $ra
/* B3AB5C 800C39BC 00000000 */   nop   

glabel func_800C39C0
/* B3AB60 800C39C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3AB64 800C39C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3AB68 800C39C8 0C030E68 */  jal   func_800C39A0
/* B3AB6C 800C39CC 00000000 */   nop   
/* B3AB70 800C39D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3AB74 800C39D4 27BD0018 */  addiu $sp, $sp, 0x18
/* B3AB78 800C39D8 03E00008 */  jr    $ra
/* B3AB7C 800C39DC 00000000 */   nop   

glabel func_800C39E0
/* B3AB80 800C39E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3AB84 800C39E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3AB88 800C39E8 0C030EB2 */  jal   func_800C3AC8
/* B3AB8C 800C39EC 00000000 */   nop   
/* B3AB90 800C39F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3AB94 800C39F4 27BD0018 */  addiu $sp, $sp, 0x18
/* B3AB98 800C39F8 03E00008 */  jr    $ra
/* B3AB9C 800C39FC 00000000 */   nop   

glabel func_800C3A00
/* B3ABA0 800C3A00 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3ABA4 800C3A04 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3ABA8 800C3A08 0C030E78 */  jal   func_800C39E0
/* B3ABAC 800C3A0C 00052980 */   sll   $a1, $a1, 6
/* B3ABB0 800C3A10 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3ABB4 800C3A14 27BD0018 */  addiu $sp, $sp, 0x18
/* B3ABB8 800C3A18 03E00008 */  jr    $ra
/* B3ABBC 800C3A1C 00000000 */   nop   

glabel func_800C3A20
/* B3ABC0 800C3A20 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3ABC4 800C3A24 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3ABC8 800C3A28 0C030E78 */  jal   func_800C39E0
/* B3ABCC 800C3A2C 24050040 */   li    $a1, 64
/* B3ABD0 800C3A30 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3ABD4 800C3A34 27BD0018 */  addiu $sp, $sp, 0x18
/* B3ABD8 800C3A38 03E00008 */  jr    $ra
/* B3ABDC 800C3A3C 00000000 */   nop   

glabel func_800C3A40
/* B3ABE0 800C3A40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3ABE4 800C3A44 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3ABE8 800C3A48 0C030E78 */  jal   func_800C39E0
/* B3ABEC 800C3A4C 00052900 */   sll   $a1, $a1, 4
/* B3ABF0 800C3A50 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3ABF4 800C3A54 27BD0018 */  addiu $sp, $sp, 0x18
/* B3ABF8 800C3A58 03E00008 */  jr    $ra
/* B3ABFC 800C3A5C 00000000 */   nop   

glabel func_800C3A60
/* B3AC00 800C3A60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3AC04 800C3A64 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3AC08 800C3A68 0C030E78 */  jal   func_800C39E0
/* B3AC0C 800C3A6C 24050010 */   li    $a1, 16
/* B3AC10 800C3A70 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3AC14 800C3A74 27BD0018 */  addiu $sp, $sp, 0x18
/* B3AC18 800C3A78 03E00008 */  jr    $ra
/* B3AC1C 800C3A7C 00000000 */   nop   

glabel func_800C3A80
/* B3AC20 800C3A80 03E00008 */  jr    $ra
/* B3AC24 800C3A84 8C820008 */   lw    $v0, 8($a0)

glabel func_800C3A88
/* B3AC28 800C3A88 03E00008 */  jr    $ra
/* B3AC2C 800C3A8C AC850008 */   sw    $a1, 8($a0)

glabel func_800C3A90
/* B3AC30 800C3A90 03E00008 */  jr    $ra
/* B3AC34 800C3A94 8C82000C */   lw    $v0, 0xc($a0)

glabel func_800C3A98
/* B3AC38 800C3A98 8C820008 */  lw    $v0, 8($a0)
/* B3AC3C 800C3A9C 00457021 */  addu  $t6, $v0, $a1
/* B3AC40 800C3AA0 03E00008 */  jr    $ra
/* B3AC44 800C3AA4 AC8E0008 */   sw    $t6, 8($a0)

glabel func_800C3AA8
/* B3AC48 800C3AA8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3AC4C 800C3AAC AFBF0014 */  sw    $ra, 0x14($sp)
/* B3AC50 800C3AB0 0C030EA6 */  jal   func_800C3A98
/* B3AC54 800C3AB4 24050001 */   li    $a1, 1
/* B3AC58 800C3AB8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3AC5C 800C3ABC 27BD0018 */  addiu $sp, $sp, 0x18
/* B3AC60 800C3AC0 03E00008 */  jr    $ra
/* B3AC64 800C3AC4 00000000 */   nop   

glabel func_800C3AC8
/* B3AC68 800C3AC8 24010008 */  li    $at, 8
/* B3AC6C 800C3ACC 54A10004 */  bnel  $a1, $at, .L800C3AE0
/* B3AC70 800C3AD0 24010004 */   li    $at, 4
/* B3AC74 800C3AD4 10000019 */  b     .L800C3B3C
/* B3AC78 800C3AD8 2403FFF8 */   li    $v1, -8
/* B3AC7C 800C3ADC 24010004 */  li    $at, 4
.L800C3AE0:
/* B3AC80 800C3AE0 10A10003 */  beq   $a1, $at, .L800C3AF0
/* B3AC84 800C3AE4 2402000C */   li    $v0, 12
/* B3AC88 800C3AE8 14A20003 */  bne   $a1, $v0, .L800C3AF8
/* B3AC8C 800C3AEC 24010002 */   li    $at, 2
.L800C3AF0:
/* B3AC90 800C3AF0 10000012 */  b     .L800C3B3C
/* B3AC94 800C3AF4 2403FFFC */   li    $v1, -4
.L800C3AF8:
/* B3AC98 800C3AF8 10A10009 */  beq   $a1, $at, .L800C3B20
/* B3AC9C 800C3AFC 24010006 */   li    $at, 6
/* B3ACA0 800C3B00 10A10007 */  beq   $a1, $at, .L800C3B20
/* B3ACA4 800C3B04 2401000A */   li    $at, 10
/* B3ACA8 800C3B08 10A10005 */  beq   $a1, $at, .L800C3B20
/* B3ACAC 800C3B0C 00000000 */   nop   
/* B3ACB0 800C3B10 10A20003 */  beq   $a1, $v0, .L800C3B20
/* B3ACB4 800C3B14 2401000E */   li    $at, 14
/* B3ACB8 800C3B18 54A10004 */  bnel  $a1, $at, .L800C3B2C
/* B3ACBC 800C3B1C 2CA10010 */   sltiu $at, $a1, 0x10
.L800C3B20:
/* B3ACC0 800C3B20 10000006 */  b     .L800C3B3C
/* B3ACC4 800C3B24 2403FFFE */   li    $v1, -2
/* B3ACC8 800C3B28 2CA10010 */  sltiu $at, $a1, 0x10
.L800C3B2C:
/* B3ACCC 800C3B2C 14200003 */  bnez  $at, .L800C3B3C
/* B3ACD0 800C3B30 00001825 */   move  $v1, $zero
/* B3ACD4 800C3B34 10000001 */  b     .L800C3B3C
/* B3ACD8 800C3B38 2403FFF0 */   li    $v1, -16
.L800C3B3C:
/* B3ACDC 800C3B3C 8C8E000C */  lw    $t6, 0xc($a0)
/* B3ACE0 800C3B40 01C37824 */  and   $t7, $t6, $v1
/* B3ACE4 800C3B44 01E5C023 */  subu  $t8, $t7, $a1
/* B3ACE8 800C3B48 03031024 */  and   $v0, $t8, $v1
/* B3ACEC 800C3B4C 03E00008 */  jr    $ra
/* B3ACF0 800C3B50 AC82000C */   sw    $v0, 0xc($a0)

glabel func_800C3B54
/* B3ACF4 800C3B54 8C8E000C */  lw    $t6, 0xc($a0)
/* B3ACF8 800C3B58 2401FFF0 */  li    $at, -16
/* B3ACFC 800C3B5C 01C17824 */  and   $t7, $t6, $at
/* B3AD00 800C3B60 01E5C023 */  subu  $t8, $t7, $a1
/* B3AD04 800C3B64 03011024 */  and   $v0, $t8, $at
/* B3AD08 800C3B68 03E00008 */  jr    $ra
/* B3AD0C 800C3B6C AC82000C */   sw    $v0, 0xc($a0)

glabel func_800C3B70
/* B3AD10 800C3B70 8C8E000C */  lw    $t6, 0xc($a0)
/* B3AD14 800C3B74 01C67824 */  and   $t7, $t6, $a2
/* B3AD18 800C3B78 01E5C023 */  subu  $t8, $t7, $a1
/* B3AD1C 800C3B7C 03061024 */  and   $v0, $t8, $a2
/* B3AD20 800C3B80 03E00008 */  jr    $ra
/* B3AD24 800C3B84 AC82000C */   sw    $v0, 0xc($a0)

glabel func_800C3B88
/* B3AD28 800C3B88 8C8E000C */  lw    $t6, 0xc($a0)
/* B3AD2C 800C3B8C 8C8F0008 */  lw    $t7, 8($a0)
/* B3AD30 800C3B90 03E00008 */  jr    $ra
/* B3AD34 800C3B94 01CF1023 */   subu  $v0, $t6, $t7

glabel func_800C3B98
/* B3AD38 800C3B98 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3AD3C 800C3B9C AFBF0014 */  sw    $ra, 0x14($sp)
/* B3AD40 800C3BA0 0C030EE2 */  jal   func_800C3B88
/* B3AD44 800C3BA4 00000000 */   nop   
/* B3AD48 800C3BA8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3AD4C 800C3BAC 27BD0018 */  addiu $sp, $sp, 0x18
/* B3AD50 800C3BB0 28420000 */  slti  $v0, $v0, 0
/* B3AD54 800C3BB4 03E00008 */  jr    $ra
/* B3AD58 800C3BB8 00000000 */   nop   

glabel func_800C3BBC
/* B3AD5C 800C3BBC 8C820004 */  lw    $v0, 4($a0)
/* B3AD60 800C3BC0 8C8E0000 */  lw    $t6, ($a0)
/* B3AD64 800C3BC4 AC820008 */  sw    $v0, 8($a0)
/* B3AD68 800C3BC8 004E7821 */  addu  $t7, $v0, $t6
/* B3AD6C 800C3BCC 03E00008 */  jr    $ra
/* B3AD70 800C3BD0 AC8F000C */   sw    $t7, 0xc($a0)

glabel func_800C3BD4
/* B3AD74 800C3BD4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3AD78 800C3BD8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3AD7C 800C3BDC AC850004 */  sw    $a1, 4($a0)
/* B3AD80 800C3BE0 0C030EEF */  jal   func_800C3BBC
/* B3AD84 800C3BE4 AC860000 */   sw    $a2, ($a0)
/* B3AD88 800C3BE8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3AD8C 800C3BEC 27BD0018 */  addiu $sp, $sp, 0x18
/* B3AD90 800C3BF0 03E00008 */  jr    $ra
/* B3AD94 800C3BF4 00000000 */   nop   

glabel func_800C3BF8
/* B3AD98 800C3BF8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3AD9C 800C3BFC AFBF0014 */  sw    $ra, 0x14($sp)
/* B3ADA0 800C3C00 0C001114 */  jal   bzero
/* B3ADA4 800C3C04 24050010 */   li    $a1, 16
/* B3ADA8 800C3C08 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3ADAC 800C3C0C 27BD0018 */  addiu $sp, $sp, 0x18
/* B3ADB0 800C3C10 03E00008 */  jr    $ra
/* B3ADB4 800C3C14 00000000 */   nop   
