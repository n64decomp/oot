glabel func_800A9D40
/* B20EE0 800A9D40 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B20EE4 800A9D44 AFB00018 */  sw    $s0, 0x18($sp)
/* B20EE8 800A9D48 3C108013 */  lui   $s0, %hi(D_8012A690) # $s0, 0x8013
/* B20EEC 800A9D4C 2610A690 */  addiu $s0, %lo(D_8012A690) # addiu $s0, $s0, -0x5970
/* B20EF0 800A9D50 8E0E000C */  lw    $t6, 0xc($s0)
/* B20EF4 800A9D54 3C01A000 */  lui   $at, 0xa000
/* B20EF8 800A9D58 AFA60028 */  sw    $a2, 0x28($sp)
/* B20EFC 800A9D5C AFA7002C */  sw    $a3, 0x2c($sp)
/* B20F00 800A9D60 00811021 */  addu  $v0, $a0, $at
/* B20F04 800A9D64 30E700FF */  andi  $a3, $a3, 0xff
/* B20F08 800A9D68 30C600FF */  andi  $a2, $a2, 0xff
/* B20F0C 800A9D6C AFBF001C */  sw    $ra, 0x1c($sp)
/* B20F10 800A9D70 AFA40020 */  sw    $a0, 0x20($sp)
/* B20F14 800A9D74 104E0022 */  beq   $v0, $t6, .L800A9E00
/* B20F18 800A9D78 AFA50024 */   sw    $a1, 0x24($sp)
/* B20F1C 800A9D7C 93AF0027 */  lbu   $t7, 0x27($sp)
/* B20F20 800A9D80 3C018013 */  lui   $at, %hi(D_8012A69C) # $at, 0x8013
/* B20F24 800A9D84 93B8003B */  lbu   $t8, 0x3b($sp)
/* B20F28 800A9D88 A20F0004 */  sb    $t7, 4($s0)
/* B20F2C 800A9D8C AC22A69C */  sw    $v0, %lo(D_8012A69C)($at)
/* B20F30 800A9D90 93B90033 */  lbu   $t9, 0x33($sp)
/* B20F34 800A9D94 93A80037 */  lbu   $t0, 0x37($sp)
/* B20F38 800A9D98 8FA9003C */  lw    $t1, 0x3c($sp)
/* B20F3C 800A9D9C 3C048013 */  lui   $a0, %hi(D_8012A6A4) # $a0, 0x8013
/* B20F40 800A9DA0 A2070005 */  sb    $a3, 5($s0)
/* B20F44 800A9DA4 A2060009 */  sb    $a2, 9($s0)
/* B20F48 800A9DA8 2484A6A4 */  addiu $a0, %lo(D_8012A6A4) # addiu $a0, $a0, -0x595c
/* B20F4C 800A9DAC 24050060 */  li    $a1, 96
/* B20F50 800A9DB0 A2180008 */  sb    $t8, 8($s0)
/* B20F54 800A9DB4 A2190006 */  sb    $t9, 6($s0)
/* B20F58 800A9DB8 A2080007 */  sb    $t0, 7($s0)
/* B20F5C 800A9DBC 0C001114 */  jal   bzero
/* B20F60 800A9DC0 AE090010 */   sw    $t1, 0x10($s0)
/* B20F64 800A9DC4 0C001CA0 */  jal   __osDisableInt
/* B20F68 800A9DC8 00000000 */   nop   
/* B20F6C 800A9DCC 3C038001 */  lui   $v1, %hi(D_8000AD7C) # $v1, 0x8001
/* B20F70 800A9DD0 2463AD7C */  addiu $v1, %lo(D_8000AD7C) # addiu $v1, $v1, -0x5284
/* B20F74 800A9DD4 8C6A0000 */  lw    $t2, ($v1)
/* B20F78 800A9DD8 AC700000 */  sw    $s0, ($v1)
/* B20F7C 800A9DDC 00402025 */  move  $a0, $v0
/* B20F80 800A9DE0 0C001CBC */  jal   func_800072F0
/* B20F84 800A9DE4 AE0A0000 */   sw    $t2, ($s0)
/* B20F88 800A9DE8 8FAC0020 */  lw    $t4, 0x20($sp)
/* B20F8C 800A9DEC 3C0B8013 */  lui   $t3, %hi(D_8012A71C) # $t3, 0x8013
/* B20F90 800A9DF0 256BA71C */  addiu $t3, %lo(D_8012A71C) # addiu $t3, $t3, -0x58e4
/* B20F94 800A9DF4 A2000076 */  sb    $zero, 0x76($s0)
/* B20F98 800A9DF8 AE0B0078 */  sw    $t3, 0x78($s0)
/* B20F9C 800A9DFC AE0C0080 */  sw    $t4, 0x80($s0)
.L800A9E00:
/* B20FA0 800A9E00 8FBF001C */  lw    $ra, 0x1c($sp)
/* B20FA4 800A9E04 8FB00018 */  lw    $s0, 0x18($sp)
/* B20FA8 800A9E08 27BD0020 */  addiu $sp, $sp, 0x20
/* B20FAC 800A9E0C 03E00008 */  jr    $ra
/* B20FB0 800A9E10 00000000 */   nop   

