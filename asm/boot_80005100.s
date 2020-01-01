.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80005100
/* 005D00 80005100 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 005D04 80005104 3C0E0040 */  lui   $t6, 0x40
/* 005D08 80005108 AFAE0008 */  sw    $t6, 8($sp)
.L8000510C:
/* 005D0C 8000510C 8FAF0008 */  lw    $t7, 8($sp)
/* 005D10 80005110 3C01A000 */  lui   $at, 0xa000
/* 005D14 80005114 3C19A000 */  lui   $t9, 0xa000
/* 005D18 80005118 01E1C021 */  addu  $t8, $t7, $at
/* 005D1C 8000511C AFB8000C */  sw    $t8, 0xc($sp)
/* 005D20 80005120 032FC821 */  addu  $t9, $t9, $t7
/* 005D24 80005124 8F390000 */  lw    $t9, ($t9)
/* 005D28 80005128 3C08A010 */  lui   $t0, 0xa010
/* 005D2C 8000512C 010F4021 */  addu  $t0, $t0, $t7
/* 005D30 80005130 AFB90004 */  sw    $t9, 4($sp)
/* 005D34 80005134 8D08FFFC */  lw    $t0, -4($t0)
/* 005D38 80005138 3C09A000 */  lui   $t1, 0xa000
/* 005D3C 8000513C 012F4821 */  addu  $t1, $t1, $t7
/* 005D40 80005140 AFA80000 */  sw    $t0, ($sp)
/* 005D44 80005144 8D290000 */  lw    $t1, ($t1)
/* 005D48 80005148 2401FFFF */  li    $at, -1
/* 005D4C 8000514C 3C0C0010 */  lui   $t4, 0x10
/* 005D50 80005150 01215026 */  xor   $t2, $t1, $at
/* 005D54 80005154 3C01A000 */  lui   $at, 0xa000
/* 005D58 80005158 002F0821 */  addu  $at, $at, $t7
/* 005D5C 8000515C AC2A0000 */  sw    $t2, ($at)
/* 005D60 80005160 8FAB000C */  lw    $t3, 0xc($sp)
/* 005D64 80005164 2401FFFF */  li    $at, -1
/* 005D68 80005168 018B6021 */  addu  $t4, $t4, $t3
/* 005D6C 8000516C 8D8CFFFC */  lw    $t4, -4($t4)
/* 005D70 80005170 01816826 */  xor   $t5, $t4, $at
/* 005D74 80005174 3C010010 */  lui   $at, 0x10
/* 005D78 80005178 002B0821 */  addu  $at, $at, $t3
/* 005D7C 8000517C AC2DFFFC */  sw    $t5, -4($at)
/* 005D80 80005180 8FAE000C */  lw    $t6, 0xc($sp)
/* 005D84 80005184 8FB90004 */  lw    $t9, 4($sp)
/* 005D88 80005188 2401FFFF */  li    $at, -1
/* 005D8C 8000518C 8DD80000 */  lw    $t8, ($t6)
/* 005D90 80005190 03214026 */  xor   $t0, $t9, $at
/* 005D94 80005194 17080009 */  bne   $t8, $t0, .L800051BC
/* 005D98 80005198 00000000 */   nop   
/* 005D9C 8000519C 3C090010 */  lui   $t1, 0x10
/* 005DA0 800051A0 8FAA0000 */  lw    $t2, ($sp)
/* 005DA4 800051A4 012E4821 */  addu  $t1, $t1, $t6
/* 005DA8 800051A8 8D29FFFC */  lw    $t1, -4($t1)
/* 005DAC 800051AC 2401FFFF */  li    $at, -1
/* 005DB0 800051B0 01417826 */  xor   $t7, $t2, $at
/* 005DB4 800051B4 112F0003 */  beq   $t1, $t7, .L800051C4
/* 005DB8 800051B8 00000000 */   nop   
.L800051BC:
/* 005DBC 800051BC 10000013 */  b     .L8000520C
/* 005DC0 800051C0 8FA20008 */   lw    $v0, 8($sp)
.L800051C4:
/* 005DC4 800051C4 8FAC0004 */  lw    $t4, 4($sp)
/* 005DC8 800051C8 8FAD000C */  lw    $t5, 0xc($sp)
/* 005DCC 800051CC 3C010010 */  lui   $at, 0x10
/* 005DD0 800051D0 ADAC0000 */  sw    $t4, ($t5)
/* 005DD4 800051D4 8FB9000C */  lw    $t9, 0xc($sp)
/* 005DD8 800051D8 8FAB0000 */  lw    $t3, ($sp)
/* 005DDC 800051DC 00390821 */  addu  $at, $at, $t9
/* 005DE0 800051E0 AC2BFFFC */  sw    $t3, -4($at)
/* 005DE4 800051E4 8FB80008 */  lw    $t8, 8($sp)
/* 005DE8 800051E8 3C010010 */  lui   $at, 0x10
/* 005DEC 800051EC 03014021 */  addu  $t0, $t8, $at
/* 005DF0 800051F0 AFA80008 */  sw    $t0, 8($sp)
/* 005DF4 800051F4 8FAE0008 */  lw    $t6, 8($sp)
/* 005DF8 800051F8 3C010080 */  lui   $at, 0x80
/* 005DFC 800051FC 01C1082B */  sltu  $at, $t6, $at
/* 005E00 80005200 1420FFC2 */  bnez  $at, .L8000510C
/* 005E04 80005204 00000000 */   nop   
/* 005E08 80005208 8FA20008 */  lw    $v0, 8($sp)
.L8000520C:
/* 005E0C 8000520C 03E00008 */  jr    $ra
/* 005E10 80005210 27BD0010 */   addiu $sp, $sp, 0x10
