.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80004D10
/* 005910 80004D10 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 005914 80004D14 3C03A460 */  lui   $v1, (0xA4600010 >> 16) # lui $v1, 0xa460
/* 005918 80004D18 34630010 */  ori   $v1, (0xA4600010 & 0xFFFF) # ori $v1, $v1, 0x10
/* 00591C 80004D1C AFBF0014 */  sw    $ra, 0x14($sp)
/* 005920 80004D20 AFA40018 */  sw    $a0, 0x18($sp)
/* 005924 80004D24 AFA5001C */  sw    $a1, 0x1c($sp)
/* 005928 80004D28 8C620000 */  lw    $v0, ($v1)
/* 00592C 80004D2C 00C02025 */  move  $a0, $a2
/* 005930 80004D30 304E0003 */  andi  $t6, $v0, 3
/* 005934 80004D34 11C00005 */  beqz  $t6, .L80004D4C
/* 005938 80004D38 00000000 */   nop   
/* 00593C 80004D3C 8C620000 */  lw    $v0, ($v1)
.L80004D40:
/* 005940 80004D40 304F0003 */  andi  $t7, $v0, 3
/* 005944 80004D44 55E0FFFE */  bnezl $t7, .L80004D40
/* 005948 80004D48 8C620000 */   lw    $v0, ($v1)
.L80004D4C:
/* 00594C 80004D4C 0C001378 */  jal   osVirtualToPhysical
/* 005950 80004D50 AFA70024 */   sw    $a3, 0x24($sp)
/* 005954 80004D54 8FA30018 */  lw    $v1, 0x18($sp)
/* 005958 80004D58 8FA70024 */  lw    $a3, 0x24($sp)
/* 00595C 80004D5C 3C18A460 */  lui   $t8, 0xa460
/* 005960 80004D60 AF020000 */  sw    $v0, ($t8)
/* 005964 80004D64 3C198000 */  lui   $t9, %hi(osRomBase) # $t9, 0x8000
/* 005968 80004D68 8F390308 */  lw    $t9, %lo(osRomBase)($t9)
/* 00596C 80004D6C 8FA8001C */  lw    $t0, 0x1c($sp)
/* 005970 80004D70 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 005974 80004D74 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 005978 80004D78 03284825 */  or    $t1, $t9, $t0
/* 00597C 80004D7C 01215024 */  and   $t2, $t1, $at
/* 005980 80004D80 3C0BA460 */  lui   $t3, %hi(D_A4600004) # $t3, 0xa460
/* 005984 80004D84 10600006 */  beqz  $v1, .L80004DA0
/* 005988 80004D88 AD6A0004 */   sw    $t2, %lo(D_A4600004)($t3)
/* 00598C 80004D8C 24010001 */  li    $at, 1
/* 005990 80004D90 10610007 */  beq   $v1, $at, .L80004DB0
/* 005994 80004D94 24EEFFFF */   addiu $t6, $a3, -1
/* 005998 80004D98 1000000B */  b     .L80004DC8
/* 00599C 80004D9C 2402FFFF */   li    $v0, -1
.L80004DA0:
/* 0059A0 80004DA0 24ECFFFF */  addiu $t4, $a3, -1
/* 0059A4 80004DA4 3C0DA460 */  lui   $t5, %hi(D_A460000C) # $t5, 0xa460
/* 0059A8 80004DA8 10000006 */  b     .L80004DC4
/* 0059AC 80004DAC ADAC000C */   sw    $t4, %lo(D_A460000C)($t5)
.L80004DB0:
/* 0059B0 80004DB0 3C0FA460 */  lui   $t7, %hi(D_A4600008) # $t7, 0xa460
/* 0059B4 80004DB4 10000003 */  b     .L80004DC4
/* 0059B8 80004DB8 ADEE0008 */   sw    $t6, %lo(D_A4600008)($t7)
/* 0059BC 80004DBC 10000002 */  b     .L80004DC8
/* 0059C0 80004DC0 2402FFFF */   li    $v0, -1
.L80004DC4:
/* 0059C4 80004DC4 00001025 */  move  $v0, $zero
.L80004DC8:
/* 0059C8 80004DC8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0059CC 80004DCC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0059D0 80004DD0 03E00008 */  jr    $ra
/* 0059D4 80004DD4 00000000 */   nop   
