.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800ADBB0
/* B24D50 800ADBB0 27BDFBD0 */  addiu $sp, $sp, -0x430
/* B24D54 800ADBB4 AFB70024 */  sw    $s7, 0x24($sp)
/* B24D58 800ADBB8 8FB70450 */  lw    $s7, 0x450($sp)
/* B24D5C 800ADBBC AFB20010 */  sw    $s2, 0x10($sp)
/* B24D60 800ADBC0 AFB00008 */  sw    $s0, 8($sp)
/* B24D64 800ADBC4 2EE10006 */  sltiu $at, $s7, 6
/* B24D68 800ADBC8 00808025 */  move  $s0, $a0
/* B24D6C 800ADBCC 00E09025 */  move  $s2, $a3
/* B24D70 800ADBD0 AFBF002C */  sw    $ra, 0x2c($sp)
/* B24D74 800ADBD4 AFBE0028 */  sw    $fp, 0x28($sp)
/* B24D78 800ADBD8 AFB60020 */  sw    $s6, 0x20($sp)
/* B24D7C 800ADBDC AFB5001C */  sw    $s5, 0x1c($sp)
/* B24D80 800ADBE0 AFB40018 */  sw    $s4, 0x18($sp)
/* B24D84 800ADBE4 AFB30014 */  sw    $s3, 0x14($sp)
/* B24D88 800ADBE8 AFB1000C */  sw    $s1, 0xc($sp)
/* B24D8C 800ADBEC AFA50434 */  sw    $a1, 0x434($sp)
/* B24D90 800ADBF0 102000C5 */  beqz  $at, .L800ADF08
/* B24D94 800ADBF4 AFA60438 */   sw    $a2, 0x438($sp)
/* B24D98 800ADBF8 00177080 */  sll   $t6, $s7, 2
/* B24D9C 800ADBFC 3C018014 */  lui   $at, %hi(jtbl_80142D90)
/* B24DA0 800ADC00 002E0821 */  addu  $at, $at, $t6
/* B24DA4 800ADC04 8C2E2D90 */  lw    $t6, %lo(jtbl_80142D90)($at)
/* B24DA8 800ADC08 01C00008 */  jr    $t6
/* B24DAC 800ADC0C 00000000 */   nop   
glabel L800ADC10
/* B24DB0 800ADC10 8FAB0448 */  lw    $t3, 0x448($sp)
/* B24DB4 800ADC14 3C148013 */  lui   $s4, %hi(D_8012AD2C) # $s4, 0x8013
/* B24DB8 800ADC18 3C138013 */  lui   $s3, %hi(D_8012AD20) # $s3, 0x8013
/* B24DBC 800ADC1C 8FAA0440 */  lw    $t2, 0x440($sp)
/* B24DC0 800ADC20 2673AD20 */  addiu $s3, %lo(D_8012AD20) # addiu $s3, $s3, -0x52e0
/* B24DC4 800ADC24 2694AD2C */  addiu $s4, %lo(D_8012AD2C) # addiu $s4, $s4, -0x52d4
/* B24DC8 800ADC28 27A501F0 */  addiu $a1, $sp, 0x1f0
/* B24DCC 800ADC2C 27A60358 */  addiu $a2, $sp, 0x358
/* B24DD0 800ADC30 27A702A4 */  addiu $a3, $sp, 0x2a4
/* B24DD4 800ADC34 27A8013C */  addiu $t0, $sp, 0x13c
/* B24DD8 800ADC38 27A40088 */  addiu $a0, $sp, 0x88
/* B24DDC 800ADC3C 8FB5044C */  lw    $s5, 0x44c($sp)
/* B24DE0 800ADC40 8FB10444 */  lw    $s1, 0x444($sp)
/* B24DE4 800ADC44 27AC013C */  addiu $t4, $sp, 0x13c
/* B24DE8 800ADC48 024BB021 */  addu  $s6, $s2, $t3
.L800ADC4C:
/* B24DEC 800ADC4C ACB10000 */  sw    $s1, ($a1)
/* B24DF0 800ADC50 ACD20000 */  sw    $s2, ($a2)
/* B24DF4 800ADC54 ACEA0000 */  sw    $t2, ($a3)
/* B24DF8 800ADC58 3C0F8013 */  lui   $t7, %hi(D_8012AD20) # $t7, 0x8013
/* B24DFC 800ADC5C 85EFAD20 */  lh    $t7, %lo(D_8012AD20)($t7)
/* B24E00 800ADC60 240D0001 */  li    $t5, 1
/* B24E04 800ADC64 000DC040 */  sll   $t8, $t5, 1
/* B24E08 800ADC68 86890000 */  lh    $t1, ($s4)
/* B24E0C 800ADC6C 02781821 */  addu  $v1, $s3, $t8
/* B24E10 800ADC70 02CB1021 */  addu  $v0, $s6, $t3
/* B24E14 800ADC74 ACC20008 */  sw    $v0, 8($a2)
/* B24E18 800ADC78 004B1021 */  addu  $v0, $v0, $t3
/* B24E1C 800ADC7C AD0F0000 */  sw    $t7, ($t0)
/* B24E20 800ADC80 846F0004 */  lh    $t7, 4($v1)
/* B24E24 800ADC84 846E0002 */  lh    $t6, 2($v1)
/* B24E28 800ADC88 84780006 */  lh    $t8, 6($v1)
/* B24E2C 800ADC8C 84790000 */  lh    $t9, ($v1)
/* B24E30 800ADC90 ACC2000C */  sw    $v0, 0xc($a2)
/* B24E34 800ADC94 24840014 */  addiu $a0, $a0, 0x14
/* B24E38 800ADC98 008C082B */  sltu  $at, $a0, $t4
/* B24E3C 800ADC9C 004B1021 */  addu  $v0, $v0, $t3
/* B24E40 800ADCA0 ACEA0010 */  sw    $t2, 0x10($a3)
/* B24E44 800ADCA4 ACEA000C */  sw    $t2, 0xc($a3)
/* B24E48 800ADCA8 ACEA0008 */  sw    $t2, 8($a3)
/* B24E4C 800ADCAC ACEA0004 */  sw    $t2, 4($a3)
/* B24E50 800ADCB0 26940002 */  addiu $s4, $s4, 2
/* B24E54 800ADCB4 ACC20010 */  sw    $v0, 0x10($a2)
/* B24E58 800ADCB8 ACB10010 */  sw    $s1, 0x10($a1)
/* B24E5C 800ADCBC ACB1000C */  sw    $s1, 0xc($a1)
/* B24E60 800ADCC0 ACB10008 */  sw    $s1, 8($a1)
/* B24E64 800ADCC4 24A50014 */  addiu $a1, $a1, 0x14
/* B24E68 800ADCC8 24C60014 */  addiu $a2, $a2, 0x14
/* B24E6C 800ADCCC 24E70014 */  addiu $a3, $a3, 0x14
/* B24E70 800ADCD0 25080014 */  addiu $t0, $t0, 0x14
/* B24E74 800ADCD4 ACB1FFF0 */  sw    $s1, -0x10($a1)
/* B24E78 800ADCD8 ACD6FFF0 */  sw    $s6, -0x10($a2)
/* B24E7C 800ADCDC 01555021 */  addu  $t2, $t2, $s5
/* B24E80 800ADCE0 AC89FFEC */  sw    $t1, -0x14($a0)
/* B24E84 800ADCE4 AC89FFF4 */  sw    $t1, -0xc($a0)
/* B24E88 800ADCE8 AC89FFF8 */  sw    $t1, -8($a0)
/* B24E8C 800ADCEC AC89FFFC */  sw    $t1, -4($a0)
/* B24E90 800ADCF0 AC89FFF0 */  sw    $t1, -0x10($a0)
/* B24E94 800ADCF4 AD0FFFF8 */  sw    $t7, -8($t0)
/* B24E98 800ADCF8 AD0EFFF4 */  sw    $t6, -0xc($t0)
/* B24E9C 800ADCFC AD18FFFC */  sw    $t8, -4($t0)
/* B24EA0 800ADD00 1420FFD2 */  bnez  $at, .L800ADC4C
/* B24EA4 800ADD04 AD19FFF0 */   sw    $t9, -0x10($t0)
/* B24EA8 800ADD08 1000007F */  b     .L800ADF08
/* B24EAC 800ADD0C 00000000 */   nop   
glabel L800ADD10
/* B24EB0 800ADD10 8FAB0448 */  lw    $t3, 0x448($sp)
/* B24EB4 800ADD14 8FB10444 */  lw    $s1, 0x444($sp)
/* B24EB8 800ADD18 3C148013 */  lui   $s4, %hi(D_8012AD2C) # $s4, 0x8013
/* B24EBC 800ADD1C 3C138013 */  lui   $s3, %hi(D_8012AD20) # $s3, 0x8013
/* B24EC0 800ADD20 8FAA0440 */  lw    $t2, 0x440($sp)
/* B24EC4 800ADD24 2673AD20 */  addiu $s3, %lo(D_8012AD20) # addiu $s3, $s3, -0x52e0
/* B24EC8 800ADD28 2694AD2C */  addiu $s4, %lo(D_8012AD2C) # addiu $s4, $s4, -0x52d4
/* B24ECC 800ADD2C 27A501F0 */  addiu $a1, $sp, 0x1f0
/* B24ED0 800ADD30 27A60358 */  addiu $a2, $sp, 0x358
/* B24ED4 800ADD34 27A702A4 */  addiu $a3, $sp, 0x2a4
/* B24ED8 800ADD38 27A8013C */  addiu $t0, $sp, 0x13c
/* B24EDC 800ADD3C 27A40088 */  addiu $a0, $sp, 0x88
/* B24EE0 800ADD40 8FB5044C */  lw    $s5, 0x44c($sp)
/* B24EE4 800ADD44 27AC013C */  addiu $t4, $sp, 0x13c
/* B24EE8 800ADD48 022BB021 */  addu  $s6, $s1, $t3
.L800ADD4C:
/* B24EEC 800ADD4C ACD20000 */  sw    $s2, ($a2)
/* B24EF0 800ADD50 ACEA0000 */  sw    $t2, ($a3)
/* B24EF4 800ADD54 ACB10000 */  sw    $s1, ($a1)
/* B24EF8 800ADD58 3C198013 */  lui   $t9, %hi(D_8012AD20) # $t9, 0x8013
/* B24EFC 800ADD5C 8739AD20 */  lh    $t9, %lo(D_8012AD20)($t9)
/* B24F00 800ADD60 240D0001 */  li    $t5, 1
/* B24F04 800ADD64 000D7040 */  sll   $t6, $t5, 1
/* B24F08 800ADD68 86890000 */  lh    $t1, ($s4)
/* B24F0C 800ADD6C 026E1821 */  addu  $v1, $s3, $t6
/* B24F10 800ADD70 02CB1021 */  addu  $v0, $s6, $t3
/* B24F14 800ADD74 ACA20008 */  sw    $v0, 8($a1)
/* B24F18 800ADD78 004B1021 */  addu  $v0, $v0, $t3
/* B24F1C 800ADD7C AD190000 */  sw    $t9, ($t0)
/* B24F20 800ADD80 84790004 */  lh    $t9, 4($v1)
/* B24F24 800ADD84 84780002 */  lh    $t8, 2($v1)
/* B24F28 800ADD88 846E0006 */  lh    $t6, 6($v1)
/* B24F2C 800ADD8C 846F0000 */  lh    $t7, ($v1)
/* B24F30 800ADD90 ACA2000C */  sw    $v0, 0xc($a1)
/* B24F34 800ADD94 24840014 */  addiu $a0, $a0, 0x14
/* B24F38 800ADD98 008C082B */  sltu  $at, $a0, $t4
/* B24F3C 800ADD9C 004B1021 */  addu  $v0, $v0, $t3
/* B24F40 800ADDA0 ACEA0010 */  sw    $t2, 0x10($a3)
/* B24F44 800ADDA4 ACEA000C */  sw    $t2, 0xc($a3)
/* B24F48 800ADDA8 ACEA0008 */  sw    $t2, 8($a3)
/* B24F4C 800ADDAC ACEA0004 */  sw    $t2, 4($a3)
/* B24F50 800ADDB0 26940002 */  addiu $s4, $s4, 2
/* B24F54 800ADDB4 ACA20010 */  sw    $v0, 0x10($a1)
/* B24F58 800ADDB8 ACD20010 */  sw    $s2, 0x10($a2)
/* B24F5C 800ADDBC ACD2000C */  sw    $s2, 0xc($a2)
/* B24F60 800ADDC0 ACD20008 */  sw    $s2, 8($a2)
/* B24F64 800ADDC4 24A50014 */  addiu $a1, $a1, 0x14
/* B24F68 800ADDC8 24C60014 */  addiu $a2, $a2, 0x14
/* B24F6C 800ADDCC 24E70014 */  addiu $a3, $a3, 0x14
/* B24F70 800ADDD0 25080014 */  addiu $t0, $t0, 0x14
/* B24F74 800ADDD4 ACD2FFF0 */  sw    $s2, -0x10($a2)
/* B24F78 800ADDD8 ACB6FFF0 */  sw    $s6, -0x10($a1)
/* B24F7C 800ADDDC 01555021 */  addu  $t2, $t2, $s5
/* B24F80 800ADDE0 AC89FFEC */  sw    $t1, -0x14($a0)
/* B24F84 800ADDE4 AC89FFF4 */  sw    $t1, -0xc($a0)
/* B24F88 800ADDE8 AC89FFF8 */  sw    $t1, -8($a0)
/* B24F8C 800ADDEC AC89FFFC */  sw    $t1, -4($a0)
/* B24F90 800ADDF0 AC89FFF0 */  sw    $t1, -0x10($a0)
/* B24F94 800ADDF4 AD19FFF8 */  sw    $t9, -8($t0)
/* B24F98 800ADDF8 AD18FFF4 */  sw    $t8, -0xc($t0)
/* B24F9C 800ADDFC AD0EFFFC */  sw    $t6, -4($t0)
/* B24FA0 800ADE00 1420FFD2 */  bnez  $at, .L800ADD4C
/* B24FA4 800ADE04 AD0FFFF0 */   sw    $t7, -0x10($t0)
/* B24FA8 800ADE08 1000003F */  b     .L800ADF08
/* B24FAC 800ADE0C 00000000 */   nop   
glabel L800ADE10
/* B24FB0 800ADE10 8FAB0448 */  lw    $t3, 0x448($sp)
/* B24FB4 800ADE14 3C148013 */  lui   $s4, %hi(D_8012AD2C) # $s4, 0x8013
/* B24FB8 800ADE18 3C138013 */  lui   $s3, %hi(D_8012AD20) # $s3, 0x8013
/* B24FBC 800ADE1C 8FAA0444 */  lw    $t2, 0x444($sp)
/* B24FC0 800ADE20 2673AD20 */  addiu $s3, %lo(D_8012AD20) # addiu $s3, $s3, -0x52e0
/* B24FC4 800ADE24 2694AD2C */  addiu $s4, %lo(D_8012AD2C) # addiu $s4, $s4, -0x52d4
/* B24FC8 800ADE28 27A501F0 */  addiu $a1, $sp, 0x1f0
/* B24FCC 800ADE2C 27A60358 */  addiu $a2, $sp, 0x358
/* B24FD0 800ADE30 27A702A4 */  addiu $a3, $sp, 0x2a4
/* B24FD4 800ADE34 27A8013C */  addiu $t0, $sp, 0x13c
/* B24FD8 800ADE38 27A40088 */  addiu $a0, $sp, 0x88
/* B24FDC 800ADE3C 8FB5044C */  lw    $s5, 0x44c($sp)
/* B24FE0 800ADE40 27B1013C */  addiu $s1, $sp, 0x13c
/* B24FE4 800ADE44 8FAC0440 */  lw    $t4, 0x440($sp)
/* B24FE8 800ADE48 024BB021 */  addu  $s6, $s2, $t3
.L800ADE4C:
/* B24FEC 800ADE4C ACEC0000 */  sw    $t4, ($a3)
/* B24FF0 800ADE50 ACD20000 */  sw    $s2, ($a2)
/* B24FF4 800ADE54 ACAA0000 */  sw    $t2, ($a1)
/* B24FF8 800ADE58 3C0F8013 */  lui   $t7, %hi(D_8012AD20) # $t7, 0x8013
/* B24FFC 800ADE5C 85EFAD20 */  lh    $t7, %lo(D_8012AD20)($t7)
/* B25000 800ADE60 240D0001 */  li    $t5, 1
/* B25004 800ADE64 000DC040 */  sll   $t8, $t5, 1
/* B25008 800ADE68 86890000 */  lh    $t1, ($s4)
/* B2500C 800ADE6C 02781821 */  addu  $v1, $s3, $t8
/* B25010 800ADE70 02CB1021 */  addu  $v0, $s6, $t3
/* B25014 800ADE74 ACC20008 */  sw    $v0, 8($a2)
/* B25018 800ADE78 004B1021 */  addu  $v0, $v0, $t3
/* B2501C 800ADE7C AD0F0000 */  sw    $t7, ($t0)
/* B25020 800ADE80 846F0004 */  lh    $t7, 4($v1)
/* B25024 800ADE84 846E0002 */  lh    $t6, 2($v1)
/* B25028 800ADE88 84780006 */  lh    $t8, 6($v1)
/* B2502C 800ADE8C 84790000 */  lh    $t9, ($v1)
/* B25030 800ADE90 ACC2000C */  sw    $v0, 0xc($a2)
/* B25034 800ADE94 24840014 */  addiu $a0, $a0, 0x14
/* B25038 800ADE98 0091082B */  sltu  $at, $a0, $s1
/* B2503C 800ADE9C 004B1021 */  addu  $v0, $v0, $t3
/* B25040 800ADEA0 ACAA0010 */  sw    $t2, 0x10($a1)
/* B25044 800ADEA4 ACAA000C */  sw    $t2, 0xc($a1)
/* B25048 800ADEA8 ACAA0008 */  sw    $t2, 8($a1)
/* B2504C 800ADEAC ACAA0004 */  sw    $t2, 4($a1)
/* B25050 800ADEB0 26940002 */  addiu $s4, $s4, 2
/* B25054 800ADEB4 ACC20010 */  sw    $v0, 0x10($a2)
/* B25058 800ADEB8 ACEC0010 */  sw    $t4, 0x10($a3)
/* B2505C 800ADEBC ACEC000C */  sw    $t4, 0xc($a3)
/* B25060 800ADEC0 ACEC0008 */  sw    $t4, 8($a3)
/* B25064 800ADEC4 24A50014 */  addiu $a1, $a1, 0x14
/* B25068 800ADEC8 24C60014 */  addiu $a2, $a2, 0x14
/* B2506C 800ADECC 24E70014 */  addiu $a3, $a3, 0x14
/* B25070 800ADED0 25080014 */  addiu $t0, $t0, 0x14
/* B25074 800ADED4 ACECFFF0 */  sw    $t4, -0x10($a3)
/* B25078 800ADED8 ACD6FFF0 */  sw    $s6, -0x10($a2)
/* B2507C 800ADEDC 01555021 */  addu  $t2, $t2, $s5
/* B25080 800ADEE0 AC89FFEC */  sw    $t1, -0x14($a0)
/* B25084 800ADEE4 AC89FFF4 */  sw    $t1, -0xc($a0)
/* B25088 800ADEE8 AC89FFF8 */  sw    $t1, -8($a0)
/* B2508C 800ADEEC AC89FFFC */  sw    $t1, -4($a0)
/* B25090 800ADEF0 AC89FFF0 */  sw    $t1, -0x10($a0)
/* B25094 800ADEF4 AD0FFFF8 */  sw    $t7, -8($t0)
/* B25098 800ADEF8 AD0EFFF4 */  sw    $t6, -0xc($t0)
/* B2509C 800ADEFC AD18FFFC */  sw    $t8, -4($t0)
/* B250A0 800ADF00 1420FFD2 */  bnez  $at, .L800ADE4C
/* B250A4 800ADF04 AD19FFF0 */   sw    $t9, -0x10($t0)
.L800ADF08:
/* B250A8 800ADF08 3C198013 */  lui   $t9, %hi(D_8012ACA0) # $t9, 0x8013
/* B250AC 800ADF0C 00177080 */  sll   $t6, $s7, 2
/* B250B0 800ADF10 3C0F8013 */  lui   $t7, %hi(D_8012AC90) # $t7, 0x8013
/* B250B4 800ADF14 25EFAC90 */  addiu $t7, %lo(D_8012AC90) # addiu $t7, $t7, -0x5370
/* B250B8 800ADF18 2739ACA0 */  addiu $t9, %lo(D_8012ACA0) # addiu $t9, $t9, -0x5360
/* B250BC 800ADF1C 3C1E8013 */  lui   $fp, %hi(D_8012AD40) # $fp, 0x8013
/* B250C0 800ADF20 3C12FD48 */  lui   $s2, (0xFD4800FF >> 16) # lui $s2, 0xfd48
/* B250C4 800ADF24 365200FF */  ori   $s2, (0xFD4800FF & 0xFFFF) # ori $s2, $s2, 0xff
/* B250C8 800ADF28 27DEAD40 */  addiu $fp, %lo(D_8012AD40) # addiu $fp, $fp, -0x52c0
/* B250CC 800ADF2C AFB90054 */  sw    $t9, 0x54($sp)
/* B250D0 800ADF30 01CF8821 */  addu  $s1, $t6, $t7
/* B250D4 800ADF34 3C17F200 */  lui   $s7, 0xf200
/* B250D8 800ADF38 00003025 */  move  $a2, $zero
/* B250DC 800ADF3C AFA00424 */  sw    $zero, 0x424($sp)
/* B250E0 800ADF40 3C16E700 */  lui   $s6, 0xe700
/* B250E4 800ADF44 3C15F400 */  lui   $s5, 0xf400
/* B250E8 800ADF48 3C14E600 */  lui   $s4, 0xe600
/* B250EC 800ADF4C 3C13F548 */  lui   $s3, 0xf548
/* B250F0 800ADF50 3C0D0700 */  lui   $t5, 0x700
.L800ADF54:
/* B250F4 800ADF54 8FB90454 */  lw    $t9, 0x454($sp)
/* B250F8 800ADF58 8E180134 */  lw    $t8, 0x134($s0)
/* B250FC 800ADF5C 00004825 */  move  $t1, $zero
/* B25100 800ADF60 00197080 */  sll   $t6, $t9, 2
/* B25104 800ADF64 01D97021 */  addu  $t6, $t6, $t9
/* B25108 800ADF68 000E7080 */  sll   $t6, $t6, 2
/* B2510C 800ADF6C 01D97023 */  subu  $t6, $t6, $t9
/* B25110 800ADF70 000E7080 */  sll   $t6, $t6, 2
/* B25114 800ADF74 01D97023 */  subu  $t6, $t6, $t9
/* B25118 800ADF78 8FB90424 */  lw    $t9, 0x424($sp)
/* B2511C 800ADF7C 000E7100 */  sll   $t6, $t6, 4
/* B25120 800ADF80 030E7821 */  addu  $t7, $t8, $t6
/* B25124 800ADF84 0019C080 */  sll   $t8, $t9, 2
/* B25128 800ADF88 0319C021 */  addu  $t8, $t8, $t9
/* B2512C 800ADF8C 0018C080 */  sll   $t8, $t8, 2
/* B25130 800ADF90 0319C023 */  subu  $t8, $t8, $t9
/* B25134 800ADF94 0018C080 */  sll   $t8, $t8, 2
/* B25138 800ADF98 0319C023 */  subu  $t8, $t8, $t9
/* B2513C 800ADF9C 0018C100 */  sll   $t8, $t8, 4
/* B25140 800ADFA0 01F87021 */  addu  $t6, $t7, $t8
/* B25144 800ADFA4 AE0E0138 */  sw    $t6, 0x138($s0)
/* B25148 800ADFA8 8FAF0438 */  lw    $t7, 0x438($sp)
/* B2514C 800ADFAC 8FB90434 */  lw    $t9, 0x434($sp)
/* B25150 800ADFB0 8FA50054 */  lw    $a1, 0x54($sp)
/* B25154 800ADFB4 000FC100 */  sll   $t8, $t7, 4
/* B25158 800ADFB8 03381021 */  addu  $v0, $t9, $t8
.L800ADFBC:
/* B2515C 800ADFBC 94A40000 */  lhu   $a0, ($a1)
/* B25160 800ADFC0 25290001 */  addiu $t1, $t1, 1
/* B25164 800ADFC4 24010020 */  li    $at, 32
/* B25168 800ADFC8 00041880 */  sll   $v1, $a0, 2
/* B2516C 800ADFCC 03A37021 */  addu  $t6, $sp, $v1
/* B25170 800ADFD0 8DCE0358 */  lw    $t6, 0x358($t6)
/* B25174 800ADFD4 03A37821 */  addu  $t7, $sp, $v1
/* B25178 800ADFD8 03A3C821 */  addu  $t9, $sp, $v1
/* B2517C 800ADFDC A44E0000 */  sh    $t6, ($v0)
/* B25180 800ADFE0 8DEF02A4 */  lw    $t7, 0x2a4($t7)
/* B25184 800ADFE4 03A3C021 */  addu  $t8, $sp, $v1
/* B25188 800ADFE8 03A37021 */  addu  $t6, $sp, $v1
/* B2518C 800ADFEC A44F0002 */  sh    $t7, 2($v0)
/* B25190 800ADFF0 8F3901F0 */  lw    $t9, 0x1f0($t9)
/* B25194 800ADFF4 A4400006 */  sh    $zero, 6($v0)
/* B25198 800ADFF8 240F00FF */  li    $t7, 255
/* B2519C 800ADFFC A4590004 */  sh    $t9, 4($v0)
/* B251A0 800AE000 8F18013C */  lw    $t8, 0x13c($t8)
/* B251A4 800AE004 24A50002 */  addiu $a1, $a1, 2
/* B251A8 800AE008 24420010 */  addiu $v0, $v0, 0x10
/* B251AC 800AE00C A458FFF8 */  sh    $t8, -8($v0)
/* B251B0 800AE010 8DCE0088 */  lw    $t6, 0x88($t6)
/* B251B4 800AE014 A040FFFD */  sb    $zero, -3($v0)
/* B251B8 800AE018 A040FFFE */  sb    $zero, -2($v0)
/* B251BC 800AE01C A04FFFFC */  sb    $t7, -4($v0)
/* B251C0 800AE020 1521FFE6 */  bne   $t1, $at, .L800ADFBC
/* B251C4 800AE024 A44EFFFA */   sh    $t6, -6($v0)
/* B251C8 800AE028 8E030138 */  lw    $v1, 0x138($s0)
/* B251CC 800AE02C 3C180102 */  lui   $t8, (0x01020040 >> 16) # lui $t8, 0x102
/* B251D0 800AE030 37180040 */  ori   $t8, (0x01020040 & 0xFFFF) # ori $t8, $t8, 0x40
/* B251D4 800AE034 24790008 */  addiu $t9, $v1, 8
/* B251D8 800AE038 AE190138 */  sw    $t9, 0x138($s0)
/* B251DC 800AE03C AC780000 */  sw    $t8, ($v1)
/* B251E0 800AE040 8FAE0438 */  lw    $t6, 0x438($sp)
/* B251E4 800AE044 8FB90434 */  lw    $t9, 0x434($sp)
/* B251E8 800AE048 00005025 */  move  $t2, $zero
/* B251EC 800AE04C 000E7900 */  sll   $t7, $t6, 4
/* B251F0 800AE050 01F9C021 */  addu  $t8, $t7, $t9
/* B251F4 800AE054 AC780004 */  sw    $t8, 4($v1)
/* B251F8 800AE058 8FAE0438 */  lw    $t6, 0x438($sp)
/* B251FC 800AE05C 3C180300 */  lui   $t8, 0x300
/* B25200 800AE060 0000F825 */  move  $ra, $zero
/* B25204 800AE064 01C97821 */  addu  $t7, $t6, $t1
/* B25208 800AE068 AFAF0438 */  sw    $t7, 0x438($sp)
/* B2520C 800AE06C 8E030138 */  lw    $v1, 0x138($s0)
/* B25210 800AE070 240E001E */  li    $t6, 30
/* B25214 800AE074 24790008 */  addiu $t9, $v1, 8
/* B25218 800AE078 AE190138 */  sw    $t9, 0x138($s0)
/* B2521C 800AE07C AC6E0004 */  sw    $t6, 4($v1)
/* B25220 800AE080 AC780000 */  sw    $t8, ($v1)
.L800AE084:
/* B25224 800AE084 24C2001F */  addiu $v0, $a2, 0x1f
/* B25228 800AE088 00026080 */  sll   $t4, $v0, 2
/* B2522C 800AE08C 00065880 */  sll   $t3, $a2, 2
/* B25230 800AE090 316B0FFF */  andi  $t3, $t3, 0xfff
/* B25234 800AE094 318C0FFF */  andi  $t4, $t4, 0xfff
/* B25238 800AE098 AFA20038 */  sw    $v0, 0x38($sp)
/* B2523C 800AE09C 00002025 */  move  $a0, $zero
/* B25240 800AE0A0 00004825 */  move  $t1, $zero
.L800AE0A4:
/* B25244 800AE0A4 8E030138 */  lw    $v1, 0x138($s0)
/* B25248 800AE0A8 2488003F */  addiu $t0, $a0, 0x3f
/* B2524C 800AE0AC 00083880 */  sll   $a3, $t0, 2
/* B25250 800AE0B0 246F0008 */  addiu $t7, $v1, 8
/* B25254 800AE0B4 AE0F0138 */  sw    $t7, 0x138($s0)
/* B25258 800AE0B8 AC720000 */  sw    $s2, ($v1)
/* B2525C 800AE0BC 8E180128 */  lw    $t8, 0x128($s0)
/* B25260 800AE0C0 8E390000 */  lw    $t9, ($s1)
/* B25264 800AE0C4 00043080 */  sll   $a2, $a0, 2
/* B25268 800AE0C8 30C60FFF */  andi  $a2, $a2, 0xfff
/* B2526C 800AE0CC 03387021 */  addu  $t6, $t9, $t8
/* B25270 800AE0D0 AC6E0004 */  sw    $t6, 4($v1)
/* B25274 800AE0D4 8E030138 */  lw    $v1, 0x138($s0)
/* B25278 800AE0D8 0084C823 */  subu  $t9, $a0, $a0
/* B2527C 800AE0DC 27380047 */  addiu $t8, $t9, 0x47
/* B25280 800AE0E0 246F0008 */  addiu $t7, $v1, 8
/* B25284 800AE0E4 AE0F0138 */  sw    $t7, 0x138($s0)
/* B25288 800AE0E8 001870C3 */  sra   $t6, $t8, 3
/* B2528C 800AE0EC 31CF01FF */  andi  $t7, $t6, 0x1ff
/* B25290 800AE0F0 000FCA40 */  sll   $t9, $t7, 9
/* B25294 800AE0F4 03332825 */  or    $a1, $t9, $s3
/* B25298 800AE0F8 AC650000 */  sw    $a1, ($v1)
/* B2529C 800AE0FC AC6D0004 */  sw    $t5, 4($v1)
/* B252A0 800AE100 8E030138 */  lw    $v1, 0x138($s0)
/* B252A4 800AE104 30E70FFF */  andi  $a3, $a3, 0xfff
/* B252A8 800AE108 00073B00 */  sll   $a3, $a3, 0xc
/* B252AC 800AE10C 24780008 */  addiu $t8, $v1, 8
/* B252B0 800AE110 AE180138 */  sw    $t8, 0x138($s0)
/* B252B4 800AE114 AC600004 */  sw    $zero, 4($v1)
/* B252B8 800AE118 AC740000 */  sw    $s4, ($v1)
/* B252BC 800AE11C 8E030138 */  lw    $v1, 0x138($s0)
/* B252C0 800AE120 00063300 */  sll   $a2, $a2, 0xc
/* B252C4 800AE124 00D57825 */  or    $t7, $a2, $s5
/* B252C8 800AE128 246E0008 */  addiu $t6, $v1, 8
/* B252CC 800AE12C AE0E0138 */  sw    $t6, 0x138($s0)
/* B252D0 800AE130 00EDC025 */  or    $t8, $a3, $t5
/* B252D4 800AE134 030C7025 */  or    $t6, $t8, $t4
/* B252D8 800AE138 01EBC825 */  or    $t9, $t7, $t3
/* B252DC 800AE13C AC790000 */  sw    $t9, ($v1)
/* B252E0 800AE140 AC6E0004 */  sw    $t6, 4($v1)
/* B252E4 800AE144 8E030138 */  lw    $v1, 0x138($s0)
/* B252E8 800AE148 00D77025 */  or    $t6, $a2, $s7
/* B252EC 800AE14C 25290001 */  addiu $t1, $t1, 1
/* B252F0 800AE150 246F0008 */  addiu $t7, $v1, 8
/* B252F4 800AE154 AE0F0138 */  sw    $t7, 0x138($s0)
/* B252F8 800AE158 AC600004 */  sw    $zero, 4($v1)
/* B252FC 800AE15C AC760000 */  sw    $s6, ($v1)
/* B25300 800AE160 8E030138 */  lw    $v1, 0x138($s0)
/* B25304 800AE164 01CB7825 */  or    $t7, $t6, $t3
/* B25308 800AE168 000A7040 */  sll   $t6, $t2, 1
/* B2530C 800AE16C 24790008 */  addiu $t9, $v1, 8
/* B25310 800AE170 AE190138 */  sw    $t9, 0x138($s0)
/* B25314 800AE174 AC600004 */  sw    $zero, 4($v1)
/* B25318 800AE178 AC650000 */  sw    $a1, ($v1)
/* B2531C 800AE17C 8E030138 */  lw    $v1, 0x138($s0)
/* B25320 800AE180 00ECC825 */  or    $t9, $a3, $t4
/* B25324 800AE184 03CE1021 */  addu  $v0, $fp, $t6
/* B25328 800AE188 24780008 */  addiu $t8, $v1, 8
/* B2532C 800AE18C AE180138 */  sw    $t8, 0x138($s0)
/* B25330 800AE190 AC790004 */  sw    $t9, 4($v1)
/* B25334 800AE194 AC6F0000 */  sw    $t7, ($v1)
/* B25338 800AE198 8E030138 */  lw    $v1, 0x138($s0)
/* B2533C 800AE19C 00094C00 */  sll   $t1, $t1, 0x10
/* B25340 800AE1A0 00094C03 */  sra   $t1, $t1, 0x10
/* B25344 800AE1A4 24780008 */  addiu $t8, $v1, 8
/* B25348 800AE1A8 AE180138 */  sw    $t8, 0x138($s0)
/* B2534C 800AE1AC 844F0004 */  lh    $t7, 4($v0)
/* B25350 800AE1B0 844E0000 */  lh    $t6, ($v0)
/* B25354 800AE1B4 254A0004 */  addiu $t2, $t2, 4
/* B25358 800AE1B8 000FC840 */  sll   $t9, $t7, 1
/* B2535C 800AE1BC 333800FF */  andi  $t8, $t9, 0xff
/* B25360 800AE1C0 000E7840 */  sll   $t7, $t6, 1
/* B25364 800AE1C4 31F900FF */  andi  $t9, $t7, 0xff
/* B25368 800AE1C8 00197400 */  sll   $t6, $t9, 0x10
/* B2536C 800AE1CC 84590002 */  lh    $t9, 2($v0)
/* B25370 800AE1D0 030E7825 */  or    $t7, $t8, $t6
/* B25374 800AE1D4 000A5400 */  sll   $t2, $t2, 0x10
/* B25378 800AE1D8 0019C040 */  sll   $t8, $t9, 1
/* B2537C 800AE1DC 330E00FF */  andi  $t6, $t8, 0xff
/* B25380 800AE1E0 000ECA00 */  sll   $t9, $t6, 8
/* B25384 800AE1E4 01F9C025 */  or    $t8, $t7, $t9
/* B25388 800AE1E8 030D7025 */  or    $t6, $t8, $t5
/* B2538C 800AE1EC AC6E0000 */  sw    $t6, ($v1)
/* B25390 800AE1F0 844F0006 */  lh    $t7, 6($v0)
/* B25394 800AE1F4 844E0000 */  lh    $t6, ($v0)
/* B25398 800AE1F8 29210004 */  slti  $at, $t1, 4
/* B2539C 800AE1FC 000FC840 */  sll   $t9, $t7, 1
/* B253A0 800AE200 333800FF */  andi  $t8, $t9, 0xff
/* B253A4 800AE204 000E7840 */  sll   $t7, $t6, 1
/* B253A8 800AE208 31F900FF */  andi  $t9, $t7, 0xff
/* B253AC 800AE20C 00197400 */  sll   $t6, $t9, 0x10
/* B253B0 800AE210 84590004 */  lh    $t9, 4($v0)
/* B253B4 800AE214 030E7825 */  or    $t7, $t8, $t6
/* B253B8 800AE218 00082400 */  sll   $a0, $t0, 0x10
/* B253BC 800AE21C 0019C040 */  sll   $t8, $t9, 1
/* B253C0 800AE220 330E00FF */  andi  $t6, $t8, 0xff
/* B253C4 800AE224 000ECA00 */  sll   $t9, $t6, 8
/* B253C8 800AE228 01F9C025 */  or    $t8, $t7, $t9
/* B253CC 800AE22C 00042403 */  sra   $a0, $a0, 0x10
/* B253D0 800AE230 000A5403 */  sra   $t2, $t2, 0x10
/* B253D4 800AE234 1420FF9B */  bnez  $at, .L800AE0A4
/* B253D8 800AE238 AC780004 */   sw    $t8, 4($v1)
/* B253DC 800AE23C 27FF0001 */  addiu $ra, $ra, 1
/* B253E0 800AE240 001FFC00 */  sll   $ra, $ra, 0x10
/* B253E4 800AE244 001FFC03 */  sra   $ra, $ra, 0x10
/* B253E8 800AE248 2BE10004 */  slti  $at, $ra, 4
/* B253EC 800AE24C 1420FF8D */  bnez  $at, .L800AE084
/* B253F0 800AE250 87A6003A */   lh    $a2, 0x3a($sp)
/* B253F4 800AE254 8E030138 */  lw    $v1, 0x138($s0)
/* B253F8 800AE258 3C0FDF00 */  lui   $t7, 0xdf00
/* B253FC 800AE25C 24010002 */  li    $at, 2
/* B25400 800AE260 246E0008 */  addiu $t6, $v1, 8
/* B25404 800AE264 AE0E0138 */  sw    $t6, 0x138($s0)
/* B25408 800AE268 AC600004 */  sw    $zero, 4($v1)
/* B2540C 800AE26C AC6F0000 */  sw    $t7, ($v1)
/* B25410 800AE270 8FB90054 */  lw    $t9, 0x54($sp)
/* B25414 800AE274 8FA20424 */  lw    $v0, 0x424($sp)
/* B25418 800AE278 27380040 */  addiu $t8, $t9, 0x40
/* B2541C 800AE27C 24420001 */  addiu $v0, $v0, 1
/* B25420 800AE280 AFA20424 */  sw    $v0, 0x424($sp)
/* B25424 800AE284 1441FF33 */  bne   $v0, $at, .L800ADF54
/* B25428 800AE288 AFB80054 */   sw    $t8, 0x54($sp)
/* B2542C 800AE28C 8FBF002C */  lw    $ra, 0x2c($sp)
/* B25430 800AE290 8FA20438 */  lw    $v0, 0x438($sp)
/* B25434 800AE294 8FB00008 */  lw    $s0, 8($sp)
/* B25438 800AE298 8FB1000C */  lw    $s1, 0xc($sp)
/* B2543C 800AE29C 8FB20010 */  lw    $s2, 0x10($sp)
/* B25440 800AE2A0 8FB30014 */  lw    $s3, 0x14($sp)
/* B25444 800AE2A4 8FB40018 */  lw    $s4, 0x18($sp)
/* B25448 800AE2A8 8FB5001C */  lw    $s5, 0x1c($sp)
/* B2544C 800AE2AC 8FB60020 */  lw    $s6, 0x20($sp)
/* B25450 800AE2B0 8FB70024 */  lw    $s7, 0x24($sp)
/* B25454 800AE2B4 8FBE0028 */  lw    $fp, 0x28($sp)
/* B25458 800AE2B8 03E00008 */  jr    $ra
/* B2545C 800AE2BC 27BD0430 */   addiu $sp, $sp, 0x430

glabel func_800AE2C0
/* B25460 800AE2C0 27BDFCC8 */  addiu $sp, $sp, -0x338
/* B25464 800AE2C4 AFB70024 */  sw    $s7, 0x24($sp)
/* B25468 800AE2C8 8FB70358 */  lw    $s7, 0x358($sp)
/* B2546C 800AE2CC AFBE0028 */  sw    $fp, 0x28($sp)
/* B25470 800AE2D0 AFB20010 */  sw    $s2, 0x10($sp)
/* B25474 800AE2D4 AFB00008 */  sw    $s0, 8($sp)
/* B25478 800AE2D8 2EE10006 */  sltiu $at, $s7, 6
/* B2547C 800AE2DC 00808025 */  move  $s0, $a0
/* B25480 800AE2E0 00E09025 */  move  $s2, $a3
/* B25484 800AE2E4 00A0F025 */  move  $fp, $a1
/* B25488 800AE2E8 AFBF002C */  sw    $ra, 0x2c($sp)
/* B2548C 800AE2EC AFB60020 */  sw    $s6, 0x20($sp)
/* B25490 800AE2F0 AFB5001C */  sw    $s5, 0x1c($sp)
/* B25494 800AE2F4 AFB40018 */  sw    $s4, 0x18($sp)
/* B25498 800AE2F8 AFB30014 */  sw    $s3, 0x14($sp)
/* B2549C 800AE2FC AFB1000C */  sw    $s1, 0xc($sp)
/* B254A0 800AE300 102000C5 */  beqz  $at, .L800AE618
/* B254A4 800AE304 AFA60340 */   sw    $a2, 0x340($sp)
/* B254A8 800AE308 00177080 */  sll   $t6, $s7, 2
/* B254AC 800AE30C 3C018014 */  lui   $at, %hi(jtbl_80142DA8)
/* B254B0 800AE310 002E0821 */  addu  $at, $at, $t6
/* B254B4 800AE314 8C2E2DA8 */  lw    $t6, %lo(jtbl_80142DA8)($at)
/* B254B8 800AE318 01C00008 */  jr    $t6
/* B254BC 800AE31C 00000000 */   nop   
glabel L800AE320
/* B254C0 800AE320 8FAB0350 */  lw    $t3, 0x350($sp)
/* B254C4 800AE324 3C148013 */  lui   $s4, %hi(D_8012AE30) # $s4, 0x8013
/* B254C8 800AE328 3C138013 */  lui   $s3, %hi(D_8012AE18) # $s3, 0x8013
/* B254CC 800AE32C 8FAA0348 */  lw    $t2, 0x348($sp)
/* B254D0 800AE330 2673AE18 */  addiu $s3, %lo(D_8012AE18) # addiu $s3, $s3, -0x51e8
/* B254D4 800AE334 2694AE30 */  addiu $s4, %lo(D_8012AE30) # addiu $s4, $s4, -0x51d0
/* B254D8 800AE338 27A501EC */  addiu $a1, $sp, 0x1ec
/* B254DC 800AE33C 27A602B4 */  addiu $a2, $sp, 0x2b4
/* B254E0 800AE340 27A70250 */  addiu $a3, $sp, 0x250
/* B254E4 800AE344 27A80188 */  addiu $t0, $sp, 0x188
/* B254E8 800AE348 27A40124 */  addiu $a0, $sp, 0x124
/* B254EC 800AE34C 8FB50354 */  lw    $s5, 0x354($sp)
/* B254F0 800AE350 8FB1034C */  lw    $s1, 0x34c($sp)
/* B254F4 800AE354 27AC0188 */  addiu $t4, $sp, 0x188
/* B254F8 800AE358 024BB021 */  addu  $s6, $s2, $t3
.L800AE35C:
/* B254FC 800AE35C ACB10000 */  sw    $s1, ($a1)
/* B25500 800AE360 ACD20000 */  sw    $s2, ($a2)
/* B25504 800AE364 ACEA0000 */  sw    $t2, ($a3)
/* B25508 800AE368 3C0F8013 */  lui   $t7, %hi(D_8012AE18) # $t7, 0x8013
/* B2550C 800AE36C 85EFAE18 */  lh    $t7, %lo(D_8012AE18)($t7)
/* B25510 800AE370 240D0001 */  li    $t5, 1
/* B25514 800AE374 000DC040 */  sll   $t8, $t5, 1
/* B25518 800AE378 86890000 */  lh    $t1, ($s4)
/* B2551C 800AE37C 02781821 */  addu  $v1, $s3, $t8
/* B25520 800AE380 02CB1021 */  addu  $v0, $s6, $t3
/* B25524 800AE384 ACC20008 */  sw    $v0, 8($a2)
/* B25528 800AE388 004B1021 */  addu  $v0, $v0, $t3
/* B2552C 800AE38C AD0F0000 */  sw    $t7, ($t0)
/* B25530 800AE390 846F0004 */  lh    $t7, 4($v1)
/* B25534 800AE394 846E0002 */  lh    $t6, 2($v1)
/* B25538 800AE398 84780006 */  lh    $t8, 6($v1)
/* B2553C 800AE39C 84790000 */  lh    $t9, ($v1)
/* B25540 800AE3A0 ACC2000C */  sw    $v0, 0xc($a2)
/* B25544 800AE3A4 24840014 */  addiu $a0, $a0, 0x14
/* B25548 800AE3A8 008C082B */  sltu  $at, $a0, $t4
/* B2554C 800AE3AC 004B1021 */  addu  $v0, $v0, $t3
/* B25550 800AE3B0 ACEA0010 */  sw    $t2, 0x10($a3)
/* B25554 800AE3B4 ACEA000C */  sw    $t2, 0xc($a3)
/* B25558 800AE3B8 ACEA0008 */  sw    $t2, 8($a3)
/* B2555C 800AE3BC ACEA0004 */  sw    $t2, 4($a3)
/* B25560 800AE3C0 26940002 */  addiu $s4, $s4, 2
/* B25564 800AE3C4 ACC20010 */  sw    $v0, 0x10($a2)
/* B25568 800AE3C8 ACB10010 */  sw    $s1, 0x10($a1)
/* B2556C 800AE3CC ACB1000C */  sw    $s1, 0xc($a1)
/* B25570 800AE3D0 ACB10008 */  sw    $s1, 8($a1)
/* B25574 800AE3D4 24A50014 */  addiu $a1, $a1, 0x14
/* B25578 800AE3D8 24C60014 */  addiu $a2, $a2, 0x14
/* B2557C 800AE3DC 24E70014 */  addiu $a3, $a3, 0x14
/* B25580 800AE3E0 25080014 */  addiu $t0, $t0, 0x14
/* B25584 800AE3E4 ACB1FFF0 */  sw    $s1, -0x10($a1)
/* B25588 800AE3E8 ACD6FFF0 */  sw    $s6, -0x10($a2)
/* B2558C 800AE3EC 01555021 */  addu  $t2, $t2, $s5
/* B25590 800AE3F0 AC89FFEC */  sw    $t1, -0x14($a0)
/* B25594 800AE3F4 AC89FFF4 */  sw    $t1, -0xc($a0)
/* B25598 800AE3F8 AC89FFF8 */  sw    $t1, -8($a0)
/* B2559C 800AE3FC AC89FFFC */  sw    $t1, -4($a0)
/* B255A0 800AE400 AC89FFF0 */  sw    $t1, -0x10($a0)
/* B255A4 800AE404 AD0FFFF8 */  sw    $t7, -8($t0)
/* B255A8 800AE408 AD0EFFF4 */  sw    $t6, -0xc($t0)
/* B255AC 800AE40C AD18FFFC */  sw    $t8, -4($t0)
/* B255B0 800AE410 1420FFD2 */  bnez  $at, .L800AE35C
/* B255B4 800AE414 AD19FFF0 */   sw    $t9, -0x10($t0)
/* B255B8 800AE418 10000080 */  b     .L800AE61C
/* B255BC 800AE41C 00177080 */   sll   $t6, $s7, 2
glabel L800AE420
/* B255C0 800AE420 8FAB0350 */  lw    $t3, 0x350($sp)
/* B255C4 800AE424 8FB1034C */  lw    $s1, 0x34c($sp)
/* B255C8 800AE428 3C148013 */  lui   $s4, %hi(D_8012AE30) # $s4, 0x8013
/* B255CC 800AE42C 3C138013 */  lui   $s3, %hi(D_8012AE18) # $s3, 0x8013
/* B255D0 800AE430 8FAA0348 */  lw    $t2, 0x348($sp)
/* B255D4 800AE434 2673AE18 */  addiu $s3, %lo(D_8012AE18) # addiu $s3, $s3, -0x51e8
/* B255D8 800AE438 2694AE30 */  addiu $s4, %lo(D_8012AE30) # addiu $s4, $s4, -0x51d0
/* B255DC 800AE43C 27A501EC */  addiu $a1, $sp, 0x1ec
/* B255E0 800AE440 27A602B4 */  addiu $a2, $sp, 0x2b4
/* B255E4 800AE444 27A70250 */  addiu $a3, $sp, 0x250
/* B255E8 800AE448 27A80188 */  addiu $t0, $sp, 0x188
/* B255EC 800AE44C 27A40124 */  addiu $a0, $sp, 0x124
/* B255F0 800AE450 8FB50354 */  lw    $s5, 0x354($sp)
/* B255F4 800AE454 27AC0188 */  addiu $t4, $sp, 0x188
/* B255F8 800AE458 022BB021 */  addu  $s6, $s1, $t3
.L800AE45C:
/* B255FC 800AE45C ACD20000 */  sw    $s2, ($a2)
/* B25600 800AE460 ACEA0000 */  sw    $t2, ($a3)
/* B25604 800AE464 ACB10000 */  sw    $s1, ($a1)
/* B25608 800AE468 3C198013 */  lui   $t9, %hi(D_8012AE18) # $t9, 0x8013
/* B2560C 800AE46C 8739AE18 */  lh    $t9, %lo(D_8012AE18)($t9)
/* B25610 800AE470 240D0001 */  li    $t5, 1
/* B25614 800AE474 000D7040 */  sll   $t6, $t5, 1
/* B25618 800AE478 86890000 */  lh    $t1, ($s4)
/* B2561C 800AE47C 026E1821 */  addu  $v1, $s3, $t6
/* B25620 800AE480 02CB1021 */  addu  $v0, $s6, $t3
/* B25624 800AE484 ACA20008 */  sw    $v0, 8($a1)
/* B25628 800AE488 004B1021 */  addu  $v0, $v0, $t3
/* B2562C 800AE48C AD190000 */  sw    $t9, ($t0)
/* B25630 800AE490 84790004 */  lh    $t9, 4($v1)
/* B25634 800AE494 84780002 */  lh    $t8, 2($v1)
/* B25638 800AE498 846E0006 */  lh    $t6, 6($v1)
/* B2563C 800AE49C 846F0000 */  lh    $t7, ($v1)
/* B25640 800AE4A0 ACA2000C */  sw    $v0, 0xc($a1)
/* B25644 800AE4A4 24840014 */  addiu $a0, $a0, 0x14
/* B25648 800AE4A8 008C082B */  sltu  $at, $a0, $t4
/* B2564C 800AE4AC 004B1021 */  addu  $v0, $v0, $t3
/* B25650 800AE4B0 ACEA0010 */  sw    $t2, 0x10($a3)
/* B25654 800AE4B4 ACEA000C */  sw    $t2, 0xc($a3)
/* B25658 800AE4B8 ACEA0008 */  sw    $t2, 8($a3)
/* B2565C 800AE4BC ACEA0004 */  sw    $t2, 4($a3)
/* B25660 800AE4C0 26940002 */  addiu $s4, $s4, 2
/* B25664 800AE4C4 ACA20010 */  sw    $v0, 0x10($a1)
/* B25668 800AE4C8 ACD20010 */  sw    $s2, 0x10($a2)
/* B2566C 800AE4CC ACD2000C */  sw    $s2, 0xc($a2)
/* B25670 800AE4D0 ACD20008 */  sw    $s2, 8($a2)
/* B25674 800AE4D4 24A50014 */  addiu $a1, $a1, 0x14
/* B25678 800AE4D8 24C60014 */  addiu $a2, $a2, 0x14
/* B2567C 800AE4DC 24E70014 */  addiu $a3, $a3, 0x14
/* B25680 800AE4E0 25080014 */  addiu $t0, $t0, 0x14
/* B25684 800AE4E4 ACD2FFF0 */  sw    $s2, -0x10($a2)
/* B25688 800AE4E8 ACB6FFF0 */  sw    $s6, -0x10($a1)
/* B2568C 800AE4EC 01555021 */  addu  $t2, $t2, $s5
/* B25690 800AE4F0 AC89FFEC */  sw    $t1, -0x14($a0)
/* B25694 800AE4F4 AC89FFF4 */  sw    $t1, -0xc($a0)
/* B25698 800AE4F8 AC89FFF8 */  sw    $t1, -8($a0)
/* B2569C 800AE4FC AC89FFFC */  sw    $t1, -4($a0)
/* B256A0 800AE500 AC89FFF0 */  sw    $t1, -0x10($a0)
/* B256A4 800AE504 AD19FFF8 */  sw    $t9, -8($t0)
/* B256A8 800AE508 AD18FFF4 */  sw    $t8, -0xc($t0)
/* B256AC 800AE50C AD0EFFFC */  sw    $t6, -4($t0)
/* B256B0 800AE510 1420FFD2 */  bnez  $at, .L800AE45C
/* B256B4 800AE514 AD0FFFF0 */   sw    $t7, -0x10($t0)
/* B256B8 800AE518 10000040 */  b     .L800AE61C
/* B256BC 800AE51C 00177080 */   sll   $t6, $s7, 2
glabel L800AE520
/* B256C0 800AE520 8FAB0350 */  lw    $t3, 0x350($sp)
/* B256C4 800AE524 3C148013 */  lui   $s4, %hi(D_8012AE24) # $s4, 0x8013
/* B256C8 800AE528 3C138013 */  lui   $s3, %hi(D_8012AE18) # $s3, 0x8013
/* B256CC 800AE52C 8FAA034C */  lw    $t2, 0x34c($sp)
/* B256D0 800AE530 2673AE18 */  addiu $s3, %lo(D_8012AE18) # addiu $s3, $s3, -0x51e8
/* B256D4 800AE534 2694AE24 */  addiu $s4, %lo(D_8012AE24) # addiu $s4, $s4, -0x51dc
/* B256D8 800AE538 27A501EC */  addiu $a1, $sp, 0x1ec
/* B256DC 800AE53C 27A602B4 */  addiu $a2, $sp, 0x2b4
/* B256E0 800AE540 27A70250 */  addiu $a3, $sp, 0x250
/* B256E4 800AE544 27A80188 */  addiu $t0, $sp, 0x188
/* B256E8 800AE548 27A40124 */  addiu $a0, $sp, 0x124
/* B256EC 800AE54C 8FB50354 */  lw    $s5, 0x354($sp)
/* B256F0 800AE550 27B10188 */  addiu $s1, $sp, 0x188
/* B256F4 800AE554 8FAC0348 */  lw    $t4, 0x348($sp)
/* B256F8 800AE558 024BB021 */  addu  $s6, $s2, $t3
.L800AE55C:
/* B256FC 800AE55C ACEC0000 */  sw    $t4, ($a3)
/* B25700 800AE560 ACD20000 */  sw    $s2, ($a2)
/* B25704 800AE564 ACAA0000 */  sw    $t2, ($a1)
/* B25708 800AE568 3C0F8013 */  lui   $t7, %hi(D_8012AE18) # $t7, 0x8013
/* B2570C 800AE56C 85EFAE18 */  lh    $t7, %lo(D_8012AE18)($t7)
/* B25710 800AE570 240D0001 */  li    $t5, 1
/* B25714 800AE574 000DC040 */  sll   $t8, $t5, 1
/* B25718 800AE578 86890000 */  lh    $t1, ($s4)
/* B2571C 800AE57C 02781821 */  addu  $v1, $s3, $t8
/* B25720 800AE580 02CB1021 */  addu  $v0, $s6, $t3
/* B25724 800AE584 ACC20008 */  sw    $v0, 8($a2)
/* B25728 800AE588 004B1021 */  addu  $v0, $v0, $t3
/* B2572C 800AE58C AD0F0000 */  sw    $t7, ($t0)
/* B25730 800AE590 846F0004 */  lh    $t7, 4($v1)
/* B25734 800AE594 846E0002 */  lh    $t6, 2($v1)
/* B25738 800AE598 84780006 */  lh    $t8, 6($v1)
/* B2573C 800AE59C 84790000 */  lh    $t9, ($v1)
/* B25740 800AE5A0 ACC2000C */  sw    $v0, 0xc($a2)
/* B25744 800AE5A4 24840014 */  addiu $a0, $a0, 0x14
/* B25748 800AE5A8 0091082B */  sltu  $at, $a0, $s1
/* B2574C 800AE5AC 004B1021 */  addu  $v0, $v0, $t3
/* B25750 800AE5B0 ACAA0010 */  sw    $t2, 0x10($a1)
/* B25754 800AE5B4 ACAA000C */  sw    $t2, 0xc($a1)
/* B25758 800AE5B8 ACAA0008 */  sw    $t2, 8($a1)
/* B2575C 800AE5BC ACAA0004 */  sw    $t2, 4($a1)
/* B25760 800AE5C0 26940002 */  addiu $s4, $s4, 2
/* B25764 800AE5C4 ACC20010 */  sw    $v0, 0x10($a2)
/* B25768 800AE5C8 ACEC0010 */  sw    $t4, 0x10($a3)
/* B2576C 800AE5CC ACEC000C */  sw    $t4, 0xc($a3)
/* B25770 800AE5D0 ACEC0008 */  sw    $t4, 8($a3)
/* B25774 800AE5D4 24A50014 */  addiu $a1, $a1, 0x14
/* B25778 800AE5D8 24C60014 */  addiu $a2, $a2, 0x14
/* B2577C 800AE5DC 24E70014 */  addiu $a3, $a3, 0x14
/* B25780 800AE5E0 25080014 */  addiu $t0, $t0, 0x14
/* B25784 800AE5E4 ACECFFF0 */  sw    $t4, -0x10($a3)
/* B25788 800AE5E8 ACD6FFF0 */  sw    $s6, -0x10($a2)
/* B2578C 800AE5EC 01555021 */  addu  $t2, $t2, $s5
/* B25790 800AE5F0 AC89FFEC */  sw    $t1, -0x14($a0)
/* B25794 800AE5F4 AC89FFF4 */  sw    $t1, -0xc($a0)
/* B25798 800AE5F8 AC89FFF8 */  sw    $t1, -8($a0)
/* B2579C 800AE5FC AC89FFFC */  sw    $t1, -4($a0)
/* B257A0 800AE600 AC89FFF0 */  sw    $t1, -0x10($a0)
/* B257A4 800AE604 AD0FFFF8 */  sw    $t7, -8($t0)
/* B257A8 800AE608 AD0EFFF4 */  sw    $t6, -0xc($t0)
/* B257AC 800AE60C AD18FFFC */  sw    $t8, -4($t0)
/* B257B0 800AE610 1420FFD2 */  bnez  $at, .L800AE55C
/* B257B4 800AE614 AD19FFF0 */   sw    $t9, -0x10($t0)
.L800AE618:
/* B257B8 800AE618 00177080 */  sll   $t6, $s7, 2
.L800AE61C:
/* B257BC 800AE61C 01D77021 */  addu  $t6, $t6, $s7
/* B257C0 800AE620 000E7080 */  sll   $t6, $t6, 2
/* B257C4 800AE624 01D77023 */  subu  $t6, $t6, $s7
/* B257C8 800AE628 8E190134 */  lw    $t9, 0x134($s0)
/* B257CC 800AE62C 000E7080 */  sll   $t6, $t6, 2
/* B257D0 800AE630 01D77023 */  subu  $t6, $t6, $s7
/* B257D4 800AE634 000E7140 */  sll   $t6, $t6, 5
/* B257D8 800AE638 032E7821 */  addu  $t7, $t9, $t6
/* B257DC 800AE63C AE0F0138 */  sw    $t7, 0x138($s0)
/* B257E0 800AE640 8FB80340 */  lw    $t8, 0x340($sp)
/* B257E4 800AE644 3C048013 */  lui   $a0, %hi(D_8012ADD8) # $a0, 0x8013
/* B257E8 800AE648 2484ADD8 */  addiu $a0, %lo(D_8012ADD8) # addiu $a0, $a0, -0x5228
/* B257EC 800AE64C 0018C900 */  sll   $t9, $t8, 4
/* B257F0 800AE650 03D92821 */  addu  $a1, $fp, $t9
/* B257F4 800AE654 00001025 */  move  $v0, $zero
/* B257F8 800AE658 240D0020 */  li    $t5, 32
/* B257FC 800AE65C 240C00FF */  li    $t4, 255
/* B25800 800AE660 27AB0124 */  addiu $t3, $sp, 0x124
/* B25804 800AE664 27AA0188 */  addiu $t2, $sp, 0x188
/* B25808 800AE668 27A901EC */  addiu $t1, $sp, 0x1ec
/* B2580C 800AE66C 27A80250 */  addiu $t0, $sp, 0x250
/* B25810 800AE670 27A702B4 */  addiu $a3, $sp, 0x2b4
.L800AE674:
/* B25814 800AE674 94830000 */  lhu   $v1, ($a0)
/* B25818 800AE678 24420001 */  addiu $v0, $v0, 1
/* B2581C 800AE67C 24840002 */  addiu $a0, $a0, 2
/* B25820 800AE680 00033080 */  sll   $a2, $v1, 2
/* B25824 800AE684 00E67021 */  addu  $t6, $a3, $a2
/* B25828 800AE688 8DCF0000 */  lw    $t7, ($t6)
/* B2582C 800AE68C 0106C021 */  addu  $t8, $t0, $a2
/* B25830 800AE690 01267021 */  addu  $t6, $t1, $a2
/* B25834 800AE694 A4AF0000 */  sh    $t7, ($a1)
/* B25838 800AE698 8F190000 */  lw    $t9, ($t8)
/* B2583C 800AE69C 0146C021 */  addu  $t8, $t2, $a2
/* B25840 800AE6A0 24A50010 */  addiu $a1, $a1, 0x10
/* B25844 800AE6A4 A4B9FFF2 */  sh    $t9, -0xe($a1)
/* B25848 800AE6A8 8DCF0000 */  lw    $t7, ($t6)
/* B2584C 800AE6AC A4A0FFF6 */  sh    $zero, -0xa($a1)
/* B25850 800AE6B0 01667021 */  addu  $t6, $t3, $a2
/* B25854 800AE6B4 A4AFFFF4 */  sh    $t7, -0xc($a1)
/* B25858 800AE6B8 8F190000 */  lw    $t9, ($t8)
/* B2585C 800AE6BC A4B9FFF8 */  sh    $t9, -8($a1)
/* B25860 800AE6C0 8DCF0000 */  lw    $t7, ($t6)
/* B25864 800AE6C4 A0A0FFFD */  sb    $zero, -3($a1)
/* B25868 800AE6C8 A0A0FFFE */  sb    $zero, -2($a1)
/* B2586C 800AE6CC A0ACFFFC */  sb    $t4, -4($a1)
/* B25870 800AE6D0 144DFFE8 */  bne   $v0, $t5, .L800AE674
/* B25874 800AE6D4 A4AFFFFA */   sh    $t7, -6($a1)
/* B25878 800AE6D8 8E030138 */  lw    $v1, 0x138($s0)
/* B2587C 800AE6DC 3C190102 */  lui   $t9, (0x01020040 >> 16) # lui $t9, 0x102
/* B25880 800AE6E0 37390040 */  ori   $t9, (0x01020040 & 0xFFFF) # ori $t9, $t9, 0x40
/* B25884 800AE6E4 24780008 */  addiu $t8, $v1, 8
/* B25888 800AE6E8 AE180138 */  sw    $t8, 0x138($s0)
/* B2588C 800AE6EC AC790000 */  sw    $t9, ($v1)
/* B25890 800AE6F0 8FAE0340 */  lw    $t6, 0x340($sp)
/* B25894 800AE6F4 24010004 */  li    $at, 4
/* B25898 800AE6F8 00009025 */  move  $s2, $zero
/* B2589C 800AE6FC 000E7900 */  sll   $t7, $t6, 4
/* B258A0 800AE700 01FEC021 */  addu  $t8, $t7, $fp
/* B258A4 800AE704 AC780004 */  sw    $t8, 4($v1)
/* B258A8 800AE708 8FB90340 */  lw    $t9, 0x340($sp)
/* B258AC 800AE70C 3C180300 */  lui   $t8, 0x300
/* B258B0 800AE710 3C1FF548 */  lui   $ra, 0xf548
/* B258B4 800AE714 03227021 */  addu  $t6, $t9, $v0
/* B258B8 800AE718 AFAE0340 */  sw    $t6, 0x340($sp)
/* B258BC 800AE71C 8E030138 */  lw    $v1, 0x138($s0)
/* B258C0 800AE720 2419001E */  li    $t9, 30
/* B258C4 800AE724 00177080 */  sll   $t6, $s7, 2
/* B258C8 800AE728 246F0008 */  addiu $t7, $v1, 8
/* B258CC 800AE72C AE0F0138 */  sw    $t7, 0x138($s0)
/* B258D0 800AE730 AC790004 */  sw    $t9, 4($v1)
/* B258D4 800AE734 12E10004 */  beq   $s7, $at, .L800AE748
/* B258D8 800AE738 AC780000 */   sw    $t8, ($v1)
/* B258DC 800AE73C 24010005 */  li    $at, 5
/* B258E0 800AE740 16E100B3 */  bne   $s7, $at, .L800AEA10
/* B258E4 800AE744 00177880 */   sll   $t7, $s7, 2
.L800AE748:
/* B258E8 800AE748 3C0F8013 */  lui   $t7, %hi(D_8012ADC0) # $t7, 0x8013
/* B258EC 800AE74C 25EFADC0 */  addiu $t7, %lo(D_8012ADC0) # addiu $t7, $t7, -0x5240
/* B258F0 800AE750 3C14FD48 */  lui   $s4, (0xFD48007F >> 16) # lui $s4, 0xfd48
/* B258F4 800AE754 3694007F */  ori   $s4, (0xFD48007F & 0xFFFF) # ori $s4, $s4, 0x7f
/* B258F8 800AE758 01CFF021 */  addu  $fp, $t6, $t7
/* B258FC 800AE75C A7A0031E */  sh    $zero, 0x31e($sp)
/* B25900 800AE760 A7A00320 */  sh    $zero, 0x320($sp)
/* B25904 800AE764 3C170100 */  lui   $s7, 0x100
/* B25908 800AE768 3C16E700 */  lui   $s6, 0xe700
/* B2590C 800AE76C 3C15E600 */  lui   $s5, 0xe600
/* B25910 800AE770 3C0C0700 */  lui   $t4, 0x700
.L800AE774:
/* B25914 800AE774 87A20320 */  lh    $v0, 0x320($sp)
/* B25918 800AE778 00002025 */  move  $a0, $zero
/* B2591C 800AE77C 00006825 */  move  $t5, $zero
/* B25920 800AE780 2458001F */  addiu $t8, $v0, 0x1f
/* B25924 800AE784 00188880 */  sll   $s1, $t8, 2
/* B25928 800AE788 00029880 */  sll   $s3, $v0, 2
/* B2592C 800AE78C 32730FFF */  andi  $s3, $s3, 0xfff
/* B25930 800AE790 32310FFF */  andi  $s1, $s1, 0xfff
/* B25934 800AE794 AFB80040 */  sw    $t8, 0x40($sp)
.L800AE798:
/* B25938 800AE798 8E030138 */  lw    $v1, 0x138($s0)
/* B2593C 800AE79C 248B001F */  addiu $t3, $a0, 0x1f
/* B25940 800AE7A0 000B3880 */  sll   $a3, $t3, 2
/* B25944 800AE7A4 24790008 */  addiu $t9, $v1, 8
/* B25948 800AE7A8 AE190138 */  sw    $t9, 0x138($s0)
/* B2594C 800AE7AC AC740000 */  sw    $s4, ($v1)
/* B25950 800AE7B0 8FCE0000 */  lw    $t6, ($fp)
/* B25954 800AE7B4 8E0F0128 */  lw    $t7, 0x128($s0)
/* B25958 800AE7B8 00042880 */  sll   $a1, $a0, 2
/* B2595C 800AE7BC 30A50FFF */  andi  $a1, $a1, 0xfff
/* B25960 800AE7C0 01CFC021 */  addu  $t8, $t6, $t7
/* B25964 800AE7C4 AC780004 */  sw    $t8, 4($v1)
/* B25968 800AE7C8 8E030138 */  lw    $v1, 0x138($s0)
/* B2596C 800AE7CC 00847023 */  subu  $t6, $a0, $a0
/* B25970 800AE7D0 25CF0027 */  addiu $t7, $t6, 0x27
/* B25974 800AE7D4 24790008 */  addiu $t9, $v1, 8
/* B25978 800AE7D8 AE190138 */  sw    $t9, 0x138($s0)
/* B2597C 800AE7DC 000FC0C3 */  sra   $t8, $t7, 3
/* B25980 800AE7E0 331901FF */  andi  $t9, $t8, 0x1ff
/* B25984 800AE7E4 00197240 */  sll   $t6, $t9, 9
/* B25988 800AE7E8 01DF3025 */  or    $a2, $t6, $ra
/* B2598C 800AE7EC AC660000 */  sw    $a2, ($v1)
/* B25990 800AE7F0 AC6C0004 */  sw    $t4, 4($v1)
/* B25994 800AE7F4 8E030138 */  lw    $v1, 0x138($s0)
/* B25998 800AE7F8 30E70FFF */  andi  $a3, $a3, 0xfff
/* B2599C 800AE7FC 00073B00 */  sll   $a3, $a3, 0xc
/* B259A0 800AE800 246F0008 */  addiu $t7, $v1, 8
/* B259A4 800AE804 AE0F0138 */  sw    $t7, 0x138($s0)
/* B259A8 800AE808 AC600004 */  sw    $zero, 4($v1)
/* B259AC 800AE80C AC750000 */  sw    $s5, ($v1)
/* B259B0 800AE810 8E030138 */  lw    $v1, 0x138($s0)
/* B259B4 800AE814 00052B00 */  sll   $a1, $a1, 0xc
/* B259B8 800AE818 3C01F400 */  lui   $at, 0xf400
/* B259BC 800AE81C 24780008 */  addiu $t8, $v1, 8
/* B259C0 800AE820 AE180138 */  sw    $t8, 0x138($s0)
/* B259C4 800AE824 00A1C825 */  or    $t9, $a1, $at
/* B259C8 800AE828 00EC7025 */  or    $t6, $a3, $t4
/* B259CC 800AE82C 01D14825 */  or    $t1, $t6, $s1
/* B259D0 800AE830 03334025 */  or    $t0, $t9, $s3
/* B259D4 800AE834 AC680000 */  sw    $t0, ($v1)
/* B259D8 800AE838 AC690004 */  sw    $t1, 4($v1)
/* B259DC 800AE83C 8E030138 */  lw    $v1, 0x138($s0)
/* B259E0 800AE840 3C01F200 */  lui   $at, 0xf200
/* B259E4 800AE844 00A17025 */  or    $t6, $a1, $at
/* B259E8 800AE848 246F0008 */  addiu $t7, $v1, 8
/* B259EC 800AE84C AE0F0138 */  sw    $t7, 0x138($s0)
/* B259F0 800AE850 AC600004 */  sw    $zero, 4($v1)
/* B259F4 800AE854 AC760000 */  sw    $s6, ($v1)
/* B259F8 800AE858 8E030138 */  lw    $v1, 0x138($s0)
/* B259FC 800AE85C 00F17825 */  or    $t7, $a3, $s1
/* B25A00 800AE860 01D35025 */  or    $t2, $t6, $s3
/* B25A04 800AE864 24780008 */  addiu $t8, $v1, 8
/* B25A08 800AE868 AE180138 */  sw    $t8, 0x138($s0)
/* B25A0C 800AE86C AC600004 */  sw    $zero, 4($v1)
/* B25A10 800AE870 AC660000 */  sw    $a2, ($v1)
/* B25A14 800AE874 8E030138 */  lw    $v1, 0x138($s0)
/* B25A18 800AE878 34C40080 */  ori   $a0, $a2, 0x80
/* B25A1C 800AE87C 25AD0001 */  addiu $t5, $t5, 1
/* B25A20 800AE880 24790008 */  addiu $t9, $v1, 8
/* B25A24 800AE884 AE190138 */  sw    $t9, 0x138($s0)
/* B25A28 800AE888 AC6F0004 */  sw    $t7, 4($v1)
/* B25A2C 800AE88C AC6A0000 */  sw    $t2, ($v1)
/* B25A30 800AE890 8E030138 */  lw    $v1, 0x138($s0)
/* B25A34 800AE894 000D6C00 */  sll   $t5, $t5, 0x10
/* B25A38 800AE898 000D6C03 */  sra   $t5, $t5, 0x10
/* B25A3C 800AE89C 24780008 */  addiu $t8, $v1, 8
/* B25A40 800AE8A0 AE180138 */  sw    $t8, 0x138($s0)
/* B25A44 800AE8A4 AC740000 */  sw    $s4, ($v1)
/* B25A48 800AE8A8 8E0E012C */  lw    $t6, 0x12c($s0)
/* B25A4C 800AE8AC 8FD90000 */  lw    $t9, ($fp)
/* B25A50 800AE8B0 29A10004 */  slti  $at, $t5, 4
/* B25A54 800AE8B4 032E7821 */  addu  $t7, $t9, $t6
/* B25A58 800AE8B8 AC6F0004 */  sw    $t7, 4($v1)
/* B25A5C 800AE8BC 8E030138 */  lw    $v1, 0x138($s0)
/* B25A60 800AE8C0 24780008 */  addiu $t8, $v1, 8
/* B25A64 800AE8C4 AE180138 */  sw    $t8, 0x138($s0)
/* B25A68 800AE8C8 AC6C0004 */  sw    $t4, 4($v1)
/* B25A6C 800AE8CC AC640000 */  sw    $a0, ($v1)
/* B25A70 800AE8D0 8E030138 */  lw    $v1, 0x138($s0)
/* B25A74 800AE8D4 24790008 */  addiu $t9, $v1, 8
/* B25A78 800AE8D8 AE190138 */  sw    $t9, 0x138($s0)
/* B25A7C 800AE8DC AC600004 */  sw    $zero, 4($v1)
/* B25A80 800AE8E0 AC750000 */  sw    $s5, ($v1)
/* B25A84 800AE8E4 8E030138 */  lw    $v1, 0x138($s0)
/* B25A88 800AE8E8 246E0008 */  addiu $t6, $v1, 8
/* B25A8C 800AE8EC AE0E0138 */  sw    $t6, 0x138($s0)
/* B25A90 800AE8F0 AC690004 */  sw    $t1, 4($v1)
/* B25A94 800AE8F4 AC680000 */  sw    $t0, ($v1)
/* B25A98 800AE8F8 8E030138 */  lw    $v1, 0x138($s0)
/* B25A9C 800AE8FC 00F77025 */  or    $t6, $a3, $s7
/* B25AA0 800AE900 246F0008 */  addiu $t7, $v1, 8
/* B25AA4 800AE904 AE0F0138 */  sw    $t7, 0x138($s0)
/* B25AA8 800AE908 AC600004 */  sw    $zero, 4($v1)
/* B25AAC 800AE90C AC760000 */  sw    $s6, ($v1)
/* B25AB0 800AE910 8E030138 */  lw    $v1, 0x138($s0)
/* B25AB4 800AE914 01D17825 */  or    $t7, $t6, $s1
/* B25AB8 800AE918 3C0E8013 */  lui   $t6, %hi(D_8012AE3C) # $t6, 0x8013
/* B25ABC 800AE91C 24780008 */  addiu $t8, $v1, 8
/* B25AC0 800AE920 AE180138 */  sw    $t8, 0x138($s0)
/* B25AC4 800AE924 AC770004 */  sw    $s7, 4($v1)
/* B25AC8 800AE928 AC640000 */  sw    $a0, ($v1)
/* B25ACC 800AE92C 8E030138 */  lw    $v1, 0x138($s0)
/* B25AD0 800AE930 25CEAE3C */  addiu $t6, %lo(D_8012AE3C) # addiu $t6, $t6, -0x51c4
/* B25AD4 800AE934 000B2400 */  sll   $a0, $t3, 0x10
/* B25AD8 800AE938 24790008 */  addiu $t9, $v1, 8
/* B25ADC 800AE93C AE190138 */  sw    $t9, 0x138($s0)
/* B25AE0 800AE940 AC6F0004 */  sw    $t7, 4($v1)
/* B25AE4 800AE944 AC6A0000 */  sw    $t2, ($v1)
/* B25AE8 800AE948 8E030138 */  lw    $v1, 0x138($s0)
/* B25AEC 800AE94C 0012C840 */  sll   $t9, $s2, 1
/* B25AF0 800AE950 032E1021 */  addu  $v0, $t9, $t6
/* B25AF4 800AE954 24780008 */  addiu $t8, $v1, 8
/* B25AF8 800AE958 AE180138 */  sw    $t8, 0x138($s0)
/* B25AFC 800AE95C 844F0004 */  lh    $t7, 4($v0)
/* B25B00 800AE960 844E0000 */  lh    $t6, ($v0)
/* B25B04 800AE964 26520004 */  addiu $s2, $s2, 4
/* B25B08 800AE968 000FC040 */  sll   $t8, $t7, 1
/* B25B0C 800AE96C 331900FF */  andi  $t9, $t8, 0xff
/* B25B10 800AE970 000E7840 */  sll   $t7, $t6, 1
/* B25B14 800AE974 31F800FF */  andi  $t8, $t7, 0xff
/* B25B18 800AE978 00187400 */  sll   $t6, $t8, 0x10
/* B25B1C 800AE97C 84580002 */  lh    $t8, 2($v0)
/* B25B20 800AE980 032E7825 */  or    $t7, $t9, $t6
/* B25B24 800AE984 00129400 */  sll   $s2, $s2, 0x10
/* B25B28 800AE988 0018C840 */  sll   $t9, $t8, 1
/* B25B2C 800AE98C 332E00FF */  andi  $t6, $t9, 0xff
/* B25B30 800AE990 000EC200 */  sll   $t8, $t6, 8
/* B25B34 800AE994 01F8C825 */  or    $t9, $t7, $t8
/* B25B38 800AE998 032C7025 */  or    $t6, $t9, $t4
/* B25B3C 800AE99C AC6E0000 */  sw    $t6, ($v1)
/* B25B40 800AE9A0 844F0006 */  lh    $t7, 6($v0)
/* B25B44 800AE9A4 844E0000 */  lh    $t6, ($v0)
/* B25B48 800AE9A8 00129403 */  sra   $s2, $s2, 0x10
/* B25B4C 800AE9AC 000FC040 */  sll   $t8, $t7, 1
/* B25B50 800AE9B0 331900FF */  andi  $t9, $t8, 0xff
/* B25B54 800AE9B4 000E7840 */  sll   $t7, $t6, 1
/* B25B58 800AE9B8 31F800FF */  andi  $t8, $t7, 0xff
/* B25B5C 800AE9BC 00187400 */  sll   $t6, $t8, 0x10
/* B25B60 800AE9C0 84580004 */  lh    $t8, 4($v0)
/* B25B64 800AE9C4 032E7825 */  or    $t7, $t9, $t6
/* B25B68 800AE9C8 00042403 */  sra   $a0, $a0, 0x10
/* B25B6C 800AE9CC 0018C840 */  sll   $t9, $t8, 1
/* B25B70 800AE9D0 332E00FF */  andi  $t6, $t9, 0xff
/* B25B74 800AE9D4 000EC200 */  sll   $t8, $t6, 8
/* B25B78 800AE9D8 01F8C825 */  or    $t9, $t7, $t8
/* B25B7C 800AE9DC 1420FF6E */  bnez  $at, .L800AE798
/* B25B80 800AE9E0 AC790004 */   sw    $t9, 4($v1)
/* B25B84 800AE9E4 87A2031E */  lh    $v0, 0x31e($sp)
/* B25B88 800AE9E8 8FAE0040 */  lw    $t6, 0x40($sp)
/* B25B8C 800AE9EC 24420001 */  addiu $v0, $v0, 1
/* B25B90 800AE9F0 00021400 */  sll   $v0, $v0, 0x10
/* B25B94 800AE9F4 00021403 */  sra   $v0, $v0, 0x10
/* B25B98 800AE9F8 28410004 */  slti  $at, $v0, 4
/* B25B9C 800AE9FC A7A2031E */  sh    $v0, 0x31e($sp)
/* B25BA0 800AEA00 1420FF5C */  bnez  $at, .L800AE774
/* B25BA4 800AEA04 A7AE0320 */   sh    $t6, 0x320($sp)
/* B25BA8 800AEA08 1000015D */  b     .L800AEF80
/* B25BAC 800AEA0C 8E030138 */   lw    $v1, 0x138($s0)
.L800AEA10:
/* B25BB0 800AEA10 3C188013 */  lui   $t8, %hi(D_8012ADC0) # $t8, 0x8013
/* B25BB4 800AEA14 2718ADC0 */  addiu $t8, %lo(D_8012ADC0) # addiu $t8, $t8, -0x5240
/* B25BB8 800AEA18 3C14FD48 */  lui   $s4, (0xFD48007F >> 16) # lui $s4, 0xfd48
/* B25BBC 800AEA1C 3694007F */  ori   $s4, (0xFD48007F & 0xFFFF) # ori $s4, $s4, 0x7f
/* B25BC0 800AEA20 01F8F021 */  addu  $fp, $t7, $t8
/* B25BC4 800AEA24 00009025 */  move  $s2, $zero
/* B25BC8 800AEA28 A7A0031E */  sh    $zero, 0x31e($sp)
/* B25BCC 800AEA2C A7A00320 */  sh    $zero, 0x320($sp)
/* B25BD0 800AEA30 3C1FF548 */  lui   $ra, 0xf548
/* B25BD4 800AEA34 3C170100 */  lui   $s7, 0x100
/* B25BD8 800AEA38 3C16E700 */  lui   $s6, 0xe700
/* B25BDC 800AEA3C 3C15E600 */  lui   $s5, 0xe600
/* B25BE0 800AEA40 3C0C0700 */  lui   $t4, 0x700
.L800AEA44:
/* B25BE4 800AEA44 87A20320 */  lh    $v0, 0x320($sp)
/* B25BE8 800AEA48 00002025 */  move  $a0, $zero
/* B25BEC 800AEA4C 00006825 */  move  $t5, $zero
/* B25BF0 800AEA50 2459001F */  addiu $t9, $v0, 0x1f
/* B25BF4 800AEA54 00198880 */  sll   $s1, $t9, 2
/* B25BF8 800AEA58 00029880 */  sll   $s3, $v0, 2
/* B25BFC 800AEA5C 32730FFF */  andi  $s3, $s3, 0xfff
/* B25C00 800AEA60 32310FFF */  andi  $s1, $s1, 0xfff
/* B25C04 800AEA64 AFB90040 */  sw    $t9, 0x40($sp)
.L800AEA68:
/* B25C08 800AEA68 8E030138 */  lw    $v1, 0x138($s0)
/* B25C0C 800AEA6C 248B001F */  addiu $t3, $a0, 0x1f
/* B25C10 800AEA70 000B3880 */  sll   $a3, $t3, 2
/* B25C14 800AEA74 246E0008 */  addiu $t6, $v1, 8
/* B25C18 800AEA78 AE0E0138 */  sw    $t6, 0x138($s0)
/* B25C1C 800AEA7C AC740000 */  sw    $s4, ($v1)
/* B25C20 800AEA80 8FCF0000 */  lw    $t7, ($fp)
/* B25C24 800AEA84 8E180128 */  lw    $t8, 0x128($s0)
/* B25C28 800AEA88 00042880 */  sll   $a1, $a0, 2
/* B25C2C 800AEA8C 30A50FFF */  andi  $a1, $a1, 0xfff
/* B25C30 800AEA90 01F8C821 */  addu  $t9, $t7, $t8
/* B25C34 800AEA94 AC790004 */  sw    $t9, 4($v1)
/* B25C38 800AEA98 8E030138 */  lw    $v1, 0x138($s0)
/* B25C3C 800AEA9C 00847823 */  subu  $t7, $a0, $a0
/* B25C40 800AEAA0 25F80027 */  addiu $t8, $t7, 0x27
/* B25C44 800AEAA4 246E0008 */  addiu $t6, $v1, 8
/* B25C48 800AEAA8 AE0E0138 */  sw    $t6, 0x138($s0)
/* B25C4C 800AEAAC 0018C8C3 */  sra   $t9, $t8, 3
/* B25C50 800AEAB0 332E01FF */  andi  $t6, $t9, 0x1ff
/* B25C54 800AEAB4 000E7A40 */  sll   $t7, $t6, 9
/* B25C58 800AEAB8 01FF3025 */  or    $a2, $t7, $ra
/* B25C5C 800AEABC AC660000 */  sw    $a2, ($v1)
/* B25C60 800AEAC0 AC6C0004 */  sw    $t4, 4($v1)
/* B25C64 800AEAC4 8E030138 */  lw    $v1, 0x138($s0)
/* B25C68 800AEAC8 30E70FFF */  andi  $a3, $a3, 0xfff
/* B25C6C 800AEACC 00073B00 */  sll   $a3, $a3, 0xc
/* B25C70 800AEAD0 24780008 */  addiu $t8, $v1, 8
/* B25C74 800AEAD4 AE180138 */  sw    $t8, 0x138($s0)
/* B25C78 800AEAD8 AC600004 */  sw    $zero, 4($v1)
/* B25C7C 800AEADC AC750000 */  sw    $s5, ($v1)
/* B25C80 800AEAE0 8E030138 */  lw    $v1, 0x138($s0)
/* B25C84 800AEAE4 00052B00 */  sll   $a1, $a1, 0xc
/* B25C88 800AEAE8 3C01F400 */  lui   $at, 0xf400
/* B25C8C 800AEAEC 24790008 */  addiu $t9, $v1, 8
/* B25C90 800AEAF0 AE190138 */  sw    $t9, 0x138($s0)
/* B25C94 800AEAF4 00A17025 */  or    $t6, $a1, $at
/* B25C98 800AEAF8 00EC7825 */  or    $t7, $a3, $t4
/* B25C9C 800AEAFC 01F14825 */  or    $t1, $t7, $s1
/* B25CA0 800AEB00 01D34025 */  or    $t0, $t6, $s3
/* B25CA4 800AEB04 AC680000 */  sw    $t0, ($v1)
/* B25CA8 800AEB08 AC690004 */  sw    $t1, 4($v1)
/* B25CAC 800AEB0C 8E030138 */  lw    $v1, 0x138($s0)
/* B25CB0 800AEB10 3C01F200 */  lui   $at, 0xf200
/* B25CB4 800AEB14 00A17825 */  or    $t7, $a1, $at
/* B25CB8 800AEB18 24780008 */  addiu $t8, $v1, 8
/* B25CBC 800AEB1C AE180138 */  sw    $t8, 0x138($s0)
/* B25CC0 800AEB20 AC600004 */  sw    $zero, 4($v1)
/* B25CC4 800AEB24 AC760000 */  sw    $s6, ($v1)
/* B25CC8 800AEB28 8E030138 */  lw    $v1, 0x138($s0)
/* B25CCC 800AEB2C 00F1C025 */  or    $t8, $a3, $s1
/* B25CD0 800AEB30 01F35025 */  or    $t2, $t7, $s3
/* B25CD4 800AEB34 24790008 */  addiu $t9, $v1, 8
/* B25CD8 800AEB38 AE190138 */  sw    $t9, 0x138($s0)
/* B25CDC 800AEB3C AC600004 */  sw    $zero, 4($v1)
/* B25CE0 800AEB40 AC660000 */  sw    $a2, ($v1)
/* B25CE4 800AEB44 8E030138 */  lw    $v1, 0x138($s0)
/* B25CE8 800AEB48 34C40080 */  ori   $a0, $a2, 0x80
/* B25CEC 800AEB4C 25AD0001 */  addiu $t5, $t5, 1
/* B25CF0 800AEB50 246E0008 */  addiu $t6, $v1, 8
/* B25CF4 800AEB54 AE0E0138 */  sw    $t6, 0x138($s0)
/* B25CF8 800AEB58 AC780004 */  sw    $t8, 4($v1)
/* B25CFC 800AEB5C AC6A0000 */  sw    $t2, ($v1)
/* B25D00 800AEB60 8E030138 */  lw    $v1, 0x138($s0)
/* B25D04 800AEB64 000D6C00 */  sll   $t5, $t5, 0x10
/* B25D08 800AEB68 000D6C03 */  sra   $t5, $t5, 0x10
/* B25D0C 800AEB6C 24790008 */  addiu $t9, $v1, 8
/* B25D10 800AEB70 AE190138 */  sw    $t9, 0x138($s0)
/* B25D14 800AEB74 AC740000 */  sw    $s4, ($v1)
/* B25D18 800AEB78 8E0F012C */  lw    $t7, 0x12c($s0)
/* B25D1C 800AEB7C 8FCE0000 */  lw    $t6, ($fp)
/* B25D20 800AEB80 29A10004 */  slti  $at, $t5, 4
/* B25D24 800AEB84 01CFC021 */  addu  $t8, $t6, $t7
/* B25D28 800AEB88 AC780004 */  sw    $t8, 4($v1)
/* B25D2C 800AEB8C 8E030138 */  lw    $v1, 0x138($s0)
/* B25D30 800AEB90 24790008 */  addiu $t9, $v1, 8
/* B25D34 800AEB94 AE190138 */  sw    $t9, 0x138($s0)
/* B25D38 800AEB98 AC6C0004 */  sw    $t4, 4($v1)
/* B25D3C 800AEB9C AC640000 */  sw    $a0, ($v1)
/* B25D40 800AEBA0 8E030138 */  lw    $v1, 0x138($s0)
/* B25D44 800AEBA4 246E0008 */  addiu $t6, $v1, 8
/* B25D48 800AEBA8 AE0E0138 */  sw    $t6, 0x138($s0)
/* B25D4C 800AEBAC AC600004 */  sw    $zero, 4($v1)
/* B25D50 800AEBB0 AC750000 */  sw    $s5, ($v1)
/* B25D54 800AEBB4 8E030138 */  lw    $v1, 0x138($s0)
/* B25D58 800AEBB8 246F0008 */  addiu $t7, $v1, 8
/* B25D5C 800AEBBC AE0F0138 */  sw    $t7, 0x138($s0)
/* B25D60 800AEBC0 AC690004 */  sw    $t1, 4($v1)
/* B25D64 800AEBC4 AC680000 */  sw    $t0, ($v1)
/* B25D68 800AEBC8 8E030138 */  lw    $v1, 0x138($s0)
/* B25D6C 800AEBCC 00F77825 */  or    $t7, $a3, $s7
/* B25D70 800AEBD0 24780008 */  addiu $t8, $v1, 8
/* B25D74 800AEBD4 AE180138 */  sw    $t8, 0x138($s0)
/* B25D78 800AEBD8 AC600004 */  sw    $zero, 4($v1)
/* B25D7C 800AEBDC AC760000 */  sw    $s6, ($v1)
/* B25D80 800AEBE0 8E030138 */  lw    $v1, 0x138($s0)
/* B25D84 800AEBE4 01F1C025 */  or    $t8, $t7, $s1
/* B25D88 800AEBE8 3C0F8013 */  lui   $t7, %hi(D_8012AE3C) # $t7, 0x8013
/* B25D8C 800AEBEC 24790008 */  addiu $t9, $v1, 8
/* B25D90 800AEBF0 AE190138 */  sw    $t9, 0x138($s0)
/* B25D94 800AEBF4 AC770004 */  sw    $s7, 4($v1)
/* B25D98 800AEBF8 AC640000 */  sw    $a0, ($v1)
/* B25D9C 800AEBFC 8E030138 */  lw    $v1, 0x138($s0)
/* B25DA0 800AEC00 25EFAE3C */  addiu $t7, %lo(D_8012AE3C) # addiu $t7, $t7, -0x51c4
/* B25DA4 800AEC04 000B2400 */  sll   $a0, $t3, 0x10
/* B25DA8 800AEC08 246E0008 */  addiu $t6, $v1, 8
/* B25DAC 800AEC0C AE0E0138 */  sw    $t6, 0x138($s0)
/* B25DB0 800AEC10 AC780004 */  sw    $t8, 4($v1)
/* B25DB4 800AEC14 AC6A0000 */  sw    $t2, ($v1)
/* B25DB8 800AEC18 8E030138 */  lw    $v1, 0x138($s0)
/* B25DBC 800AEC1C 00127040 */  sll   $t6, $s2, 1
/* B25DC0 800AEC20 01CF1021 */  addu  $v0, $t6, $t7
/* B25DC4 800AEC24 24790008 */  addiu $t9, $v1, 8
/* B25DC8 800AEC28 AE190138 */  sw    $t9, 0x138($s0)
/* B25DCC 800AEC2C 84580004 */  lh    $t8, 4($v0)
/* B25DD0 800AEC30 844F0000 */  lh    $t7, ($v0)
/* B25DD4 800AEC34 26520004 */  addiu $s2, $s2, 4
/* B25DD8 800AEC38 0018C840 */  sll   $t9, $t8, 1
/* B25DDC 800AEC3C 332E00FF */  andi  $t6, $t9, 0xff
/* B25DE0 800AEC40 000FC040 */  sll   $t8, $t7, 1
/* B25DE4 800AEC44 331900FF */  andi  $t9, $t8, 0xff
/* B25DE8 800AEC48 00197C00 */  sll   $t7, $t9, 0x10
/* B25DEC 800AEC4C 84590002 */  lh    $t9, 2($v0)
/* B25DF0 800AEC50 01CFC025 */  or    $t8, $t6, $t7
/* B25DF4 800AEC54 00129400 */  sll   $s2, $s2, 0x10
/* B25DF8 800AEC58 00197040 */  sll   $t6, $t9, 1
/* B25DFC 800AEC5C 31CF00FF */  andi  $t7, $t6, 0xff
/* B25E00 800AEC60 000FCA00 */  sll   $t9, $t7, 8
/* B25E04 800AEC64 03197025 */  or    $t6, $t8, $t9
/* B25E08 800AEC68 01CC7825 */  or    $t7, $t6, $t4
/* B25E0C 800AEC6C AC6F0000 */  sw    $t7, ($v1)
/* B25E10 800AEC70 84580006 */  lh    $t8, 6($v0)
/* B25E14 800AEC74 844F0000 */  lh    $t7, ($v0)
/* B25E18 800AEC78 00129403 */  sra   $s2, $s2, 0x10
/* B25E1C 800AEC7C 0018C840 */  sll   $t9, $t8, 1
/* B25E20 800AEC80 332E00FF */  andi  $t6, $t9, 0xff
/* B25E24 800AEC84 000FC040 */  sll   $t8, $t7, 1
/* B25E28 800AEC88 331900FF */  andi  $t9, $t8, 0xff
/* B25E2C 800AEC8C 00197C00 */  sll   $t7, $t9, 0x10
/* B25E30 800AEC90 84590004 */  lh    $t9, 4($v0)
/* B25E34 800AEC94 01CFC025 */  or    $t8, $t6, $t7
/* B25E38 800AEC98 00042403 */  sra   $a0, $a0, 0x10
/* B25E3C 800AEC9C 00197040 */  sll   $t6, $t9, 1
/* B25E40 800AECA0 31CF00FF */  andi  $t7, $t6, 0xff
/* B25E44 800AECA4 000FCA00 */  sll   $t9, $t7, 8
/* B25E48 800AECA8 03197025 */  or    $t6, $t8, $t9
/* B25E4C 800AECAC 1420FF6E */  bnez  $at, .L800AEA68
/* B25E50 800AECB0 AC6E0004 */   sw    $t6, 4($v1)
/* B25E54 800AECB4 87A2031E */  lh    $v0, 0x31e($sp)
/* B25E58 800AECB8 8FAF0040 */  lw    $t7, 0x40($sp)
/* B25E5C 800AECBC 24420001 */  addiu $v0, $v0, 1
/* B25E60 800AECC0 00021400 */  sll   $v0, $v0, 0x10
/* B25E64 800AECC4 00021403 */  sra   $v0, $v0, 0x10
/* B25E68 800AECC8 28410002 */  slti  $at, $v0, 2
/* B25E6C 800AECCC A7A2031E */  sh    $v0, 0x31e($sp)
/* B25E70 800AECD0 1420FF5C */  bnez  $at, .L800AEA44
/* B25E74 800AECD4 A7AF0320 */   sh    $t7, 0x320($sp)
/* B25E78 800AECD8 87B80320 */  lh    $t8, 0x320($sp)
/* B25E7C 800AECDC A7A0031E */  sh    $zero, 0x31e($sp)
/* B25E80 800AECE0 2719FFE1 */  addiu $t9, $t8, -0x1f
/* B25E84 800AECE4 A7B90320 */  sh    $t9, 0x320($sp)
.L800AECE8:
/* B25E88 800AECE8 87AE0320 */  lh    $t6, 0x320($sp)
/* B25E8C 800AECEC 00002025 */  move  $a0, $zero
/* B25E90 800AECF0 00006825 */  move  $t5, $zero
/* B25E94 800AECF4 25D1001F */  addiu $s1, $t6, 0x1f
/* B25E98 800AECF8 00118880 */  sll   $s1, $s1, 2
/* B25E9C 800AECFC 000E9880 */  sll   $s3, $t6, 2
/* B25EA0 800AED00 32730FFF */  andi  $s3, $s3, 0xfff
/* B25EA4 800AED04 32310FFF */  andi  $s1, $s1, 0xfff
.L800AED08:
/* B25EA8 800AED08 8E030138 */  lw    $v1, 0x138($s0)
/* B25EAC 800AED0C 248B001F */  addiu $t3, $a0, 0x1f
/* B25EB0 800AED10 000B3880 */  sll   $a3, $t3, 2
/* B25EB4 800AED14 246F0008 */  addiu $t7, $v1, 8
/* B25EB8 800AED18 AE0F0138 */  sw    $t7, 0x138($s0)
/* B25EBC 800AED1C AC740000 */  sw    $s4, ($v1)
/* B25EC0 800AED20 8FD80000 */  lw    $t8, ($fp)
/* B25EC4 800AED24 8E190128 */  lw    $t9, 0x128($s0)
/* B25EC8 800AED28 00042880 */  sll   $a1, $a0, 2
/* B25ECC 800AED2C 30A50FFF */  andi  $a1, $a1, 0xfff
/* B25ED0 800AED30 03197021 */  addu  $t6, $t8, $t9
/* B25ED4 800AED34 AC6E0004 */  sw    $t6, 4($v1)
/* B25ED8 800AED38 8E030138 */  lw    $v1, 0x138($s0)
/* B25EDC 800AED3C 0084C023 */  subu  $t8, $a0, $a0
/* B25EE0 800AED40 27190027 */  addiu $t9, $t8, 0x27
/* B25EE4 800AED44 246F0008 */  addiu $t7, $v1, 8
/* B25EE8 800AED48 AE0F0138 */  sw    $t7, 0x138($s0)
/* B25EEC 800AED4C 001970C3 */  sra   $t6, $t9, 3
/* B25EF0 800AED50 31CF01FF */  andi  $t7, $t6, 0x1ff
/* B25EF4 800AED54 000FC240 */  sll   $t8, $t7, 9
/* B25EF8 800AED58 031F3025 */  or    $a2, $t8, $ra
/* B25EFC 800AED5C AC660000 */  sw    $a2, ($v1)
/* B25F00 800AED60 AC6C0004 */  sw    $t4, 4($v1)
/* B25F04 800AED64 8E030138 */  lw    $v1, 0x138($s0)
/* B25F08 800AED68 30E70FFF */  andi  $a3, $a3, 0xfff
/* B25F0C 800AED6C 00073B00 */  sll   $a3, $a3, 0xc
/* B25F10 800AED70 24790008 */  addiu $t9, $v1, 8
/* B25F14 800AED74 AE190138 */  sw    $t9, 0x138($s0)
/* B25F18 800AED78 AC600004 */  sw    $zero, 4($v1)
/* B25F1C 800AED7C AC750000 */  sw    $s5, ($v1)
/* B25F20 800AED80 8E030138 */  lw    $v1, 0x138($s0)
/* B25F24 800AED84 00052B00 */  sll   $a1, $a1, 0xc
/* B25F28 800AED88 3C01F400 */  lui   $at, 0xf400
/* B25F2C 800AED8C 246E0008 */  addiu $t6, $v1, 8
/* B25F30 800AED90 AE0E0138 */  sw    $t6, 0x138($s0)
/* B25F34 800AED94 00A17825 */  or    $t7, $a1, $at
/* B25F38 800AED98 00ECC025 */  or    $t8, $a3, $t4
/* B25F3C 800AED9C 03114825 */  or    $t1, $t8, $s1
/* B25F40 800AEDA0 01F34025 */  or    $t0, $t7, $s3
/* B25F44 800AEDA4 AC680000 */  sw    $t0, ($v1)
/* B25F48 800AEDA8 AC690004 */  sw    $t1, 4($v1)
/* B25F4C 800AEDAC 8E030138 */  lw    $v1, 0x138($s0)
/* B25F50 800AEDB0 3C01F200 */  lui   $at, 0xf200
/* B25F54 800AEDB4 00A1C025 */  or    $t8, $a1, $at
/* B25F58 800AEDB8 24790008 */  addiu $t9, $v1, 8
/* B25F5C 800AEDBC AE190138 */  sw    $t9, 0x138($s0)
/* B25F60 800AEDC0 AC600004 */  sw    $zero, 4($v1)
/* B25F64 800AEDC4 AC760000 */  sw    $s6, ($v1)
/* B25F68 800AEDC8 8E030138 */  lw    $v1, 0x138($s0)
/* B25F6C 800AEDCC 00F1C825 */  or    $t9, $a3, $s1
/* B25F70 800AEDD0 03135025 */  or    $t2, $t8, $s3
/* B25F74 800AEDD4 246E0008 */  addiu $t6, $v1, 8
/* B25F78 800AEDD8 AE0E0138 */  sw    $t6, 0x138($s0)
/* B25F7C 800AEDDC AC600004 */  sw    $zero, 4($v1)
/* B25F80 800AEDE0 AC660000 */  sw    $a2, ($v1)
/* B25F84 800AEDE4 8E030138 */  lw    $v1, 0x138($s0)
/* B25F88 800AEDE8 34C40080 */  ori   $a0, $a2, 0x80
/* B25F8C 800AEDEC 25AD0001 */  addiu $t5, $t5, 1
/* B25F90 800AEDF0 246F0008 */  addiu $t7, $v1, 8
/* B25F94 800AEDF4 AE0F0138 */  sw    $t7, 0x138($s0)
/* B25F98 800AEDF8 AC790004 */  sw    $t9, 4($v1)
/* B25F9C 800AEDFC AC6A0000 */  sw    $t2, ($v1)
/* B25FA0 800AEE00 8E030138 */  lw    $v1, 0x138($s0)
/* B25FA4 800AEE04 000D6C00 */  sll   $t5, $t5, 0x10
/* B25FA8 800AEE08 000D6C03 */  sra   $t5, $t5, 0x10
/* B25FAC 800AEE0C 246E0008 */  addiu $t6, $v1, 8
/* B25FB0 800AEE10 AE0E0138 */  sw    $t6, 0x138($s0)
/* B25FB4 800AEE14 AC740000 */  sw    $s4, ($v1)
/* B25FB8 800AEE18 8E18012C */  lw    $t8, 0x12c($s0)
/* B25FBC 800AEE1C 8FCF0000 */  lw    $t7, ($fp)
/* B25FC0 800AEE20 29A10004 */  slti  $at, $t5, 4
/* B25FC4 800AEE24 01F8C821 */  addu  $t9, $t7, $t8
/* B25FC8 800AEE28 AC790004 */  sw    $t9, 4($v1)
/* B25FCC 800AEE2C 8E030138 */  lw    $v1, 0x138($s0)
/* B25FD0 800AEE30 246E0008 */  addiu $t6, $v1, 8
/* B25FD4 800AEE34 AE0E0138 */  sw    $t6, 0x138($s0)
/* B25FD8 800AEE38 AC6C0004 */  sw    $t4, 4($v1)
/* B25FDC 800AEE3C AC640000 */  sw    $a0, ($v1)
/* B25FE0 800AEE40 8E030138 */  lw    $v1, 0x138($s0)
/* B25FE4 800AEE44 246F0008 */  addiu $t7, $v1, 8
/* B25FE8 800AEE48 AE0F0138 */  sw    $t7, 0x138($s0)
/* B25FEC 800AEE4C AC600004 */  sw    $zero, 4($v1)
/* B25FF0 800AEE50 AC750000 */  sw    $s5, ($v1)
/* B25FF4 800AEE54 8E030138 */  lw    $v1, 0x138($s0)
/* B25FF8 800AEE58 24780008 */  addiu $t8, $v1, 8
/* B25FFC 800AEE5C AE180138 */  sw    $t8, 0x138($s0)
/* B26000 800AEE60 AC690004 */  sw    $t1, 4($v1)
/* B26004 800AEE64 AC680000 */  sw    $t0, ($v1)
/* B26008 800AEE68 8E030138 */  lw    $v1, 0x138($s0)
/* B2600C 800AEE6C 00F7C025 */  or    $t8, $a3, $s7
/* B26010 800AEE70 24790008 */  addiu $t9, $v1, 8
/* B26014 800AEE74 AE190138 */  sw    $t9, 0x138($s0)
/* B26018 800AEE78 AC600004 */  sw    $zero, 4($v1)
/* B2601C 800AEE7C AC760000 */  sw    $s6, ($v1)
/* B26020 800AEE80 8E030138 */  lw    $v1, 0x138($s0)
/* B26024 800AEE84 0311C825 */  or    $t9, $t8, $s1
/* B26028 800AEE88 3C188013 */  lui   $t8, %hi(D_8012AE3C) # $t8, 0x8013
/* B2602C 800AEE8C 246E0008 */  addiu $t6, $v1, 8
/* B26030 800AEE90 AE0E0138 */  sw    $t6, 0x138($s0)
/* B26034 800AEE94 AC770004 */  sw    $s7, 4($v1)
/* B26038 800AEE98 AC640000 */  sw    $a0, ($v1)
/* B2603C 800AEE9C 8E030138 */  lw    $v1, 0x138($s0)
/* B26040 800AEEA0 2718AE3C */  addiu $t8, %lo(D_8012AE3C) # addiu $t8, $t8, -0x51c4
/* B26044 800AEEA4 000B2400 */  sll   $a0, $t3, 0x10
/* B26048 800AEEA8 246F0008 */  addiu $t7, $v1, 8
/* B2604C 800AEEAC AE0F0138 */  sw    $t7, 0x138($s0)
/* B26050 800AEEB0 AC790004 */  sw    $t9, 4($v1)
/* B26054 800AEEB4 AC6A0000 */  sw    $t2, ($v1)
/* B26058 800AEEB8 8E030138 */  lw    $v1, 0x138($s0)
/* B2605C 800AEEBC 00127840 */  sll   $t7, $s2, 1
/* B26060 800AEEC0 01F81021 */  addu  $v0, $t7, $t8
/* B26064 800AEEC4 246E0008 */  addiu $t6, $v1, 8
/* B26068 800AEEC8 AE0E0138 */  sw    $t6, 0x138($s0)
/* B2606C 800AEECC 84590004 */  lh    $t9, 4($v0)
/* B26070 800AEED0 84580000 */  lh    $t8, ($v0)
/* B26074 800AEED4 26520004 */  addiu $s2, $s2, 4
/* B26078 800AEED8 00197040 */  sll   $t6, $t9, 1
/* B2607C 800AEEDC 31CF00FF */  andi  $t7, $t6, 0xff
/* B26080 800AEEE0 0018C840 */  sll   $t9, $t8, 1
/* B26084 800AEEE4 332E00FF */  andi  $t6, $t9, 0xff
/* B26088 800AEEE8 000EC400 */  sll   $t8, $t6, 0x10
/* B2608C 800AEEEC 844E0002 */  lh    $t6, 2($v0)
/* B26090 800AEEF0 01F8C825 */  or    $t9, $t7, $t8
/* B26094 800AEEF4 00129400 */  sll   $s2, $s2, 0x10
/* B26098 800AEEF8 000E7840 */  sll   $t7, $t6, 1
/* B2609C 800AEEFC 31F800FF */  andi  $t8, $t7, 0xff
/* B260A0 800AEF00 00187200 */  sll   $t6, $t8, 8
/* B260A4 800AEF04 032E7825 */  or    $t7, $t9, $t6
/* B260A8 800AEF08 01ECC025 */  or    $t8, $t7, $t4
/* B260AC 800AEF0C AC780000 */  sw    $t8, ($v1)
/* B260B0 800AEF10 84590006 */  lh    $t9, 6($v0)
/* B260B4 800AEF14 84580000 */  lh    $t8, ($v0)
/* B260B8 800AEF18 00129403 */  sra   $s2, $s2, 0x10
/* B260BC 800AEF1C 00197040 */  sll   $t6, $t9, 1
/* B260C0 800AEF20 31CF00FF */  andi  $t7, $t6, 0xff
/* B260C4 800AEF24 0018C840 */  sll   $t9, $t8, 1
/* B260C8 800AEF28 332E00FF */  andi  $t6, $t9, 0xff
/* B260CC 800AEF2C 000EC400 */  sll   $t8, $t6, 0x10
/* B260D0 800AEF30 844E0004 */  lh    $t6, 4($v0)
/* B260D4 800AEF34 01F8C825 */  or    $t9, $t7, $t8
/* B260D8 800AEF38 00042403 */  sra   $a0, $a0, 0x10
/* B260DC 800AEF3C 000E7840 */  sll   $t7, $t6, 1
/* B260E0 800AEF40 31F800FF */  andi  $t8, $t7, 0xff
/* B260E4 800AEF44 00187200 */  sll   $t6, $t8, 8
/* B260E8 800AEF48 032E7825 */  or    $t7, $t9, $t6
/* B260EC 800AEF4C 1420FF6E */  bnez  $at, .L800AED08
/* B260F0 800AEF50 AC6F0004 */   sw    $t7, 4($v1)
/* B260F4 800AEF54 87A2031E */  lh    $v0, 0x31e($sp)
/* B260F8 800AEF58 87B80320 */  lh    $t8, 0x320($sp)
/* B260FC 800AEF5C 24420001 */  addiu $v0, $v0, 1
/* B26100 800AEF60 00021400 */  sll   $v0, $v0, 0x10
/* B26104 800AEF64 00021403 */  sra   $v0, $v0, 0x10
/* B26108 800AEF68 28410002 */  slti  $at, $v0, 2
/* B2610C 800AEF6C 2719FFE1 */  addiu $t9, $t8, -0x1f
/* B26110 800AEF70 A7B90320 */  sh    $t9, 0x320($sp)
/* B26114 800AEF74 1420FF5C */  bnez  $at, .L800AECE8
/* B26118 800AEF78 A7A2031E */   sh    $v0, 0x31e($sp)
/* B2611C 800AEF7C 8E030138 */  lw    $v1, 0x138($s0)
.L800AEF80:
/* B26120 800AEF80 3C0FDF00 */  lui   $t7, 0xdf00
/* B26124 800AEF84 246E0008 */  addiu $t6, $v1, 8
/* B26128 800AEF88 AE0E0138 */  sw    $t6, 0x138($s0)
/* B2612C 800AEF8C AC600004 */  sw    $zero, 4($v1)
/* B26130 800AEF90 AC6F0000 */  sw    $t7, ($v1)
/* B26134 800AEF94 8FBF002C */  lw    $ra, 0x2c($sp)
/* B26138 800AEF98 8FBE0028 */  lw    $fp, 0x28($sp)
/* B2613C 800AEF9C 8FB70024 */  lw    $s7, 0x24($sp)
/* B26140 800AEFA0 8FB60020 */  lw    $s6, 0x20($sp)
/* B26144 800AEFA4 8FB5001C */  lw    $s5, 0x1c($sp)
/* B26148 800AEFA8 8FB40018 */  lw    $s4, 0x18($sp)
/* B2614C 800AEFAC 8FB30014 */  lw    $s3, 0x14($sp)
/* B26150 800AEFB0 8FB20010 */  lw    $s2, 0x10($sp)
/* B26154 800AEFB4 8FB1000C */  lw    $s1, 0xc($sp)
/* B26158 800AEFB8 8FB00008 */  lw    $s0, 8($sp)
/* B2615C 800AEFBC 8FA20340 */  lw    $v0, 0x340($sp)
/* B26160 800AEFC0 03E00008 */  jr    $ra
/* B26164 800AEFC4 27BD0338 */   addiu $sp, $sp, 0x338

glabel func_800AEFC8
/* B26168 800AEFC8 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B2616C 800AEFCC AFA5004C */  sw    $a1, 0x4c($sp)
/* B26170 800AEFD0 00052C00 */  sll   $a1, $a1, 0x10
/* B26174 800AEFD4 AFB50040 */  sw    $s5, 0x40($sp)
/* B26178 800AEFD8 24150002 */  li    $s5, 2
/* B2617C 800AEFDC 00052C03 */  sra   $a1, $a1, 0x10
/* B26180 800AEFE0 AFB4003C */  sw    $s4, 0x3c($sp)
/* B26184 800AEFE4 AFB30038 */  sw    $s3, 0x38($sp)
/* B26188 800AEFE8 0080A025 */  move  $s4, $a0
/* B2618C 800AEFEC AFBF0044 */  sw    $ra, 0x44($sp)
/* B26190 800AEFF0 AFB20034 */  sw    $s2, 0x34($sp)
/* B26194 800AEFF4 AFB10030 */  sw    $s1, 0x30($sp)
/* B26198 800AEFF8 AFB0002C */  sw    $s0, 0x2c($sp)
/* B2619C 800AEFFC 10B50005 */  beq   $a1, $s5, .L800AF014
/* B261A0 800AF000 00009825 */   move  $s3, $zero
/* B261A4 800AF004 28A10011 */  slti  $at, $a1, 0x11
/* B261A8 800AF008 1420001C */  bnez  $at, .L800AF07C
/* B261AC 800AF00C 28A10019 */   slti  $at, $a1, 0x19
/* B261B0 800AF010 1020001A */  beqz  $at, .L800AF07C
.L800AF014:
/* B261B4 800AF014 3C108013 */   lui   $s0, %hi(D_8012AEBC) # $s0, 0x8013
/* B261B8 800AF018 2610AEBC */  addiu $s0, %lo(D_8012AEBC) # addiu $s0, $s0, -0x5144
/* B261BC 800AF01C 00009025 */  move  $s2, $zero
/* B261C0 800AF020 00008825 */  move  $s1, $zero
.L800AF024:
/* B261C4 800AF024 8E85013C */  lw    $a1, 0x13c($s4)
/* B261C8 800AF028 8E0E0004 */  lw    $t6, 4($s0)
/* B261CC 800AF02C 8E0F0008 */  lw    $t7, 8($s0)
/* B261D0 800AF030 8E18000C */  lw    $t8, 0xc($s0)
/* B261D4 800AF034 8E190010 */  lw    $t9, 0x10($s0)
/* B261D8 800AF038 AFB20024 */  sw    $s2, 0x24($sp)
/* B261DC 800AF03C AFB10020 */  sw    $s1, 0x20($sp)
/* B261E0 800AF040 02802025 */  move  $a0, $s4
/* B261E4 800AF044 02603025 */  move  $a2, $s3
/* B261E8 800AF048 8E070000 */  lw    $a3, ($s0)
/* B261EC 800AF04C AFAE0010 */  sw    $t6, 0x10($sp)
/* B261F0 800AF050 AFAF0014 */  sw    $t7, 0x14($sp)
/* B261F4 800AF054 AFB80018 */  sw    $t8, 0x18($sp)
/* B261F8 800AF058 0C02B6EC */  jal   func_800ADBB0
/* B261FC 800AF05C AFB9001C */   sw    $t9, 0x1c($sp)
/* B26200 800AF060 26310001 */  addiu $s1, $s1, 1
/* B26204 800AF064 26100014 */  addiu $s0, $s0, 0x14
/* B26208 800AF068 26520002 */  addiu $s2, $s2, 2
/* B2620C 800AF06C 1635FFED */  bne   $s1, $s5, .L800AF024
/* B26210 800AF070 00409825 */   move  $s3, $v0
/* B26214 800AF074 10000038 */  b     .L800AF158
/* B26218 800AF078 8FBF0044 */   lw    $ra, 0x44($sp)
.L800AF07C:
/* B2621C 800AF07C 86880140 */  lh    $t0, 0x140($s4)
/* B26220 800AF080 00009025 */  move  $s2, $zero
/* B26224 800AF084 00008825 */  move  $s1, $zero
/* B26228 800AF088 16A8001C */  bne   $s5, $t0, .L800AF0FC
/* B2622C 800AF08C 3C108013 */   lui   $s0, %hi(D_8012AEBC)
/* B26230 800AF090 3C108013 */  lui   $s0, %hi(D_8012AEBC) # $s0, 0x8013
/* B26234 800AF094 2610AEBC */  addiu $s0, %lo(D_8012AEBC) # addiu $s0, $s0, -0x5144
/* B26238 800AF098 00009025 */  move  $s2, $zero
/* B2623C 800AF09C 00008825 */  move  $s1, $zero
/* B26240 800AF0A0 24150003 */  li    $s5, 3
.L800AF0A4:
/* B26244 800AF0A4 8E85013C */  lw    $a1, 0x13c($s4)
/* B26248 800AF0A8 8E090004 */  lw    $t1, 4($s0)
/* B2624C 800AF0AC 8E0A0008 */  lw    $t2, 8($s0)
/* B26250 800AF0B0 8E0B000C */  lw    $t3, 0xc($s0)
/* B26254 800AF0B4 8E0C0010 */  lw    $t4, 0x10($s0)
/* B26258 800AF0B8 AFB20024 */  sw    $s2, 0x24($sp)
/* B2625C 800AF0BC AFB10020 */  sw    $s1, 0x20($sp)
/* B26260 800AF0C0 02802025 */  move  $a0, $s4
/* B26264 800AF0C4 02603025 */  move  $a2, $s3
/* B26268 800AF0C8 8E070000 */  lw    $a3, ($s0)
/* B2626C 800AF0CC AFA90010 */  sw    $t1, 0x10($sp)
/* B26270 800AF0D0 AFAA0014 */  sw    $t2, 0x14($sp)
/* B26274 800AF0D4 AFAB0018 */  sw    $t3, 0x18($sp)
/* B26278 800AF0D8 0C02B6EC */  jal   func_800ADBB0
/* B2627C 800AF0DC AFAC001C */   sw    $t4, 0x1c($sp)
/* B26280 800AF0E0 26310001 */  addiu $s1, $s1, 1
/* B26284 800AF0E4 26100014 */  addiu $s0, $s0, 0x14
/* B26288 800AF0E8 26520002 */  addiu $s2, $s2, 2
/* B2628C 800AF0EC 1635FFED */  bne   $s1, $s5, .L800AF0A4
/* B26290 800AF0F0 00409825 */   move  $s3, $v0
/* B26294 800AF0F4 10000018 */  b     .L800AF158
/* B26298 800AF0F8 8FBF0044 */   lw    $ra, 0x44($sp)
.L800AF0FC:
/* B2629C 800AF0FC 2610AEBC */  addiu $s0, %lo(D_8012AEBC)
/* B262A0 800AF100 24150004 */  li    $s5, 4
.L800AF104:
/* B262A4 800AF104 8E85013C */  lw    $a1, 0x13c($s4)
/* B262A8 800AF108 8E0D0004 */  lw    $t5, 4($s0)
/* B262AC 800AF10C 8E0E0008 */  lw    $t6, 8($s0)
/* B262B0 800AF110 8E0F000C */  lw    $t7, 0xc($s0)
/* B262B4 800AF114 8E180010 */  lw    $t8, 0x10($s0)
/* B262B8 800AF118 AFB20024 */  sw    $s2, 0x24($sp)
/* B262BC 800AF11C AFB10020 */  sw    $s1, 0x20($sp)
/* B262C0 800AF120 02802025 */  move  $a0, $s4
/* B262C4 800AF124 02603025 */  move  $a2, $s3
/* B262C8 800AF128 8E070000 */  lw    $a3, ($s0)
/* B262CC 800AF12C AFAD0010 */  sw    $t5, 0x10($sp)
/* B262D0 800AF130 AFAE0014 */  sw    $t6, 0x14($sp)
/* B262D4 800AF134 AFAF0018 */  sw    $t7, 0x18($sp)
/* B262D8 800AF138 0C02B6EC */  jal   func_800ADBB0
/* B262DC 800AF13C AFB8001C */   sw    $t8, 0x1c($sp)
/* B262E0 800AF140 26310001 */  addiu $s1, $s1, 1
/* B262E4 800AF144 26100014 */  addiu $s0, $s0, 0x14
/* B262E8 800AF148 26520002 */  addiu $s2, $s2, 2
/* B262EC 800AF14C 1635FFED */  bne   $s1, $s5, .L800AF104
/* B262F0 800AF150 00409825 */   move  $s3, $v0
/* B262F4 800AF154 8FBF0044 */  lw    $ra, 0x44($sp)
.L800AF158:
/* B262F8 800AF158 8FB0002C */  lw    $s0, 0x2c($sp)
/* B262FC 800AF15C 8FB10030 */  lw    $s1, 0x30($sp)
/* B26300 800AF160 8FB20034 */  lw    $s2, 0x34($sp)
/* B26304 800AF164 8FB30038 */  lw    $s3, 0x38($sp)
/* B26308 800AF168 8FB4003C */  lw    $s4, 0x3c($sp)
/* B2630C 800AF16C 8FB50040 */  lw    $s5, 0x40($sp)
/* B26310 800AF170 03E00008 */  jr    $ra
/* B26314 800AF174 27BD0048 */   addiu $sp, $sp, 0x48

glabel func_800AF178
/* B26318 800AF178 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B2631C 800AF17C AFB40040 */  sw    $s4, 0x40($sp)
/* B26320 800AF180 AFB3003C */  sw    $s3, 0x3c($sp)
/* B26324 800AF184 AFB20038 */  sw    $s2, 0x38($sp)
/* B26328 800AF188 AFB10034 */  sw    $s1, 0x34($sp)
/* B2632C 800AF18C 00809825 */  move  $s3, $a0
/* B26330 800AF190 00A0A025 */  move  $s4, $a1
/* B26334 800AF194 AFBF0044 */  sw    $ra, 0x44($sp)
/* B26338 800AF198 AFB00030 */  sw    $s0, 0x30($sp)
/* B2633C 800AF19C 00009025 */  move  $s2, $zero
/* B26340 800AF1A0 18A00015 */  blez  $a1, .L800AF1F8
/* B26344 800AF1A4 00008825 */   move  $s1, $zero
/* B26348 800AF1A8 3C108013 */  lui   $s0, %hi(D_8012AF0C) # $s0, 0x8013
/* B2634C 800AF1AC 2610AF0C */  addiu $s0, %lo(D_8012AF0C) # addiu $s0, $s0, -0x50f4
.L800AF1B0:
/* B26350 800AF1B0 8E65013C */  lw    $a1, 0x13c($s3)
/* B26354 800AF1B4 8E0E0004 */  lw    $t6, 4($s0)
/* B26358 800AF1B8 8E0F0008 */  lw    $t7, 8($s0)
/* B2635C 800AF1BC 8E18000C */  lw    $t8, 0xc($s0)
/* B26360 800AF1C0 8E190010 */  lw    $t9, 0x10($s0)
/* B26364 800AF1C4 AFB10020 */  sw    $s1, 0x20($sp)
/* B26368 800AF1C8 02602025 */  move  $a0, $s3
/* B2636C 800AF1CC 02403025 */  move  $a2, $s2
/* B26370 800AF1D0 8E070000 */  lw    $a3, ($s0)
/* B26374 800AF1D4 AFAE0010 */  sw    $t6, 0x10($sp)
/* B26378 800AF1D8 AFAF0014 */  sw    $t7, 0x14($sp)
/* B2637C 800AF1DC AFB80018 */  sw    $t8, 0x18($sp)
/* B26380 800AF1E0 0C02B8B0 */  jal   func_800AE2C0
/* B26384 800AF1E4 AFB9001C */   sw    $t9, 0x1c($sp)
/* B26388 800AF1E8 26310001 */  addiu $s1, $s1, 1
/* B2638C 800AF1EC 26100014 */  addiu $s0, $s0, 0x14
/* B26390 800AF1F0 1634FFEF */  bne   $s1, $s4, .L800AF1B0
/* B26394 800AF1F4 00409025 */   move  $s2, $v0
.L800AF1F8:
/* B26398 800AF1F8 8FBF0044 */  lw    $ra, 0x44($sp)
/* B2639C 800AF1FC 8FB00030 */  lw    $s0, 0x30($sp)
/* B263A0 800AF200 8FB10034 */  lw    $s1, 0x34($sp)
/* B263A4 800AF204 8FB20038 */  lw    $s2, 0x38($sp)
/* B263A8 800AF208 8FB3003C */  lw    $s3, 0x3c($sp)
/* B263AC 800AF20C 8FB40040 */  lw    $s4, 0x40($sp)
/* B263B0 800AF210 03E00008 */  jr    $ra
/* B263B4 800AF214 27BD0048 */   addiu $sp, $sp, 0x48

glabel func_800AF218
/* B263B8 800AF218 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B263BC 800AF21C AFA60050 */  sw    $a2, 0x50($sp)
/* B263C0 800AF220 00063400 */  sll   $a2, $a2, 0x10
/* B263C4 800AF224 00063403 */  sra   $a2, $a2, 0x10
/* B263C8 800AF228 24CEFFFF */  addiu $t6, $a2, -1
/* B263CC 800AF22C AFB00020 */  sw    $s0, 0x20($sp)
/* B263D0 800AF230 2DC10027 */  sltiu $at, $t6, 0x27
/* B263D4 800AF234 00A08025 */  move  $s0, $a1
/* B263D8 800AF238 AFBF0024 */  sw    $ra, 0x24($sp)
/* B263DC 800AF23C 102006FF */  beqz  $at, .L800B0E3C
/* B263E0 800AF240 AFA40048 */   sw    $a0, 0x48($sp)
/* B263E4 800AF244 000E7080 */  sll   $t6, $t6, 2
/* B263E8 800AF248 3C018014 */  lui   $at, %hi(jtbl_80142DC0)
/* B263EC 800AF24C 002E0821 */  addu  $at, $at, $t6
/* B263F0 800AF250 8C2E2DC0 */  lw    $t6, %lo(jtbl_80142DC0)($at)
/* B263F4 800AF254 01C00008 */  jr    $t6
/* B263F8 800AF258 00000000 */   nop   
glabel L800AF25C
/* B263FC 800AF25C 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B26400 800AF260 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B26404 800AF264 910F13C3 */  lbu   $t7, 0x13c3($t0)
/* B26408 800AF268 3C098012 */  lui   $t1, %hi(D_8011FC1C) # $t1, 0x8012
/* B2640C 800AF26C 00001825 */  move  $v1, $zero
/* B26410 800AF270 11E0000C */  beqz  $t7, .L800AF2A4
/* B26414 800AF274 2529FC1C */   addiu $t1, %lo(D_8011FC1C) # addiu $t1, $t1, -0x3e4
/* B26418 800AF278 8D181360 */  lw    $t8, 0x1360($t0)
/* B2641C 800AF27C 3C028012 */  lui   $v0, %hi(D_8011FB30) # $v0, 0x8012
/* B26420 800AF280 2B010004 */  slti  $at, $t8, 4
/* B26424 800AF284 50200008 */  beql  $at, $zero, .L800AF2A8
/* B26428 800AF288 0003C8C0 */   sll   $t9, $v1, 3
/* B2642C 800AF28C 9042FB30 */  lbu   $v0, %lo(D_8011FB30)($v0)
/* B26430 800AF290 18400004 */  blez  $v0, .L800AF2A4
/* B26434 800AF294 28410006 */   slti  $at, $v0, 6
/* B26438 800AF298 50200003 */  beql  $at, $zero, .L800AF2A8
/* B2643C 800AF29C 0003C8C0 */   sll   $t9, $v1, 3
/* B26440 800AF2A0 24030001 */  li    $v1, 1
.L800AF2A4:
/* B26444 800AF2A4 0003C8C0 */  sll   $t9, $v1, 3
.L800AF2A8:
/* B26448 800AF2A8 0323C821 */  addu  $t9, $t9, $v1
/* B2644C 800AF2AC 0019C8C0 */  sll   $t9, $t9, 3
/* B26450 800AF2B0 03292821 */  addu  $a1, $t9, $t1
/* B26454 800AF2B4 00001025 */  move  $v0, $zero
/* B26458 800AF2B8 9504141A */  lhu   $a0, 0x141a($t0)
/* B2645C 800AF2BC 3406FFFF */  li    $a2, 65535
/* B26460 800AF2C0 000250C0 */  sll   $t2, $v0, 3
.L800AF2C4:
/* B26464 800AF2C4 00AA3821 */  addu  $a3, $a1, $t2
/* B26468 800AF2C8 94EB0000 */  lhu   $t3, ($a3)
/* B2646C 800AF2CC 24420001 */  addiu $v0, $v0, 1
/* B26470 800AF2D0 00021400 */  sll   $v0, $v0, 0x10
/* B26474 800AF2D4 008B082A */  slt   $at, $a0, $t3
/* B26478 800AF2D8 14200047 */  bnez  $at, .L800AF3F8
/* B2647C 800AF2DC 00021403 */   sra   $v0, $v0, 0x10
/* B26480 800AF2E0 94E30002 */  lhu   $v1, 2($a3)
/* B26484 800AF2E4 0083082A */  slt   $at, $a0, $v1
/* B26488 800AF2E8 54200004 */  bnezl $at, .L800AF2FC
/* B2648C 800AF2EC 90ED0005 */   lbu   $t5, 5($a3)
/* B26490 800AF2F0 54C30042 */  bnel  $a2, $v1, .L800AF3FC
/* B26494 800AF2F4 28410009 */   slti  $at, $v0, 9
/* B26498 800AF2F8 90ED0005 */  lbu   $t5, 5($a3)
.L800AF2FC:
/* B2649C 800AF2FC 8FAE0048 */  lw    $t6, 0x48($sp)
/* B264A0 800AF300 3C010001 */  lui   $at, 1
/* B264A4 800AF304 A3AD0041 */  sb    $t5, 0x41($sp)
/* B264A8 800AF308 002E0821 */  addu  $at, $at, $t6
/* B264AC 800AF30C A02D0A34 */  sb    $t5, 0xa34($at)
/* B264B0 800AF310 8FB90048 */  lw    $t9, 0x48($sp)
/* B264B4 800AF314 90F80006 */  lbu   $t8, 6($a3)
/* B264B8 800AF318 3C010001 */  lui   $at, 1
/* B264BC 800AF31C 00390821 */  addu  $at, $at, $t9
/* B264C0 800AF320 A3B80040 */  sb    $t8, 0x40($sp)
/* B264C4 800AF324 A0380A35 */  sb    $t8, 0xa35($at)
/* B264C8 800AF328 90E90004 */  lbu   $t1, 4($a3)
/* B264CC 800AF32C 8FAD0048 */  lw    $t5, 0x48($sp)
/* B264D0 800AF330 3C010001 */  lui   $at, 1
/* B264D4 800AF334 1120002E */  beqz  $t1, .L800AF3F0
/* B264D8 800AF338 002D0821 */   addu  $at, $at, $t5
/* B264DC 800AF33C 9506141A */  lhu   $a2, 0x141a($t0)
/* B264E0 800AF340 94E40002 */  lhu   $a0, 2($a3)
/* B264E4 800AF344 0C01BE4F */  jal   func_8006F93C
/* B264E8 800AF348 94E50000 */   lhu   $a1, ($a3)
/* B264EC 800AF34C 3C01437F */  li    $at, 0x437F0000 # 0.000000
/* B264F0 800AF350 44812000 */  mtc1  $at, $f4
/* B264F4 800AF354 240B0001 */  li    $t3, 1
/* B264F8 800AF358 3C014F00 */  li    $at, 0x4F000000 # 0.000000
/* B264FC 800AF35C 46040182 */  mul.s $f6, $f0, $f4
/* B26500 800AF360 8FAC0048 */  lw    $t4, 0x48($sp)
/* B26504 800AF364 444AF800 */  cfc1  $t2, $31
/* B26508 800AF368 44CBF800 */  ctc1  $t3, $31
/* B2650C 800AF36C 00000000 */  nop   
/* B26510 800AF370 46003224 */  cvt.w.s $f8, $f6
/* B26514 800AF374 444BF800 */  cfc1  $t3, $31
/* B26518 800AF378 00000000 */  nop   
/* B2651C 800AF37C 316B0078 */  andi  $t3, $t3, 0x78
/* B26520 800AF380 51600013 */  beql  $t3, $zero, .L800AF3D0
/* B26524 800AF384 440B4000 */   mfc1  $t3, $f8
/* B26528 800AF388 44814000 */  mtc1  $at, $f8
/* B2652C 800AF38C 240B0001 */  li    $t3, 1
/* B26530 800AF390 46083201 */  sub.s $f8, $f6, $f8
/* B26534 800AF394 44CBF800 */  ctc1  $t3, $31
/* B26538 800AF398 00000000 */  nop   
/* B2653C 800AF39C 46004224 */  cvt.w.s $f8, $f8
/* B26540 800AF3A0 444BF800 */  cfc1  $t3, $31
/* B26544 800AF3A4 00000000 */  nop   
/* B26548 800AF3A8 316B0078 */  andi  $t3, $t3, 0x78
/* B2654C 800AF3AC 15600005 */  bnez  $t3, .L800AF3C4
/* B26550 800AF3B0 00000000 */   nop   
/* B26554 800AF3B4 440B4000 */  mfc1  $t3, $f8
/* B26558 800AF3B8 3C018000 */  lui   $at, 0x8000
/* B2655C 800AF3BC 10000007 */  b     .L800AF3DC
/* B26560 800AF3C0 01615825 */   or    $t3, $t3, $at
.L800AF3C4:
/* B26564 800AF3C4 10000005 */  b     .L800AF3DC
/* B26568 800AF3C8 240BFFFF */   li    $t3, -1
/* B2656C 800AF3CC 440B4000 */  mfc1  $t3, $f8
.L800AF3D0:
/* B26570 800AF3D0 00000000 */  nop   
/* B26574 800AF3D4 0560FFFB */  bltz  $t3, .L800AF3C4
/* B26578 800AF3D8 00000000 */   nop   
.L800AF3DC:
/* B2657C 800AF3DC 3C010001 */  lui   $at, 1
/* B26580 800AF3E0 002C0821 */  addu  $at, $at, $t4
/* B26584 800AF3E4 44CAF800 */  ctc1  $t2, $31
/* B26588 800AF3E8 10000006 */  b     .L800AF404
/* B2658C 800AF3EC A02B0A37 */   sb    $t3, 0xa37($at)
.L800AF3F0:
/* B26590 800AF3F0 10000004 */  b     .L800AF404
/* B26594 800AF3F4 A0200A37 */   sb    $zero, 0xa37($at)
.L800AF3F8:
/* B26598 800AF3F8 28410009 */  slti  $at, $v0, 9
.L800AF3FC:
/* B2659C 800AF3FC 5420FFB1 */  bnezl $at, .L800AF2C4
/* B265A0 800AF400 000250C0 */   sll   $t2, $v0, 3
.L800AF404:
/* B265A4 800AF404 93AE0041 */  lbu   $t6, 0x41($sp)
/* B265A8 800AF408 3C188012 */  lui   $t8, %hi(D_8011FD3C) # $t8, 0x8012
/* B265AC 800AF40C 2718FD3C */  addiu $t8, %lo(D_8011FD3C) # addiu $t8, $t8, -0x2c4
/* B265B0 800AF410 000E7900 */  sll   $t7, $t6, 4
/* B265B4 800AF414 01F81021 */  addu  $v0, $t7, $t8
/* B265B8 800AF418 8C590004 */  lw    $t9, 4($v0)
/* B265BC 800AF41C 8C490000 */  lw    $t1, ($v0)
/* B265C0 800AF420 3C068014 */  lui   $a2, %hi(D_80141910) # $a2, 0x8014
/* B265C4 800AF424 24C61910 */  addiu $a2, %lo(D_80141910) # addiu $a2, $a2, 0x1910
/* B265C8 800AF428 03292823 */  subu  $a1, $t9, $t1
/* B265CC 800AF42C AFA50044 */  sw    $a1, 0x44($sp)
/* B265D0 800AF430 AFA20030 */  sw    $v0, 0x30($sp)
/* B265D4 800AF434 8FA40048 */  lw    $a0, 0x48($sp)
/* B265D8 800AF438 0C031521 */  jal   Game_Alloc
/* B265DC 800AF43C 2407041E */   li    $a3, 1054
/* B265E0 800AF440 14400007 */  bnez  $v0, .L800AF460
/* B265E4 800AF444 AE020128 */   sw    $v0, 0x128($s0)
/* B265E8 800AF448 3C048014 */  lui   $a0, %hi(D_80141920) # $a0, 0x8014
/* B265EC 800AF44C 3C058014 */  lui   $a1, %hi(D_80141948) # $a1, 0x8014
/* B265F0 800AF450 24A51948 */  addiu $a1, %lo(D_80141948) # addiu $a1, $a1, 0x1948
/* B265F4 800AF454 24841920 */  addiu $a0, %lo(D_80141920) # addiu $a0, $a0, 0x1920
/* B265F8 800AF458 0C0007FC */  jal   __assert
/* B265FC 800AF45C 2406041F */   li    $a2, 1055
.L800AF460:
/* B26600 800AF460 8FAA0030 */  lw    $t2, 0x30($sp)
/* B26604 800AF464 8E040128 */  lw    $a0, 0x128($s0)
/* B26608 800AF468 3C078014 */  lui   $a3, %hi(D_80141958) # $a3, 0x8014
/* B2660C 800AF46C 240B0422 */  li    $t3, 1058
/* B26610 800AF470 8D450000 */  lw    $a1, ($t2)
/* B26614 800AF474 AFAB0010 */  sw    $t3, 0x10($sp)
/* B26618 800AF478 24E71958 */  addiu $a3, %lo(D_80141958) # addiu $a3, $a3, 0x1958
/* B2661C 800AF47C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B26620 800AF480 8FA60044 */   lw    $a2, 0x44($sp)
/* B26624 800AF484 93AC0040 */  lbu   $t4, 0x40($sp)
/* B26628 800AF488 3C0E8012 */  lui   $t6, %hi(D_8011FD3C) # $t6, 0x8012
/* B2662C 800AF48C 25CEFD3C */  addiu $t6, %lo(D_8011FD3C) # addiu $t6, $t6, -0x2c4
/* B26630 800AF490 000C6900 */  sll   $t5, $t4, 4
/* B26634 800AF494 01AE1821 */  addu  $v1, $t5, $t6
/* B26638 800AF498 8C6F0004 */  lw    $t7, 4($v1)
/* B2663C 800AF49C 8C780000 */  lw    $t8, ($v1)
/* B26640 800AF4A0 3C068014 */  lui   $a2, %hi(D_80141968) # $a2, 0x8014
/* B26644 800AF4A4 24C61968 */  addiu $a2, %lo(D_80141968) # addiu $a2, $a2, 0x1968
/* B26648 800AF4A8 01F82823 */  subu  $a1, $t7, $t8
/* B2664C 800AF4AC AFA50044 */  sw    $a1, 0x44($sp)
/* B26650 800AF4B0 AFA3002C */  sw    $v1, 0x2c($sp)
/* B26654 800AF4B4 8FA40048 */  lw    $a0, 0x48($sp)
/* B26658 800AF4B8 0C031521 */  jal   Game_Alloc
/* B2665C 800AF4BC 24070424 */   li    $a3, 1060
/* B26660 800AF4C0 14400007 */  bnez  $v0, .L800AF4E0
/* B26664 800AF4C4 AE02012C */   sw    $v0, 0x12c($s0)
/* B26668 800AF4C8 3C048014 */  lui   $a0, %hi(D_80141978) # $a0, 0x8014
/* B2666C 800AF4CC 3C058014 */  lui   $a1, %hi(D_801419A0) # $a1, 0x8014
/* B26670 800AF4D0 24A519A0 */  addiu $a1, %lo(D_801419A0) # addiu $a1, $a1, 0x19a0
/* B26674 800AF4D4 24841978 */  addiu $a0, %lo(D_80141978) # addiu $a0, $a0, 0x1978
/* B26678 800AF4D8 0C0007FC */  jal   __assert
/* B2667C 800AF4DC 24060425 */   li    $a2, 1061
.L800AF4E0:
/* B26680 800AF4E0 8FB9002C */  lw    $t9, 0x2c($sp)
/* B26684 800AF4E4 8E04012C */  lw    $a0, 0x12c($s0)
/* B26688 800AF4E8 3C078014 */  lui   $a3, %hi(D_801419B0) # $a3, 0x8014
/* B2668C 800AF4EC 24090428 */  li    $t1, 1064
/* B26690 800AF4F0 8F250000 */  lw    $a1, ($t9)
/* B26694 800AF4F4 AFA90010 */  sw    $t1, 0x10($sp)
/* B26698 800AF4F8 24E719B0 */  addiu $a3, %lo(D_801419B0) # addiu $a3, $a3, 0x19b0
/* B2669C 800AF4FC 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B266A0 800AF500 8FA60044 */   lw    $a2, 0x44($sp)
/* B266A4 800AF504 93A30041 */  lbu   $v1, 0x41($sp)
/* B266A8 800AF508 8FAD0030 */  lw    $t5, 0x30($sp)
/* B266AC 800AF50C 8FA40048 */  lw    $a0, 0x48($sp)
/* B266B0 800AF510 306B0004 */  andi  $t3, $v1, 4
/* B266B4 800AF514 000B6083 */  sra   $t4, $t3, 2
/* B266B8 800AF518 306A0001 */  andi  $t2, $v1, 1
/* B266BC 800AF51C 114C0029 */  beq   $t2, $t4, .L800AF5C4
/* B266C0 800AF520 3C068014 */   lui   $a2, %hi(D_80141A28)
/* B266C4 800AF524 8FA30030 */  lw    $v1, 0x30($sp)
/* B266C8 800AF528 3C068014 */  lui   $a2, %hi(D_801419C0) # $a2, 0x8014
/* B266CC 800AF52C 24C619C0 */  addiu $a2, %lo(D_801419C0) # addiu $a2, $a2, 0x19c0
/* B266D0 800AF530 8C6E000C */  lw    $t6, 0xc($v1)
/* B266D4 800AF534 8C6F0008 */  lw    $t7, 8($v1)
/* B266D8 800AF538 8FA40048 */  lw    $a0, 0x48($sp)
/* B266DC 800AF53C 24070430 */  li    $a3, 1072
/* B266E0 800AF540 01CF1023 */  subu  $v0, $t6, $t7
/* B266E4 800AF544 00022840 */  sll   $a1, $v0, 1
/* B266E8 800AF548 0C031521 */  jal   Game_Alloc
/* B266EC 800AF54C AFA20044 */   sw    $v0, 0x44($sp)
/* B266F0 800AF550 14400007 */  bnez  $v0, .L800AF570
/* B266F4 800AF554 AE020130 */   sw    $v0, 0x130($s0)
/* B266F8 800AF558 3C048014 */  lui   $a0, %hi(D_801419D0) # $a0, 0x8014
/* B266FC 800AF55C 3C058014 */  lui   $a1, %hi(D_801419F8) # $a1, 0x8014
/* B26700 800AF560 24A519F8 */  addiu $a1, %lo(D_801419F8) # addiu $a1, $a1, 0x19f8
/* B26704 800AF564 248419D0 */  addiu $a0, %lo(D_801419D0) # addiu $a0, $a0, 0x19d0
/* B26708 800AF568 0C0007FC */  jal   __assert
/* B2670C 800AF56C 24060431 */   li    $a2, 1073
.L800AF570:
/* B26710 800AF570 8FB80030 */  lw    $t8, 0x30($sp)
/* B26714 800AF574 8E040130 */  lw    $a0, 0x130($s0)
/* B26718 800AF578 3C078014 */  lui   $a3, %hi(D_80141A08) # $a3, 0x8014
/* B2671C 800AF57C 24190433 */  li    $t9, 1075
/* B26720 800AF580 8F050008 */  lw    $a1, 8($t8)
/* B26724 800AF584 AFB90010 */  sw    $t9, 0x10($sp)
/* B26728 800AF588 24E71A08 */  addiu $a3, %lo(D_80141A08) # addiu $a3, $a3, 0x1a08
/* B2672C 800AF58C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B26730 800AF590 8FA60044 */   lw    $a2, 0x44($sp)
/* B26734 800AF594 8FAA002C */  lw    $t2, 0x2c($sp)
/* B26738 800AF598 8E090130 */  lw    $t1, 0x130($s0)
/* B2673C 800AF59C 8FA60044 */  lw    $a2, 0x44($sp)
/* B26740 800AF5A0 3C078014 */  lui   $a3, %hi(D_80141A18) # $a3, 0x8014
/* B26744 800AF5A4 240C0435 */  li    $t4, 1077
/* B26748 800AF5A8 8D450008 */  lw    $a1, 8($t2)
/* B2674C 800AF5AC AFAC0010 */  sw    $t4, 0x10($sp)
/* B26750 800AF5B0 24E71A18 */  addiu $a3, %lo(D_80141A18) # addiu $a3, $a3, 0x1a18
/* B26754 800AF5B4 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B26758 800AF5B8 01262021 */   addu  $a0, $t1, $a2
/* B2675C 800AF5BC 10000620 */  b     .L800B0E40
/* B26760 800AF5C0 8FBF0024 */   lw    $ra, 0x24($sp)
.L800AF5C4:
/* B26764 800AF5C4 8DAE000C */  lw    $t6, 0xc($t5)
/* B26768 800AF5C8 8DAF0008 */  lw    $t7, 8($t5)
/* B2676C 800AF5CC 24C61A28 */  addiu $a2, %lo(D_80141A28)
/* B26770 800AF5D0 2407043D */  li    $a3, 1085
/* B26774 800AF5D4 01CF1023 */  subu  $v0, $t6, $t7
/* B26778 800AF5D8 00022840 */  sll   $a1, $v0, 1
/* B2677C 800AF5DC 0C031521 */  jal   Game_Alloc
/* B26780 800AF5E0 AFA20044 */   sw    $v0, 0x44($sp)
/* B26784 800AF5E4 14400007 */  bnez  $v0, .L800AF604
/* B26788 800AF5E8 AE020130 */   sw    $v0, 0x130($s0)
/* B2678C 800AF5EC 3C048014 */  lui   $a0, %hi(D_80141A38) # $a0, 0x8014
/* B26790 800AF5F0 3C058014 */  lui   $a1, %hi(D_80141A60) # $a1, 0x8014
/* B26794 800AF5F4 24A51A60 */  addiu $a1, %lo(D_80141A60) # addiu $a1, $a1, 0x1a60
/* B26798 800AF5F8 24841A38 */  addiu $a0, %lo(D_80141A38) # addiu $a0, $a0, 0x1a38
/* B2679C 800AF5FC 0C0007FC */  jal   __assert
/* B267A0 800AF600 2406043E */   li    $a2, 1086
.L800AF604:
/* B267A4 800AF604 8FB8002C */  lw    $t8, 0x2c($sp)
/* B267A8 800AF608 8E040130 */  lw    $a0, 0x130($s0)
/* B267AC 800AF60C 3C078014 */  lui   $a3, %hi(D_80141A70) # $a3, 0x8014
/* B267B0 800AF610 24190440 */  li    $t9, 1088
/* B267B4 800AF614 8F050008 */  lw    $a1, 8($t8)
/* B267B8 800AF618 AFB90010 */  sw    $t9, 0x10($sp)
/* B267BC 800AF61C 24E71A70 */  addiu $a3, %lo(D_80141A70) # addiu $a3, $a3, 0x1a70
/* B267C0 800AF620 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B267C4 800AF624 8FA60044 */   lw    $a2, 0x44($sp)
/* B267C8 800AF628 8FAB0030 */  lw    $t3, 0x30($sp)
/* B267CC 800AF62C 8E090130 */  lw    $t1, 0x130($s0)
/* B267D0 800AF630 8FA60044 */  lw    $a2, 0x44($sp)
/* B267D4 800AF634 3C078014 */  lui   $a3, %hi(D_80141A80) # $a3, 0x8014
/* B267D8 800AF638 240C0442 */  li    $t4, 1090
/* B267DC 800AF63C 8D650008 */  lw    $a1, 8($t3)
/* B267E0 800AF640 AFAC0010 */  sw    $t4, 0x10($sp)
/* B267E4 800AF644 24E71A80 */  addiu $a3, %lo(D_80141A80) # addiu $a3, $a3, 0x1a80
/* B267E8 800AF648 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B267EC 800AF64C 01262021 */   addu  $a0, $t1, $a2
/* B267F0 800AF650 100005FB */  b     .L800B0E40
/* B267F4 800AF654 8FBF0024 */   lw    $ra, 0x24($sp)
glabel L800AF658
/* B267F8 800AF658 240D0001 */  li    $t5, 1
/* B267FC 800AF65C 3C0201D5 */  lui   $v0, %hi(_vr_SP1a_staticSegmentRomStart) # $v0, 0x1d5
/* B26800 800AF660 3C0E01D7 */  lui   $t6, %hi(_vr_SP1a_staticSegmentRomEnd) # $t6, 0x1d7
/* B26804 800AF664 A60D0140 */  sh    $t5, 0x140($s0)
/* B26808 800AF668 25CE2000 */  addiu $t6, %lo(_vr_SP1a_staticSegmentRomEnd) # addiu $t6, $t6, 0x2000
/* B2680C 800AF66C 24422000 */  addiu $v0, %lo(_vr_SP1a_staticSegmentRomStart) # addiu $v0, $v0, 0x2000
/* B26810 800AF670 01C22823 */  subu  $a1, $t6, $v0
/* B26814 800AF674 3C068014 */  lui   $a2, %hi(D_80141A90) # $a2, 0x8014
/* B26818 800AF678 24C61A90 */  addiu $a2, %lo(D_80141A90) # addiu $a2, $a2, 0x1a90
/* B2681C 800AF67C AFA5002C */  sw    $a1, 0x2c($sp)
/* B26820 800AF680 AFA20030 */  sw    $v0, 0x30($sp)
/* B26824 800AF684 8FA40048 */  lw    $a0, 0x48($sp)
/* B26828 800AF688 0C031521 */  jal   Game_Alloc
/* B2682C 800AF68C 24070467 */   li    $a3, 1127
/* B26830 800AF690 14400007 */  bnez  $v0, .L800AF6B0
/* B26834 800AF694 AE020128 */   sw    $v0, 0x128($s0)
/* B26838 800AF698 3C048014 */  lui   $a0, %hi(D_80141AA0) # $a0, 0x8014
/* B2683C 800AF69C 3C058014 */  lui   $a1, %hi(D_80141AC8) # $a1, 0x8014
/* B26840 800AF6A0 24A51AC8 */  addiu $a1, %lo(D_80141AC8) # addiu $a1, $a1, 0x1ac8
/* B26844 800AF6A4 24841AA0 */  addiu $a0, %lo(D_80141AA0) # addiu $a0, $a0, 0x1aa0
/* B26848 800AF6A8 0C0007FC */  jal   __assert
/* B2684C 800AF6AC 24060468 */   li    $a2, 1128
.L800AF6B0:
/* B26850 800AF6B0 8E040128 */  lw    $a0, 0x128($s0)
/* B26854 800AF6B4 3C078014 */  lui   $a3, %hi(D_80141AD8) # $a3, 0x8014
/* B26858 800AF6B8 240F0469 */  li    $t7, 1129
/* B2685C 800AF6BC AFAF0010 */  sw    $t7, 0x10($sp)
/* B26860 800AF6C0 24E71AD8 */  addiu $a3, %lo(D_80141AD8) # addiu $a3, $a3, 0x1ad8
/* B26864 800AF6C4 8FA50030 */  lw    $a1, 0x30($sp)
/* B26868 800AF6C8 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B2686C 800AF6CC 8FA6002C */   lw    $a2, 0x2c($sp)
/* B26870 800AF6D0 3C0301D7 */  lui   $v1, %hi(_vr_SP1a_pal_staticSegmentRomStart) # $v1, 0x1d7
/* B26874 800AF6D4 3C1801D7 */  lui   $t8, %hi(_vr_SP1a_pal_staticSegmentRomEnd) # $t8, 0x1d7
/* B26878 800AF6D8 27182400 */  addiu $t8, %lo(_vr_SP1a_pal_staticSegmentRomEnd) # addiu $t8, $t8, 0x2400
/* B2687C 800AF6DC 24632000 */  addiu $v1, %lo(_vr_SP1a_pal_staticSegmentRomStart) # addiu $v1, $v1, 0x2000
/* B26880 800AF6E0 03032823 */  subu  $a1, $t8, $v1
/* B26884 800AF6E4 3C068014 */  lui   $a2, %hi(D_80141AE8) # $a2, 0x8014
/* B26888 800AF6E8 24C61AE8 */  addiu $a2, %lo(D_80141AE8) # addiu $a2, $a2, 0x1ae8
/* B2688C 800AF6EC AFA5002C */  sw    $a1, 0x2c($sp)
/* B26890 800AF6F0 AFA30030 */  sw    $v1, 0x30($sp)
/* B26894 800AF6F4 8FA40048 */  lw    $a0, 0x48($sp)
/* B26898 800AF6F8 0C031521 */  jal   Game_Alloc
/* B2689C 800AF6FC 2407046C */   li    $a3, 1132
/* B268A0 800AF700 14400007 */  bnez  $v0, .L800AF720
/* B268A4 800AF704 AE020130 */   sw    $v0, 0x130($s0)
/* B268A8 800AF708 3C048014 */  lui   $a0, %hi(D_80141AF8) # $a0, 0x8014
/* B268AC 800AF70C 3C058014 */  lui   $a1, %hi(D_80141B20) # $a1, 0x8014
/* B268B0 800AF710 24A51B20 */  addiu $a1, %lo(D_80141B20) # addiu $a1, $a1, 0x1b20
/* B268B4 800AF714 24841AF8 */  addiu $a0, %lo(D_80141AF8) # addiu $a0, $a0, 0x1af8
/* B268B8 800AF718 0C0007FC */  jal   __assert
/* B268BC 800AF71C 2406046D */   li    $a2, 1133
.L800AF720:
/* B268C0 800AF720 8E040130 */  lw    $a0, 0x130($s0)
/* B268C4 800AF724 3C078014 */  lui   $a3, %hi(D_80141B30) # $a3, 0x8014
/* B268C8 800AF728 2419046E */  li    $t9, 1134
/* B268CC 800AF72C AFB90010 */  sw    $t9, 0x10($sp)
/* B268D0 800AF730 24E71B30 */  addiu $a3, %lo(D_80141B30) # addiu $a3, $a3, 0x1b30
/* B268D4 800AF734 8FA50030 */  lw    $a1, 0x30($sp)
/* B268D8 800AF738 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B268DC 800AF73C 8FA6002C */   lw    $a2, 0x2c($sp)
/* B268E0 800AF740 3C018014 */  lui   $at, %hi(D_80142E5C)
/* B268E4 800AF744 C42A2E5C */  lwc1  $f10, %lo(D_80142E5C)($at)
/* B268E8 800AF748 100005BC */  b     .L800B0E3C
/* B268EC 800AF74C E60A0148 */   swc1  $f10, 0x148($s0)
glabel L800AF750
/* B268F0 800AF750 3C0201B4 */  lui   $v0, %hi(_vr_cloud2_staticSegmentRomStart) # $v0, 0x1b4
/* B268F4 800AF754 3C0901B5 */  lui   $t1, %hi(_vr_cloud2_staticSegmentRomEnd) # $t1, 0x1b5
/* B268F8 800AF758 2529A000 */  addiu $t1, %lo(_vr_cloud2_staticSegmentRomEnd) # addiu $t1, $t1, -0x6000
/* B268FC 800AF75C 2442E000 */  addiu $v0, %lo(_vr_cloud2_staticSegmentRomStart) # addiu $v0, $v0, -0x2000
/* B26900 800AF760 01222823 */  subu  $a1, $t1, $v0
/* B26904 800AF764 3C068014 */  lui   $a2, %hi(D_80141B40) # $a2, 0x8014
/* B26908 800AF768 24C61B40 */  addiu $a2, %lo(D_80141B40) # addiu $a2, $a2, 0x1b40
/* B2690C 800AF76C AFA5002C */  sw    $a1, 0x2c($sp)
/* B26910 800AF770 AFA20030 */  sw    $v0, 0x30($sp)
/* B26914 800AF774 8FA40048 */  lw    $a0, 0x48($sp)
/* B26918 800AF778 0C031521 */  jal   Game_Alloc
/* B2691C 800AF77C 24070483 */   li    $a3, 1155
/* B26920 800AF780 14400007 */  bnez  $v0, .L800AF7A0
/* B26924 800AF784 AE020128 */   sw    $v0, 0x128($s0)
/* B26928 800AF788 3C048014 */  lui   $a0, %hi(D_80141B50) # $a0, 0x8014
/* B2692C 800AF78C 3C058014 */  lui   $a1, %hi(D_80141B78) # $a1, 0x8014
/* B26930 800AF790 24A51B78 */  addiu $a1, %lo(D_80141B78) # addiu $a1, $a1, 0x1b78
/* B26934 800AF794 24841B50 */  addiu $a0, %lo(D_80141B50) # addiu $a0, $a0, 0x1b50
/* B26938 800AF798 0C0007FC */  jal   __assert
/* B2693C 800AF79C 24060484 */   li    $a2, 1156
.L800AF7A0:
/* B26940 800AF7A0 8E040128 */  lw    $a0, 0x128($s0)
/* B26944 800AF7A4 3C078014 */  lui   $a3, %hi(D_80141B88) # $a3, 0x8014
/* B26948 800AF7A8 240B0487 */  li    $t3, 1159
/* B2694C 800AF7AC AFAB0010 */  sw    $t3, 0x10($sp)
/* B26950 800AF7B0 24E71B88 */  addiu $a3, %lo(D_80141B88) # addiu $a3, $a3, 0x1b88
/* B26954 800AF7B4 8FA50030 */  lw    $a1, 0x30($sp)
/* B26958 800AF7B8 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B2695C 800AF7BC 8FA6002C */   lw    $a2, 0x2c($sp)
/* B26960 800AF7C0 3C068014 */  lui   $a2, %hi(D_80141B98) # $a2, 0x8014
/* B26964 800AF7C4 24C61B98 */  addiu $a2, %lo(D_80141B98) # addiu $a2, $a2, 0x1b98
/* B26968 800AF7C8 8FA40048 */  lw    $a0, 0x48($sp)
/* B2696C 800AF7CC 8FA5002C */  lw    $a1, 0x2c($sp)
/* B26970 800AF7D0 0C031521 */  jal   Game_Alloc
/* B26974 800AF7D4 2407048A */   li    $a3, 1162
/* B26978 800AF7D8 14400007 */  bnez  $v0, .L800AF7F8
/* B2697C 800AF7DC AE02012C */   sw    $v0, 0x12c($s0)
/* B26980 800AF7E0 3C048014 */  lui   $a0, %hi(D_80141BA8) # $a0, 0x8014
/* B26984 800AF7E4 3C058014 */  lui   $a1, %hi(D_80141BD0) # $a1, 0x8014
/* B26988 800AF7E8 24A51BD0 */  addiu $a1, %lo(D_80141BD0) # addiu $a1, $a1, 0x1bd0
/* B2698C 800AF7EC 24841BA8 */  addiu $a0, %lo(D_80141BA8) # addiu $a0, $a0, 0x1ba8
/* B26990 800AF7F0 0C0007FC */  jal   __assert
/* B26994 800AF7F4 2406048B */   li    $a2, 1163
.L800AF7F8:
/* B26998 800AF7F8 8E04012C */  lw    $a0, 0x12c($s0)
/* B2699C 800AF7FC 3C078014 */  lui   $a3, %hi(D_80141BE0) # $a3, 0x8014
/* B269A0 800AF800 240A048E */  li    $t2, 1166
/* B269A4 800AF804 AFAA0010 */  sw    $t2, 0x10($sp)
/* B269A8 800AF808 24E71BE0 */  addiu $a3, %lo(D_80141BE0) # addiu $a3, $a3, 0x1be0
/* B269AC 800AF80C 8FA50030 */  lw    $a1, 0x30($sp)
/* B269B0 800AF810 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B269B4 800AF814 8FA6002C */   lw    $a2, 0x2c($sp)
/* B269B8 800AF818 3C0301B5 */  lui   $v1, %hi(_vr_cloud2_pal_staticSegmentRomStart) # $v1, 0x1b5
/* B269BC 800AF81C 3C0C01B5 */  lui   $t4, %hi(_vr_cloud2_pal_staticSegmentRomEnd) # $t4, 0x1b5
/* B269C0 800AF820 258CA100 */  addiu $t4, %lo(_vr_cloud2_pal_staticSegmentRomEnd) # addiu $t4, $t4, -0x5f00
/* B269C4 800AF824 2463A000 */  addiu $v1, %lo(_vr_cloud2_pal_staticSegmentRomStart) # addiu $v1, $v1, -0x6000
/* B269C8 800AF828 01834023 */  subu  $t0, $t4, $v1
/* B269CC 800AF82C 3C068014 */  lui   $a2, %hi(D_80141BF0) # $a2, 0x8014
/* B269D0 800AF830 24C61BF0 */  addiu $a2, %lo(D_80141BF0) # addiu $a2, $a2, 0x1bf0
/* B269D4 800AF834 00082840 */  sll   $a1, $t0, 1
/* B269D8 800AF838 AFA8002C */  sw    $t0, 0x2c($sp)
/* B269DC 800AF83C AFA30030 */  sw    $v1, 0x30($sp)
/* B269E0 800AF840 8FA40048 */  lw    $a0, 0x48($sp)
/* B269E4 800AF844 0C031521 */  jal   Game_Alloc
/* B269E8 800AF848 24070492 */   li    $a3, 1170
/* B269EC 800AF84C 14400007 */  bnez  $v0, .L800AF86C
/* B269F0 800AF850 AE020130 */   sw    $v0, 0x130($s0)
/* B269F4 800AF854 3C048014 */  lui   $a0, %hi(D_80141C00) # $a0, 0x8014
/* B269F8 800AF858 3C058014 */  lui   $a1, %hi(D_80141C28) # $a1, 0x8014
/* B269FC 800AF85C 24A51C28 */  addiu $a1, %lo(D_80141C28) # addiu $a1, $a1, 0x1c28
/* B26A00 800AF860 24841C00 */  addiu $a0, %lo(D_80141C00) # addiu $a0, $a0, 0x1c00
/* B26A04 800AF864 0C0007FC */  jal   __assert
/* B26A08 800AF868 24060493 */   li    $a2, 1171
.L800AF86C:
/* B26A0C 800AF86C 8E040130 */  lw    $a0, 0x130($s0)
/* B26A10 800AF870 3C078014 */  lui   $a3, %hi(D_80141C38) # $a3, 0x8014
/* B26A14 800AF874 240D0495 */  li    $t5, 1173
/* B26A18 800AF878 AFAD0010 */  sw    $t5, 0x10($sp)
/* B26A1C 800AF87C 24E71C38 */  addiu $a3, %lo(D_80141C38) # addiu $a3, $a3, 0x1c38
/* B26A20 800AF880 8FA50030 */  lw    $a1, 0x30($sp)
/* B26A24 800AF884 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B26A28 800AF888 8FA6002C */   lw    $a2, 0x2c($sp)
/* B26A2C 800AF88C 8E0E0130 */  lw    $t6, 0x130($s0)
/* B26A30 800AF890 8FA6002C */  lw    $a2, 0x2c($sp)
/* B26A34 800AF894 3C078014 */  lui   $a3, %hi(D_80141C48) # $a3, 0x8014
/* B26A38 800AF898 24180497 */  li    $t8, 1175
/* B26A3C 800AF89C AFB80010 */  sw    $t8, 0x10($sp)
/* B26A40 800AF8A0 24E71C48 */  addiu $a3, %lo(D_80141C48) # addiu $a3, $a3, 0x1c48
/* B26A44 800AF8A4 8FA50030 */  lw    $a1, 0x30($sp)
/* B26A48 800AF8A8 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B26A4C 800AF8AC 01C62021 */   addu  $a0, $t6, $a2
/* B26A50 800AF8B0 10000563 */  b     .L800B0E40
/* B26A54 800AF8B4 8FBF0024 */   lw    $ra, 0x24($sp)
glabel L800AF8B8
/* B26A58 800AF8B8 24190001 */  li    $t9, 1
/* B26A5C 800AF8BC 3C0201C0 */  lui   $v0, %hi(_vr_RUVR_staticSegmentRomStart) # $v0, 0x1c0
/* B26A60 800AF8C0 3C0901C4 */  lui   $t1, %hi(_vr_RUVR_staticSegmentRomEnd) # $t1, 0x1c4
/* B26A64 800AF8C4 A6190140 */  sh    $t9, 0x140($s0)
/* B26A68 800AF8C8 2529C000 */  addiu $t1, %lo(_vr_RUVR_staticSegmentRomEnd) # addiu $t1, $t1, -0x4000
/* B26A6C 800AF8CC 2442C000 */  addiu $v0, %lo(_vr_RUVR_staticSegmentRomStart) # addiu $v0, $v0, -0x4000
/* B26A70 800AF8D0 01222823 */  subu  $a1, $t1, $v0
/* B26A74 800AF8D4 3C068014 */  lui   $a2, %hi(D_80141C58) # $a2, 0x8014
/* B26A78 800AF8D8 24C61C58 */  addiu $a2, %lo(D_80141C58) # addiu $a2, $a2, 0x1c58
/* B26A7C 800AF8DC AFA5002C */  sw    $a1, 0x2c($sp)
/* B26A80 800AF8E0 AFA20030 */  sw    $v0, 0x30($sp)
/* B26A84 800AF8E4 8FA40048 */  lw    $a0, 0x48($sp)
/* B26A88 800AF8E8 0C031521 */  jal   Game_Alloc
/* B26A8C 800AF8EC 2407049E */   li    $a3, 1182
/* B26A90 800AF8F0 14400007 */  bnez  $v0, .L800AF910
/* B26A94 800AF8F4 AE020128 */   sw    $v0, 0x128($s0)
/* B26A98 800AF8F8 3C048014 */  lui   $a0, %hi(D_80141C68) # $a0, 0x8014
/* B26A9C 800AF8FC 3C058014 */  lui   $a1, %hi(D_80141C90) # $a1, 0x8014
/* B26AA0 800AF900 24A51C90 */  addiu $a1, %lo(D_80141C90) # addiu $a1, $a1, 0x1c90
/* B26AA4 800AF904 24841C68 */  addiu $a0, %lo(D_80141C68) # addiu $a0, $a0, 0x1c68
/* B26AA8 800AF908 0C0007FC */  jal   __assert
/* B26AAC 800AF90C 2406049F */   li    $a2, 1183
.L800AF910:
/* B26AB0 800AF910 8E040128 */  lw    $a0, 0x128($s0)
/* B26AB4 800AF914 3C078014 */  lui   $a3, %hi(D_80141CA0) # $a3, 0x8014
/* B26AB8 800AF918 240B04A0 */  li    $t3, 1184
/* B26ABC 800AF91C AFAB0010 */  sw    $t3, 0x10($sp)
/* B26AC0 800AF920 24E71CA0 */  addiu $a3, %lo(D_80141CA0) # addiu $a3, $a3, 0x1ca0
/* B26AC4 800AF924 8FA50030 */  lw    $a1, 0x30($sp)
/* B26AC8 800AF928 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B26ACC 800AF92C 8FA6002C */   lw    $a2, 0x2c($sp)
/* B26AD0 800AF930 3C0301C4 */  lui   $v1, %hi(_vr_RUVR_pal_staticSegmentRomStart) # $v1, 0x1c4
/* B26AD4 800AF934 3C0A01C4 */  lui   $t2, %hi(_vr_RUVR_pal_staticSegmentRomEnd) # $t2, 0x1c4
/* B26AD8 800AF938 254AC800 */  addiu $t2, %lo(_vr_RUVR_pal_staticSegmentRomEnd) # addiu $t2, $t2, -0x3800
/* B26ADC 800AF93C 2463C000 */  addiu $v1, %lo(_vr_RUVR_pal_staticSegmentRomStart) # addiu $v1, $v1, -0x4000
/* B26AE0 800AF940 01432823 */  subu  $a1, $t2, $v1
/* B26AE4 800AF944 3C048014 */  lui   $a0, %hi(D_80141CB0) # $a0, 0x8014
/* B26AE8 800AF948 24841CB0 */  addiu $a0, %lo(D_80141CB0) # addiu $a0, $a0, 0x1cb0
/* B26AEC 800AF94C AFA5002C */  sw    $a1, 0x2c($sp)
/* B26AF0 800AF950 0C00084C */  jal   osSyncPrintf
/* B26AF4 800AF954 AFA30030 */   sw    $v1, 0x30($sp)
/* B26AF8 800AF958 3C068014 */  lui   $a2, %hi(D_80141CC0) # $a2, 0x8014
/* B26AFC 800AF95C 24C61CC0 */  addiu $a2, %lo(D_80141CC0) # addiu $a2, $a2, 0x1cc0
/* B26B00 800AF960 8FA40048 */  lw    $a0, 0x48($sp)
/* B26B04 800AF964 8FA5002C */  lw    $a1, 0x2c($sp)
/* B26B08 800AF968 0C031521 */  jal   Game_Alloc
/* B26B0C 800AF96C 240704A4 */   li    $a3, 1188
/* B26B10 800AF970 14400007 */  bnez  $v0, .L800AF990
/* B26B14 800AF974 AE020130 */   sw    $v0, 0x130($s0)
/* B26B18 800AF978 3C048014 */  lui   $a0, %hi(D_80141CD0) # $a0, 0x8014
/* B26B1C 800AF97C 3C058014 */  lui   $a1, %hi(D_80141CF8) # $a1, 0x8014
/* B26B20 800AF980 24A51CF8 */  addiu $a1, %lo(D_80141CF8) # addiu $a1, $a1, 0x1cf8
/* B26B24 800AF984 24841CD0 */  addiu $a0, %lo(D_80141CD0) # addiu $a0, $a0, 0x1cd0
/* B26B28 800AF988 0C0007FC */  jal   __assert
/* B26B2C 800AF98C 240604A5 */   li    $a2, 1189
.L800AF990:
/* B26B30 800AF990 8E040130 */  lw    $a0, 0x130($s0)
/* B26B34 800AF994 3C078014 */  lui   $a3, %hi(D_80141D08) # $a3, 0x8014
/* B26B38 800AF998 240C04A6 */  li    $t4, 1190
/* B26B3C 800AF99C AFAC0010 */  sw    $t4, 0x10($sp)
/* B26B40 800AF9A0 24E71D08 */  addiu $a3, %lo(D_80141D08) # addiu $a3, $a3, 0x1d08
/* B26B44 800AF9A4 8FA50030 */  lw    $a1, 0x30($sp)
/* B26B48 800AF9A8 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B26B4C 800AF9AC 8FA6002C */   lw    $a2, 0x2c($sp)
/* B26B50 800AF9B0 10000523 */  b     .L800B0E40
/* B26B54 800AF9B4 8FBF0024 */   lw    $ra, 0x24($sp)
glabel L800AF9B8
/* B26B58 800AF9B8 3C0201B6 */  lui   $v0, %hi(_vr_holy0_staticSegmentRomStart) # $v0, 0x1b6
/* B26B5C 800AF9BC 3C0D01B7 */  lui   $t5, %hi(_vr_holy0_staticSegmentRomEnd) # $t5, 0x1b7
/* B26B60 800AF9C0 25AD8000 */  addiu $t5, %lo(_vr_holy0_staticSegmentRomEnd) # addiu $t5, $t5, -0x8000
/* B26B64 800AF9C4 24428000 */  addiu $v0, %lo(_vr_holy0_staticSegmentRomStart) # addiu $v0, $v0, -0x8000
/* B26B68 800AF9C8 01A22823 */  subu  $a1, $t5, $v0
/* B26B6C 800AF9CC 3C068014 */  lui   $a2, %hi(D_80141D18) # $a2, 0x8014
/* B26B70 800AF9D0 24C61D18 */  addiu $a2, %lo(D_80141D18) # addiu $a2, $a2, 0x1d18
/* B26B74 800AF9D4 AFA5002C */  sw    $a1, 0x2c($sp)
/* B26B78 800AF9D8 AFA20030 */  sw    $v0, 0x30($sp)
/* B26B7C 800AF9DC 8FA40048 */  lw    $a0, 0x48($sp)
/* B26B80 800AF9E0 0C031521 */  jal   Game_Alloc
/* B26B84 800AF9E4 240704AC */   li    $a3, 1196
/* B26B88 800AF9E8 14400007 */  bnez  $v0, .L800AFA08
/* B26B8C 800AF9EC AE020128 */   sw    $v0, 0x128($s0)
/* B26B90 800AF9F0 3C048014 */  lui   $a0, %hi(D_80141D28) # $a0, 0x8014
/* B26B94 800AF9F4 3C058014 */  lui   $a1, %hi(D_80141D50) # $a1, 0x8014
/* B26B98 800AF9F8 24A51D50 */  addiu $a1, %lo(D_80141D50) # addiu $a1, $a1, 0x1d50
/* B26B9C 800AF9FC 24841D28 */  addiu $a0, %lo(D_80141D28) # addiu $a0, $a0, 0x1d28
/* B26BA0 800AFA00 0C0007FC */  jal   __assert
/* B26BA4 800AFA04 240604AD */   li    $a2, 1197
.L800AFA08:
/* B26BA8 800AFA08 8E040128 */  lw    $a0, 0x128($s0)
/* B26BAC 800AFA0C 3C078014 */  lui   $a3, %hi(D_80141D60) # $a3, 0x8014
/* B26BB0 800AFA10 240E04B0 */  li    $t6, 1200
/* B26BB4 800AFA14 AFAE0010 */  sw    $t6, 0x10($sp)
/* B26BB8 800AFA18 24E71D60 */  addiu $a3, %lo(D_80141D60) # addiu $a3, $a3, 0x1d60
/* B26BBC 800AFA1C 8FA50030 */  lw    $a1, 0x30($sp)
/* B26BC0 800AFA20 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B26BC4 800AFA24 8FA6002C */   lw    $a2, 0x2c($sp)
/* B26BC8 800AFA28 3C0301B7 */  lui   $v1, %hi(_vr_holy1_staticSegmentRomStart) # $v1, 0x1b7
/* B26BCC 800AFA2C 3C0F01B8 */  lui   $t7, %hi(_vr_holy1_staticSegmentRomEnd) # $t7, 0x1b8
/* B26BD0 800AFA30 25EF9000 */  addiu $t7, %lo(_vr_holy1_staticSegmentRomEnd) # addiu $t7, $t7, -0x7000
/* B26BD4 800AFA34 24639000 */  addiu $v1, %lo(_vr_holy1_staticSegmentRomStart) # addiu $v1, $v1, -0x7000
/* B26BD8 800AFA38 01E32823 */  subu  $a1, $t7, $v1
/* B26BDC 800AFA3C 3C068014 */  lui   $a2, %hi(D_80141D70) # $a2, 0x8014
/* B26BE0 800AFA40 24C61D70 */  addiu $a2, %lo(D_80141D70) # addiu $a2, $a2, 0x1d70
/* B26BE4 800AFA44 AFA5002C */  sw    $a1, 0x2c($sp)
/* B26BE8 800AFA48 AFA30030 */  sw    $v1, 0x30($sp)
/* B26BEC 800AFA4C 8FA40048 */  lw    $a0, 0x48($sp)
/* B26BF0 800AFA50 0C031521 */  jal   Game_Alloc
/* B26BF4 800AFA54 240704B3 */   li    $a3, 1203
/* B26BF8 800AFA58 14400007 */  bnez  $v0, .L800AFA78
/* B26BFC 800AFA5C AE02012C */   sw    $v0, 0x12c($s0)
/* B26C00 800AFA60 3C048014 */  lui   $a0, %hi(D_80141D80) # $a0, 0x8014
/* B26C04 800AFA64 3C058014 */  lui   $a1, %hi(D_80141DA8) # $a1, 0x8014
/* B26C08 800AFA68 24A51DA8 */  addiu $a1, %lo(D_80141DA8) # addiu $a1, $a1, 0x1da8
/* B26C0C 800AFA6C 24841D80 */  addiu $a0, %lo(D_80141D80) # addiu $a0, $a0, 0x1d80
/* B26C10 800AFA70 0C0007FC */  jal   __assert
/* B26C14 800AFA74 240604B4 */   li    $a2, 1204
.L800AFA78:
/* B26C18 800AFA78 8E04012C */  lw    $a0, 0x12c($s0)
/* B26C1C 800AFA7C 3C078014 */  lui   $a3, %hi(D_80141DB8) # $a3, 0x8014
/* B26C20 800AFA80 241804B7 */  li    $t8, 1207
/* B26C24 800AFA84 AFB80010 */  sw    $t8, 0x10($sp)
/* B26C28 800AFA88 24E71DB8 */  addiu $a3, %lo(D_80141DB8) # addiu $a3, $a3, 0x1db8
/* B26C2C 800AFA8C 8FA50030 */  lw    $a1, 0x30($sp)
/* B26C30 800AFA90 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B26C34 800AFA94 8FA6002C */   lw    $a2, 0x2c($sp)
/* B26C38 800AFA98 3C0301B7 */  lui   $v1, %hi(_vr_holy0_pal_staticSegmentRomStart) # $v1, 0x1b7
/* B26C3C 800AFA9C 3C1901B7 */  lui   $t9, %hi(_vr_holy0_pal_staticSegmentRomEnd) # $t9, 0x1b7
/* B26C40 800AFAA0 27398100 */  addiu $t9, %lo(_vr_holy0_pal_staticSegmentRomEnd) # addiu $t9, $t9, -0x7f00
/* B26C44 800AFAA4 24638000 */  addiu $v1, %lo(_vr_holy0_pal_staticSegmentRomStart) # addiu $v1, $v1, -0x8000
/* B26C48 800AFAA8 03234023 */  subu  $t0, $t9, $v1
/* B26C4C 800AFAAC 3C068014 */  lui   $a2, %hi(D_80141DC8) # $a2, 0x8014
/* B26C50 800AFAB0 24C61DC8 */  addiu $a2, %lo(D_80141DC8) # addiu $a2, $a2, 0x1dc8
/* B26C54 800AFAB4 00082840 */  sll   $a1, $t0, 1
/* B26C58 800AFAB8 AFA8002C */  sw    $t0, 0x2c($sp)
/* B26C5C 800AFABC AFA30030 */  sw    $v1, 0x30($sp)
/* B26C60 800AFAC0 8FA40048 */  lw    $a0, 0x48($sp)
/* B26C64 800AFAC4 0C031521 */  jal   Game_Alloc
/* B26C68 800AFAC8 240704BB */   li    $a3, 1211
/* B26C6C 800AFACC 14400007 */  bnez  $v0, .L800AFAEC
/* B26C70 800AFAD0 AE020130 */   sw    $v0, 0x130($s0)
/* B26C74 800AFAD4 3C048014 */  lui   $a0, %hi(D_80141DD8) # $a0, 0x8014
/* B26C78 800AFAD8 3C058014 */  lui   $a1, %hi(D_80141E00) # $a1, 0x8014
/* B26C7C 800AFADC 24A51E00 */  addiu $a1, %lo(D_80141E00) # addiu $a1, $a1, 0x1e00
/* B26C80 800AFAE0 24841DD8 */  addiu $a0, %lo(D_80141DD8) # addiu $a0, $a0, 0x1dd8
/* B26C84 800AFAE4 0C0007FC */  jal   __assert
/* B26C88 800AFAE8 240604BC */   li    $a2, 1212
.L800AFAEC:
/* B26C8C 800AFAEC 8E040130 */  lw    $a0, 0x130($s0)
/* B26C90 800AFAF0 3C078014 */  lui   $a3, %hi(D_80141E10) # $a3, 0x8014
/* B26C94 800AFAF4 240904BE */  li    $t1, 1214
/* B26C98 800AFAF8 AFA90010 */  sw    $t1, 0x10($sp)
/* B26C9C 800AFAFC 24E71E10 */  addiu $a3, %lo(D_80141E10) # addiu $a3, $a3, 0x1e10
/* B26CA0 800AFB00 8FA50030 */  lw    $a1, 0x30($sp)
/* B26CA4 800AFB04 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B26CA8 800AFB08 8FA6002C */   lw    $a2, 0x2c($sp)
/* B26CAC 800AFB0C 8E0B0130 */  lw    $t3, 0x130($s0)
/* B26CB0 800AFB10 8FA6002C */  lw    $a2, 0x2c($sp)
/* B26CB4 800AFB14 3C0501B8 */  lui   $a1, %hi(_vr_holy1_pal_staticSegmentRomStart) # $a1, 0x1b8
/* B26CB8 800AFB18 3C078014 */  lui   $a3, %hi(D_80141E20) # $a3, 0x8014
/* B26CBC 800AFB1C 240C04C0 */  li    $t4, 1216
/* B26CC0 800AFB20 AFAC0010 */  sw    $t4, 0x10($sp)
/* B26CC4 800AFB24 24E71E20 */  addiu $a3, %lo(D_80141E20) # addiu $a3, $a3, 0x1e20
/* B26CC8 800AFB28 24A59000 */  addiu $a1, %lo(_vr_holy1_pal_staticSegmentRomStart) # addiu $a1, $a1, -0x7000
/* B26CCC 800AFB2C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B26CD0 800AFB30 01662021 */   addu  $a0, $t3, $a2
/* B26CD4 800AFB34 100004C2 */  b     .L800B0E40
/* B26CD8 800AFB38 8FBF0024 */   lw    $ra, 0x24($sp)
glabel L800AFB3C
/* B26CDC 800AFB3C 240D0001 */  li    $t5, 1
/* B26CE0 800AFB40 3C0201C4 */  lui   $v0, %hi(_vr_LHVR_staticSegmentRomStart) # $v0, 0x1c4
/* B26CE4 800AFB44 3C0E01C8 */  lui   $t6, %hi(_vr_LHVR_staticSegmentRomEnd) # $t6, 0x1c8
/* B26CE8 800AFB48 A60D0140 */  sh    $t5, 0x140($s0)
/* B26CEC 800AFB4C 25CED000 */  addiu $t6, %lo(_vr_LHVR_staticSegmentRomEnd) # addiu $t6, $t6, -0x3000
/* B26CF0 800AFB50 2442D000 */  addiu $v0, %lo(_vr_LHVR_staticSegmentRomStart) # addiu $v0, $v0, -0x3000
/* B26CF4 800AFB54 01C22823 */  subu  $a1, $t6, $v0
/* B26CF8 800AFB58 3C068014 */  lui   $a2, %hi(D_80141E30) # $a2, 0x8014
/* B26CFC 800AFB5C 24C61E30 */  addiu $a2, %lo(D_80141E30) # addiu $a2, $a2, 0x1e30
/* B26D00 800AFB60 AFA5002C */  sw    $a1, 0x2c($sp)
/* B26D04 800AFB64 AFA20030 */  sw    $v0, 0x30($sp)
/* B26D08 800AFB68 8FA40048 */  lw    $a0, 0x48($sp)
/* B26D0C 800AFB6C 0C031521 */  jal   Game_Alloc
/* B26D10 800AFB70 240704CA */   li    $a3, 1226
/* B26D14 800AFB74 14400007 */  bnez  $v0, .L800AFB94
/* B26D18 800AFB78 AE020128 */   sw    $v0, 0x128($s0)
/* B26D1C 800AFB7C 3C048014 */  lui   $a0, %hi(D_80141E40) # $a0, 0x8014
/* B26D20 800AFB80 3C058014 */  lui   $a1, %hi(D_80141E68) # $a1, 0x8014
/* B26D24 800AFB84 24A51E68 */  addiu $a1, %lo(D_80141E68) # addiu $a1, $a1, 0x1e68
/* B26D28 800AFB88 24841E40 */  addiu $a0, %lo(D_80141E40) # addiu $a0, $a0, 0x1e40
/* B26D2C 800AFB8C 0C0007FC */  jal   __assert
/* B26D30 800AFB90 240604CB */   li    $a2, 1227
.L800AFB94:
/* B26D34 800AFB94 8E040128 */  lw    $a0, 0x128($s0)
/* B26D38 800AFB98 3C078014 */  lui   $a3, %hi(D_80141E78) # $a3, 0x8014
/* B26D3C 800AFB9C 240F04CC */  li    $t7, 1228
/* B26D40 800AFBA0 AFAF0010 */  sw    $t7, 0x10($sp)
/* B26D44 800AFBA4 24E71E78 */  addiu $a3, %lo(D_80141E78) # addiu $a3, $a3, 0x1e78
/* B26D48 800AFBA8 8FA50030 */  lw    $a1, 0x30($sp)
/* B26D4C 800AFBAC 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B26D50 800AFBB0 8FA6002C */   lw    $a2, 0x2c($sp)
/* B26D54 800AFBB4 3C0301C8 */  lui   $v1, %hi(_vr_LHVR_pal_staticSegmentRomStart) # $v1, 0x1c8
/* B26D58 800AFBB8 3C1801C8 */  lui   $t8, %hi(_vr_LHVR_pal_staticSegmentRomEnd) # $t8, 0x1c8
/* B26D5C 800AFBBC 2718D800 */  addiu $t8, %lo(_vr_LHVR_pal_staticSegmentRomEnd) # addiu $t8, $t8, -0x2800
/* B26D60 800AFBC0 2463D000 */  addiu $v1, %lo(_vr_LHVR_pal_staticSegmentRomStart) # addiu $v1, $v1, -0x3000
/* B26D64 800AFBC4 03032823 */  subu  $a1, $t8, $v1
/* B26D68 800AFBC8 3C068014 */  lui   $a2, %hi(D_80141E88) # $a2, 0x8014
/* B26D6C 800AFBCC 24C61E88 */  addiu $a2, %lo(D_80141E88) # addiu $a2, $a2, 0x1e88
/* B26D70 800AFBD0 AFA5002C */  sw    $a1, 0x2c($sp)
/* B26D74 800AFBD4 AFA30030 */  sw    $v1, 0x30($sp)
/* B26D78 800AFBD8 8FA40048 */  lw    $a0, 0x48($sp)
/* B26D7C 800AFBDC 0C031521 */  jal   Game_Alloc
/* B26D80 800AFBE0 240704CF */   li    $a3, 1231
/* B26D84 800AFBE4 14400007 */  bnez  $v0, .L800AFC04
/* B26D88 800AFBE8 AE020130 */   sw    $v0, 0x130($s0)
/* B26D8C 800AFBEC 3C048014 */  lui   $a0, %hi(D_80141E98) # $a0, 0x8014
/* B26D90 800AFBF0 3C058014 */  lui   $a1, %hi(D_80141EC0) # $a1, 0x8014
/* B26D94 800AFBF4 24A51EC0 */  addiu $a1, %lo(D_80141EC0) # addiu $a1, $a1, 0x1ec0
/* B26D98 800AFBF8 24841E98 */  addiu $a0, %lo(D_80141E98) # addiu $a0, $a0, 0x1e98
/* B26D9C 800AFBFC 0C0007FC */  jal   __assert
/* B26DA0 800AFC00 240604D0 */   li    $a2, 1232
.L800AFC04:
/* B26DA4 800AFC04 8E040130 */  lw    $a0, 0x130($s0)
/* B26DA8 800AFC08 3C078014 */  lui   $a3, %hi(D_80141ED0) # $a3, 0x8014
/* B26DAC 800AFC0C 241904D1 */  li    $t9, 1233
/* B26DB0 800AFC10 AFB90010 */  sw    $t9, 0x10($sp)
/* B26DB4 800AFC14 24E71ED0 */  addiu $a3, %lo(D_80141ED0) # addiu $a3, $a3, 0x1ed0
/* B26DB8 800AFC18 8FA50030 */  lw    $a1, 0x30($sp)
/* B26DBC 800AFC1C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B26DC0 800AFC20 8FA6002C */   lw    $a2, 0x2c($sp)
/* B26DC4 800AFC24 10000486 */  b     .L800B0E40
/* B26DC8 800AFC28 8FBF0024 */   lw    $ra, 0x24($sp)
glabel L800AFC2C
/* B26DCC 800AFC2C 24090001 */  li    $t1, 1
/* B26DD0 800AFC30 3C0201B8 */  lui   $v0, %hi(_vr_MDVR_staticSegmentRomStart) # $v0, 0x1b8
/* B26DD4 800AFC34 3C0B01BC */  lui   $t3, %hi(_vr_MDVR_staticSegmentRomEnd) # $t3, 0x1bc
/* B26DD8 800AFC38 A6090140 */  sh    $t1, 0x140($s0)
/* B26DDC 800AFC3C 256BA000 */  addiu $t3, %lo(_vr_MDVR_staticSegmentRomEnd) # addiu $t3, $t3, -0x6000
/* B26DE0 800AFC40 2442A000 */  addiu $v0, %lo(_vr_MDVR_staticSegmentRomStart) # addiu $v0, $v0, -0x6000
/* B26DE4 800AFC44 01622823 */  subu  $a1, $t3, $v0
/* B26DE8 800AFC48 3C068014 */  lui   $a2, %hi(D_80141EE0) # $a2, 0x8014
/* B26DEC 800AFC4C 24C61EE0 */  addiu $a2, %lo(D_80141EE0) # addiu $a2, $a2, 0x1ee0
/* B26DF0 800AFC50 AFA5002C */  sw    $a1, 0x2c($sp)
/* B26DF4 800AFC54 AFA20030 */  sw    $v0, 0x30($sp)
/* B26DF8 800AFC58 8FA40048 */  lw    $a0, 0x48($sp)
/* B26DFC 800AFC5C 0C031521 */  jal   Game_Alloc
/* B26E00 800AFC60 240704E9 */   li    $a3, 1257
/* B26E04 800AFC64 14400007 */  bnez  $v0, .L800AFC84
/* B26E08 800AFC68 AE020128 */   sw    $v0, 0x128($s0)
/* B26E0C 800AFC6C 3C048014 */  lui   $a0, %hi(D_80141EF0) # $a0, 0x8014
/* B26E10 800AFC70 3C058014 */  lui   $a1, %hi(D_80141F18) # $a1, 0x8014
/* B26E14 800AFC74 24A51F18 */  addiu $a1, %lo(D_80141F18) # addiu $a1, $a1, 0x1f18
/* B26E18 800AFC78 24841EF0 */  addiu $a0, %lo(D_80141EF0) # addiu $a0, $a0, 0x1ef0
/* B26E1C 800AFC7C 0C0007FC */  jal   __assert
/* B26E20 800AFC80 240604EA */   li    $a2, 1258
.L800AFC84:
/* B26E24 800AFC84 8E040128 */  lw    $a0, 0x128($s0)
/* B26E28 800AFC88 3C078014 */  lui   $a3, %hi(D_80141F28) # $a3, 0x8014
/* B26E2C 800AFC8C 240A04EB */  li    $t2, 1259
/* B26E30 800AFC90 AFAA0010 */  sw    $t2, 0x10($sp)
/* B26E34 800AFC94 24E71F28 */  addiu $a3, %lo(D_80141F28) # addiu $a3, $a3, 0x1f28
/* B26E38 800AFC98 8FA50030 */  lw    $a1, 0x30($sp)
/* B26E3C 800AFC9C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B26E40 800AFCA0 8FA6002C */   lw    $a2, 0x2c($sp)
/* B26E44 800AFCA4 3C0301BC */  lui   $v1, %hi(_vr_MDVR_pal_staticSegmentRomStart) # $v1, 0x1bc
/* B26E48 800AFCA8 3C0C01BC */  lui   $t4, %hi(_vr_MDVR_pal_staticSegmentRomEnd) # $t4, 0x1bc
/* B26E4C 800AFCAC 258CA800 */  addiu $t4, %lo(_vr_MDVR_pal_staticSegmentRomEnd) # addiu $t4, $t4, -0x5800
/* B26E50 800AFCB0 2463A000 */  addiu $v1, %lo(_vr_MDVR_pal_staticSegmentRomStart) # addiu $v1, $v1, -0x6000
/* B26E54 800AFCB4 01832823 */  subu  $a1, $t4, $v1
/* B26E58 800AFCB8 3C068014 */  lui   $a2, %hi(D_80141F38) # $a2, 0x8014
/* B26E5C 800AFCBC 24C61F38 */  addiu $a2, %lo(D_80141F38) # addiu $a2, $a2, 0x1f38
/* B26E60 800AFCC0 AFA5002C */  sw    $a1, 0x2c($sp)
/* B26E64 800AFCC4 AFA30030 */  sw    $v1, 0x30($sp)
/* B26E68 800AFCC8 8FA40048 */  lw    $a0, 0x48($sp)
/* B26E6C 800AFCCC 0C031521 */  jal   Game_Alloc
/* B26E70 800AFCD0 240704EE */   li    $a3, 1262
/* B26E74 800AFCD4 14400007 */  bnez  $v0, .L800AFCF4
/* B26E78 800AFCD8 AE020130 */   sw    $v0, 0x130($s0)
/* B26E7C 800AFCDC 3C048014 */  lui   $a0, %hi(D_80141F48) # $a0, 0x8014
/* B26E80 800AFCE0 3C058014 */  lui   $a1, %hi(D_80141F70) # $a1, 0x8014
/* B26E84 800AFCE4 24A51F70 */  addiu $a1, %lo(D_80141F70) # addiu $a1, $a1, 0x1f70
/* B26E88 800AFCE8 24841F48 */  addiu $a0, %lo(D_80141F48) # addiu $a0, $a0, 0x1f48
/* B26E8C 800AFCEC 0C0007FC */  jal   __assert
/* B26E90 800AFCF0 240604EF */   li    $a2, 1263
.L800AFCF4:
/* B26E94 800AFCF4 8E040130 */  lw    $a0, 0x130($s0)
/* B26E98 800AFCF8 3C078014 */  lui   $a3, %hi(D_80141F80) # $a3, 0x8014
/* B26E9C 800AFCFC 240D04F0 */  li    $t5, 1264
/* B26EA0 800AFD00 AFAD0010 */  sw    $t5, 0x10($sp)
/* B26EA4 800AFD04 24E71F80 */  addiu $a3, %lo(D_80141F80) # addiu $a3, $a3, 0x1f80
/* B26EA8 800AFD08 8FA50030 */  lw    $a1, 0x30($sp)
/* B26EAC 800AFD0C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B26EB0 800AFD10 8FA6002C */   lw    $a2, 0x2c($sp)
/* B26EB4 800AFD14 1000044A */  b     .L800B0E40
/* B26EB8 800AFD18 8FBF0024 */   lw    $ra, 0x24($sp)
glabel L800AFD1C
/* B26EBC 800AFD1C 240E0001 */  li    $t6, 1
/* B26EC0 800AFD20 3C0201BC */  lui   $v0, %hi(_vr_MNVR_staticSegmentRomStart) # $v0, 0x1bc
/* B26EC4 800AFD24 3C0F01C0 */  lui   $t7, %hi(_vr_MNVR_staticSegmentRomEnd) # $t7, 0x1c0
/* B26EC8 800AFD28 A60E0140 */  sh    $t6, 0x140($s0)
/* B26ECC 800AFD2C 25EFB000 */  addiu $t7, %lo(_vr_MNVR_staticSegmentRomEnd) # addiu $t7, $t7, -0x5000
/* B26ED0 800AFD30 2442B000 */  addiu $v0, %lo(_vr_MNVR_staticSegmentRomStart) # addiu $v0, $v0, -0x5000
/* B26ED4 800AFD34 01E22823 */  subu  $a1, $t7, $v0
/* B26ED8 800AFD38 3C068014 */  lui   $a2, %hi(D_80141F90) # $a2, 0x8014
/* B26EDC 800AFD3C 24C61F90 */  addiu $a2, %lo(D_80141F90) # addiu $a2, $a2, 0x1f90
/* B26EE0 800AFD40 AFA5002C */  sw    $a1, 0x2c($sp)
/* B26EE4 800AFD44 AFA20030 */  sw    $v0, 0x30($sp)
/* B26EE8 800AFD48 8FA40048 */  lw    $a0, 0x48($sp)
/* B26EEC 800AFD4C 0C031521 */  jal   Game_Alloc
/* B26EF0 800AFD50 240704F7 */   li    $a3, 1271
/* B26EF4 800AFD54 14400007 */  bnez  $v0, .L800AFD74
/* B26EF8 800AFD58 AE020128 */   sw    $v0, 0x128($s0)
/* B26EFC 800AFD5C 3C048014 */  lui   $a0, %hi(D_80141FA0) # $a0, 0x8014
/* B26F00 800AFD60 3C058014 */  lui   $a1, %hi(D_80141FC8) # $a1, 0x8014
/* B26F04 800AFD64 24A51FC8 */  addiu $a1, %lo(D_80141FC8) # addiu $a1, $a1, 0x1fc8
/* B26F08 800AFD68 24841FA0 */  addiu $a0, %lo(D_80141FA0) # addiu $a0, $a0, 0x1fa0
/* B26F0C 800AFD6C 0C0007FC */  jal   __assert
/* B26F10 800AFD70 240604F8 */   li    $a2, 1272
.L800AFD74:
/* B26F14 800AFD74 8E040128 */  lw    $a0, 0x128($s0)
/* B26F18 800AFD78 3C078014 */  lui   $a3, %hi(D_80141FD8) # $a3, 0x8014
/* B26F1C 800AFD7C 241804F9 */  li    $t8, 1273
/* B26F20 800AFD80 AFB80010 */  sw    $t8, 0x10($sp)
/* B26F24 800AFD84 24E71FD8 */  addiu $a3, %lo(D_80141FD8) # addiu $a3, $a3, 0x1fd8
/* B26F28 800AFD88 8FA50030 */  lw    $a1, 0x30($sp)
/* B26F2C 800AFD8C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B26F30 800AFD90 8FA6002C */   lw    $a2, 0x2c($sp)
/* B26F34 800AFD94 3C0301C0 */  lui   $v1, %hi(_vr_MNVR_pal_staticSegmentRomStart) # $v1, 0x1c0
/* B26F38 800AFD98 3C1901C0 */  lui   $t9, %hi(_vr_MNVR_pal_staticSegmentRomEnd) # $t9, 0x1c0
/* B26F3C 800AFD9C 2739B800 */  addiu $t9, %lo(_vr_MNVR_pal_staticSegmentRomEnd) # addiu $t9, $t9, -0x4800
/* B26F40 800AFDA0 2463B000 */  addiu $v1, %lo(_vr_MNVR_pal_staticSegmentRomStart) # addiu $v1, $v1, -0x5000
/* B26F44 800AFDA4 03232823 */  subu  $a1, $t9, $v1
/* B26F48 800AFDA8 3C048014 */  lui   $a0, %hi(D_80141FE8) # $a0, 0x8014
/* B26F4C 800AFDAC 24841FE8 */  addiu $a0, %lo(D_80141FE8) # addiu $a0, $a0, 0x1fe8
/* B26F50 800AFDB0 AFA5002C */  sw    $a1, 0x2c($sp)
/* B26F54 800AFDB4 0C00084C */  jal   osSyncPrintf
/* B26F58 800AFDB8 AFA30030 */   sw    $v1, 0x30($sp)
/* B26F5C 800AFDBC 3C068014 */  lui   $a2, %hi(D_80141FF8) # $a2, 0x8014
/* B26F60 800AFDC0 24C61FF8 */  addiu $a2, %lo(D_80141FF8) # addiu $a2, $a2, 0x1ff8
/* B26F64 800AFDC4 8FA40048 */  lw    $a0, 0x48($sp)
/* B26F68 800AFDC8 8FA5002C */  lw    $a1, 0x2c($sp)
/* B26F6C 800AFDCC 0C031521 */  jal   Game_Alloc
/* B26F70 800AFDD0 240704FD */   li    $a3, 1277
/* B26F74 800AFDD4 14400007 */  bnez  $v0, .L800AFDF4
/* B26F78 800AFDD8 AE020130 */   sw    $v0, 0x130($s0)
/* B26F7C 800AFDDC 3C048014 */  lui   $a0, %hi(D_80142008) # $a0, 0x8014
/* B26F80 800AFDE0 3C058014 */  lui   $a1, %hi(D_80142030) # $a1, 0x8014
/* B26F84 800AFDE4 24A52030 */  addiu $a1, %lo(D_80142030) # addiu $a1, $a1, 0x2030
/* B26F88 800AFDE8 24842008 */  addiu $a0, %lo(D_80142008) # addiu $a0, $a0, 0x2008
/* B26F8C 800AFDEC 0C0007FC */  jal   __assert
/* B26F90 800AFDF0 240604FE */   li    $a2, 1278
.L800AFDF4:
/* B26F94 800AFDF4 8E040130 */  lw    $a0, 0x130($s0)
/* B26F98 800AFDF8 3C078014 */  lui   $a3, %hi(D_80142040) # $a3, 0x8014
/* B26F9C 800AFDFC 240904FF */  li    $t1, 1279
/* B26FA0 800AFE00 AFA90010 */  sw    $t1, 0x10($sp)
/* B26FA4 800AFE04 24E72040 */  addiu $a3, %lo(D_80142040) # addiu $a3, $a3, 0x2040
/* B26FA8 800AFE08 8FA50030 */  lw    $a1, 0x30($sp)
/* B26FAC 800AFE0C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B26FB0 800AFE10 8FA6002C */   lw    $a2, 0x2c($sp)
/* B26FB4 800AFE14 1000040A */  b     .L800B0E40
/* B26FB8 800AFE18 8FBF0024 */   lw    $ra, 0x24($sp)
glabel L800AFE1C
/* B26FBC 800AFE1C 240B0001 */  li    $t3, 1
/* B26FC0 800AFE20 3C0201FA */  lui   $v0, %hi(_vr_FCVR_staticSegmentRomStart) # $v0, 0x1fa
/* B26FC4 800AFE24 3C0A01FC */  lui   $t2, %hi(_vr_FCVR_staticSegmentRomEnd) # $t2, 0x1fc
/* B26FC8 800AFE28 A60B0140 */  sh    $t3, 0x140($s0)
/* B26FCC 800AFE2C 254AF000 */  addiu $t2, %lo(_vr_FCVR_staticSegmentRomEnd) # addiu $t2, $t2, -0x1000
/* B26FD0 800AFE30 2442F000 */  addiu $v0, %lo(_vr_FCVR_staticSegmentRomStart) # addiu $v0, $v0, -0x1000
/* B26FD4 800AFE34 01422823 */  subu  $a1, $t2, $v0
/* B26FD8 800AFE38 3C068014 */  lui   $a2, %hi(D_80142050) # $a2, 0x8014
/* B26FDC 800AFE3C 24C62050 */  addiu $a2, %lo(D_80142050) # addiu $a2, $a2, 0x2050
/* B26FE0 800AFE40 AFA5002C */  sw    $a1, 0x2c($sp)
/* B26FE4 800AFE44 AFA20030 */  sw    $v0, 0x30($sp)
/* B26FE8 800AFE48 8FA40048 */  lw    $a0, 0x48($sp)
/* B26FEC 800AFE4C 0C031521 */  jal   Game_Alloc
/* B26FF0 800AFE50 24070506 */   li    $a3, 1286
/* B26FF4 800AFE54 14400007 */  bnez  $v0, .L800AFE74
/* B26FF8 800AFE58 AE020128 */   sw    $v0, 0x128($s0)
/* B26FFC 800AFE5C 3C048014 */  lui   $a0, %hi(D_80142060) # $a0, 0x8014
/* B27000 800AFE60 3C058014 */  lui   $a1, %hi(D_80142088) # $a1, 0x8014
/* B27004 800AFE64 24A52088 */  addiu $a1, %lo(D_80142088) # addiu $a1, $a1, 0x2088
/* B27008 800AFE68 24842060 */  addiu $a0, %lo(D_80142060) # addiu $a0, $a0, 0x2060
/* B2700C 800AFE6C 0C0007FC */  jal   __assert
/* B27010 800AFE70 24060507 */   li    $a2, 1287
.L800AFE74:
/* B27014 800AFE74 8E040128 */  lw    $a0, 0x128($s0)
/* B27018 800AFE78 3C078014 */  lui   $a3, %hi(D_80142098) # $a3, 0x8014
/* B2701C 800AFE7C 240C0508 */  li    $t4, 1288
/* B27020 800AFE80 AFAC0010 */  sw    $t4, 0x10($sp)
/* B27024 800AFE84 24E72098 */  addiu $a3, %lo(D_80142098) # addiu $a3, $a3, 0x2098
/* B27028 800AFE88 8FA50030 */  lw    $a1, 0x30($sp)
/* B2702C 800AFE8C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27030 800AFE90 8FA6002C */   lw    $a2, 0x2c($sp)
/* B27034 800AFE94 3C0301FC */  lui   $v1, %hi(_vr_FCVR_pal_staticSegmentRomStart) # $v1, 0x1fc
/* B27038 800AFE98 3C0D01FC */  lui   $t5, %hi(_vr_FCVR_pal_staticSegmentRomEnd) # $t5, 0x1fc
/* B2703C 800AFE9C 25ADF400 */  addiu $t5, %lo(_vr_FCVR_pal_staticSegmentRomEnd) # addiu $t5, $t5, -0xc00
/* B27040 800AFEA0 2463F000 */  addiu $v1, %lo(_vr_FCVR_pal_staticSegmentRomStart) # addiu $v1, $v1, -0x1000
/* B27044 800AFEA4 01A32823 */  subu  $a1, $t5, $v1
/* B27048 800AFEA8 3C068014 */  lui   $a2, %hi(D_801420A8) # $a2, 0x8014
/* B2704C 800AFEAC 24C620A8 */  addiu $a2, %lo(D_801420A8) # addiu $a2, $a2, 0x20a8
/* B27050 800AFEB0 AFA5002C */  sw    $a1, 0x2c($sp)
/* B27054 800AFEB4 AFA30030 */  sw    $v1, 0x30($sp)
/* B27058 800AFEB8 8FA40048 */  lw    $a0, 0x48($sp)
/* B2705C 800AFEBC 0C031521 */  jal   Game_Alloc
/* B27060 800AFEC0 2407050B */   li    $a3, 1291
/* B27064 800AFEC4 14400007 */  bnez  $v0, .L800AFEE4
/* B27068 800AFEC8 AE020130 */   sw    $v0, 0x130($s0)
/* B2706C 800AFECC 3C048014 */  lui   $a0, %hi(D_801420B8) # $a0, 0x8014
/* B27070 800AFED0 3C058014 */  lui   $a1, %hi(D_801420E0) # $a1, 0x8014
/* B27074 800AFED4 24A520E0 */  addiu $a1, %lo(D_801420E0) # addiu $a1, $a1, 0x20e0
/* B27078 800AFED8 248420B8 */  addiu $a0, %lo(D_801420B8) # addiu $a0, $a0, 0x20b8
/* B2707C 800AFEDC 0C0007FC */  jal   __assert
/* B27080 800AFEE0 2406050C */   li    $a2, 1292
.L800AFEE4:
/* B27084 800AFEE4 8E040130 */  lw    $a0, 0x130($s0)
/* B27088 800AFEE8 3C078014 */  lui   $a3, %hi(D_801420F0) # $a3, 0x8014
/* B2708C 800AFEEC 240E050D */  li    $t6, 1293
/* B27090 800AFEF0 AFAE0010 */  sw    $t6, 0x10($sp)
/* B27094 800AFEF4 24E720F0 */  addiu $a3, %lo(D_801420F0) # addiu $a3, $a3, 0x20f0
/* B27098 800AFEF8 8FA50030 */  lw    $a1, 0x30($sp)
/* B2709C 800AFEFC 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B270A0 800AFF00 8FA6002C */   lw    $a2, 0x2c($sp)
/* B270A4 800AFF04 3C018014 */  lui   $at, %hi(D_80142E60)
/* B270A8 800AFF08 C4302E60 */  lwc1  $f16, %lo(D_80142E60)($at)
/* B270AC 800AFF0C 100003CB */  b     .L800B0E3C
/* B270B0 800AFF10 E6100148 */   swc1  $f16, 0x148($s0)
glabel L800AFF14
/* B270B4 800AFF14 240F0001 */  li    $t7, 1
/* B270B8 800AFF18 3C0201C8 */  lui   $v0, %hi(_vr_KHVR_staticSegmentRomStart) # $v0, 0x1c8
/* B270BC 800AFF1C 3C1801CC */  lui   $t8, %hi(_vr_KHVR_staticSegmentRomEnd) # $t8, 0x1cc
/* B270C0 800AFF20 A60F0140 */  sh    $t7, 0x140($s0)
/* B270C4 800AFF24 2718E000 */  addiu $t8, %lo(_vr_KHVR_staticSegmentRomEnd) # addiu $t8, $t8, -0x2000
/* B270C8 800AFF28 2442E000 */  addiu $v0, %lo(_vr_KHVR_staticSegmentRomStart) # addiu $v0, $v0, -0x2000
/* B270CC 800AFF2C 03022823 */  subu  $a1, $t8, $v0
/* B270D0 800AFF30 3C068014 */  lui   $a2, %hi(D_80142100) # $a2, 0x8014
/* B270D4 800AFF34 24C62100 */  addiu $a2, %lo(D_80142100) # addiu $a2, $a2, 0x2100
/* B270D8 800AFF38 AFA5002C */  sw    $a1, 0x2c($sp)
/* B270DC 800AFF3C AFA20030 */  sw    $v0, 0x30($sp)
/* B270E0 800AFF40 8FA40048 */  lw    $a0, 0x48($sp)
/* B270E4 800AFF44 0C031521 */  jal   Game_Alloc
/* B270E8 800AFF48 24070515 */   li    $a3, 1301
/* B270EC 800AFF4C 14400007 */  bnez  $v0, .L800AFF6C
/* B270F0 800AFF50 AE020128 */   sw    $v0, 0x128($s0)
/* B270F4 800AFF54 3C048014 */  lui   $a0, %hi(D_80142110) # $a0, 0x8014
/* B270F8 800AFF58 3C058014 */  lui   $a1, %hi(D_80142138) # $a1, 0x8014
/* B270FC 800AFF5C 24A52138 */  addiu $a1, %lo(D_80142138) # addiu $a1, $a1, 0x2138
/* B27100 800AFF60 24842110 */  addiu $a0, %lo(D_80142110) # addiu $a0, $a0, 0x2110
/* B27104 800AFF64 0C0007FC */  jal   __assert
/* B27108 800AFF68 24060516 */   li    $a2, 1302
.L800AFF6C:
/* B2710C 800AFF6C 8E040128 */  lw    $a0, 0x128($s0)
/* B27110 800AFF70 3C078014 */  lui   $a3, %hi(D_80142148) # $a3, 0x8014
/* B27114 800AFF74 24190517 */  li    $t9, 1303
/* B27118 800AFF78 AFB90010 */  sw    $t9, 0x10($sp)
/* B2711C 800AFF7C 24E72148 */  addiu $a3, %lo(D_80142148) # addiu $a3, $a3, 0x2148
/* B27120 800AFF80 8FA50030 */  lw    $a1, 0x30($sp)
/* B27124 800AFF84 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27128 800AFF88 8FA6002C */   lw    $a2, 0x2c($sp)
/* B2712C 800AFF8C 3C0301CC */  lui   $v1, %hi(_vr_KHVR_pal_staticSegmentRomStart) # $v1, 0x1cc
/* B27130 800AFF90 3C0901CC */  lui   $t1, %hi(_vr_KHVR_pal_staticSegmentRomEnd) # $t1, 0x1cc
/* B27134 800AFF94 2529E800 */  addiu $t1, %lo(_vr_KHVR_pal_staticSegmentRomEnd) # addiu $t1, $t1, -0x1800
/* B27138 800AFF98 2463E000 */  addiu $v1, %lo(_vr_KHVR_pal_staticSegmentRomStart) # addiu $v1, $v1, -0x2000
/* B2713C 800AFF9C 01232823 */  subu  $a1, $t1, $v1
/* B27140 800AFFA0 3C068014 */  lui   $a2, %hi(D_80142158) # $a2, 0x8014
/* B27144 800AFFA4 24C62158 */  addiu $a2, %lo(D_80142158) # addiu $a2, $a2, 0x2158
/* B27148 800AFFA8 AFA5002C */  sw    $a1, 0x2c($sp)
/* B2714C 800AFFAC AFA30030 */  sw    $v1, 0x30($sp)
/* B27150 800AFFB0 8FA40048 */  lw    $a0, 0x48($sp)
/* B27154 800AFFB4 0C031521 */  jal   Game_Alloc
/* B27158 800AFFB8 2407051A */   li    $a3, 1306
/* B2715C 800AFFBC 14400007 */  bnez  $v0, .L800AFFDC
/* B27160 800AFFC0 AE020130 */   sw    $v0, 0x130($s0)
/* B27164 800AFFC4 3C048014 */  lui   $a0, %hi(D_80142168) # $a0, 0x8014
/* B27168 800AFFC8 3C058014 */  lui   $a1, %hi(D_80142190) # $a1, 0x8014
/* B2716C 800AFFCC 24A52190 */  addiu $a1, %lo(D_80142190) # addiu $a1, $a1, 0x2190
/* B27170 800AFFD0 24842168 */  addiu $a0, %lo(D_80142168) # addiu $a0, $a0, 0x2168
/* B27174 800AFFD4 0C0007FC */  jal   __assert
/* B27178 800AFFD8 2406051B */   li    $a2, 1307
.L800AFFDC:
/* B2717C 800AFFDC 8E040130 */  lw    $a0, 0x130($s0)
/* B27180 800AFFE0 3C078014 */  lui   $a3, %hi(D_801421A0) # $a3, 0x8014
/* B27184 800AFFE4 240B051C */  li    $t3, 1308
/* B27188 800AFFE8 AFAB0010 */  sw    $t3, 0x10($sp)
/* B2718C 800AFFEC 24E721A0 */  addiu $a3, %lo(D_801421A0) # addiu $a3, $a3, 0x21a0
/* B27190 800AFFF0 8FA50030 */  lw    $a1, 0x30($sp)
/* B27194 800AFFF4 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27198 800AFFF8 8FA6002C */   lw    $a2, 0x2c($sp)
/* B2719C 800AFFFC 10000390 */  b     .L800B0E40
/* B271A0 800B0000 8FBF0024 */   lw    $ra, 0x24($sp)
glabel L800B0004
/* B271A4 800B0004 240A0002 */  li    $t2, 2
/* B271A8 800B0008 3C0201CC */  lui   $v0, %hi(_vr_K3VR_staticSegmentRomStart) # $v0, 0x1cc
/* B271AC 800B000C 3C0C01CF */  lui   $t4, %hi(_vr_K3VR_staticSegmentRomEnd) # $t4, 0x1cf
/* B271B0 800B0010 A60A0140 */  sh    $t2, 0x140($s0)
/* B271B4 800B0014 258CF000 */  addiu $t4, %lo(_vr_K3VR_staticSegmentRomEnd) # addiu $t4, $t4, -0x1000
/* B271B8 800B0018 2442F000 */  addiu $v0, %lo(_vr_K3VR_staticSegmentRomStart) # addiu $v0, $v0, -0x1000
/* B271BC 800B001C 01822823 */  subu  $a1, $t4, $v0
/* B271C0 800B0020 3C068014 */  lui   $a2, %hi(D_801421B0) # $a2, 0x8014
/* B271C4 800B0024 24C621B0 */  addiu $a2, %lo(D_801421B0) # addiu $a2, $a2, 0x21b0
/* B271C8 800B0028 AFA5002C */  sw    $a1, 0x2c($sp)
/* B271CC 800B002C AFA20030 */  sw    $v0, 0x30($sp)
/* B271D0 800B0030 8FA40048 */  lw    $a0, 0x48($sp)
/* B271D4 800B0034 0C031521 */  jal   Game_Alloc
/* B271D8 800B0038 24070533 */   li    $a3, 1331
/* B271DC 800B003C 14400007 */  bnez  $v0, .L800B005C
/* B271E0 800B0040 AE020128 */   sw    $v0, 0x128($s0)
/* B271E4 800B0044 3C048014 */  lui   $a0, %hi(D_801421C0) # $a0, 0x8014
/* B271E8 800B0048 3C058014 */  lui   $a1, %hi(D_801421E8) # $a1, 0x8014
/* B271EC 800B004C 24A521E8 */  addiu $a1, %lo(D_801421E8) # addiu $a1, $a1, 0x21e8
/* B271F0 800B0050 248421C0 */  addiu $a0, %lo(D_801421C0) # addiu $a0, $a0, 0x21c0
/* B271F4 800B0054 0C0007FC */  jal   __assert
/* B271F8 800B0058 24060534 */   li    $a2, 1332
.L800B005C:
/* B271FC 800B005C 8E040128 */  lw    $a0, 0x128($s0)
/* B27200 800B0060 3C078014 */  lui   $a3, %hi(D_801421F8) # $a3, 0x8014
/* B27204 800B0064 240D0535 */  li    $t5, 1333
/* B27208 800B0068 AFAD0010 */  sw    $t5, 0x10($sp)
/* B2720C 800B006C 24E721F8 */  addiu $a3, %lo(D_801421F8) # addiu $a3, $a3, 0x21f8
/* B27210 800B0070 8FA50030 */  lw    $a1, 0x30($sp)
/* B27214 800B0074 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27218 800B0078 8FA6002C */   lw    $a2, 0x2c($sp)
/* B2721C 800B007C 3C0301CF */  lui   $v1, %hi(_vr_K3VR_pal_staticSegmentRomStart) # $v1, 0x1cf
/* B27220 800B0080 3C0E01CF */  lui   $t6, %hi(_vr_K3VR_pal_staticSegmentRomEnd) # $t6, 0x1cf
/* B27224 800B0084 25CEF600 */  addiu $t6, %lo(_vr_K3VR_pal_staticSegmentRomEnd) # addiu $t6, $t6, -0xa00
/* B27228 800B0088 2463F000 */  addiu $v1, %lo(_vr_K3VR_pal_staticSegmentRomStart) # addiu $v1, $v1, -0x1000
/* B2722C 800B008C 01C32823 */  subu  $a1, $t6, $v1
/* B27230 800B0090 3C068014 */  lui   $a2, %hi(D_80142208) # $a2, 0x8014
/* B27234 800B0094 24C62208 */  addiu $a2, %lo(D_80142208) # addiu $a2, $a2, 0x2208
/* B27238 800B0098 AFA5002C */  sw    $a1, 0x2c($sp)
/* B2723C 800B009C AFA30030 */  sw    $v1, 0x30($sp)
/* B27240 800B00A0 8FA40048 */  lw    $a0, 0x48($sp)
/* B27244 800B00A4 0C031521 */  jal   Game_Alloc
/* B27248 800B00A8 24070538 */   li    $a3, 1336
/* B2724C 800B00AC 14400007 */  bnez  $v0, .L800B00CC
/* B27250 800B00B0 AE020130 */   sw    $v0, 0x130($s0)
/* B27254 800B00B4 3C048014 */  lui   $a0, %hi(D_80142218) # $a0, 0x8014
/* B27258 800B00B8 3C058014 */  lui   $a1, %hi(D_80142240) # $a1, 0x8014
/* B2725C 800B00BC 24A52240 */  addiu $a1, %lo(D_80142240) # addiu $a1, $a1, 0x2240
/* B27260 800B00C0 24842218 */  addiu $a0, %lo(D_80142218) # addiu $a0, $a0, 0x2218
/* B27264 800B00C4 0C0007FC */  jal   __assert
/* B27268 800B00C8 24060539 */   li    $a2, 1337
.L800B00CC:
/* B2726C 800B00CC 8E040130 */  lw    $a0, 0x130($s0)
/* B27270 800B00D0 3C078014 */  lui   $a3, %hi(D_80142250) # $a3, 0x8014
/* B27274 800B00D4 240F053A */  li    $t7, 1338
/* B27278 800B00D8 AFAF0010 */  sw    $t7, 0x10($sp)
/* B2727C 800B00DC 24E72250 */  addiu $a3, %lo(D_80142250) # addiu $a3, $a3, 0x2250
/* B27280 800B00E0 8FA50030 */  lw    $a1, 0x30($sp)
/* B27284 800B00E4 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27288 800B00E8 8FA6002C */   lw    $a2, 0x2c($sp)
/* B2728C 800B00EC 10000354 */  b     .L800B0E40
/* B27290 800B00F0 8FBF0024 */   lw    $ra, 0x24($sp)
glabel L800B00F4
/* B27294 800B00F4 24180001 */  li    $t8, 1
/* B27298 800B00F8 3C0201D7 */  lui   $v0, %hi(_vr_MLVR_staticSegmentRomStart) # $v0, 0x1d7
/* B2729C 800B00FC 3C1901DB */  lui   $t9, %hi(_vr_MLVR_staticSegmentRomEnd) # $t9, 0x1db
/* B272A0 800B0100 A6180140 */  sh    $t8, 0x140($s0)
/* B272A4 800B0104 27393000 */  addiu $t9, %lo(_vr_MLVR_staticSegmentRomEnd) # addiu $t9, $t9, 0x3000
/* B272A8 800B0108 24423000 */  addiu $v0, %lo(_vr_MLVR_staticSegmentRomStart) # addiu $v0, $v0, 0x3000
/* B272AC 800B010C 03222823 */  subu  $a1, $t9, $v0
/* B272B0 800B0110 3C068014 */  lui   $a2, %hi(D_80142260) # $a2, 0x8014
/* B272B4 800B0114 24C62260 */  addiu $a2, %lo(D_80142260) # addiu $a2, $a2, 0x2260
/* B272B8 800B0118 AFA5002C */  sw    $a1, 0x2c($sp)
/* B272BC 800B011C AFA20030 */  sw    $v0, 0x30($sp)
/* B272C0 800B0120 8FA40048 */  lw    $a0, 0x48($sp)
/* B272C4 800B0124 0C031521 */  jal   Game_Alloc
/* B272C8 800B0128 24070541 */   li    $a3, 1345
/* B272CC 800B012C 14400007 */  bnez  $v0, .L800B014C
/* B272D0 800B0130 AE020128 */   sw    $v0, 0x128($s0)
/* B272D4 800B0134 3C048014 */  lui   $a0, %hi(D_80142270) # $a0, 0x8014
/* B272D8 800B0138 3C058014 */  lui   $a1, %hi(D_80142298) # $a1, 0x8014
/* B272DC 800B013C 24A52298 */  addiu $a1, %lo(D_80142298) # addiu $a1, $a1, 0x2298
/* B272E0 800B0140 24842270 */  addiu $a0, %lo(D_80142270) # addiu $a0, $a0, 0x2270
/* B272E4 800B0144 0C0007FC */  jal   __assert
/* B272E8 800B0148 24060542 */   li    $a2, 1346
.L800B014C:
/* B272EC 800B014C 8E040128 */  lw    $a0, 0x128($s0)
/* B272F0 800B0150 3C078014 */  lui   $a3, %hi(D_801422A8) # $a3, 0x8014
/* B272F4 800B0154 24090543 */  li    $t1, 1347
/* B272F8 800B0158 AFA90010 */  sw    $t1, 0x10($sp)
/* B272FC 800B015C 24E722A8 */  addiu $a3, %lo(D_801422A8) # addiu $a3, $a3, 0x22a8
/* B27300 800B0160 8FA50030 */  lw    $a1, 0x30($sp)
/* B27304 800B0164 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27308 800B0168 8FA6002C */   lw    $a2, 0x2c($sp)
/* B2730C 800B016C 3C0301DB */  lui   $v1, %hi(_vr_MLVR_pal_staticSegmentRomStart) # $v1, 0x1db
/* B27310 800B0170 3C0B01DB */  lui   $t3, %hi(_vr_MLVR_pal_staticSegmentRomEnd) # $t3, 0x1db
/* B27314 800B0174 256B3800 */  addiu $t3, %lo(_vr_MLVR_pal_staticSegmentRomEnd) # addiu $t3, $t3, 0x3800
/* B27318 800B0178 24633000 */  addiu $v1, %lo(_vr_MLVR_pal_staticSegmentRomStart) # addiu $v1, $v1, 0x3000
/* B2731C 800B017C 01632823 */  subu  $a1, $t3, $v1
/* B27320 800B0180 3C068014 */  lui   $a2, %hi(D_801422B8) # $a2, 0x8014
/* B27324 800B0184 24C622B8 */  addiu $a2, %lo(D_801422B8) # addiu $a2, $a2, 0x22b8
/* B27328 800B0188 AFA5002C */  sw    $a1, 0x2c($sp)
/* B2732C 800B018C AFA30030 */  sw    $v1, 0x30($sp)
/* B27330 800B0190 8FA40048 */  lw    $a0, 0x48($sp)
/* B27334 800B0194 0C031521 */  jal   Game_Alloc
/* B27338 800B0198 24070546 */   li    $a3, 1350
/* B2733C 800B019C 14400007 */  bnez  $v0, .L800B01BC
/* B27340 800B01A0 AE020130 */   sw    $v0, 0x130($s0)
/* B27344 800B01A4 3C048014 */  lui   $a0, %hi(D_801422C8) # $a0, 0x8014
/* B27348 800B01A8 3C058014 */  lui   $a1, %hi(D_801422F0) # $a1, 0x8014
/* B2734C 800B01AC 24A522F0 */  addiu $a1, %lo(D_801422F0) # addiu $a1, $a1, 0x22f0
/* B27350 800B01B0 248422C8 */  addiu $a0, %lo(D_801422C8) # addiu $a0, $a0, 0x22c8
/* B27354 800B01B4 0C0007FC */  jal   __assert
/* B27358 800B01B8 24060547 */   li    $a2, 1351
.L800B01BC:
/* B2735C 800B01BC 8E040130 */  lw    $a0, 0x130($s0)
/* B27360 800B01C0 3C078014 */  lui   $a3, %hi(D_80142300) # $a3, 0x8014
/* B27364 800B01C4 240A0548 */  li    $t2, 1352
/* B27368 800B01C8 AFAA0010 */  sw    $t2, 0x10($sp)
/* B2736C 800B01CC 24E72300 */  addiu $a3, %lo(D_80142300) # addiu $a3, $a3, 0x2300
/* B27370 800B01D0 8FA50030 */  lw    $a1, 0x30($sp)
/* B27374 800B01D4 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27378 800B01D8 8FA6002C */   lw    $a2, 0x2c($sp)
/* B2737C 800B01DC 10000318 */  b     .L800B0E40
/* B27380 800B01E0 8FBF0024 */   lw    $ra, 0x24($sp)
glabel L800B01E4
/* B27384 800B01E4 240C0001 */  li    $t4, 1
/* B27388 800B01E8 3C0201DB */  lui   $v0, %hi(_vr_KKRVR_staticSegmentRomStart) # $v0, 0x1db
/* B2738C 800B01EC 3C0D01DF */  lui   $t5, %hi(_vr_KKRVR_staticSegmentRomEnd) # $t5, 0x1df
/* B27390 800B01F0 A60C0140 */  sh    $t4, 0x140($s0)
/* B27394 800B01F4 25AD4000 */  addiu $t5, %lo(_vr_KKRVR_staticSegmentRomEnd) # addiu $t5, $t5, 0x4000
/* B27398 800B01F8 24424000 */  addiu $v0, %lo(_vr_KKRVR_staticSegmentRomStart) # addiu $v0, $v0, 0x4000
/* B2739C 800B01FC 01A22823 */  subu  $a1, $t5, $v0
/* B273A0 800B0200 3C068014 */  lui   $a2, %hi(D_80142310) # $a2, 0x8014
/* B273A4 800B0204 24C62310 */  addiu $a2, %lo(D_80142310) # addiu $a2, $a2, 0x2310
/* B273A8 800B0208 AFA5002C */  sw    $a1, 0x2c($sp)
/* B273AC 800B020C AFA20030 */  sw    $v0, 0x30($sp)
/* B273B0 800B0210 8FA40048 */  lw    $a0, 0x48($sp)
/* B273B4 800B0214 0C031521 */  jal   Game_Alloc
/* B273B8 800B0218 2407054F */   li    $a3, 1359
/* B273BC 800B021C 14400007 */  bnez  $v0, .L800B023C
/* B273C0 800B0220 AE020128 */   sw    $v0, 0x128($s0)
/* B273C4 800B0224 3C048014 */  lui   $a0, %hi(D_80142320) # $a0, 0x8014
/* B273C8 800B0228 3C058014 */  lui   $a1, %hi(D_80142348) # $a1, 0x8014
/* B273CC 800B022C 24A52348 */  addiu $a1, %lo(D_80142348) # addiu $a1, $a1, 0x2348
/* B273D0 800B0230 24842320 */  addiu $a0, %lo(D_80142320) # addiu $a0, $a0, 0x2320
/* B273D4 800B0234 0C0007FC */  jal   __assert
/* B273D8 800B0238 24060550 */   li    $a2, 1360
.L800B023C:
/* B273DC 800B023C 8E040128 */  lw    $a0, 0x128($s0)
/* B273E0 800B0240 3C078014 */  lui   $a3, %hi(D_80142358) # $a3, 0x8014
/* B273E4 800B0244 240E0551 */  li    $t6, 1361
/* B273E8 800B0248 AFAE0010 */  sw    $t6, 0x10($sp)
/* B273EC 800B024C 24E72358 */  addiu $a3, %lo(D_80142358) # addiu $a3, $a3, 0x2358
/* B273F0 800B0250 8FA50030 */  lw    $a1, 0x30($sp)
/* B273F4 800B0254 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B273F8 800B0258 8FA6002C */   lw    $a2, 0x2c($sp)
/* B273FC 800B025C 3C0301DF */  lui   $v1, %hi(_vr_KKRVR_pal_staticSegmentRomStart) # $v1, 0x1df
/* B27400 800B0260 3C0F01DF */  lui   $t7, %hi(_vr_KKRVR_pal_staticSegmentRomEnd) # $t7, 0x1df
/* B27404 800B0264 25EF4800 */  addiu $t7, %lo(_vr_KKRVR_pal_staticSegmentRomEnd) # addiu $t7, $t7, 0x4800
/* B27408 800B0268 24634000 */  addiu $v1, %lo(_vr_KKRVR_pal_staticSegmentRomStart) # addiu $v1, $v1, 0x4000
/* B2740C 800B026C 01E32823 */  subu  $a1, $t7, $v1
/* B27410 800B0270 3C068014 */  lui   $a2, %hi(D_80142368) # $a2, 0x8014
/* B27414 800B0274 24C62368 */  addiu $a2, %lo(D_80142368) # addiu $a2, $a2, 0x2368
/* B27418 800B0278 AFA5002C */  sw    $a1, 0x2c($sp)
/* B2741C 800B027C AFA30030 */  sw    $v1, 0x30($sp)
/* B27420 800B0280 8FA40048 */  lw    $a0, 0x48($sp)
/* B27424 800B0284 0C031521 */  jal   Game_Alloc
/* B27428 800B0288 24070554 */   li    $a3, 1364
/* B2742C 800B028C 14400007 */  bnez  $v0, .L800B02AC
/* B27430 800B0290 AE020130 */   sw    $v0, 0x130($s0)
/* B27434 800B0294 3C048014 */  lui   $a0, %hi(D_80142378) # $a0, 0x8014
/* B27438 800B0298 3C058014 */  lui   $a1, %hi(D_801423A0) # $a1, 0x8014
/* B2743C 800B029C 24A523A0 */  addiu $a1, %lo(D_801423A0) # addiu $a1, $a1, 0x23a0
/* B27440 800B02A0 24842378 */  addiu $a0, %lo(D_80142378) # addiu $a0, $a0, 0x2378
/* B27444 800B02A4 0C0007FC */  jal   __assert
/* B27448 800B02A8 24060555 */   li    $a2, 1365
.L800B02AC:
/* B2744C 800B02AC 8E040130 */  lw    $a0, 0x130($s0)
/* B27450 800B02B0 3C078014 */  lui   $a3, %hi(D_801423B0) # $a3, 0x8014
/* B27454 800B02B4 24180556 */  li    $t8, 1366
/* B27458 800B02B8 AFB80010 */  sw    $t8, 0x10($sp)
/* B2745C 800B02BC 24E723B0 */  addiu $a3, %lo(D_801423B0) # addiu $a3, $a3, 0x23b0
/* B27460 800B02C0 8FA50030 */  lw    $a1, 0x30($sp)
/* B27464 800B02C4 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27468 800B02C8 8FA6002C */   lw    $a2, 0x2c($sp)
/* B2746C 800B02CC 100002DC */  b     .L800B0E40
/* B27470 800B02D0 8FBF0024 */   lw    $ra, 0x24($sp)
glabel L800B02D4
/* B27474 800B02D4 24190001 */  li    $t9, 1
/* B27478 800B02D8 3C0201E6 */  lui   $v0, %hi(_vr_KSVR_staticSegmentRomStart) # $v0, 0x1e6
/* B2747C 800B02DC 3C0901E8 */  lui   $t1, %hi(_vr_KSVR_staticSegmentRomEnd) # $t1, 0x1e8
/* B27480 800B02E0 A6190140 */  sh    $t9, 0x140($s0)
/* B27484 800B02E4 25297000 */  addiu $t1, %lo(_vr_KSVR_staticSegmentRomEnd) # addiu $t1, $t1, 0x7000
/* B27488 800B02E8 24427000 */  addiu $v0, %lo(_vr_KSVR_staticSegmentRomStart) # addiu $v0, $v0, 0x7000
/* B2748C 800B02EC 01222823 */  subu  $a1, $t1, $v0
/* B27490 800B02F0 3C068014 */  lui   $a2, %hi(D_801423C0) # $a2, 0x8014
/* B27494 800B02F4 24C623C0 */  addiu $a2, %lo(D_801423C0) # addiu $a2, $a2, 0x23c0
/* B27498 800B02F8 AFA5002C */  sw    $a1, 0x2c($sp)
/* B2749C 800B02FC AFA20030 */  sw    $v0, 0x30($sp)
/* B274A0 800B0300 8FA40048 */  lw    $a0, 0x48($sp)
/* B274A4 800B0304 0C031521 */  jal   Game_Alloc
/* B274A8 800B0308 2407055D */   li    $a3, 1373
/* B274AC 800B030C 14400007 */  bnez  $v0, .L800B032C
/* B274B0 800B0310 AE020128 */   sw    $v0, 0x128($s0)
/* B274B4 800B0314 3C048014 */  lui   $a0, %hi(D_801423D0) # $a0, 0x8014
/* B274B8 800B0318 3C058014 */  lui   $a1, %hi(D_801423F8) # $a1, 0x8014
/* B274BC 800B031C 24A523F8 */  addiu $a1, %lo(D_801423F8) # addiu $a1, $a1, 0x23f8
/* B274C0 800B0320 248423D0 */  addiu $a0, %lo(D_801423D0) # addiu $a0, $a0, 0x23d0
/* B274C4 800B0324 0C0007FC */  jal   __assert
/* B274C8 800B0328 2406055E */   li    $a2, 1374
.L800B032C:
/* B274CC 800B032C 8E040128 */  lw    $a0, 0x128($s0)
/* B274D0 800B0330 3C078014 */  lui   $a3, %hi(D_80142408) # $a3, 0x8014
/* B274D4 800B0334 240B055F */  li    $t3, 1375
/* B274D8 800B0338 AFAB0010 */  sw    $t3, 0x10($sp)
/* B274DC 800B033C 24E72408 */  addiu $a3, %lo(D_80142408) # addiu $a3, $a3, 0x2408
/* B274E0 800B0340 8FA50030 */  lw    $a1, 0x30($sp)
/* B274E4 800B0344 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B274E8 800B0348 8FA6002C */   lw    $a2, 0x2c($sp)
/* B274EC 800B034C 3C0301E8 */  lui   $v1, %hi(_vr_KSVR_pal_staticSegmentRomStart) # $v1, 0x1e8
/* B274F0 800B0350 3C0A01E8 */  lui   $t2, %hi(_vr_KSVR_pal_staticSegmentRomEnd) # $t2, 0x1e8
/* B274F4 800B0354 254A7400 */  addiu $t2, %lo(_vr_KSVR_pal_staticSegmentRomEnd) # addiu $t2, $t2, 0x7400
/* B274F8 800B0358 24637000 */  addiu $v1, %lo(_vr_KSVR_pal_staticSegmentRomStart) # addiu $v1, $v1, 0x7000
/* B274FC 800B035C 01432823 */  subu  $a1, $t2, $v1
/* B27500 800B0360 3C068014 */  lui   $a2, %hi(D_80142418) # $a2, 0x8014
/* B27504 800B0364 24C62418 */  addiu $a2, %lo(D_80142418) # addiu $a2, $a2, 0x2418
/* B27508 800B0368 AFA5002C */  sw    $a1, 0x2c($sp)
/* B2750C 800B036C AFA30030 */  sw    $v1, 0x30($sp)
/* B27510 800B0370 8FA40048 */  lw    $a0, 0x48($sp)
/* B27514 800B0374 0C031521 */  jal   Game_Alloc
/* B27518 800B0378 24070562 */   li    $a3, 1378
/* B2751C 800B037C 14400007 */  bnez  $v0, .L800B039C
/* B27520 800B0380 AE020130 */   sw    $v0, 0x130($s0)
/* B27524 800B0384 3C048014 */  lui   $a0, %hi(D_80142428) # $a0, 0x8014
/* B27528 800B0388 3C058014 */  lui   $a1, %hi(D_80142450) # $a1, 0x8014
/* B2752C 800B038C 24A52450 */  addiu $a1, %lo(D_80142450) # addiu $a1, $a1, 0x2450
/* B27530 800B0390 24842428 */  addiu $a0, %lo(D_80142428) # addiu $a0, $a0, 0x2428
/* B27534 800B0394 0C0007FC */  jal   __assert
/* B27538 800B0398 24060563 */   li    $a2, 1379
.L800B039C:
/* B2753C 800B039C 8E040130 */  lw    $a0, 0x130($s0)
/* B27540 800B03A0 3C078014 */  lui   $a3, %hi(D_80142460) # $a3, 0x8014
/* B27544 800B03A4 240C0564 */  li    $t4, 1380
/* B27548 800B03A8 AFAC0010 */  sw    $t4, 0x10($sp)
/* B2754C 800B03AC 24E72460 */  addiu $a3, %lo(D_80142460) # addiu $a3, $a3, 0x2460
/* B27550 800B03B0 8FA50030 */  lw    $a1, 0x30($sp)
/* B27554 800B03B4 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27558 800B03B8 8FA6002C */   lw    $a2, 0x2c($sp)
/* B2755C 800B03BC 3C018014 */  lui   $at, %hi(D_80142E64)
/* B27560 800B03C0 C4322E64 */  lwc1  $f18, %lo(D_80142E64)($at)
/* B27564 800B03C4 1000029D */  b     .L800B0E3C
/* B27568 800B03C8 E6120148 */   swc1  $f18, 0x148($s0)
glabel L800B03CC
/* B2756C 800B03CC 240D0001 */  li    $t5, 1
/* B27570 800B03D0 3C0201E9 */  lui   $v0, %hi(_vr_GLVR_staticSegmentRomStart) # $v0, 0x1e9
/* B27574 800B03D4 3C0E01EB */  lui   $t6, %hi(_vr_GLVR_staticSegmentRomEnd) # $t6, 0x1eb
/* B27578 800B03D8 A60D0140 */  sh    $t5, 0x140($s0)
/* B2757C 800B03DC 25CE8000 */  addiu $t6, %lo(_vr_GLVR_staticSegmentRomEnd) # addiu $t6, $t6, -0x8000
/* B27580 800B03E0 24428000 */  addiu $v0, %lo(_vr_GLVR_staticSegmentRomStart) # addiu $v0, $v0, -0x8000
/* B27584 800B03E4 01C22823 */  subu  $a1, $t6, $v0
/* B27588 800B03E8 3C068014 */  lui   $a2, %hi(D_80142470) # $a2, 0x8014
/* B2758C 800B03EC 24C62470 */  addiu $a2, %lo(D_80142470) # addiu $a2, $a2, 0x2470
/* B27590 800B03F0 AFA5002C */  sw    $a1, 0x2c($sp)
/* B27594 800B03F4 AFA20030 */  sw    $v0, 0x30($sp)
/* B27598 800B03F8 8FA40048 */  lw    $a0, 0x48($sp)
/* B2759C 800B03FC 0C031521 */  jal   Game_Alloc
/* B275A0 800B0400 2407057D */   li    $a3, 1405
/* B275A4 800B0404 14400007 */  bnez  $v0, .L800B0424
/* B275A8 800B0408 AE020128 */   sw    $v0, 0x128($s0)
/* B275AC 800B040C 3C048014 */  lui   $a0, %hi(D_80142480) # $a0, 0x8014
/* B275B0 800B0410 3C058014 */  lui   $a1, %hi(D_801424A8) # $a1, 0x8014
/* B275B4 800B0414 24A524A8 */  addiu $a1, %lo(D_801424A8) # addiu $a1, $a1, 0x24a8
/* B275B8 800B0418 24842480 */  addiu $a0, %lo(D_80142480) # addiu $a0, $a0, 0x2480
/* B275BC 800B041C 0C0007FC */  jal   __assert
/* B275C0 800B0420 2406057E */   li    $a2, 1406
.L800B0424:
/* B275C4 800B0424 8E040128 */  lw    $a0, 0x128($s0)
/* B275C8 800B0428 3C078014 */  lui   $a3, %hi(D_801424B8) # $a3, 0x8014
/* B275CC 800B042C 240F057F */  li    $t7, 1407
/* B275D0 800B0430 AFAF0010 */  sw    $t7, 0x10($sp)
/* B275D4 800B0434 24E724B8 */  addiu $a3, %lo(D_801424B8) # addiu $a3, $a3, 0x24b8
/* B275D8 800B0438 8FA50030 */  lw    $a1, 0x30($sp)
/* B275DC 800B043C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B275E0 800B0440 8FA6002C */   lw    $a2, 0x2c($sp)
/* B275E4 800B0444 3C0301EB */  lui   $v1, %hi(_vr_GLVR_pal_staticSegmentRomStart) # $v1, 0x1eb
/* B275E8 800B0448 3C1801EB */  lui   $t8, %hi(_vr_GLVR_pal_staticSegmentRomEnd) # $t8, 0x1eb
/* B275EC 800B044C 27188400 */  addiu $t8, %lo(_vr_GLVR_pal_staticSegmentRomEnd) # addiu $t8, $t8, -0x7c00
/* B275F0 800B0450 24638000 */  addiu $v1, %lo(_vr_GLVR_pal_staticSegmentRomStart) # addiu $v1, $v1, -0x8000
/* B275F4 800B0454 03032823 */  subu  $a1, $t8, $v1
/* B275F8 800B0458 3C068014 */  lui   $a2, %hi(D_801424C8) # $a2, 0x8014
/* B275FC 800B045C 24C624C8 */  addiu $a2, %lo(D_801424C8) # addiu $a2, $a2, 0x24c8
/* B27600 800B0460 AFA5002C */  sw    $a1, 0x2c($sp)
/* B27604 800B0464 AFA30030 */  sw    $v1, 0x30($sp)
/* B27608 800B0468 8FA40048 */  lw    $a0, 0x48($sp)
/* B2760C 800B046C 0C031521 */  jal   Game_Alloc
/* B27610 800B0470 24070582 */   li    $a3, 1410
/* B27614 800B0474 14400007 */  bnez  $v0, .L800B0494
/* B27618 800B0478 AE020130 */   sw    $v0, 0x130($s0)
/* B2761C 800B047C 3C048014 */  lui   $a0, %hi(D_801424D8) # $a0, 0x8014
/* B27620 800B0480 3C058014 */  lui   $a1, %hi(D_80142500) # $a1, 0x8014
/* B27624 800B0484 24A52500 */  addiu $a1, %lo(D_80142500) # addiu $a1, $a1, 0x2500
/* B27628 800B0488 248424D8 */  addiu $a0, %lo(D_801424D8) # addiu $a0, $a0, 0x24d8
/* B2762C 800B048C 0C0007FC */  jal   __assert
/* B27630 800B0490 24060583 */   li    $a2, 1411
.L800B0494:
/* B27634 800B0494 8E040130 */  lw    $a0, 0x130($s0)
/* B27638 800B0498 3C078014 */  lui   $a3, %hi(D_80142510) # $a3, 0x8014
/* B2763C 800B049C 24190584 */  li    $t9, 1412
/* B27640 800B04A0 AFB90010 */  sw    $t9, 0x10($sp)
/* B27644 800B04A4 24E72510 */  addiu $a3, %lo(D_80142510) # addiu $a3, $a3, 0x2510
/* B27648 800B04A8 8FA50030 */  lw    $a1, 0x30($sp)
/* B2764C 800B04AC 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27650 800B04B0 8FA6002C */   lw    $a2, 0x2c($sp)
/* B27654 800B04B4 3C018014 */  lui   $at, %hi(D_80142E68)
/* B27658 800B04B8 C4242E68 */  lwc1  $f4, %lo(D_80142E68)($at)
/* B2765C 800B04BC 1000025F */  b     .L800B0E3C
/* B27660 800B04C0 E6040148 */   swc1  $f4, 0x148($s0)
glabel L800B04C4
/* B27664 800B04C4 24090001 */  li    $t1, 1
/* B27668 800B04C8 3C0201EB */  lui   $v0, %hi(_vr_ZRVR_staticSegmentRomStart) # $v0, 0x1eb
/* B2766C 800B04CC 3C0B01ED */  lui   $t3, %hi(_vr_ZRVR_staticSegmentRomEnd) # $t3, 0x1ed
/* B27670 800B04D0 A6090140 */  sh    $t1, 0x140($s0)
/* B27674 800B04D4 256B9000 */  addiu $t3, %lo(_vr_ZRVR_staticSegmentRomEnd) # addiu $t3, $t3, -0x7000
/* B27678 800B04D8 24429000 */  addiu $v0, %lo(_vr_ZRVR_staticSegmentRomStart) # addiu $v0, $v0, -0x7000
/* B2767C 800B04DC 01622823 */  subu  $a1, $t3, $v0
/* B27680 800B04E0 3C068014 */  lui   $a2, %hi(D_80142520) # $a2, 0x8014
/* B27684 800B04E4 24C62520 */  addiu $a2, %lo(D_80142520) # addiu $a2, $a2, 0x2520
/* B27688 800B04E8 AFA5002C */  sw    $a1, 0x2c($sp)
/* B2768C 800B04EC AFA20030 */  sw    $v0, 0x30($sp)
/* B27690 800B04F0 8FA40048 */  lw    $a0, 0x48($sp)
/* B27694 800B04F4 0C031521 */  jal   Game_Alloc
/* B27698 800B04F8 2407058C */   li    $a3, 1420
/* B2769C 800B04FC 14400007 */  bnez  $v0, .L800B051C
/* B276A0 800B0500 AE020128 */   sw    $v0, 0x128($s0)
/* B276A4 800B0504 3C048014 */  lui   $a0, %hi(D_80142530) # $a0, 0x8014
/* B276A8 800B0508 3C058014 */  lui   $a1, %hi(D_80142558) # $a1, 0x8014
/* B276AC 800B050C 24A52558 */  addiu $a1, %lo(D_80142558) # addiu $a1, $a1, 0x2558
/* B276B0 800B0510 24842530 */  addiu $a0, %lo(D_80142530) # addiu $a0, $a0, 0x2530
/* B276B4 800B0514 0C0007FC */  jal   __assert
/* B276B8 800B0518 2406058D */   li    $a2, 1421
.L800B051C:
/* B276BC 800B051C 8E040128 */  lw    $a0, 0x128($s0)
/* B276C0 800B0520 3C078014 */  lui   $a3, %hi(D_80142568) # $a3, 0x8014
/* B276C4 800B0524 240A058E */  li    $t2, 1422
/* B276C8 800B0528 AFAA0010 */  sw    $t2, 0x10($sp)
/* B276CC 800B052C 24E72568 */  addiu $a3, %lo(D_80142568) # addiu $a3, $a3, 0x2568
/* B276D0 800B0530 8FA50030 */  lw    $a1, 0x30($sp)
/* B276D4 800B0534 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B276D8 800B0538 8FA6002C */   lw    $a2, 0x2c($sp)
/* B276DC 800B053C 3C0301ED */  lui   $v1, %hi(_vr_ZRVR_pal_staticSegmentRomStart) # $v1, 0x1ed
/* B276E0 800B0540 3C0C01ED */  lui   $t4, %hi(_vr_ZRVR_pal_staticSegmentRomEnd) # $t4, 0x1ed
/* B276E4 800B0544 258C9400 */  addiu $t4, %lo(_vr_ZRVR_pal_staticSegmentRomEnd) # addiu $t4, $t4, -0x6c00
/* B276E8 800B0548 24639000 */  addiu $v1, %lo(_vr_ZRVR_pal_staticSegmentRomStart) # addiu $v1, $v1, -0x7000
/* B276EC 800B054C 01832823 */  subu  $a1, $t4, $v1
/* B276F0 800B0550 3C068014 */  lui   $a2, %hi(D_80142578) # $a2, 0x8014
/* B276F4 800B0554 24C62578 */  addiu $a2, %lo(D_80142578) # addiu $a2, $a2, 0x2578
/* B276F8 800B0558 AFA5002C */  sw    $a1, 0x2c($sp)
/* B276FC 800B055C AFA30030 */  sw    $v1, 0x30($sp)
/* B27700 800B0560 8FA40048 */  lw    $a0, 0x48($sp)
/* B27704 800B0564 0C031521 */  jal   Game_Alloc
/* B27708 800B0568 24070591 */   li    $a3, 1425
/* B2770C 800B056C 14400007 */  bnez  $v0, .L800B058C
/* B27710 800B0570 AE020130 */   sw    $v0, 0x130($s0)
/* B27714 800B0574 3C048014 */  lui   $a0, %hi(D_80142588) # $a0, 0x8014
/* B27718 800B0578 3C058014 */  lui   $a1, %hi(D_801425B0) # $a1, 0x8014
/* B2771C 800B057C 24A525B0 */  addiu $a1, %lo(D_801425B0) # addiu $a1, $a1, 0x25b0
/* B27720 800B0580 24842588 */  addiu $a0, %lo(D_80142588) # addiu $a0, $a0, 0x2588
/* B27724 800B0584 0C0007FC */  jal   __assert
/* B27728 800B0588 24060592 */   li    $a2, 1426
.L800B058C:
/* B2772C 800B058C 8E040130 */  lw    $a0, 0x130($s0)
/* B27730 800B0590 3C078014 */  lui   $a3, %hi(D_801425C0) # $a3, 0x8014
/* B27734 800B0594 240D0593 */  li    $t5, 1427
/* B27738 800B0598 AFAD0010 */  sw    $t5, 0x10($sp)
/* B2773C 800B059C 24E725C0 */  addiu $a3, %lo(D_801425C0) # addiu $a3, $a3, 0x25c0
/* B27740 800B05A0 8FA50030 */  lw    $a1, 0x30($sp)
/* B27744 800B05A4 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27748 800B05A8 8FA6002C */   lw    $a2, 0x2c($sp)
/* B2774C 800B05AC 3C018014 */  lui   $at, %hi(D_80142E6C)
/* B27750 800B05B0 C4262E6C */  lwc1  $f6, %lo(D_80142E6C)($at)
/* B27754 800B05B4 10000221 */  b     .L800B0E3C
/* B27758 800B05B8 E6060148 */   swc1  $f6, 0x148($s0)
glabel L800B05BC
/* B2775C 800B05BC 240E0001 */  li    $t6, 1
/* B27760 800B05C0 3C0201ED */  lui   $v0, %hi(_vr_DGVR_staticSegmentRomStart) # $v0, 0x1ed
/* B27764 800B05C4 3C0F01EF */  lui   $t7, %hi(_vr_DGVR_staticSegmentRomEnd) # $t7, 0x1ef
/* B27768 800B05C8 A60E0140 */  sh    $t6, 0x140($s0)
/* B2776C 800B05CC 25EFA000 */  addiu $t7, %lo(_vr_DGVR_staticSegmentRomEnd) # addiu $t7, $t7, -0x6000
/* B27770 800B05D0 2442A000 */  addiu $v0, %lo(_vr_DGVR_staticSegmentRomStart) # addiu $v0, $v0, -0x6000
/* B27774 800B05D4 01E22823 */  subu  $a1, $t7, $v0
/* B27778 800B05D8 3C068014 */  lui   $a2, %hi(D_801425D0) # $a2, 0x8014
/* B2777C 800B05DC 24C625D0 */  addiu $a2, %lo(D_801425D0) # addiu $a2, $a2, 0x25d0
/* B27780 800B05E0 AFA5002C */  sw    $a1, 0x2c($sp)
/* B27784 800B05E4 AFA20030 */  sw    $v0, 0x30($sp)
/* B27788 800B05E8 8FA40048 */  lw    $a0, 0x48($sp)
/* B2778C 800B05EC 0C031521 */  jal   Game_Alloc
/* B27790 800B05F0 240705AB */   li    $a3, 1451
/* B27794 800B05F4 14400007 */  bnez  $v0, .L800B0614
/* B27798 800B05F8 AE020128 */   sw    $v0, 0x128($s0)
/* B2779C 800B05FC 3C048014 */  lui   $a0, %hi(D_801425E0) # $a0, 0x8014
/* B277A0 800B0600 3C058014 */  lui   $a1, %hi(D_80142608) # $a1, 0x8014
/* B277A4 800B0604 24A52608 */  addiu $a1, %lo(D_80142608) # addiu $a1, $a1, 0x2608
/* B277A8 800B0608 248425E0 */  addiu $a0, %lo(D_801425E0) # addiu $a0, $a0, 0x25e0
/* B277AC 800B060C 0C0007FC */  jal   __assert
/* B277B0 800B0610 240605AC */   li    $a2, 1452
.L800B0614:
/* B277B4 800B0614 8E040128 */  lw    $a0, 0x128($s0)
/* B277B8 800B0618 3C078014 */  lui   $a3, %hi(D_80142618) # $a3, 0x8014
/* B277BC 800B061C 241805AD */  li    $t8, 1453
/* B277C0 800B0620 AFB80010 */  sw    $t8, 0x10($sp)
/* B277C4 800B0624 24E72618 */  addiu $a3, %lo(D_80142618) # addiu $a3, $a3, 0x2618
/* B277C8 800B0628 8FA50030 */  lw    $a1, 0x30($sp)
/* B277CC 800B062C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B277D0 800B0630 8FA6002C */   lw    $a2, 0x2c($sp)
/* B277D4 800B0634 3C0301EF */  lui   $v1, %hi(_vr_DGVR_pal_staticSegmentRomStart) # $v1, 0x1ef
/* B277D8 800B0638 3C1901EF */  lui   $t9, %hi(_vr_DGVR_pal_staticSegmentRomEnd) # $t9, 0x1ef
/* B277DC 800B063C 2739A400 */  addiu $t9, %lo(_vr_DGVR_pal_staticSegmentRomEnd) # addiu $t9, $t9, -0x5c00
/* B277E0 800B0640 2463A000 */  addiu $v1, %lo(_vr_DGVR_pal_staticSegmentRomStart) # addiu $v1, $v1, -0x6000
/* B277E4 800B0644 03232823 */  subu  $a1, $t9, $v1
/* B277E8 800B0648 3C068014 */  lui   $a2, %hi(D_80142628) # $a2, 0x8014
/* B277EC 800B064C 24C62628 */  addiu $a2, %lo(D_80142628) # addiu $a2, $a2, 0x2628
/* B277F0 800B0650 AFA5002C */  sw    $a1, 0x2c($sp)
/* B277F4 800B0654 AFA30030 */  sw    $v1, 0x30($sp)
/* B277F8 800B0658 8FA40048 */  lw    $a0, 0x48($sp)
/* B277FC 800B065C 0C031521 */  jal   Game_Alloc
/* B27800 800B0660 240705B0 */   li    $a3, 1456
/* B27804 800B0664 14400007 */  bnez  $v0, .L800B0684
/* B27808 800B0668 AE020130 */   sw    $v0, 0x130($s0)
/* B2780C 800B066C 3C048014 */  lui   $a0, %hi(D_80142638) # $a0, 0x8014
/* B27810 800B0670 3C058014 */  lui   $a1, %hi(D_80142660) # $a1, 0x8014
/* B27814 800B0674 24A52660 */  addiu $a1, %lo(D_80142660) # addiu $a1, $a1, 0x2660
/* B27818 800B0678 24842638 */  addiu $a0, %lo(D_80142638) # addiu $a0, $a0, 0x2638
/* B2781C 800B067C 0C0007FC */  jal   __assert
/* B27820 800B0680 240605B1 */   li    $a2, 1457
.L800B0684:
/* B27824 800B0684 8E040130 */  lw    $a0, 0x130($s0)
/* B27828 800B0688 3C078014 */  lui   $a3, %hi(D_80142670) # $a3, 0x8014
/* B2782C 800B068C 240905B2 */  li    $t1, 1458
/* B27830 800B0690 AFA90010 */  sw    $t1, 0x10($sp)
/* B27834 800B0694 24E72670 */  addiu $a3, %lo(D_80142670) # addiu $a3, $a3, 0x2670
/* B27838 800B0698 8FA50030 */  lw    $a1, 0x30($sp)
/* B2783C 800B069C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27840 800B06A0 8FA6002C */   lw    $a2, 0x2c($sp)
/* B27844 800B06A4 3C018014 */  lui   $at, %hi(D_80142E70)
/* B27848 800B06A8 C4282E70 */  lwc1  $f8, %lo(D_80142E70)($at)
/* B2784C 800B06AC 100001E3 */  b     .L800B0E3C
/* B27850 800B06B0 E6080148 */   swc1  $f8, 0x148($s0)
glabel L800B06B4
/* B27854 800B06B4 240B0001 */  li    $t3, 1
/* B27858 800B06B8 3C0201EF */  lui   $v0, %hi(_vr_ALVR_staticSegmentRomStart) # $v0, 0x1ef
/* B2785C 800B06BC 3C0A01F1 */  lui   $t2, %hi(_vr_ALVR_staticSegmentRomEnd) # $t2, 0x1f1
/* B27860 800B06C0 A60B0140 */  sh    $t3, 0x140($s0)
/* B27864 800B06C4 254AB000 */  addiu $t2, %lo(_vr_ALVR_staticSegmentRomEnd) # addiu $t2, $t2, -0x5000
/* B27868 800B06C8 2442B000 */  addiu $v0, %lo(_vr_ALVR_staticSegmentRomStart) # addiu $v0, $v0, -0x5000
/* B2786C 800B06CC 01422823 */  subu  $a1, $t2, $v0
/* B27870 800B06D0 3C068014 */  lui   $a2, %hi(D_80142680) # $a2, 0x8014
/* B27874 800B06D4 24C62680 */  addiu $a2, %lo(D_80142680) # addiu $a2, $a2, 0x2680
/* B27878 800B06D8 AFA5002C */  sw    $a1, 0x2c($sp)
/* B2787C 800B06DC AFA20030 */  sw    $v0, 0x30($sp)
/* B27880 800B06E0 8FA40048 */  lw    $a0, 0x48($sp)
/* B27884 800B06E4 0C031521 */  jal   Game_Alloc
/* B27888 800B06E8 240705BA */   li    $a3, 1466
/* B2788C 800B06EC 14400007 */  bnez  $v0, .L800B070C
/* B27890 800B06F0 AE020128 */   sw    $v0, 0x128($s0)
/* B27894 800B06F4 3C048014 */  lui   $a0, %hi(D_80142690) # $a0, 0x8014
/* B27898 800B06F8 3C058014 */  lui   $a1, %hi(D_801426B8) # $a1, 0x8014
/* B2789C 800B06FC 24A526B8 */  addiu $a1, %lo(D_801426B8) # addiu $a1, $a1, 0x26b8
/* B278A0 800B0700 24842690 */  addiu $a0, %lo(D_80142690) # addiu $a0, $a0, 0x2690
/* B278A4 800B0704 0C0007FC */  jal   __assert
/* B278A8 800B0708 240605BB */   li    $a2, 1467
.L800B070C:
/* B278AC 800B070C 8E040128 */  lw    $a0, 0x128($s0)
/* B278B0 800B0710 3C078014 */  lui   $a3, %hi(D_801426C8) # $a3, 0x8014
/* B278B4 800B0714 240C05BC */  li    $t4, 1468
/* B278B8 800B0718 AFAC0010 */  sw    $t4, 0x10($sp)
/* B278BC 800B071C 24E726C8 */  addiu $a3, %lo(D_801426C8) # addiu $a3, $a3, 0x26c8
/* B278C0 800B0720 8FA50030 */  lw    $a1, 0x30($sp)
/* B278C4 800B0724 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B278C8 800B0728 8FA6002C */   lw    $a2, 0x2c($sp)
/* B278CC 800B072C 3C0301F1 */  lui   $v1, %hi(_vr_ALVR_pal_staticSegmentRomStart) # $v1, 0x1f1
/* B278D0 800B0730 3C0D01F1 */  lui   $t5, %hi(_vr_ALVR_pal_staticSegmentRomEnd) # $t5, 0x1f1
/* B278D4 800B0734 25ADB400 */  addiu $t5, %lo(_vr_ALVR_pal_staticSegmentRomEnd) # addiu $t5, $t5, -0x4c00
/* B278D8 800B0738 2463B000 */  addiu $v1, %lo(_vr_ALVR_pal_staticSegmentRomStart) # addiu $v1, $v1, -0x5000
/* B278DC 800B073C 01A32823 */  subu  $a1, $t5, $v1
/* B278E0 800B0740 3C068014 */  lui   $a2, %hi(D_801426D8) # $a2, 0x8014
/* B278E4 800B0744 24C626D8 */  addiu $a2, %lo(D_801426D8) # addiu $a2, $a2, 0x26d8
/* B278E8 800B0748 AFA5002C */  sw    $a1, 0x2c($sp)
/* B278EC 800B074C AFA30030 */  sw    $v1, 0x30($sp)
/* B278F0 800B0750 8FA40048 */  lw    $a0, 0x48($sp)
/* B278F4 800B0754 0C031521 */  jal   Game_Alloc
/* B278F8 800B0758 240705BF */   li    $a3, 1471
/* B278FC 800B075C 14400007 */  bnez  $v0, .L800B077C
/* B27900 800B0760 AE020130 */   sw    $v0, 0x130($s0)
/* B27904 800B0764 3C048014 */  lui   $a0, %hi(D_801426E8) # $a0, 0x8014
/* B27908 800B0768 3C058014 */  lui   $a1, %hi(D_80142710) # $a1, 0x8014
/* B2790C 800B076C 24A52710 */  addiu $a1, %lo(D_80142710) # addiu $a1, $a1, 0x2710
/* B27910 800B0770 248426E8 */  addiu $a0, %lo(D_801426E8) # addiu $a0, $a0, 0x26e8
/* B27914 800B0774 0C0007FC */  jal   __assert
/* B27918 800B0778 240605C0 */   li    $a2, 1472
.L800B077C:
/* B2791C 800B077C 8E040130 */  lw    $a0, 0x130($s0)
/* B27920 800B0780 3C078014 */  lui   $a3, %hi(D_80142720) # $a3, 0x8014
/* B27924 800B0784 240E05C1 */  li    $t6, 1473
/* B27928 800B0788 AFAE0010 */  sw    $t6, 0x10($sp)
/* B2792C 800B078C 24E72720 */  addiu $a3, %lo(D_80142720) # addiu $a3, $a3, 0x2720
/* B27930 800B0790 8FA50030 */  lw    $a1, 0x30($sp)
/* B27934 800B0794 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27938 800B0798 8FA6002C */   lw    $a2, 0x2c($sp)
/* B2793C 800B079C 3C018014 */  lui   $at, %hi(D_80142E74)
/* B27940 800B07A0 C42A2E74 */  lwc1  $f10, %lo(D_80142E74)($at)
/* B27944 800B07A4 100001A5 */  b     .L800B0E3C
/* B27948 800B07A8 E60A0148 */   swc1  $f10, 0x148($s0)
glabel L800B07AC
/* B2794C 800B07AC 240F0001 */  li    $t7, 1
/* B27950 800B07B0 3C0201F1 */  lui   $v0, %hi(_vr_NSVR_staticSegmentRomStart) # $v0, 0x1f1
/* B27954 800B07B4 3C1801F3 */  lui   $t8, %hi(_vr_NSVR_staticSegmentRomEnd) # $t8, 0x1f3
/* B27958 800B07B8 A60F0140 */  sh    $t7, 0x140($s0)
/* B2795C 800B07BC 2718C000 */  addiu $t8, %lo(_vr_NSVR_staticSegmentRomEnd) # addiu $t8, $t8, -0x4000
/* B27960 800B07C0 2442C000 */  addiu $v0, %lo(_vr_NSVR_staticSegmentRomStart) # addiu $v0, $v0, -0x4000
/* B27964 800B07C4 03022823 */  subu  $a1, $t8, $v0
/* B27968 800B07C8 3C068014 */  lui   $a2, %hi(D_80142730) # $a2, 0x8014
/* B2796C 800B07CC 24C62730 */  addiu $a2, %lo(D_80142730) # addiu $a2, $a2, 0x2730
/* B27970 800B07D0 AFA5002C */  sw    $a1, 0x2c($sp)
/* B27974 800B07D4 AFA20030 */  sw    $v0, 0x30($sp)
/* B27978 800B07D8 8FA40048 */  lw    $a0, 0x48($sp)
/* B2797C 800B07DC 0C031521 */  jal   Game_Alloc
/* B27980 800B07E0 240705C9 */   li    $a3, 1481
/* B27984 800B07E4 14400007 */  bnez  $v0, .L800B0804
/* B27988 800B07E8 AE020128 */   sw    $v0, 0x128($s0)
/* B2798C 800B07EC 3C048014 */  lui   $a0, %hi(D_80142740) # $a0, 0x8014
/* B27990 800B07F0 3C058014 */  lui   $a1, %hi(D_80142768) # $a1, 0x8014
/* B27994 800B07F4 24A52768 */  addiu $a1, %lo(D_80142768) # addiu $a1, $a1, 0x2768
/* B27998 800B07F8 24842740 */  addiu $a0, %lo(D_80142740) # addiu $a0, $a0, 0x2740
/* B2799C 800B07FC 0C0007FC */  jal   __assert
/* B279A0 800B0800 240605CA */   li    $a2, 1482
.L800B0804:
/* B279A4 800B0804 8E040128 */  lw    $a0, 0x128($s0)
/* B279A8 800B0808 3C078014 */  lui   $a3, %hi(D_80142778) # $a3, 0x8014
/* B279AC 800B080C 241905CB */  li    $t9, 1483
/* B279B0 800B0810 AFB90010 */  sw    $t9, 0x10($sp)
/* B279B4 800B0814 24E72778 */  addiu $a3, %lo(D_80142778) # addiu $a3, $a3, 0x2778
/* B279B8 800B0818 8FA50030 */  lw    $a1, 0x30($sp)
/* B279BC 800B081C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B279C0 800B0820 8FA6002C */   lw    $a2, 0x2c($sp)
/* B279C4 800B0824 3C0301F3 */  lui   $v1, %hi(_vr_NSVR_pal_staticSegmentRomStart) # $v1, 0x1f3
/* B279C8 800B0828 3C0901F3 */  lui   $t1, %hi(_vr_NSVR_pal_staticSegmentRomEnd) # $t1, 0x1f3
/* B279CC 800B082C 2529C400 */  addiu $t1, %lo(_vr_NSVR_pal_staticSegmentRomEnd) # addiu $t1, $t1, -0x3c00
/* B279D0 800B0830 2463C000 */  addiu $v1, %lo(_vr_NSVR_pal_staticSegmentRomStart) # addiu $v1, $v1, -0x4000
/* B279D4 800B0834 01232823 */  subu  $a1, $t1, $v1
/* B279D8 800B0838 3C068014 */  lui   $a2, %hi(D_80142788) # $a2, 0x8014
/* B279DC 800B083C 24C62788 */  addiu $a2, %lo(D_80142788) # addiu $a2, $a2, 0x2788
/* B279E0 800B0840 AFA5002C */  sw    $a1, 0x2c($sp)
/* B279E4 800B0844 AFA30030 */  sw    $v1, 0x30($sp)
/* B279E8 800B0848 8FA40048 */  lw    $a0, 0x48($sp)
/* B279EC 800B084C 0C031521 */  jal   Game_Alloc
/* B279F0 800B0850 240705CE */   li    $a3, 1486
/* B279F4 800B0854 14400007 */  bnez  $v0, .L800B0874
/* B279F8 800B0858 AE020130 */   sw    $v0, 0x130($s0)
/* B279FC 800B085C 3C048014 */  lui   $a0, %hi(D_80142798) # $a0, 0x8014
/* B27A00 800B0860 3C058014 */  lui   $a1, %hi(D_801427C0) # $a1, 0x8014
/* B27A04 800B0864 24A527C0 */  addiu $a1, %lo(D_801427C0) # addiu $a1, $a1, 0x27c0
/* B27A08 800B0868 24842798 */  addiu $a0, %lo(D_80142798) # addiu $a0, $a0, 0x2798
/* B27A0C 800B086C 0C0007FC */  jal   __assert
/* B27A10 800B0870 240605CF */   li    $a2, 1487
.L800B0874:
/* B27A14 800B0874 8E040130 */  lw    $a0, 0x130($s0)
/* B27A18 800B0878 3C078014 */  lui   $a3, %hi(D_801427D0) # $a3, 0x8014
/* B27A1C 800B087C 240B05D0 */  li    $t3, 1488
/* B27A20 800B0880 AFAB0010 */  sw    $t3, 0x10($sp)
/* B27A24 800B0884 24E727D0 */  addiu $a3, %lo(D_801427D0) # addiu $a3, $a3, 0x27d0
/* B27A28 800B0888 8FA50030 */  lw    $a1, 0x30($sp)
/* B27A2C 800B088C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27A30 800B0890 8FA6002C */   lw    $a2, 0x2c($sp)
/* B27A34 800B0894 3C018014 */  lui   $at, %hi(D_80142E78)
/* B27A38 800B0898 C4302E78 */  lwc1  $f16, %lo(D_80142E78)($at)
/* B27A3C 800B089C 10000167 */  b     .L800B0E3C
/* B27A40 800B08A0 E6100148 */   swc1  $f16, 0x148($s0)
glabel L800B08A4
/* B27A44 800B08A4 240A0001 */  li    $t2, 1
/* B27A48 800B08A8 3C0201E2 */  lui   $v0, %hi(_vr_IPVR_staticSegmentRomStart) # $v0, 0x1e2
/* B27A4C 800B08AC 3C0C01E6 */  lui   $t4, %hi(_vr_IPVR_staticSegmentRomEnd) # $t4, 0x1e6
/* B27A50 800B08B0 A60A0140 */  sh    $t2, 0x140($s0)
/* B27A54 800B08B4 258C6000 */  addiu $t4, %lo(_vr_IPVR_staticSegmentRomEnd) # addiu $t4, $t4, 0x6000
/* B27A58 800B08B8 24426000 */  addiu $v0, %lo(_vr_IPVR_staticSegmentRomStart) # addiu $v0, $v0, 0x6000
/* B27A5C 800B08BC 01822823 */  subu  $a1, $t4, $v0
/* B27A60 800B08C0 3C068014 */  lui   $a2, %hi(D_801427E0) # $a2, 0x8014
/* B27A64 800B08C4 24C627E0 */  addiu $a2, %lo(D_801427E0) # addiu $a2, $a2, 0x27e0
/* B27A68 800B08C8 AFA5002C */  sw    $a1, 0x2c($sp)
/* B27A6C 800B08CC AFA20030 */  sw    $v0, 0x30($sp)
/* B27A70 800B08D0 8FA40048 */  lw    $a0, 0x48($sp)
/* B27A74 800B08D4 0C031521 */  jal   Game_Alloc
/* B27A78 800B08D8 240705E8 */   li    $a3, 1512
/* B27A7C 800B08DC 14400007 */  bnez  $v0, .L800B08FC
/* B27A80 800B08E0 AE020128 */   sw    $v0, 0x128($s0)
/* B27A84 800B08E4 3C048014 */  lui   $a0, %hi(D_801427F0) # $a0, 0x8014
/* B27A88 800B08E8 3C058014 */  lui   $a1, %hi(D_80142818) # $a1, 0x8014
/* B27A8C 800B08EC 24A52818 */  addiu $a1, %lo(D_80142818) # addiu $a1, $a1, 0x2818
/* B27A90 800B08F0 248427F0 */  addiu $a0, %lo(D_801427F0) # addiu $a0, $a0, 0x27f0
/* B27A94 800B08F4 0C0007FC */  jal   __assert
/* B27A98 800B08F8 240605E9 */   li    $a2, 1513
.L800B08FC:
/* B27A9C 800B08FC 8E040128 */  lw    $a0, 0x128($s0)
/* B27AA0 800B0900 3C078014 */  lui   $a3, %hi(D_80142828) # $a3, 0x8014
/* B27AA4 800B0904 240D05EA */  li    $t5, 1514
/* B27AA8 800B0908 AFAD0010 */  sw    $t5, 0x10($sp)
/* B27AAC 800B090C 24E72828 */  addiu $a3, %lo(D_80142828) # addiu $a3, $a3, 0x2828
/* B27AB0 800B0910 8FA50030 */  lw    $a1, 0x30($sp)
/* B27AB4 800B0914 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27AB8 800B0918 8FA6002C */   lw    $a2, 0x2c($sp)
/* B27ABC 800B091C 3C0301E6 */  lui   $v1, %hi(_vr_IPVR_pal_staticSegmentRomStart) # $v1, 0x1e6
/* B27AC0 800B0920 3C0E01E6 */  lui   $t6, %hi(_vr_IPVR_pal_staticSegmentRomEnd) # $t6, 0x1e6
/* B27AC4 800B0924 25CE6800 */  addiu $t6, %lo(_vr_IPVR_pal_staticSegmentRomEnd) # addiu $t6, $t6, 0x6800
/* B27AC8 800B0928 24636000 */  addiu $v1, %lo(_vr_IPVR_pal_staticSegmentRomStart) # addiu $v1, $v1, 0x6000
/* B27ACC 800B092C 01C32823 */  subu  $a1, $t6, $v1
/* B27AD0 800B0930 3C068014 */  lui   $a2, %hi(D_80142838) # $a2, 0x8014
/* B27AD4 800B0934 24C62838 */  addiu $a2, %lo(D_80142838) # addiu $a2, $a2, 0x2838
/* B27AD8 800B0938 AFA5002C */  sw    $a1, 0x2c($sp)
/* B27ADC 800B093C AFA30030 */  sw    $v1, 0x30($sp)
/* B27AE0 800B0940 8FA40048 */  lw    $a0, 0x48($sp)
/* B27AE4 800B0944 0C031521 */  jal   Game_Alloc
/* B27AE8 800B0948 240705ED */   li    $a3, 1517
/* B27AEC 800B094C 14400007 */  bnez  $v0, .L800B096C
/* B27AF0 800B0950 AE020130 */   sw    $v0, 0x130($s0)
/* B27AF4 800B0954 3C048014 */  lui   $a0, %hi(D_80142848) # $a0, 0x8014
/* B27AF8 800B0958 3C058014 */  lui   $a1, %hi(D_80142870) # $a1, 0x8014
/* B27AFC 800B095C 24A52870 */  addiu $a1, %lo(D_80142870) # addiu $a1, $a1, 0x2870
/* B27B00 800B0960 24842848 */  addiu $a0, %lo(D_80142848) # addiu $a0, $a0, 0x2848
/* B27B04 800B0964 0C0007FC */  jal   __assert
/* B27B08 800B0968 240605EE */   li    $a2, 1518
.L800B096C:
/* B27B0C 800B096C 8E040130 */  lw    $a0, 0x130($s0)
/* B27B10 800B0970 3C078014 */  lui   $a3, %hi(D_80142880) # $a3, 0x8014
/* B27B14 800B0974 240F05EF */  li    $t7, 1519
/* B27B18 800B0978 AFAF0010 */  sw    $t7, 0x10($sp)
/* B27B1C 800B097C 24E72880 */  addiu $a3, %lo(D_80142880) # addiu $a3, $a3, 0x2880
/* B27B20 800B0980 8FA50030 */  lw    $a1, 0x30($sp)
/* B27B24 800B0984 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27B28 800B0988 8FA6002C */   lw    $a2, 0x2c($sp)
/* B27B2C 800B098C 1000012C */  b     .L800B0E40
/* B27B30 800B0990 8FBF0024 */   lw    $ra, 0x24($sp)
glabel L800B0994
/* B27B34 800B0994 24180001 */  li    $t8, 1
/* B27B38 800B0998 3C0201F3 */  lui   $v0, %hi(_vr_LBVR_staticSegmentRomStart) # $v0, 0x1f3
/* B27B3C 800B099C 3C1901F7 */  lui   $t9, %hi(_vr_LBVR_staticSegmentRomEnd) # $t9, 0x1f7
/* B27B40 800B09A0 A6180140 */  sh    $t8, 0x140($s0)
/* B27B44 800B09A4 2739D000 */  addiu $t9, %lo(_vr_LBVR_staticSegmentRomEnd) # addiu $t9, $t9, -0x3000
/* B27B48 800B09A8 2442D000 */  addiu $v0, %lo(_vr_LBVR_staticSegmentRomStart) # addiu $v0, $v0, -0x3000
/* B27B4C 800B09AC 03222823 */  subu  $a1, $t9, $v0
/* B27B50 800B09B0 3C068014 */  lui   $a2, %hi(D_80142890) # $a2, 0x8014
/* B27B54 800B09B4 24C62890 */  addiu $a2, %lo(D_80142890) # addiu $a2, $a2, 0x2890
/* B27B58 800B09B8 AFA5002C */  sw    $a1, 0x2c($sp)
/* B27B5C 800B09BC AFA20030 */  sw    $v0, 0x30($sp)
/* B27B60 800B09C0 8FA40048 */  lw    $a0, 0x48($sp)
/* B27B64 800B09C4 0C031521 */  jal   Game_Alloc
/* B27B68 800B09C8 240705F6 */   li    $a3, 1526
/* B27B6C 800B09CC 14400007 */  bnez  $v0, .L800B09EC
/* B27B70 800B09D0 AE020128 */   sw    $v0, 0x128($s0)
/* B27B74 800B09D4 3C048014 */  lui   $a0, %hi(D_801428A0) # $a0, 0x8014
/* B27B78 800B09D8 3C058014 */  lui   $a1, %hi(D_801428C8) # $a1, 0x8014
/* B27B7C 800B09DC 24A528C8 */  addiu $a1, %lo(D_801428C8) # addiu $a1, $a1, 0x28c8
/* B27B80 800B09E0 248428A0 */  addiu $a0, %lo(D_801428A0) # addiu $a0, $a0, 0x28a0
/* B27B84 800B09E4 0C0007FC */  jal   __assert
/* B27B88 800B09E8 240605F7 */   li    $a2, 1527
.L800B09EC:
/* B27B8C 800B09EC 8E040128 */  lw    $a0, 0x128($s0)
/* B27B90 800B09F0 3C078014 */  lui   $a3, %hi(D_801428D8) # $a3, 0x8014
/* B27B94 800B09F4 240905F8 */  li    $t1, 1528
/* B27B98 800B09F8 AFA90010 */  sw    $t1, 0x10($sp)
/* B27B9C 800B09FC 24E728D8 */  addiu $a3, %lo(D_801428D8) # addiu $a3, $a3, 0x28d8
/* B27BA0 800B0A00 8FA50030 */  lw    $a1, 0x30($sp)
/* B27BA4 800B0A04 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27BA8 800B0A08 8FA6002C */   lw    $a2, 0x2c($sp)
/* B27BAC 800B0A0C 3C0301F7 */  lui   $v1, %hi(_vr_LBVR_pal_staticSegmentRomStart) # $v1, 0x1f7
/* B27BB0 800B0A10 3C0B01F7 */  lui   $t3, %hi(_vr_LBVR_pal_staticSegmentRomEnd) # $t3, 0x1f7
/* B27BB4 800B0A14 256BD800 */  addiu $t3, %lo(_vr_LBVR_pal_staticSegmentRomEnd) # addiu $t3, $t3, -0x2800
/* B27BB8 800B0A18 2463D000 */  addiu $v1, %lo(_vr_LBVR_pal_staticSegmentRomStart) # addiu $v1, $v1, -0x3000
/* B27BBC 800B0A1C 01632823 */  subu  $a1, $t3, $v1
/* B27BC0 800B0A20 3C068014 */  lui   $a2, %hi(D_801428E8) # $a2, 0x8014
/* B27BC4 800B0A24 24C628E8 */  addiu $a2, %lo(D_801428E8) # addiu $a2, $a2, 0x28e8
/* B27BC8 800B0A28 AFA5002C */  sw    $a1, 0x2c($sp)
/* B27BCC 800B0A2C AFA30030 */  sw    $v1, 0x30($sp)
/* B27BD0 800B0A30 8FA40048 */  lw    $a0, 0x48($sp)
/* B27BD4 800B0A34 0C031521 */  jal   Game_Alloc
/* B27BD8 800B0A38 240705FB */   li    $a3, 1531
/* B27BDC 800B0A3C 14400007 */  bnez  $v0, .L800B0A5C
/* B27BE0 800B0A40 AE020130 */   sw    $v0, 0x130($s0)
/* B27BE4 800B0A44 3C048014 */  lui   $a0, %hi(D_801428F8) # $a0, 0x8014
/* B27BE8 800B0A48 3C058014 */  lui   $a1, %hi(D_80142920) # $a1, 0x8014
/* B27BEC 800B0A4C 24A52920 */  addiu $a1, %lo(D_80142920) # addiu $a1, $a1, 0x2920
/* B27BF0 800B0A50 248428F8 */  addiu $a0, %lo(D_801428F8) # addiu $a0, $a0, 0x28f8
/* B27BF4 800B0A54 0C0007FC */  jal   __assert
/* B27BF8 800B0A58 240605FC */   li    $a2, 1532
.L800B0A5C:
/* B27BFC 800B0A5C 8E040130 */  lw    $a0, 0x130($s0)
/* B27C00 800B0A60 3C078014 */  lui   $a3, %hi(D_80142930) # $a3, 0x8014
/* B27C04 800B0A64 240A05FD */  li    $t2, 1533
/* B27C08 800B0A68 AFAA0010 */  sw    $t2, 0x10($sp)
/* B27C0C 800B0A6C 24E72930 */  addiu $a3, %lo(D_80142930) # addiu $a3, $a3, 0x2930
/* B27C10 800B0A70 8FA50030 */  lw    $a1, 0x30($sp)
/* B27C14 800B0A74 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27C18 800B0A78 8FA6002C */   lw    $a2, 0x2c($sp)
/* B27C1C 800B0A7C 100000F0 */  b     .L800B0E40
/* B27C20 800B0A80 8FBF0024 */   lw    $ra, 0x24($sp)
glabel L800B0A84
/* B27C24 800B0A84 240C0002 */  li    $t4, 2
/* B27C28 800B0A88 3C0201F7 */  lui   $v0, %hi(_vr_TTVR_staticSegmentRomStart) # $v0, 0x1f7
/* B27C2C 800B0A8C 3C0D01FA */  lui   $t5, %hi(_vr_TTVR_staticSegmentRomEnd) # $t5, 0x1fa
/* B27C30 800B0A90 A60C0140 */  sh    $t4, 0x140($s0)
/* B27C34 800B0A94 25ADE000 */  addiu $t5, %lo(_vr_TTVR_staticSegmentRomEnd) # addiu $t5, $t5, -0x2000
/* B27C38 800B0A98 2442E000 */  addiu $v0, %lo(_vr_TTVR_staticSegmentRomStart) # addiu $v0, $v0, -0x2000
/* B27C3C 800B0A9C 01A22823 */  subu  $a1, $t5, $v0
/* B27C40 800B0AA0 3C068014 */  lui   $a2, %hi(D_80142940) # $a2, 0x8014
/* B27C44 800B0AA4 24C62940 */  addiu $a2, %lo(D_80142940) # addiu $a2, $a2, 0x2940
/* B27C48 800B0AA8 AFA5002C */  sw    $a1, 0x2c($sp)
/* B27C4C 800B0AAC AFA20030 */  sw    $v0, 0x30($sp)
/* B27C50 800B0AB0 8FA40048 */  lw    $a0, 0x48($sp)
/* B27C54 800B0AB4 0C031521 */  jal   Game_Alloc
/* B27C58 800B0AB8 24070604 */   li    $a3, 1540
/* B27C5C 800B0ABC 14400007 */  bnez  $v0, .L800B0ADC
/* B27C60 800B0AC0 AE020128 */   sw    $v0, 0x128($s0)
/* B27C64 800B0AC4 3C048014 */  lui   $a0, %hi(D_80142950) # $a0, 0x8014
/* B27C68 800B0AC8 3C058014 */  lui   $a1, %hi(D_80142978) # $a1, 0x8014
/* B27C6C 800B0ACC 24A52978 */  addiu $a1, %lo(D_80142978) # addiu $a1, $a1, 0x2978
/* B27C70 800B0AD0 24842950 */  addiu $a0, %lo(D_80142950) # addiu $a0, $a0, 0x2950
/* B27C74 800B0AD4 0C0007FC */  jal   __assert
/* B27C78 800B0AD8 24060605 */   li    $a2, 1541
.L800B0ADC:
/* B27C7C 800B0ADC 8E040128 */  lw    $a0, 0x128($s0)
/* B27C80 800B0AE0 3C078014 */  lui   $a3, %hi(D_80142988) # $a3, 0x8014
/* B27C84 800B0AE4 240E0606 */  li    $t6, 1542
/* B27C88 800B0AE8 AFAE0010 */  sw    $t6, 0x10($sp)
/* B27C8C 800B0AEC 24E72988 */  addiu $a3, %lo(D_80142988) # addiu $a3, $a3, 0x2988
/* B27C90 800B0AF0 8FA50030 */  lw    $a1, 0x30($sp)
/* B27C94 800B0AF4 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27C98 800B0AF8 8FA6002C */   lw    $a2, 0x2c($sp)
/* B27C9C 800B0AFC 3C0301FA */  lui   $v1, %hi(_vr_TTVR_pal_staticSegmentRomStart) # $v1, 0x1fa
/* B27CA0 800B0B00 3C0F01FA */  lui   $t7, %hi(_vr_TTVR_pal_staticSegmentRomEnd) # $t7, 0x1fa
/* B27CA4 800B0B04 25EFE600 */  addiu $t7, %lo(_vr_TTVR_pal_staticSegmentRomEnd) # addiu $t7, $t7, -0x1a00
/* B27CA8 800B0B08 2463E000 */  addiu $v1, %lo(_vr_TTVR_pal_staticSegmentRomStart) # addiu $v1, $v1, -0x2000
/* B27CAC 800B0B0C 01E32823 */  subu  $a1, $t7, $v1
/* B27CB0 800B0B10 3C068014 */  lui   $a2, %hi(D_80142998) # $a2, 0x8014
/* B27CB4 800B0B14 24C62998 */  addiu $a2, %lo(D_80142998) # addiu $a2, $a2, 0x2998
/* B27CB8 800B0B18 AFA5002C */  sw    $a1, 0x2c($sp)
/* B27CBC 800B0B1C AFA30030 */  sw    $v1, 0x30($sp)
/* B27CC0 800B0B20 8FA40048 */  lw    $a0, 0x48($sp)
/* B27CC4 800B0B24 0C031521 */  jal   Game_Alloc
/* B27CC8 800B0B28 24070609 */   li    $a3, 1545
/* B27CCC 800B0B2C 14400007 */  bnez  $v0, .L800B0B4C
/* B27CD0 800B0B30 AE020130 */   sw    $v0, 0x130($s0)
/* B27CD4 800B0B34 3C048014 */  lui   $a0, %hi(D_801429A8) # $a0, 0x8014
/* B27CD8 800B0B38 3C058014 */  lui   $a1, %hi(D_801429D0) # $a1, 0x8014
/* B27CDC 800B0B3C 24A529D0 */  addiu $a1, %lo(D_801429D0) # addiu $a1, $a1, 0x29d0
/* B27CE0 800B0B40 248429A8 */  addiu $a0, %lo(D_801429A8) # addiu $a0, $a0, 0x29a8
/* B27CE4 800B0B44 0C0007FC */  jal   __assert
/* B27CE8 800B0B48 2406060A */   li    $a2, 1546
.L800B0B4C:
/* B27CEC 800B0B4C 8E040130 */  lw    $a0, 0x130($s0)
/* B27CF0 800B0B50 3C078014 */  lui   $a3, %hi(D_801429E0) # $a3, 0x8014
/* B27CF4 800B0B54 2418060B */  li    $t8, 1547
/* B27CF8 800B0B58 AFB80010 */  sw    $t8, 0x10($sp)
/* B27CFC 800B0B5C 24E729E0 */  addiu $a3, %lo(D_801429E0) # addiu $a3, $a3, 0x29e0
/* B27D00 800B0B60 8FA50030 */  lw    $a1, 0x30($sp)
/* B27D04 800B0B64 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27D08 800B0B68 8FA6002C */   lw    $a2, 0x2c($sp)
/* B27D0C 800B0B6C 100000B4 */  b     .L800B0E40
/* B27D10 800B0B70 8FBF0024 */   lw    $ra, 0x24($sp)
glabel L800B0B74
/* B27D14 800B0B74 24190002 */  li    $t9, 2
/* B27D18 800B0B78 3C0201CF */  lui   $v0, %hi(_vr_K4VR_staticSegmentRomStart) # $v0, 0x1cf
/* B27D1C 800B0B7C 3C0901D2 */  lui   $t1, %hi(_vr_K4VR_staticSegmentRomEnd) # $t1, 0x1d2
/* B27D20 800B0B80 A6190140 */  sh    $t9, 0x140($s0)
/* B27D24 800B0B84 25290000 */  addiu $t1, %lo(_vr_K4VR_staticSegmentRomEnd) # addiu $t1, $t1, 0x600
/* B27D28 800B0B88 24420000 */  addiu $v0, %lo(_vr_K4VR_staticSegmentRomStart) # addiu $v0, $v0, 0
/* B27D2C 800B0B8C 01222823 */  subu  $a1, $t1, $v0
/* B27D30 800B0B90 3C068014 */  lui   $a2, %hi(D_801429F0) # $a2, 0x8014
/* B27D34 800B0B94 24C629F0 */  addiu $a2, %lo(D_801429F0) # addiu $a2, $a2, 0x29f0
/* B27D38 800B0B98 AFA5002C */  sw    $a1, 0x2c($sp)
/* B27D3C 800B0B9C AFA20030 */  sw    $v0, 0x30($sp)
/* B27D40 800B0BA0 8FA40048 */  lw    $a0, 0x48($sp)
/* B27D44 800B0BA4 0C031521 */  jal   Game_Alloc
/* B27D48 800B0BA8 24070618 */   li    $a3, 1560
/* B27D4C 800B0BAC 14400007 */  bnez  $v0, .L800B0BCC
/* B27D50 800B0BB0 AE020128 */   sw    $v0, 0x128($s0)
/* B27D54 800B0BB4 3C048014 */  lui   $a0, %hi(D_80142A00) # $a0, 0x8014
/* B27D58 800B0BB8 3C058014 */  lui   $a1, %hi(D_80142A28) # $a1, 0x8014
/* B27D5C 800B0BBC 24A52A28 */  addiu $a1, %lo(D_80142A28) # addiu $a1, $a1, 0x2a28
/* B27D60 800B0BC0 24842A00 */  addiu $a0, %lo(D_80142A00) # addiu $a0, $a0, 0x2a00
/* B27D64 800B0BC4 0C0007FC */  jal   __assert
/* B27D68 800B0BC8 24060619 */   li    $a2, 1561
.L800B0BCC:
/* B27D6C 800B0BCC 8E040128 */  lw    $a0, 0x128($s0)
/* B27D70 800B0BD0 3C078014 */  lui   $a3, %hi(D_80142A38) # $a3, 0x8014
/* B27D74 800B0BD4 240B061A */  li    $t3, 1562
/* B27D78 800B0BD8 AFAB0010 */  sw    $t3, 0x10($sp)
/* B27D7C 800B0BDC 24E72A38 */  addiu $a3, %lo(D_80142A38) # addiu $a3, $a3, 0x2a38
/* B27D80 800B0BE0 8FA50030 */  lw    $a1, 0x30($sp)
/* B27D84 800B0BE4 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27D88 800B0BE8 8FA6002C */   lw    $a2, 0x2c($sp)
/* B27D8C 800B0BEC 3C0301D2 */  lui   $v1, %hi(_vr_K4VR_pal_staticSegmentRomStart) # $v1, 0x1d2
/* B27D90 800B0BF0 3C0A01D2 */  lui   $t2, %hi(_vr_K4VR_pal_staticSegmentRomEnd) # $t2, 0x1d2
/* B27D94 800B0BF4 254A0600 */  addiu $t2, %lo(_vr_K4VR_pal_staticSegmentRomEnd) # addiu $t2, $t2, 0x600
/* B27D98 800B0BF8 24630000 */  addiu $v1, %lo(_vr_K4VR_pal_staticSegmentRomStart) # addiu $v1, $v1, 0
/* B27D9C 800B0BFC 01432823 */  subu  $a1, $t2, $v1
/* B27DA0 800B0C00 3C068014 */  lui   $a2, %hi(D_80142A48) # $a2, 0x8014
/* B27DA4 800B0C04 24C62A48 */  addiu $a2, %lo(D_80142A48) # addiu $a2, $a2, 0x2a48
/* B27DA8 800B0C08 AFA5002C */  sw    $a1, 0x2c($sp)
/* B27DAC 800B0C0C AFA30030 */  sw    $v1, 0x30($sp)
/* B27DB0 800B0C10 8FA40048 */  lw    $a0, 0x48($sp)
/* B27DB4 800B0C14 0C031521 */  jal   Game_Alloc
/* B27DB8 800B0C18 2407061D */   li    $a3, 1565
/* B27DBC 800B0C1C 14400007 */  bnez  $v0, .L800B0C3C
/* B27DC0 800B0C20 AE020130 */   sw    $v0, 0x130($s0)
/* B27DC4 800B0C24 3C048014 */  lui   $a0, %hi(D_80142A58) # $a0, 0x8014
/* B27DC8 800B0C28 3C058014 */  lui   $a1, %hi(D_80142A80) # $a1, 0x8014
/* B27DCC 800B0C2C 24A52A80 */  addiu $a1, %lo(D_80142A80) # addiu $a1, $a1, 0x2a80
/* B27DD0 800B0C30 24842A58 */  addiu $a0, %lo(D_80142A58) # addiu $a0, $a0, 0x2a58
/* B27DD4 800B0C34 0C0007FC */  jal   __assert
/* B27DD8 800B0C38 2406061E */   li    $a2, 1566
.L800B0C3C:
/* B27DDC 800B0C3C 8E040130 */  lw    $a0, 0x130($s0)
/* B27DE0 800B0C40 3C078014 */  lui   $a3, %hi(D_80142A90) # $a3, 0x8014
/* B27DE4 800B0C44 240C061F */  li    $t4, 1567
/* B27DE8 800B0C48 AFAC0010 */  sw    $t4, 0x10($sp)
/* B27DEC 800B0C4C 24E72A90 */  addiu $a3, %lo(D_80142A90) # addiu $a3, $a3, 0x2a90
/* B27DF0 800B0C50 8FA50030 */  lw    $a1, 0x30($sp)
/* B27DF4 800B0C54 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27DF8 800B0C58 8FA6002C */   lw    $a2, 0x2c($sp)
/* B27DFC 800B0C5C 10000078 */  b     .L800B0E40
/* B27E00 800B0C60 8FBF0024 */   lw    $ra, 0x24($sp)
glabel L800B0C64
/* B27E04 800B0C64 240D0002 */  li    $t5, 2
/* B27E08 800B0C68 3C0201D2 */  lui   $v0, %hi(_vr_K5VR_staticSegmentRomStart) # $v0, 0x1d2
/* B27E0C 800B0C6C 3C0E01D5 */  lui   $t6, %hi(_vr_K5VR_staticSegmentRomEnd) # $t6, 0x1d5
/* B27E10 800B0C70 A60D0140 */  sh    $t5, 0x140($s0)
/* B27E14 800B0C74 25CE1000 */  addiu $t6, %lo(_vr_K5VR_staticSegmentRomEnd) # addiu $t6, $t6, 0x1000
/* B27E18 800B0C78 24421000 */  addiu $v0, %lo(_vr_K5VR_staticSegmentRomStart) # addiu $v0, $v0, 0x1000
/* B27E1C 800B0C7C 01C22823 */  subu  $a1, $t6, $v0
/* B27E20 800B0C80 3C068014 */  lui   $a2, %hi(D_80142AA0) # $a2, 0x8014
/* B27E24 800B0C84 24C62AA0 */  addiu $a2, %lo(D_80142AA0) # addiu $a2, $a2, 0x2aa0
/* B27E28 800B0C88 AFA5002C */  sw    $a1, 0x2c($sp)
/* B27E2C 800B0C8C AFA20030 */  sw    $v0, 0x30($sp)
/* B27E30 800B0C90 8FA40048 */  lw    $a0, 0x48($sp)
/* B27E34 800B0C94 0C031521 */  jal   Game_Alloc
/* B27E38 800B0C98 24070626 */   li    $a3, 1574
/* B27E3C 800B0C9C 14400007 */  bnez  $v0, .L800B0CBC
/* B27E40 800B0CA0 AE020128 */   sw    $v0, 0x128($s0)
/* B27E44 800B0CA4 3C048014 */  lui   $a0, %hi(D_80142AB0) # $a0, 0x8014
/* B27E48 800B0CA8 3C058014 */  lui   $a1, %hi(D_80142AD8) # $a1, 0x8014
/* B27E4C 800B0CAC 24A52AD8 */  addiu $a1, %lo(D_80142AD8) # addiu $a1, $a1, 0x2ad8
/* B27E50 800B0CB0 24842AB0 */  addiu $a0, %lo(D_80142AB0) # addiu $a0, $a0, 0x2ab0
/* B27E54 800B0CB4 0C0007FC */  jal   __assert
/* B27E58 800B0CB8 24060627 */   li    $a2, 1575
.L800B0CBC:
/* B27E5C 800B0CBC 8E040128 */  lw    $a0, 0x128($s0)
/* B27E60 800B0CC0 3C078014 */  lui   $a3, %hi(D_80142AE8) # $a3, 0x8014
/* B27E64 800B0CC4 240F0628 */  li    $t7, 1576
/* B27E68 800B0CC8 AFAF0010 */  sw    $t7, 0x10($sp)
/* B27E6C 800B0CCC 24E72AE8 */  addiu $a3, %lo(D_80142AE8) # addiu $a3, $a3, 0x2ae8
/* B27E70 800B0CD0 8FA50030 */  lw    $a1, 0x30($sp)
/* B27E74 800B0CD4 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27E78 800B0CD8 8FA6002C */   lw    $a2, 0x2c($sp)
/* B27E7C 800B0CDC 3C0301D5 */  lui   $v1, %hi(_vr_K5VR_pal_staticSegmentRomStart) # $v1, 0x1d5
/* B27E80 800B0CE0 3C1801D5 */  lui   $t8, %hi(_vr_K5VR_pal_staticSegmentRomEnd) # $t8, 0x1d5
/* B27E84 800B0CE4 27181600 */  addiu $t8, %lo(_vr_K5VR_pal_staticSegmentRomEnd) # addiu $t8, $t8, 0x1600
/* B27E88 800B0CE8 24631000 */  addiu $v1, %lo(_vr_K5VR_pal_staticSegmentRomStart) # addiu $v1, $v1, 0x1000
/* B27E8C 800B0CEC 03032823 */  subu  $a1, $t8, $v1
/* B27E90 800B0CF0 3C068014 */  lui   $a2, %hi(D_80142AF8) # $a2, 0x8014
/* B27E94 800B0CF4 24C62AF8 */  addiu $a2, %lo(D_80142AF8) # addiu $a2, $a2, 0x2af8
/* B27E98 800B0CF8 AFA5002C */  sw    $a1, 0x2c($sp)
/* B27E9C 800B0CFC AFA30030 */  sw    $v1, 0x30($sp)
/* B27EA0 800B0D00 8FA40048 */  lw    $a0, 0x48($sp)
/* B27EA4 800B0D04 0C031521 */  jal   Game_Alloc
/* B27EA8 800B0D08 2407062B */   li    $a3, 1579
/* B27EAC 800B0D0C 14400007 */  bnez  $v0, .L800B0D2C
/* B27EB0 800B0D10 AE020130 */   sw    $v0, 0x130($s0)
/* B27EB4 800B0D14 3C048014 */  lui   $a0, %hi(D_80142B08) # $a0, 0x8014
/* B27EB8 800B0D18 3C058014 */  lui   $a1, %hi(D_80142B30) # $a1, 0x8014
/* B27EBC 800B0D1C 24A52B30 */  addiu $a1, %lo(D_80142B30) # addiu $a1, $a1, 0x2b30
/* B27EC0 800B0D20 24842B08 */  addiu $a0, %lo(D_80142B08) # addiu $a0, $a0, 0x2b08
/* B27EC4 800B0D24 0C0007FC */  jal   __assert
/* B27EC8 800B0D28 2406062C */   li    $a2, 1580
.L800B0D2C:
/* B27ECC 800B0D2C 8E040130 */  lw    $a0, 0x130($s0)
/* B27ED0 800B0D30 3C078014 */  lui   $a3, %hi(D_80142B40) # $a3, 0x8014
/* B27ED4 800B0D34 2419062D */  li    $t9, 1581
/* B27ED8 800B0D38 AFB90010 */  sw    $t9, 0x10($sp)
/* B27EDC 800B0D3C 24E72B40 */  addiu $a3, %lo(D_80142B40) # addiu $a3, $a3, 0x2b40
/* B27EE0 800B0D40 8FA50030 */  lw    $a1, 0x30($sp)
/* B27EE4 800B0D44 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27EE8 800B0D48 8FA6002C */   lw    $a2, 0x2c($sp)
/* B27EEC 800B0D4C 1000003C */  b     .L800B0E40
/* B27EF0 800B0D50 8FBF0024 */   lw    $ra, 0x24($sp)
glabel L800B0D54
/* B27EF4 800B0D54 24090002 */  li    $t1, 2
/* B27EF8 800B0D58 3C0201DF */  lui   $v0, %hi(_vr_KR3VR_staticSegmentRomStart) # $v0, 0x1df
/* B27EFC 800B0D5C 3C0B01E2 */  lui   $t3, %hi(_vr_KR3VR_staticSegmentRomEnd) # $t3, 0x1e2
/* B27F00 800B0D60 A6090140 */  sh    $t1, 0x140($s0)
/* B27F04 800B0D64 256B5000 */  addiu $t3, %lo(_vr_KR3VR_staticSegmentRomEnd) # addiu $t3, $t3, 0x5000
/* B27F08 800B0D68 24425000 */  addiu $v0, %lo(_vr_KR3VR_staticSegmentRomStart) # addiu $v0, $v0, 0x5000
/* B27F0C 800B0D6C 01622823 */  subu  $a1, $t3, $v0
/* B27F10 800B0D70 3C068014 */  lui   $a2, %hi(D_80142B50) # $a2, 0x8014
/* B27F14 800B0D74 24C62B50 */  addiu $a2, %lo(D_80142B50) # addiu $a2, $a2, 0x2b50
/* B27F18 800B0D78 AFA5002C */  sw    $a1, 0x2c($sp)
/* B27F1C 800B0D7C AFA20030 */  sw    $v0, 0x30($sp)
/* B27F20 800B0D80 8FA40048 */  lw    $a0, 0x48($sp)
/* B27F24 800B0D84 0C031521 */  jal   Game_Alloc
/* B27F28 800B0D88 24070634 */   li    $a3, 1588
/* B27F2C 800B0D8C 14400007 */  bnez  $v0, .L800B0DAC
/* B27F30 800B0D90 AE020128 */   sw    $v0, 0x128($s0)
/* B27F34 800B0D94 3C048014 */  lui   $a0, %hi(D_80142B60) # $a0, 0x8014
/* B27F38 800B0D98 3C058014 */  lui   $a1, %hi(D_80142B88) # $a1, 0x8014
/* B27F3C 800B0D9C 24A52B88 */  addiu $a1, %lo(D_80142B88) # addiu $a1, $a1, 0x2b88
/* B27F40 800B0DA0 24842B60 */  addiu $a0, %lo(D_80142B60) # addiu $a0, $a0, 0x2b60
/* B27F44 800B0DA4 0C0007FC */  jal   __assert
/* B27F48 800B0DA8 24060635 */   li    $a2, 1589
.L800B0DAC:
/* B27F4C 800B0DAC 8E040128 */  lw    $a0, 0x128($s0)
/* B27F50 800B0DB0 3C078014 */  lui   $a3, %hi(D_80142B98) # $a3, 0x8014
/* B27F54 800B0DB4 240A0636 */  li    $t2, 1590
/* B27F58 800B0DB8 AFAA0010 */  sw    $t2, 0x10($sp)
/* B27F5C 800B0DBC 24E72B98 */  addiu $a3, %lo(D_80142B98) # addiu $a3, $a3, 0x2b98
/* B27F60 800B0DC0 8FA50030 */  lw    $a1, 0x30($sp)
/* B27F64 800B0DC4 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27F68 800B0DC8 8FA6002C */   lw    $a2, 0x2c($sp)
/* B27F6C 800B0DCC 3C0301E2 */  lui   $v1, %hi(_vr_KR3VR_pal_staticSegmentRomStart) # $v1, 0x1e2
/* B27F70 800B0DD0 3C0C01E2 */  lui   $t4, %hi(_vr_KR3VR_pal_staticSegmentRomEnd) # $t4, 0x1e2
/* B27F74 800B0DD4 258C5600 */  addiu $t4, %lo(_vr_KR3VR_pal_staticSegmentRomEnd) # addiu $t4, $t4, 0x5600
/* B27F78 800B0DD8 24635000 */  addiu $v1, %lo(_vr_KR3VR_pal_staticSegmentRomStart) # addiu $v1, $v1, 0x5000
/* B27F7C 800B0DDC 01832823 */  subu  $a1, $t4, $v1
/* B27F80 800B0DE0 3C068014 */  lui   $a2, %hi(D_80142BA8) # $a2, 0x8014
/* B27F84 800B0DE4 24C62BA8 */  addiu $a2, %lo(D_80142BA8) # addiu $a2, $a2, 0x2ba8
/* B27F88 800B0DE8 AFA5002C */  sw    $a1, 0x2c($sp)
/* B27F8C 800B0DEC AFA30030 */  sw    $v1, 0x30($sp)
/* B27F90 800B0DF0 8FA40048 */  lw    $a0, 0x48($sp)
/* B27F94 800B0DF4 0C031521 */  jal   Game_Alloc
/* B27F98 800B0DF8 24070639 */   li    $a3, 1593
/* B27F9C 800B0DFC 14400007 */  bnez  $v0, .L800B0E1C
/* B27FA0 800B0E00 AE020130 */   sw    $v0, 0x130($s0)
/* B27FA4 800B0E04 3C048014 */  lui   $a0, %hi(D_80142BB8) # $a0, 0x8014
/* B27FA8 800B0E08 3C058014 */  lui   $a1, %hi(D_80142BE0) # $a1, 0x8014
/* B27FAC 800B0E0C 24A52BE0 */  addiu $a1, %lo(D_80142BE0) # addiu $a1, $a1, 0x2be0
/* B27FB0 800B0E10 24842BB8 */  addiu $a0, %lo(D_80142BB8) # addiu $a0, $a0, 0x2bb8
/* B27FB4 800B0E14 0C0007FC */  jal   __assert
/* B27FB8 800B0E18 2406063A */   li    $a2, 1594
.L800B0E1C:
/* B27FBC 800B0E1C 8E040130 */  lw    $a0, 0x130($s0)
/* B27FC0 800B0E20 3C078014 */  lui   $a3, %hi(D_80142BF0) # $a3, 0x8014
/* B27FC4 800B0E24 240D063B */  li    $t5, 1595
/* B27FC8 800B0E28 AFAD0010 */  sw    $t5, 0x10($sp)
/* B27FCC 800B0E2C 24E72BF0 */  addiu $a3, %lo(D_80142BF0) # addiu $a3, $a3, 0x2bf0
/* B27FD0 800B0E30 8FA50030 */  lw    $a1, 0x30($sp)
/* B27FD4 800B0E34 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B27FD8 800B0E38 8FA6002C */   lw    $a2, 0x2c($sp)
glabel L800B0E3C
.L800B0E3C:
/* B27FDC 800B0E3C 8FBF0024 */  lw    $ra, 0x24($sp)
.L800B0E40:
/* B27FE0 800B0E40 8FB00020 */  lw    $s0, 0x20($sp)
/* B27FE4 800B0E44 27BD0048 */  addiu $sp, $sp, 0x48
/* B27FE8 800B0E48 03E00008 */  jr    $ra
/* B27FEC 800B0E4C 00000000 */   nop   

glabel func_800B0E50
/* B27FF0 800B0E50 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B27FF4 800B0E54 44800000 */  mtc1  $zero, $f0
/* B27FF8 800B0E58 AFBF001C */  sw    $ra, 0x1c($sp)
/* B27FFC 800B0E5C AFB00018 */  sw    $s0, 0x18($sp)
/* B28000 800B0E60 AFA40020 */  sw    $a0, 0x20($sp)
/* B28004 800B0E64 AFA60028 */  sw    $a2, 0x28($sp)
/* B28008 800B0E68 A4A00140 */  sh    $zero, 0x140($a1)
/* B2800C 800B0E6C E4A00144 */  swc1  $f0, 0x144($a1)
/* B28010 800B0E70 E4A00148 */  swc1  $f0, 0x148($a1)
/* B28014 800B0E74 E4A0014C */  swc1  $f0, 0x14c($a1)
/* B28018 800B0E78 00A08025 */  move  $s0, $a1
/* B2801C 800B0E7C 87A6002A */  lh    $a2, 0x2a($sp)
/* B28020 800B0E80 0C02BC86 */  jal   func_800AF218
/* B28024 800B0E84 8FA40020 */   lw    $a0, 0x20($sp)
/* B28028 800B0E88 3C048014 */  lui   $a0, %hi(D_80142C00) # $a0, 0x8014
/* B2802C 800B0E8C 24842C00 */  addiu $a0, %lo(D_80142C00) # addiu $a0, $a0, 0x2c00
/* B28030 800B0E90 0C00084C */  jal   osSyncPrintf
/* B28034 800B0E94 87A5002A */   lh    $a1, 0x2a($sp)
/* B28038 800B0E98 87AE002A */  lh    $t6, 0x2a($sp)
/* B2803C 800B0E9C 3C048014 */  lui   $a0, %hi(D_80142C6C) # $a0, 0x8014
/* B28040 800B0EA0 51C0005F */  beql  $t6, $zero, .L800B1020
/* B28044 800B0EA4 8FBF001C */   lw    $ra, 0x1c($sp)
/* B28048 800B0EA8 0C00084C */  jal   osSyncPrintf
/* B2804C 800B0EAC 24842C6C */   addiu $a0, %lo(D_80142C6C) # addiu $a0, $a0, 0x2c6c
/* B28050 800B0EB0 860F0140 */  lh    $t7, 0x140($s0)
/* B28054 800B0EB4 8FA40020 */  lw    $a0, 0x20($sp)
/* B28058 800B0EB8 24053840 */  li    $a1, 14400
/* B2805C 800B0EBC 11E00022 */  beqz  $t7, .L800B0F48
/* B28060 800B0EC0 3C068014 */   lui   $a2, %hi(D_80142CE4)
/* B28064 800B0EC4 3C068014 */  lui   $a2, %hi(D_80142C74) # $a2, 0x8014
/* B28068 800B0EC8 24C62C74 */  addiu $a2, %lo(D_80142C74) # addiu $a2, $a2, 0x2c74
/* B2806C 800B0ECC 8FA40020 */  lw    $a0, 0x20($sp)
/* B28070 800B0ED0 24052580 */  li    $a1, 9600
/* B28074 800B0ED4 0C031521 */  jal   Game_Alloc
/* B28078 800B0ED8 24070664 */   li    $a3, 1636
/* B2807C 800B0EDC 14400007 */  bnez  $v0, .L800B0EFC
/* B28080 800B0EE0 AE020134 */   sw    $v0, 0x134($s0)
/* B28084 800B0EE4 3C048014 */  lui   $a0, %hi(D_80142C84) # $a0, 0x8014
/* B28088 800B0EE8 3C058014 */  lui   $a1, %hi(D_80142C9C) # $a1, 0x8014
/* B2808C 800B0EEC 24A52C9C */  addiu $a1, %lo(D_80142C9C) # addiu $a1, $a1, 0x2c9c
/* B28090 800B0EF0 24842C84 */  addiu $a0, %lo(D_80142C84) # addiu $a0, $a0, 0x2c84
/* B28094 800B0EF4 0C0007FC */  jal   __assert
/* B28098 800B0EF8 24060665 */   li    $a2, 1637
.L800B0EFC:
/* B2809C 800B0EFC 3C068014 */  lui   $a2, %hi(D_80142CAC) # $a2, 0x8014
/* B280A0 800B0F00 24C62CAC */  addiu $a2, %lo(D_80142CAC) # addiu $a2, $a2, 0x2cac
/* B280A4 800B0F04 8FA40020 */  lw    $a0, 0x20($sp)
/* B280A8 800B0F08 24051000 */  li    $a1, 4096
/* B280AC 800B0F0C 0C031521 */  jal   Game_Alloc
/* B280B0 800B0F10 24070667 */   li    $a3, 1639
/* B280B4 800B0F14 14400007 */  bnez  $v0, .L800B0F34
/* B280B8 800B0F18 AE02013C */   sw    $v0, 0x13c($s0)
/* B280BC 800B0F1C 3C048014 */  lui   $a0, %hi(D_80142CBC) # $a0, 0x8014
/* B280C0 800B0F20 3C058014 */  lui   $a1, %hi(D_80142CD4) # $a1, 0x8014
/* B280C4 800B0F24 24A52CD4 */  addiu $a1, %lo(D_80142CD4) # addiu $a1, $a1, 0x2cd4
/* B280C8 800B0F28 24842CBC */  addiu $a0, %lo(D_80142CBC) # addiu $a0, $a0, 0x2cbc
/* B280CC 800B0F2C 0C0007FC */  jal   __assert
/* B280D0 800B0F30 24060668 */   li    $a2, 1640
.L800B0F34:
/* B280D4 800B0F34 02002025 */  move  $a0, $s0
/* B280D8 800B0F38 0C02BBF2 */  jal   func_800AEFC8
/* B280DC 800B0F3C 87A5002A */   lh    $a1, 0x2a($sp)
/* B280E0 800B0F40 10000033 */  b     .L800B1010
/* B280E4 800B0F44 00000000 */   nop   
.L800B0F48:
/* B280E8 800B0F48 24C62CE4 */  addiu $a2, %lo(D_80142CE4)
/* B280EC 800B0F4C 0C031521 */  jal   Game_Alloc
/* B280F0 800B0F50 2407066B */   li    $a3, 1643
/* B280F4 800B0F54 14400007 */  bnez  $v0, .L800B0F74
/* B280F8 800B0F58 AE020134 */   sw    $v0, 0x134($s0)
/* B280FC 800B0F5C 3C048014 */  lui   $a0, %hi(D_80142CF4) # $a0, 0x8014
/* B28100 800B0F60 3C058014 */  lui   $a1, %hi(D_80142D0C) # $a1, 0x8014
/* B28104 800B0F64 24A52D0C */  addiu $a1, %lo(D_80142D0C) # addiu $a1, $a1, 0x2d0c
/* B28108 800B0F68 24842CF4 */  addiu $a0, %lo(D_80142CF4) # addiu $a0, $a0, 0x2cf4
/* B2810C 800B0F6C 0C0007FC */  jal   __assert
/* B28110 800B0F70 2406066C */   li    $a2, 1644
.L800B0F74:
/* B28114 800B0F74 87B8002A */  lh    $t8, 0x2a($sp)
/* B28118 800B0F78 24010005 */  li    $at, 5
/* B2811C 800B0F7C 8FA40020 */  lw    $a0, 0x20($sp)
/* B28120 800B0F80 17010014 */  bne   $t8, $at, .L800B0FD4
/* B28124 800B0F84 24050A00 */   li    $a1, 2560
/* B28128 800B0F88 3C068014 */  lui   $a2, %hi(D_80142D1C) # $a2, 0x8014
/* B2812C 800B0F8C 24C62D1C */  addiu $a2, %lo(D_80142D1C) # addiu $a2, $a2, 0x2d1c
/* B28130 800B0F90 8FA40020 */  lw    $a0, 0x20($sp)
/* B28134 800B0F94 24050C00 */  li    $a1, 3072
/* B28138 800B0F98 0C031521 */  jal   Game_Alloc
/* B2813C 800B0F9C 24070670 */   li    $a3, 1648
/* B28140 800B0FA0 14400007 */  bnez  $v0, .L800B0FC0
/* B28144 800B0FA4 AE02013C */   sw    $v0, 0x13c($s0)
/* B28148 800B0FA8 3C048014 */  lui   $a0, %hi(D_80142D2C) # $a0, 0x8014
/* B2814C 800B0FAC 3C058014 */  lui   $a1, %hi(D_80142D44) # $a1, 0x8014
/* B28150 800B0FB0 24A52D44 */  addiu $a1, %lo(D_80142D44) # addiu $a1, $a1, 0x2d44
/* B28154 800B0FB4 24842D2C */  addiu $a0, %lo(D_80142D2C) # addiu $a0, $a0, 0x2d2c
/* B28158 800B0FB8 0C0007FC */  jal   __assert
/* B2815C 800B0FBC 24060671 */   li    $a2, 1649
.L800B0FC0:
/* B28160 800B0FC0 02002025 */  move  $a0, $s0
/* B28164 800B0FC4 0C02BC5E */  jal   func_800AF178
/* B28168 800B0FC8 24050006 */   li    $a1, 6
/* B2816C 800B0FCC 10000010 */  b     .L800B1010
/* B28170 800B0FD0 00000000 */   nop   
.L800B0FD4:
/* B28174 800B0FD4 3C068014 */  lui   $a2, %hi(D_80142D54) # $a2, 0x8014
/* B28178 800B0FD8 24C62D54 */  addiu $a2, %lo(D_80142D54) # addiu $a2, $a2, 0x2d54
/* B2817C 800B0FDC 0C031521 */  jal   Game_Alloc
/* B28180 800B0FE0 24070675 */   li    $a3, 1653
/* B28184 800B0FE4 14400007 */  bnez  $v0, .L800B1004
/* B28188 800B0FE8 AE02013C */   sw    $v0, 0x13c($s0)
/* B2818C 800B0FEC 3C048014 */  lui   $a0, %hi(D_80142D64) # $a0, 0x8014
/* B28190 800B0FF0 3C058014 */  lui   $a1, %hi(D_80142D7C) # $a1, 0x8014
/* B28194 800B0FF4 24A52D7C */  addiu $a1, %lo(D_80142D7C) # addiu $a1, $a1, 0x2d7c
/* B28198 800B0FF8 24842D64 */  addiu $a0, %lo(D_80142D64) # addiu $a0, $a0, 0x2d64
/* B2819C 800B0FFC 0C0007FC */  jal   __assert
/* B281A0 800B1000 24060676 */   li    $a2, 1654
.L800B1004:
/* B281A4 800B1004 02002025 */  move  $a0, $s0
/* B281A8 800B1008 0C02BC5E */  jal   func_800AF178
/* B281AC 800B100C 24050005 */   li    $a1, 5
.L800B1010:
/* B281B0 800B1010 3C048014 */  lui   $a0, %hi(D_80142D8C) # $a0, 0x8014
/* B281B4 800B1014 0C00084C */  jal   osSyncPrintf
/* B281B8 800B1018 24842D8C */   addiu $a0, %lo(D_80142D8C) # addiu $a0, $a0, 0x2d8c
/* B281BC 800B101C 8FBF001C */  lw    $ra, 0x1c($sp)
.L800B1020:
/* B281C0 800B1020 8FB00018 */  lw    $s0, 0x18($sp)
/* B281C4 800B1024 27BD0020 */  addiu $sp, $sp, 0x20
/* B281C8 800B1028 03E00008 */  jr    $ra
/* B281CC 800B102C 00000000 */   nop   
