.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4
  
glabel func_800807A0
/* AF7940 800807A0 8C821C44 */  lw    $v0, 0x1c44($a0)
/* AF7944 800807A4 3C018012 */  lui   $at, %hi(D_80123A50) # $at, 0x8012
/* AF7948 800807A8 24097FFF */  li    $t1, 32767
/* AF794C 800807AC C4440024 */  lwc1  $f4, 0x24($v0)
/* AF7950 800807B0 4600218D */  trunc.w.s $f6, $f4
/* AF7954 800807B4 440F3000 */  mfc1  $t7, $f6
/* AF7958 800807B8 00000000 */  nop   
/* AF795C 800807BC A42F3A50 */  sh    $t7, %lo(D_80123A50)($at)
/* AF7960 800807C0 C448002C */  lwc1  $f8, 0x2c($v0)
/* AF7964 800807C4 3C018012 */  lui   $at, %hi(D_80123A54) # $at, 0x8012
/* AF7968 800807C8 4600428D */  trunc.w.s $f10, $f8
/* AF796C 800807CC 44195000 */  mfc1  $t9, $f10
/* AF7970 800807D0 00000000 */  nop   
/* AF7974 800807D4 A4393A54 */  sh    $t9, %lo(D_80123A54)($at)
/* AF7978 800807D8 844800B6 */  lh    $t0, 0xb6($v0)
/* AF797C 800807DC 01285023 */  subu  $t2, $t1, $t0
/* AF7980 800807E0 05410003 */  bgez  $t2, .L800807F0
/* AF7984 800807E4 000A5A83 */   sra   $t3, $t2, 0xa
/* AF7988 800807E8 254103FF */  addiu $at, $t2, 0x3ff
/* AF798C 800807EC 00015A83 */  sra   $t3, $at, 0xa
.L800807F0:
/* AF7990 800807F0 3C018012 */  lui   $at, %hi(D_80123A58)
/* AF7994 800807F4 03E00008 */  jr    $ra
/* AF7998 800807F8 A42B3A58 */   sh    $t3, %lo(D_80123A58)($at)

glabel func_800807FC
/* AF799C 800807FC 3C0E8016 */  lui   $t6, %hi(D_8015FFD0) # $t6, 0x8016
/* AF79A0 80080800 8DCEFFD0 */  lw    $t6, %lo(D_8015FFD0)($t6)
/* AF79A4 80080804 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AF79A8 80080808 3C078016 */  lui   $a3, %hi(gSaveContext+0x1402) # $a3, 0x8016
/* AF79AC 8008080C 94E7FA62 */  lhu   $a3, %lo(gSaveContext+0x1402)($a3)
/* AF79B0 80080810 AFBF001C */  sw    $ra, 0x1c($sp)
/* AF79B4 80080814 AFA50034 */  sw    $a1, 0x34($sp)
/* AF79B8 80080818 8DCF0008 */  lw    $t7, 8($t6)
/* AF79BC 8008081C 3C0A0001 */  lui   $t2, 1
/* AF79C0 80080820 00052C00 */  sll   $a1, $a1, 0x10
/* AF79C4 80080824 01445021 */  addu  $t2, $t2, $a0
/* AF79C8 80080828 854A074C */  lh    $t2, 0x74c($t2)
/* AF79CC 8008082C 00052C03 */  sra   $a1, $a1, 0x10
/* AF79D0 80080830 0007C180 */  sll   $t8, $a3, 6
/* AF79D4 80080834 00054040 */  sll   $t0, $a1, 1
/* AF79D8 80080838 01F8C821 */  addu  $t9, $t7, $t8
/* AF79DC 8008083C 03284821 */  addu  $t1, $t9, $t0
/* AF79E0 80080840 00803025 */  move  $a2, $a0
/* AF79E4 80080844 14AA0004 */  bne   $a1, $t2, .L80080858
/* AF79E8 80080848 85220000 */   lh    $v0, ($t1)
/* AF79EC 8008084C 3C010001 */  lui   $at, 1
/* AF79F0 80080850 00240821 */  addu  $at, $at, $a0
/* AF79F4 80080854 A422074E */  sh    $v0, 0x74e($at)
.L80080858:
/* AF79F8 80080858 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AF79FC 8008085C 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AF7A00 80080860 00C15821 */  addu  $t3, $a2, $at
/* AF7A04 80080864 3C048014 */  lui   $a0, %hi(D_8013D700) # $a0, 0x8014
/* AF7A08 80080868 2484D700 */  addiu $a0, %lo(D_8013D700) # addiu $a0, $a0, -0x2900
/* AF7A0C 8008086C AFAB0020 */  sw    $t3, 0x20($sp)
/* AF7A10 80080870 A7A20026 */  sh    $v0, 0x26($sp)
/* AF7A14 80080874 A7A50036 */  sh    $a1, 0x36($sp)
/* AF7A18 80080878 0C00084C */  jal   osSyncPrintf
/* AF7A1C 8008087C AFA7002C */   sw    $a3, 0x2c($sp)
/* AF7A20 80080880 8FA7002C */  lw    $a3, 0x2c($sp)
/* AF7A24 80080884 3C0D8016 */  lui   $t5, %hi(gSaveContext+0xe8)
/* AF7A28 80080888 8FAE0020 */  lw    $t6, 0x20($sp)
/* AF7A2C 8008088C 000760C0 */  sll   $t4, $a3, 3
/* AF7A30 80080890 01876023 */  subu  $t4, $t4, $a3
/* AF7A34 80080894 000C6080 */  sll   $t4, $t4, 2
/* AF7A38 80080898 01AC6821 */  addu  $t5, $t5, $t4
/* AF7A3C 8008089C 8DADE748 */  lw    $t5, %lo(gSaveContext+0xe8)($t5)
/* AF7A40 800808A0 3C048014 */  lui   $a0, %hi(D_8013D708) # $a0, 0x8014
/* AF7A44 800808A4 2484D708 */  addiu $a0, %lo(D_8013D708) # addiu $a0, $a0, -0x28f8
/* AF7A48 800808A8 AFAD0010 */  sw    $t5, 0x10($sp)
/* AF7A4C 800808AC 85CF025E */  lh    $t7, 0x25e($t6)
/* AF7A50 800808B0 87A50026 */  lh    $a1, 0x26($sp)
/* AF7A54 800808B4 87A60036 */  lh    $a2, 0x36($sp)
/* AF7A58 800808B8 0C00084C */  jal   osSyncPrintf
/* AF7A5C 800808BC AFAF0014 */   sw    $t7, 0x14($sp)
/* AF7A60 800808C0 3C048014 */  lui   $a0, %hi(D_8013D75C) # $a0, 0x8014
/* AF7A64 800808C4 0C00084C */  jal   osSyncPrintf
/* AF7A68 800808C8 2484D75C */   addiu $a0, %lo(D_8013D75C) # addiu $a0, $a0, -0x28a4
/* AF7A6C 800808CC 87B90026 */  lh    $t9, 0x26($sp)
/* AF7A70 800808D0 8FB80020 */  lw    $t8, 0x20($sp)
/* AF7A74 800808D4 24090002 */  li    $t1, 2
/* AF7A78 800808D8 00194040 */  sll   $t0, $t9, 1
/* AF7A7C 800808DC 03081021 */  addu  $v0, $t8, $t0
/* AF7A80 800808E0 240A00BF */  li    $t2, 191
/* AF7A84 800808E4 A0490140 */  sb    $t1, 0x140($v0)
/* AF7A88 800808E8 A04A0141 */  sb    $t2, 0x141($v0)
/* AF7A8C 800808EC 8FBF001C */  lw    $ra, 0x1c($sp)
/* AF7A90 800808F0 27BD0030 */  addiu $sp, $sp, 0x30
/* AF7A94 800808F4 03E00008 */  jr    $ra
/* AF7A98 800808F8 00000000 */   nop   

glabel func_800808FC
/* AF7A9C 800808FC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AF7AA0 80080900 AFB70034 */  sw    $s7, 0x34($sp)
/* AF7AA4 80080904 3C178016 */  lui   $s7, %hi(gSaveContext) # $s7, 0x8016
/* AF7AA8 80080908 AFBE0038 */  sw    $fp, 0x38($sp)
/* AF7AAC 8008090C 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AF7AB0 80080910 0005F400 */  sll   $fp, $a1, 0x10
/* AF7AB4 80080914 26F7E660 */  addiu $s7, %lo(gSaveContext) # addiu $s7, $s7, -0x19a0
/* AF7AB8 80080918 AFB5002C */  sw    $s5, 0x2c($sp)
/* AF7ABC 8008091C AFB40028 */  sw    $s4, 0x28($sp)
/* AF7AC0 80080920 AFB00018 */  sw    $s0, 0x18($sp)
/* AF7AC4 80080924 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AF7AC8 80080928 0080A825 */  move  $s5, $a0
/* AF7ACC 8008092C 001EF403 */  sra   $fp, $fp, 0x10
/* AF7AD0 80080930 AFBF003C */  sw    $ra, 0x3c($sp)
/* AF7AD4 80080934 AFB60030 */  sw    $s6, 0x30($sp)
/* AF7AD8 80080938 AFB30024 */  sw    $s3, 0x24($sp)
/* AF7ADC 8008093C AFB20020 */  sw    $s2, 0x20($sp)
/* AF7AE0 80080940 AFB1001C */  sw    $s1, 0x1c($sp)
/* AF7AE4 80080944 AFA50044 */  sw    $a1, 0x44($sp)
/* AF7AE8 80080948 96F41402 */  lhu   $s4, 0x1402($s7)
/* AF7AEC 8008094C 00811821 */  addu  $v1, $a0, $at
/* AF7AF0 80080950 00008025 */  move  $s0, $zero
.L80080954:
/* AF7AF4 80080954 00701021 */  addu  $v0, $v1, $s0
/* AF7AF8 80080958 26100001 */  addiu $s0, $s0, 1
/* AF7AFC 8008095C 00108400 */  sll   $s0, $s0, 0x10
/* AF7B00 80080960 00108403 */  sra   $s0, $s0, 0x10
/* AF7B04 80080964 2A010010 */  slti  $at, $s0, 0x10
/* AF7B08 80080968 A0400140 */  sb    $zero, 0x140($v0)
/* AF7B0C 8008096C 1420FFF9 */  bnez  $at, .L80080954
/* AF7B10 80080970 A0400150 */   sb    $zero, 0x150($v0)
/* AF7B14 80080974 3C168012 */  lui   $s6, %hi(D_80127120) # $s6, 0x8012
/* AF7B18 80080978 26D67120 */  addiu $s6, %lo(D_80127120) # addiu $s6, $s6, 0x7120
/* AF7B1C 8008097C 02F47821 */  addu  $t7, $s7, $s4
/* AF7B20 80080980 91F800A8 */  lbu   $t8, 0xa8($t7)
/* AF7B24 80080984 8ECE0008 */  lw    $t6, 8($s6)
/* AF7B28 80080988 24080001 */  li    $t0, 1
/* AF7B2C 8008098C 01D8C824 */  and   $t9, $t6, $t8
/* AF7B30 80080990 53200004 */  beql  $t9, $zero, .L800809A4
/* AF7B34 80080994 96A900A4 */   lhu   $t1, 0xa4($s5)
/* AF7B38 80080998 A060015E */  sb    $zero, 0x15e($v1)
/* AF7B3C 8008099C A068015F */  sb    $t0, 0x15f($v1)
/* AF7B40 800809A0 96A900A4 */  lhu   $t1, 0xa4($s5)
.L800809A4:
/* AF7B44 800809A4 2D210019 */  sltiu $at, $t1, 0x19
/* AF7B48 800809A8 10200036 */  beqz  $at, .L80080A84
/* AF7B4C 800809AC 00094880 */   sll   $t1, $t1, 2
/* AF7B50 800809B0 3C018014 */  lui   $at, %hi(jtbl_8013D9DC)
/* AF7B54 800809B4 00290821 */  addu  $at, $at, $t1
/* AF7B58 800809B8 8C29D9DC */  lw    $t1, %lo(jtbl_8013D9DC)($at)
/* AF7B5C 800809BC 01200008 */  jr    $t1
/* AF7B60 800809C0 00000000 */   nop   
/* AF7B64 800809C4 3C028016 */  lui   $v0, %hi(D_8015FFD0) # $v0, 0x8016
/* AF7B68 800809C8 8C42FFD0 */  lw    $v0, %lo(D_8015FFD0)($v0)
/* AF7B6C 800809CC 00149840 */  sll   $s3, $s4, 1
/* AF7B70 800809D0 00008025 */  move  $s0, $zero
/* AF7B74 800809D4 8C4A000C */  lw    $t2, 0xc($v0)
/* AF7B78 800809D8 2412001C */  li    $s2, 28
/* AF7B7C 800809DC 241100FF */  li    $s1, 255
/* AF7B80 800809E0 01535821 */  addu  $t3, $t2, $s3
/* AF7B84 800809E4 85630000 */  lh    $v1, ($t3)
/* AF7B88 800809E8 58600027 */  blezl $v1, .L80080A88
/* AF7B8C 800809EC 8FBF003C */   lw    $ra, 0x3c($sp)
/* AF7B90 800809F0 8C4C0010 */  lw    $t4, 0x10($v0)
.L800809F4:
/* AF7B94 800809F4 001468C0 */  sll   $t5, $s4, 3
/* AF7B98 800809F8 01B46823 */  subu  $t5, $t5, $s4
/* AF7B9C 800809FC 001E70C0 */  sll   $t6, $fp, 3
/* AF7BA0 80080A00 01DE7023 */  subu  $t6, $t6, $fp
/* AF7BA4 80080A04 000D6940 */  sll   $t5, $t5, 5
/* AF7BA8 80080A08 000E7080 */  sll   $t6, $t6, 2
/* AF7BAC 80080A0C 018D7821 */  addu  $t7, $t4, $t5
/* AF7BB0 80080A10 01EEC021 */  addu  $t8, $t7, $t6
/* AF7BB4 80080A14 0010C840 */  sll   $t9, $s0, 1
/* AF7BB8 80080A18 03194021 */  addu  $t0, $t8, $t9
/* AF7BBC 80080A1C 85050000 */  lh    $a1, ($t0)
/* AF7BC0 80080A20 50B10013 */  beql  $a1, $s1, .L80080A70
/* AF7BC4 80080A24 26100001 */   addiu $s0, $s0, 1
/* AF7BC8 80080A28 02920019 */  multu $s4, $s2
/* AF7BCC 80080A2C 00054880 */  sll   $t1, $a1, 2
/* AF7BD0 80080A30 02C95021 */  addu  $t2, $s6, $t1
/* AF7BD4 80080A34 8D4B0000 */  lw    $t3, ($t2)
/* AF7BD8 80080A38 00006012 */  mflo  $t4
/* AF7BDC 80080A3C 02EC6821 */  addu  $t5, $s7, $t4
/* AF7BE0 80080A40 8DAF00E8 */  lw    $t7, 0xe8($t5)
/* AF7BE4 80080A44 016F7024 */  and   $t6, $t3, $t7
/* AF7BE8 80080A48 51C00009 */  beql  $t6, $zero, .L80080A70
/* AF7BEC 80080A4C 26100001 */   addiu $s0, $s0, 1
/* AF7BF0 80080A50 0C0201FF */  jal   func_800807FC
/* AF7BF4 80080A54 02A02025 */   move  $a0, $s5
/* AF7BF8 80080A58 3C028016 */  lui   $v0, %hi(D_8015FFD0) # $v0, 0x8016
/* AF7BFC 80080A5C 8C42FFD0 */  lw    $v0, %lo(D_8015FFD0)($v0)
/* AF7C00 80080A60 8C58000C */  lw    $t8, 0xc($v0)
/* AF7C04 80080A64 0313C821 */  addu  $t9, $t8, $s3
/* AF7C08 80080A68 87230000 */  lh    $v1, ($t9)
/* AF7C0C 80080A6C 26100001 */  addiu $s0, $s0, 1
.L80080A70:
/* AF7C10 80080A70 00108400 */  sll   $s0, $s0, 0x10
/* AF7C14 80080A74 00108403 */  sra   $s0, $s0, 0x10
/* AF7C18 80080A78 0203082A */  slt   $at, $s0, $v1
/* AF7C1C 80080A7C 5420FFDD */  bnezl $at, .L800809F4
/* AF7C20 80080A80 8C4C0010 */   lw    $t4, 0x10($v0)
.L80080A84:
/* AF7C24 80080A84 8FBF003C */  lw    $ra, 0x3c($sp)
.L80080A88:
/* AF7C28 80080A88 8FB00018 */  lw    $s0, 0x18($sp)
/* AF7C2C 80080A8C 8FB1001C */  lw    $s1, 0x1c($sp)
/* AF7C30 80080A90 8FB20020 */  lw    $s2, 0x20($sp)
/* AF7C34 80080A94 8FB30024 */  lw    $s3, 0x24($sp)
/* AF7C38 80080A98 8FB40028 */  lw    $s4, 0x28($sp)
/* AF7C3C 80080A9C 8FB5002C */  lw    $s5, 0x2c($sp)
/* AF7C40 80080AA0 8FB60030 */  lw    $s6, 0x30($sp)
/* AF7C44 80080AA4 8FB70034 */  lw    $s7, 0x34($sp)
/* AF7C48 80080AA8 8FBE0038 */  lw    $fp, 0x38($sp)
/* AF7C4C 80080AAC 03E00008 */  jr    $ra
/* AF7C50 80080AB0 27BD0040 */   addiu $sp, $sp, 0x40

glabel func_80080AB4
/* AF7C54 80080AB4 3C068016 */  lui   $a2, %hi(gSaveContext) # $a2, 0x8016
/* AF7C58 80080AB8 24C6E660 */  addiu $a2, %lo(gSaveContext) # addiu $a2, $a2, -0x19a0
/* AF7C5C 80080ABC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AF7C60 80080AC0 94CE1402 */  lhu   $t6, 0x1402($a2)
/* AF7C64 80080AC4 AFBF001C */  sw    $ra, 0x1c($sp)
/* AF7C68 80080AC8 AFA40038 */  sw    $a0, 0x38($sp)
/* AF7C6C 80080ACC AFA5003C */  sw    $a1, 0x3c($sp)
/* AF7C70 80080AD0 AFAE0034 */  sw    $t6, 0x34($sp)
/* AF7C74 80080AD4 848300A4 */  lh    $v1, 0xa4($a0)
/* AF7C78 80080AD8 28610019 */  slti  $at, $v1, 0x19
/* AF7C7C 80080ADC 1420000A */  bnez  $at, .L80080B08
/* AF7C80 80080AE0 00601025 */   move  $v0, $v1
/* AF7C84 80080AE4 2458FFAF */  addiu $t8, $v0, -0x51
/* AF7C88 80080AE8 2F010014 */  sltiu $at, $t8, 0x14
/* AF7C8C 80080AEC 102000C1 */  beqz  $at, .L80080DF4
/* AF7C90 80080AF0 0018C080 */   sll   $t8, $t8, 2
/* AF7C94 80080AF4 3C018014 */  lui   $at, %hi(jtbl_8013DA40)
/* AF7C98 80080AF8 00380821 */  addu  $at, $at, $t8
/* AF7C9C 80080AFC 8C38DA40 */  lw    $t8, %lo(jtbl_8013DA40)($at)
/* AF7CA0 80080B00 03000008 */  jr    $t8
/* AF7CA4 80080B04 00000000 */   nop   
.L80080B08:
/* AF7CA8 80080B08 2C410019 */  sltiu $at, $v0, 0x19
/* AF7CAC 80080B0C 102000B9 */  beqz  $at, .L80080DF4
/* AF7CB0 80080B10 0002C880 */   sll   $t9, $v0, 2
/* AF7CB4 80080B14 3C018014 */  lui   $at, %hi(jtbl_8013DA90)
/* AF7CB8 80080B18 00390821 */  addu  $at, $at, $t9
/* AF7CBC 80080B1C 8C39DA90 */  lw    $t9, %lo(jtbl_8013DA90)($at)
/* AF7CC0 80080B20 03200008 */  jr    $t9
/* AF7CC4 80080B24 00000000 */   nop   
/* AF7CC8 80080B28 24010053 */  li    $at, 83
/* AF7CCC 80080B2C 14610009 */  bne   $v1, $at, .L80080B54
/* AF7CD0 80080B30 87A50036 */   lh    $a1, 0x36($sp)
/* AF7CD4 80080B34 3C098012 */  lui   $t1, %hi(D_80127148) # $t1, 0x8012
/* AF7CD8 80080B38 8D297148 */  lw    $t1, %lo(D_80127148)($t1)
/* AF7CDC 80080B3C 8CCA00A4 */  lw    $t2, 0xa4($a2)
/* AF7CE0 80080B40 012A5824 */  and   $t3, $t1, $t2
/* AF7CE4 80080B44 11600032 */  beqz  $t3, .L80080C10
/* AF7CE8 80080B48 00000000 */   nop   
/* AF7CEC 80080B4C 10000030 */  b     .L80080C10
/* AF7CF0 80080B50 24050014 */   li    $a1, 20
.L80080B54:
/* AF7CF4 80080B54 24010057 */  li    $at, 87
/* AF7CF8 80080B58 54610012 */  bnel  $v1, $at, .L80080BA4
/* AF7CFC 80080B5C 2401005A */   li    $at, 90
/* AF7D00 80080B60 8CCC0004 */  lw    $t4, 4($a2)
/* AF7D04 80080B64 24010011 */  li    $at, 17
/* AF7D08 80080B68 24020011 */  li    $v0, 17
/* AF7D0C 80080B6C 11800003 */  beqz  $t4, .L80080B7C
/* AF7D10 80080B70 3C0D8012 */   lui   $t5, %hi(D_80127128) # $t5, 0x8012
/* AF7D14 80080B74 10000001 */  b     .L80080B7C
/* AF7D18 80080B78 24020005 */   li    $v0, 5
.L80080B7C:
/* AF7D1C 80080B7C 14410024 */  bne   $v0, $at, .L80080C10
/* AF7D20 80080B80 00000000 */   nop   
/* AF7D24 80080B84 8DAD7128 */  lw    $t5, %lo(D_80127128)($t5)
/* AF7D28 80080B88 8CCE00A4 */  lw    $t6, 0xa4($a2)
/* AF7D2C 80080B8C 01AE7824 */  and   $t7, $t5, $t6
/* AF7D30 80080B90 15E0001F */  bnez  $t7, .L80080C10
/* AF7D34 80080B94 00000000 */   nop   
/* AF7D38 80080B98 1000001D */  b     .L80080C10
/* AF7D3C 80080B9C 24050015 */   li    $a1, 21
/* AF7D40 80080BA0 2401005A */  li    $at, 90
.L80080BA4:
/* AF7D44 80080BA4 54610012 */  bnel  $v1, $at, .L80080BF0
/* AF7D48 80080BA8 2401005D */   li    $at, 93
/* AF7D4C 80080BAC 8CD80004 */  lw    $t8, 4($a2)
/* AF7D50 80080BB0 24010011 */  li    $at, 17
/* AF7D54 80080BB4 24020011 */  li    $v0, 17
/* AF7D58 80080BB8 13000003 */  beqz  $t8, .L80080BC8
/* AF7D5C 80080BBC 00000000 */   nop   
/* AF7D60 80080BC0 10000001 */  b     .L80080BC8
/* AF7D64 80080BC4 24020005 */   li    $v0, 5
.L80080BC8:
/* AF7D68 80080BC8 14410011 */  bne   $v0, $at, .L80080C10
/* AF7D6C 80080BCC 00000000 */   nop   
/* AF7D70 80080BD0 94D90EE6 */  lhu   $t9, 0xee6($a2)
/* AF7D74 80080BD4 2401000F */  li    $at, 15
/* AF7D78 80080BD8 3329000F */  andi  $t1, $t9, 0xf
/* AF7D7C 80080BDC 1121000C */  beq   $t1, $at, .L80080C10
/* AF7D80 80080BE0 00000000 */   nop   
/* AF7D84 80080BE4 1000000A */  b     .L80080C10
/* AF7D88 80080BE8 24050016 */   li    $a1, 22
/* AF7D8C 80080BEC 2401005D */  li    $at, 93
.L80080BF0:
/* AF7D90 80080BF0 14610007 */  bne   $v1, $at, .L80080C10
/* AF7D94 80080BF4 00000000 */   nop   
/* AF7D98 80080BF8 94CA0EE6 */  lhu   $t2, 0xee6($a2)
/* AF7D9C 80080BFC 2401000F */  li    $at, 15
/* AF7DA0 80080C00 314B000F */  andi  $t3, $t2, 0xf
/* AF7DA4 80080C04 15610002 */  bne   $t3, $at, .L80080C10
/* AF7DA8 80080C08 00000000 */   nop   
/* AF7DAC 80080C0C 24050017 */  li    $a1, 23
.L80080C10:
/* AF7DB0 80080C10 3C048014 */  lui   $a0, %hi(D_8013D760) # $a0, 0x8014
/* AF7DB4 80080C14 2484D760 */  addiu $a0, %lo(D_8013D760) # addiu $a0, $a0, -0x28a0
/* AF7DB8 80080C18 0C00084C */  jal   osSyncPrintf
/* AF7DBC 80080C1C A7A5002E */   sh    $a1, 0x2e($sp)
/* AF7DC0 80080C20 3C048014 */  lui   $a0, %hi(D_8013D768) # $a0, 0x8014
/* AF7DC4 80080C24 2484D768 */  addiu $a0, %lo(D_8013D768) # addiu $a0, $a0, -0x2898
/* AF7DC8 80080C28 0C00084C */  jal   osSyncPrintf
/* AF7DCC 80080C2C 87A5002E */   lh    $a1, 0x2e($sp)
/* AF7DD0 80080C30 3C048014 */  lui   $a0, %hi(D_8013D774) # $a0, 0x8014
/* AF7DD4 80080C34 0C00084C */  jal   osSyncPrintf
/* AF7DD8 80080C38 2484D774 */   addiu $a0, %lo(D_8013D774) # addiu $a0, $a0, -0x288c
/* AF7DDC 80080C3C 87A8002E */  lh    $t0, 0x2e($sp)
/* AF7DE0 80080C40 3C028016 */  lui   $v0, %hi(D_8015FFD0) # $v0, 0x8016
/* AF7DE4 80080C44 8C42FFD0 */  lw    $v0, %lo(D_8015FFD0)($v0)
/* AF7DE8 80080C48 3C018012 */  lui   $at, %hi(D_80123A5C) # $at, 0x8012
/* AF7DEC 80080C4C A4283A5C */  sh    $t0, %lo(D_80123A5C)($at)
/* AF7DF0 80080C50 8FA90034 */  lw    $t1, 0x34($sp)
/* AF7DF4 80080C54 8C4C0028 */  lw    $t4, 0x28($v0)
/* AF7DF8 80080C58 8FA30038 */  lw    $v1, 0x38($sp)
/* AF7DFC 80080C5C 8C590024 */  lw    $t9, 0x24($v0)
/* AF7E00 80080C60 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AF7E04 80080C64 00086840 */  sll   $t5, $t0, 1
/* AF7E08 80080C68 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AF7E0C 80080C6C 00095040 */  sll   $t2, $t1, 1
/* AF7E10 80080C70 018D7021 */  addu  $t6, $t4, $t5
/* AF7E14 80080C74 95CF0000 */  lhu   $t7, ($t6)
/* AF7E18 80080C78 3C180097 */  lui   $t8, %hi(_map_grand_staticSegmentRomStart) # $t8, 0x97
/* AF7E1C 80080C7C 00611821 */  addu  $v1, $v1, $at
/* AF7E20 80080C80 032A5821 */  addu  $t3, $t9, $t2
/* AF7E24 80080C84 95660000 */  lhu   $a2, ($t3)
/* AF7E28 80080C88 8C64013C */  lw    $a0, 0x13c($v1)
/* AF7E2C 80080C8C 27184000 */  addiu $t8, %lo(_map_grand_staticSegmentRomStart) # addiu $t8, $t8, 0x4000
/* AF7E30 80080C90 240C0135 */  li    $t4, 309
/* AF7E34 80080C94 3C078014 */  lui   $a3, %hi(D_8013D778) # $a3, 0x8014
/* AF7E38 80080C98 24E7D778 */  addiu $a3, %lo(D_8013D778) # addiu $a3, $a3, -0x2888
/* AF7E3C 80080C9C AFAC0010 */  sw    $t4, 0x10($sp)
/* AF7E40 80080CA0 AFA30024 */  sw    $v1, 0x24($sp)
/* AF7E44 80080CA4 0C0006A8 */  jal   func_80001AA0
/* AF7E48 80080CA8 01F82821 */   addu  $a1, $t7, $t8
/* AF7E4C 80080CAC 8FA30024 */  lw    $v1, 0x24($sp)
/* AF7E50 80080CB0 8FAD0034 */  lw    $t5, 0x34($sp)
/* AF7E54 80080CB4 1000004F */  b     .L80080DF4
/* AF7E58 80080CB8 A46D0258 */   sh    $t5, 0x258($v1)
/* AF7E5C 80080CBC 3C048014 */  lui   $a0, %hi(D_8013D788) # $a0, 0x8014
/* AF7E60 80080CC0 0C00084C */  jal   osSyncPrintf
/* AF7E64 80080CC4 2484D788 */   addiu $a0, %lo(D_8013D788) # addiu $a0, $a0, -0x2878
/* AF7E68 80080CC8 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AF7E6C 80080CCC 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AF7E70 80080CD0 3C048014 */  lui   $a0, %hi(D_8013D790) # $a0, 0x8014
/* AF7E74 80080CD4 2484D790 */  addiu $a0, %lo(D_8013D790) # addiu $a0, $a0, -0x2870
/* AF7E78 80080CD8 87A5003E */  lh    $a1, 0x3e($sp)
/* AF7E7C 80080CDC 8FA60034 */  lw    $a2, 0x34($sp)
/* AF7E80 80080CE0 0C00084C */  jal   osSyncPrintf
/* AF7E84 80080CE4 85C70F50 */   lh    $a3, 0xf50($t6)
/* AF7E88 80080CE8 3C048014 */  lui   $a0, %hi(D_8013D7E0) # $a0, 0x8014
/* AF7E8C 80080CEC 0C00084C */  jal   osSyncPrintf
/* AF7E90 80080CF0 2484D7E0 */   addiu $a0, %lo(D_8013D7E0) # addiu $a0, $a0, -0x2820
/* AF7E94 80080CF4 3C188016 */  lui   $t8, %hi(D_8015FFD0) # $t8, 0x8016
/* AF7E98 80080CF8 8F18FFD0 */  lw    $t8, %lo(D_8015FFD0)($t8)
/* AF7E9C 80080CFC 8FB90034 */  lw    $t9, 0x34($sp)
/* AF7EA0 80080D00 8FAF0038 */  lw    $t7, 0x38($sp)
/* AF7EA4 80080D04 8F090020 */  lw    $t1, 0x20($t8)
/* AF7EA8 80080D08 00195040 */  sll   $t2, $t9, 1
/* AF7EAC 80080D0C 87AD003E */  lh    $t5, 0x3e($sp)
/* AF7EB0 80080D10 012A5821 */  addu  $t3, $t1, $t2
/* AF7EB4 80080D14 956C0000 */  lhu   $t4, ($t3)
/* AF7EB8 80080D18 3C040001 */  lui   $a0, 1
/* AF7EBC 80080D1C 008F2021 */  addu  $a0, $a0, $t7
/* AF7EC0 80080D20 018D7021 */  addu  $t6, $t4, $t5
/* AF7EC4 80080D24 000E7A00 */  sll   $t7, $t6, 8
/* AF7EC8 80080D28 01EE7823 */  subu  $t7, $t7, $t6
/* AF7ECC 80080D2C 3C18009A */  lui   $t8, %hi(_map_i_staticSegmentRomStart) # $t8, 0x9a
/* AF7ED0 80080D30 27185000 */  addiu $t8, %lo(_map_i_staticSegmentRomStart) # addiu $t8, $t8, 0x5000
/* AF7ED4 80080D34 000F7900 */  sll   $t7, $t7, 4
/* AF7ED8 80080D38 8C84062C */  lw    $a0, 0x62c($a0)
/* AF7EDC 80080D3C 2419015A */  li    $t9, 346
/* AF7EE0 80080D40 3C078014 */  lui   $a3, %hi(D_8013D7E4) # $a3, 0x8014
/* AF7EE4 80080D44 24E7D7E4 */  addiu $a3, %lo(D_8013D7E4) # addiu $a3, $a3, -0x281c
/* AF7EE8 80080D48 AFB90010 */  sw    $t9, 0x10($sp)
/* AF7EEC 80080D4C 01F82821 */  addu  $a1, $t7, $t8
/* AF7EF0 80080D50 0C0006A8 */  jal   func_80001AA0
/* AF7EF4 80080D54 24060FF0 */   li    $a2, 4080
/* AF7EF8 80080D58 8FAB0034 */  lw    $t3, 0x34($sp)
/* AF7EFC 80080D5C 3C068016 */  lui   $a2, %hi(D_8015FFD0) # $a2, 0x8016
/* AF7F00 80080D60 24C6FFD0 */  addiu $a2, %lo(D_8015FFD0) # addiu $a2, $a2, -0x30
/* AF7F04 80080D64 8CC90000 */  lw    $t1, ($a2)
/* AF7F08 80080D68 000B6080 */  sll   $t4, $t3, 2
/* AF7F0C 80080D6C 018B6023 */  subu  $t4, $t4, $t3
/* AF7F10 80080D70 87A2003E */  lh    $v0, 0x3e($sp)
/* AF7F14 80080D74 8D2A0014 */  lw    $t2, 0x14($t1)
/* AF7F18 80080D78 000C6080 */  sll   $t4, $t4, 2
/* AF7F1C 80080D7C 018B6023 */  subu  $t4, $t4, $t3
/* AF7F20 80080D80 000C60C0 */  sll   $t4, $t4, 3
/* AF7F24 80080D84 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AF7F28 80080D88 00021040 */  sll   $v0, $v0, 1
/* AF7F2C 80080D8C 014C6821 */  addu  $t5, $t2, $t4
/* AF7F30 80080D90 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* AF7F34 80080D94 01A27021 */  addu  $t6, $t5, $v0
/* AF7F38 80080D98 85CF0000 */  lh    $t7, ($t6)
/* AF7F3C 80080D9C 8C780000 */  lw    $t8, ($v1)
/* AF7F40 80080DA0 A70F0F34 */  sh    $t7, 0xf34($t8)
/* AF7F44 80080DA4 8FAB0034 */  lw    $t3, 0x34($sp)
/* AF7F48 80080DA8 8CD90000 */  lw    $t9, ($a2)
/* AF7F4C 80080DAC 8C6F0000 */  lw    $t7, ($v1)
/* AF7F50 80080DB0 000B5080 */  sll   $t2, $t3, 2
/* AF7F54 80080DB4 014B5023 */  subu  $t2, $t2, $t3
/* AF7F58 80080DB8 8F290018 */  lw    $t1, 0x18($t9)
/* AF7F5C 80080DBC 000A5080 */  sll   $t2, $t2, 2
/* AF7F60 80080DC0 014B5023 */  subu  $t2, $t2, $t3
/* AF7F64 80080DC4 000A50C0 */  sll   $t2, $t2, 3
/* AF7F68 80080DC8 012A6021 */  addu  $t4, $t1, $t2
/* AF7F6C 80080DCC 01826821 */  addu  $t5, $t4, $v0
/* AF7F70 80080DD0 85AE0000 */  lh    $t6, ($t5)
/* AF7F74 80080DD4 A5EE0F36 */  sh    $t6, 0xf36($t7)
/* AF7F78 80080DD8 8C780000 */  lw    $t8, ($v1)
/* AF7F7C 80080DDC 8FA40038 */  lw    $a0, 0x38($sp)
/* AF7F80 80080DE0 0C02023F */  jal   func_800808FC
/* AF7F84 80080DE4 87050F50 */   lh    $a1, 0xf50($t8)
/* AF7F88 80080DE8 3C048014 */  lui   $a0, %hi(D_8013D7F4) # $a0, 0x8014
/* AF7F8C 80080DEC 0C00084C */  jal   osSyncPrintf
/* AF7F90 80080DF0 2484D7F4 */   addiu $a0, %lo(D_8013D7F4) # addiu $a0, $a0, -0x280c
.L80080DF4:
/* AF7F94 80080DF4 8FBF001C */  lw    $ra, 0x1c($sp)
/* AF7F98 80080DF8 27BD0038 */  addiu $sp, $sp, 0x38
/* AF7F9C 80080DFC 03E00008 */  jr    $ra
/* AF7FA0 80080E00 00000000 */   nop   

glabel func_80080E04
/* AF7FA4 80080E04 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AF7FA8 80080E08 AFA40020 */  sw    $a0, 0x20($sp)
/* AF7FAC 80080E0C 8FAE0020 */  lw    $t6, 0x20($sp)
/* AF7FB0 80080E10 3C068016 */  lui   $a2, %hi(gSaveContext+0x1402) # $a2, 0x8016
/* AF7FB4 80080E14 94C6FA62 */  lhu   $a2, %lo(gSaveContext+0x1402)($a2)
/* AF7FB8 80080E18 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF7FBC 80080E1C AFA50024 */  sw    $a1, 0x24($sp)
/* AF7FC0 80080E20 3C048014 */  lui   $a0, %hi(D_8013D810) # $a0, 0x8014
/* AF7FC4 80080E24 85C700A4 */  lh    $a3, 0xa4($t6)
/* AF7FC8 80080E28 2484D810 */  addiu $a0, %lo(D_8013D810) # addiu $a0, $a0, -0x27f0
/* AF7FCC 80080E2C 87A50026 */  lh    $a1, 0x26($sp)
/* AF7FD0 80080E30 0C00084C */  jal   osSyncPrintf
/* AF7FD4 80080E34 AFA6001C */   sw    $a2, 0x1c($sp)
/* AF7FD8 80080E38 87A30026 */  lh    $v1, 0x26($sp)
/* AF7FDC 80080E3C 8FAF0020 */  lw    $t7, 0x20($sp)
/* AF7FE0 80080E40 3C010001 */  lui   $at, 1
/* AF7FE4 80080E44 04600034 */  bltz  $v1, .L80080F18
/* AF7FE8 80080E48 002F0821 */   addu  $at, $at, $t7
/* AF7FEC 80080E4C 8FAF0020 */  lw    $t7, 0x20($sp)
/* AF7FF0 80080E50 95F800A4 */  lhu   $t8, 0xa4($t7)
/* AF7FF4 80080E54 2F010019 */  sltiu $at, $t8, 0x19
/* AF7FF8 80080E58 10200030 */  beqz  $at, .L80080F1C
/* AF7FFC 80080E5C 0018C080 */   sll   $t8, $t8, 2
/* AF8000 80080E60 3C018014 */  lui   $at, %hi(jtbl_8013DAF4)
/* AF8004 80080E64 00380821 */  addu  $at, $at, $t8
/* AF8008 80080E68 8C38DAF4 */  lw    $t8, %lo(jtbl_8013DAF4)($at)
/* AF800C 80080E6C 03000008 */  jr    $t8
/* AF8010 80080E70 00000000 */   nop   
/* AF8014 80080E74 8FB9001C */  lw    $t9, 0x1c($sp)
/* AF8018 80080E78 3C098016 */  lui   $t1, %hi(gSaveContext) # $t1, 0x8016
/* AF801C 80080E7C 2529E660 */  addiu $t1, %lo(gSaveContext) # addiu $t1, $t1, -0x19a0
/* AF8020 80080E80 001940C0 */  sll   $t0, $t9, 3
/* AF8024 80080E84 01194023 */  subu  $t0, $t0, $t9
/* AF8028 80080E88 00084080 */  sll   $t0, $t0, 2
/* AF802C 80080E8C 00035880 */  sll   $t3, $v1, 2
/* AF8030 80080E90 3C0C8012 */  lui   $t4, %hi(D_80127120)
/* AF8034 80080E94 018B6021 */  addu  $t4, $t4, $t3
/* AF8038 80080E98 01091021 */  addu  $v0, $t0, $t1
/* AF803C 80080E9C 8C4A00E8 */  lw    $t2, 0xe8($v0)
/* AF8040 80080EA0 8D8C7120 */  lw    $t4, %lo(D_80127120)($t4)
/* AF8044 80080EA4 3C048014 */  lui   $a0, %hi(D_8013D864) # $a0, 0x8014
/* AF8048 80080EA8 2484D864 */  addiu $a0, %lo(D_8013D864) # addiu $a0, $a0, -0x279c
/* AF804C 80080EAC 014C2825 */  or    $a1, $t2, $t4
/* AF8050 80080EB0 0C00084C */  jal   osSyncPrintf
/* AF8054 80080EB4 AC4500E8 */   sw    $a1, 0xe8($v0)
/* AF8058 80080EB8 8FA40020 */  lw    $a0, 0x20($sp)
/* AF805C 80080EBC 87A50026 */  lh    $a1, 0x26($sp)
/* AF8060 80080EC0 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AF8064 80080EC4 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AF8068 80080EC8 00811021 */  addu  $v0, $a0, $at
/* AF806C 80080ECC A445025C */  sh    $a1, 0x25c($v0)
/* AF8070 80080ED0 8FAE001C */  lw    $t6, 0x1c($sp)
/* AF8074 80080ED4 0C0201FF */  jal   func_800807FC
/* AF8078 80080ED8 A44E025A */   sh    $t6, 0x25a($v0)
/* AF807C 80080EDC 3C048014 */  lui   $a0, %hi(D_8013D87C) # $a0, 0x8014
/* AF8080 80080EE0 0C00084C */  jal   osSyncPrintf
/* AF8084 80080EE4 2484D87C */   addiu $a0, %lo(D_8013D87C) # addiu $a0, $a0, -0x2784
/* AF8088 80080EE8 3C048014 */  lui   $a0, %hi(D_8013D884) # $a0, 0x8014
/* AF808C 80080EEC 2484D884 */  addiu $a0, %lo(D_8013D884) # addiu $a0, $a0, -0x277c
/* AF8090 80080EF0 0C00084C */  jal   osSyncPrintf
/* AF8094 80080EF4 87A50026 */   lh    $a1, 0x26($sp)
/* AF8098 80080EF8 3C048014 */  lui   $a0, %hi(D_8013D894) # $a0, 0x8014
/* AF809C 80080EFC 0C00084C */  jal   osSyncPrintf
/* AF80A0 80080F00 2484D894 */   addiu $a0, %lo(D_8013D894) # addiu $a0, $a0, -0x276c
/* AF80A4 80080F04 8FA40020 */  lw    $a0, 0x20($sp)
/* AF80A8 80080F08 0C0202AD */  jal   func_80080AB4
/* AF80AC 80080F0C 87A50026 */   lh    $a1, 0x26($sp)
/* AF80B0 80080F10 10000002 */  b     .L80080F1C
/* AF80B4 80080F14 00000000 */   nop   
.L80080F18:
/* AF80B8 80080F18 A420074C */  sh    $zero, 0x74c($at)
.L80080F1C:
/* AF80BC 80080F1C 3C188016 */  lui   $t8, %hi(gSaveContext+0x1422) # $t8, 0x8016
/* AF80C0 80080F20 8718FA82 */  lh    $t8, %lo(gSaveContext+0x1422)($t8)
/* AF80C4 80080F24 24010002 */  li    $at, 2
/* AF80C8 80080F28 13010002 */  beq   $t8, $at, .L80080F34
/* AF80CC 80080F2C 3C018016 */   lui   $at, %hi(gSaveContext+0x1422) # $at, 0x8016
/* AF80D0 80080F30 A420FA82 */  sh    $zero, %lo(gSaveContext+0x1422)($at)
.L80080F34:
/* AF80D4 80080F34 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF80D8 80080F38 27BD0020 */  addiu $sp, $sp, 0x20
/* AF80DC 80080F3C 03E00008 */  jr    $ra
/* AF80E0 80080F40 00000000 */   nop   

glabel func_80080F44
/* AF80E4 80080F44 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AF80E8 80080F48 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF80EC 80080F4C 0C01ECD9 */  jal   MapMark_ClearPointers
/* AF80F0 80080F50 00000000 */   nop   
/* AF80F4 80080F54 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF80F8 80080F58 3C018016 */  lui   $at, %hi(D_8015FFD0) # $at, 0x8016
/* AF80FC 80080F5C AC20FFD0 */  sw    $zero, %lo(D_8015FFD0)($at)
/* AF8100 80080F60 03E00008 */  jr    $ra
/* AF8104 80080F64 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_80080F68
/* AF8108 80080F68 3C088016 */  lui   $t0, %hi(D_8015FFD0) # $t0, 0x8016
/* AF810C 80080F6C 3C0E8012 */  lui   $t6, %hi(D_801257F8) # $t6, 0x8012
/* AF8110 80080F70 2508FFD0 */  addiu $t0, %lo(D_8015FFD0) # addiu $t0, $t0, -0x30
/* AF8114 80080F74 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AF8118 80080F78 25CE57F8 */  addiu $t6, %lo(D_801257F8) # addiu $t6, $t6, 0x57f8
/* AF811C 80080F7C 3C010001 */  lui   $at, 1
/* AF8120 80080F80 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF8124 80080F84 2402FFFF */  li    $v0, -1
/* AF8128 80080F88 AD0E0000 */  sw    $t6, ($t0)
/* AF812C 80080F8C 00811821 */  addu  $v1, $a0, $at
/* AF8130 80080F90 A4620748 */  sh    $v0, 0x748($v1)
/* AF8134 80080F94 A462074A */  sh    $v0, 0x74a($v1)
/* AF8138 80080F98 3C068014 */  lui   $a2, %hi(D_8013D898) # $a2, 0x8014
/* AF813C 80080F9C 24C6D898 */  addiu $a2, %lo(D_8013D898) # addiu $a2, $a2, -0x2768
/* AF8140 80080FA0 AFA40030 */  sw    $a0, 0x30($sp)
/* AF8144 80080FA4 AFA30018 */  sw    $v1, 0x18($sp)
/* AF8148 80080FA8 24051000 */  li    $a1, 4096
/* AF814C 80080FAC 0C031521 */  jal   Game_Alloc
/* AF8150 80080FB0 240701C9 */   li    $a3, 457
/* AF8154 80080FB4 8FA70030 */  lw    $a3, 0x30($sp)
/* AF8158 80080FB8 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AF815C 80080FBC 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AF8160 80080FC0 00E11821 */  addu  $v1, $a3, $at
/* AF8164 80080FC4 AC62013C */  sw    $v0, 0x13c($v1)
/* AF8168 80080FC8 3C048014 */  lui   $a0, %hi(D_8013D8A8) # $a0, 0x8014
/* AF816C 80080FCC 84E500A4 */  lh    $a1, 0xa4($a3)
/* AF8170 80080FD0 AFA3001C */  sw    $v1, 0x1c($sp)
/* AF8174 80080FD4 2484D8A8 */  addiu $a0, %lo(D_8013D8A8) # addiu $a0, $a0, -0x2758
/* AF8178 80080FD8 0C00084C */  jal   osSyncPrintf
/* AF817C 80080FDC 00403025 */   move  $a2, $v0
/* AF8180 80080FE0 8FA3001C */  lw    $v1, 0x1c($sp)
/* AF8184 80080FE4 3C088016 */  lui   $t0, %hi(D_8015FFD0) # $t0, 0x8016
/* AF8188 80080FE8 3C048014 */  lui   $a0, %hi(D_8013D8E8) # $a0, 0x8014
/* AF818C 80080FEC 8C6F013C */  lw    $t7, 0x13c($v1)
/* AF8190 80080FF0 2508FFD0 */  addiu $t0, %lo(D_8015FFD0) # addiu $t0, $t0, -0x30
/* AF8194 80080FF4 2484D8E8 */  addiu $a0, %lo(D_8013D8E8) # addiu $a0, $a0, -0x2718
/* AF8198 80080FF8 15E00006 */  bnez  $t7, .L80081014
/* AF819C 80080FFC 3C058014 */   lui   $a1, %hi(D_8013D908) # $a1, 0x8014
/* AF81A0 80081000 24A5D908 */  addiu $a1, %lo(D_8013D908) # addiu $a1, $a1, -0x26f8
/* AF81A4 80081004 0C0007FC */  jal   __assert
/* AF81A8 80081008 240601CB */   li    $a2, 459
/* AF81AC 8008100C 3C088016 */  lui   $t0, %hi(D_8015FFD0) # $t0, 0x8016
/* AF81B0 80081010 2508FFD0 */  addiu $t0, %lo(D_8015FFD0) # addiu $t0, $t0, -0x30
.L80081014:
/* AF81B4 80081014 8FA40030 */  lw    $a0, 0x30($sp)
/* AF81B8 80081018 848900A4 */  lh    $t1, 0xa4($a0)
/* AF81BC 8008101C 29210019 */  slti  $at, $t1, 0x19
/* AF81C0 80081020 1420000A */  bnez  $at, .L8008104C
/* AF81C4 80081024 01201025 */   move  $v0, $t1
/* AF81C8 80081028 2458FFAF */  addiu $t8, $v0, -0x51
/* AF81CC 8008102C 2F010014 */  sltiu $at, $t8, 0x14
/* AF81D0 80081030 1020007F */  beqz  $at, .L80081230
/* AF81D4 80081034 0018C080 */   sll   $t8, $t8, 2
/* AF81D8 80081038 3C018014 */  lui   $at, %hi(jtbl_8013DB58)
/* AF81DC 8008103C 00380821 */  addu  $at, $at, $t8
/* AF81E0 80081040 8C38DB58 */  lw    $t8, %lo(jtbl_8013DB58)($at)
/* AF81E4 80081044 03000008 */  jr    $t8
/* AF81E8 80081048 00000000 */   nop   
.L8008104C:
/* AF81EC 8008104C 2C410019 */  sltiu $at, $v0, 0x19
/* AF81F0 80081050 10200077 */  beqz  $at, .L80081230
/* AF81F4 80081054 0002C880 */   sll   $t9, $v0, 2
/* AF81F8 80081058 3C018014 */  lui   $at, %hi(jtbl_8013DBA8)
/* AF81FC 8008105C 00390821 */  addu  $at, $at, $t9
/* AF8200 80081060 8C39DBA8 */  lw    $t9, %lo(jtbl_8013DBA8)($at)
/* AF8204 80081064 03200008 */  jr    $t9
/* AF8208 80081068 00000000 */   nop   
/* AF820C 8008106C 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AF8210 80081070 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* AF8214 80081074 8C6B0000 */  lw    $t3, ($v1)
/* AF8218 80081078 3C078016 */  lui   $a3, %hi(gSaveContext) # $a3, 0x8016
/* AF821C 8008107C 24E7E660 */  addiu $a3, %lo(gSaveContext) # addiu $a3, $a3, -0x19a0
/* AF8220 80081080 2526FFAF */  addiu $a2, $t1, -0x51
/* AF8224 80081084 A4E61402 */  sh    $a2, 0x1402($a3)
/* AF8228 80081088 A5660F2A */  sh    $a2, 0xf2a($t3)
/* AF822C 8008108C 8D0C0000 */  lw    $t4, ($t0)
/* AF8230 80081090 000610C0 */  sll   $v0, $a2, 3
/* AF8234 80081094 8C780000 */  lw    $t8, ($v1)
/* AF8238 80081098 8D8D0034 */  lw    $t5, 0x34($t4)
/* AF823C 8008109C 00062C00 */  sll   $a1, $a2, 0x10
/* AF8240 800810A0 00052C03 */  sra   $a1, $a1, 0x10
/* AF8244 800810A4 01A27021 */  addu  $t6, $t5, $v0
/* AF8248 800810A8 85CF0000 */  lh    $t7, ($t6)
/* AF824C 800810AC A70F0F30 */  sh    $t7, 0xf30($t8)
/* AF8250 800810B0 8D190000 */  lw    $t9, ($t0)
/* AF8254 800810B4 8C6D0000 */  lw    $t5, ($v1)
/* AF8258 800810B8 8F2A0034 */  lw    $t2, 0x34($t9)
/* AF825C 800810BC 01425821 */  addu  $t3, $t2, $v0
/* AF8260 800810C0 856C0002 */  lh    $t4, 2($t3)
/* AF8264 800810C4 A5AC0F32 */  sh    $t4, 0xf32($t5)
/* AF8268 800810C8 8D0E0000 */  lw    $t6, ($t0)
/* AF826C 800810CC 8C6A0000 */  lw    $t2, ($v1)
/* AF8270 800810D0 8DCF0034 */  lw    $t7, 0x34($t6)
/* AF8274 800810D4 01E2C021 */  addu  $t8, $t7, $v0
/* AF8278 800810D8 87190004 */  lh    $t9, 4($t8)
/* AF827C 800810DC A5590F34 */  sh    $t9, 0xf34($t2)
/* AF8280 800810E0 8D0B0000 */  lw    $t3, ($t0)
/* AF8284 800810E4 8C6F0000 */  lw    $t7, ($v1)
/* AF8288 800810E8 8D6C0034 */  lw    $t4, 0x34($t3)
/* AF828C 800810EC 01826821 */  addu  $t5, $t4, $v0
/* AF8290 800810F0 85AE0006 */  lh    $t6, 6($t5)
/* AF8294 800810F4 A5EE0F36 */  sh    $t6, 0xf36($t7)
/* AF8298 800810F8 0C0202AD */  jal   func_80080AB4
/* AF829C 800810FC AFA6002C */   sw    $a2, 0x2c($sp)
/* AF82A0 80081100 3C088016 */  lui   $t0, %hi(D_8015FFD0) # $t0, 0x8016
/* AF82A4 80081104 2508FFD0 */  addiu $t0, %lo(D_8015FFD0) # addiu $t0, $t0, -0x30
/* AF82A8 80081108 8D180000 */  lw    $t8, ($t0)
/* AF82AC 8008110C 8FA6002C */  lw    $a2, 0x2c($sp)
/* AF82B0 80081110 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AF82B4 80081114 8F19002C */  lw    $t9, 0x2c($t8)
/* AF82B8 80081118 00061040 */  sll   $v0, $a2, 1
/* AF82BC 8008111C 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* AF82C0 80081120 03225021 */  addu  $t2, $t9, $v0
/* AF82C4 80081124 854B0000 */  lh    $t3, ($t2)
/* AF82C8 80081128 8C6C0000 */  lw    $t4, ($v1)
/* AF82CC 8008112C A58B0DCE */  sh    $t3, 0xdce($t4)
/* AF82D0 80081130 8D0D0000 */  lw    $t5, ($t0)
/* AF82D4 80081134 8C790000 */  lw    $t9, ($v1)
/* AF82D8 80081138 8DAE0030 */  lw    $t6, 0x30($t5)
/* AF82DC 8008113C 01C27821 */  addu  $t7, $t6, $v0
/* AF82E0 80081140 85F80000 */  lh    $t8, ($t7)
/* AF82E4 80081144 1000003A */  b     .L80081230
/* AF82E8 80081148 A7380DD0 */   sh    $t8, 0xdd0($t9)
/* AF82EC 8008114C 29210011 */  slti  $at, $t1, 0x11
/* AF82F0 80081150 14200003 */  bnez  $at, .L80081160
/* AF82F4 80081154 3C038016 */   lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AF82F8 80081158 10000002 */  b     .L80081164
/* AF82FC 8008115C 2526FFEF */   addiu $a2, $t1, -0x11
.L80081160:
/* AF8300 80081160 01203025 */  move  $a2, $t1
.L80081164:
/* AF8304 80081164 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* AF8308 80081168 8C6B0000 */  lw    $t3, ($v1)
/* AF830C 8008116C 3C078016 */  lui   $a3, %hi(gSaveContext) # $a3, 0x8016
/* AF8310 80081170 24E7E660 */  addiu $a3, %lo(gSaveContext) # addiu $a3, $a3, -0x19a0
/* AF8314 80081174 A4E61402 */  sh    $a2, 0x1402($a3)
/* AF8318 80081178 A5660F2A */  sh    $a2, 0xf2a($t3)
/* AF831C 8008117C 848900A4 */  lh    $t1, 0xa4($a0)
/* AF8320 80081180 2921000A */  slti  $at, $t1, 0xa
/* AF8324 80081184 14200003 */  bnez  $at, .L80081194
/* AF8328 80081188 29210011 */   slti  $at, $t1, 0x11
/* AF832C 8008118C 54200029 */  bnezl $at, .L80081234
/* AF8330 80081190 8FBF0014 */   lw    $ra, 0x14($sp)
.L80081194:
/* AF8334 80081194 8D0C0000 */  lw    $t4, ($t0)
/* AF8338 80081198 000610C0 */  sll   $v0, $a2, 3
/* AF833C 8008119C 8C780000 */  lw    $t8, ($v1)
/* AF8340 800811A0 8D8D003C */  lw    $t5, 0x3c($t4)
/* AF8344 800811A4 01A27021 */  addu  $t6, $t5, $v0
/* AF8348 800811A8 85CF0000 */  lh    $t7, ($t6)
/* AF834C 800811AC A70F0F30 */  sh    $t7, 0xf30($t8)
/* AF8350 800811B0 8D190000 */  lw    $t9, ($t0)
/* AF8354 800811B4 8C6D0000 */  lw    $t5, ($v1)
/* AF8358 800811B8 8F2A003C */  lw    $t2, 0x3c($t9)
/* AF835C 800811BC 01425821 */  addu  $t3, $t2, $v0
/* AF8360 800811C0 856C0002 */  lh    $t4, 2($t3)
/* AF8364 800811C4 A5AC0F32 */  sh    $t4, 0xf32($t5)
/* AF8368 800811C8 8D0E0000 */  lw    $t6, ($t0)
/* AF836C 800811CC 8C6A0000 */  lw    $t2, ($v1)
/* AF8370 800811D0 8DCF003C */  lw    $t7, 0x3c($t6)
/* AF8374 800811D4 01E2C021 */  addu  $t8, $t7, $v0
/* AF8378 800811D8 87190004 */  lh    $t9, 4($t8)
/* AF837C 800811DC A5590F34 */  sh    $t9, 0xf34($t2)
/* AF8380 800811E0 8D0B0000 */  lw    $t3, ($t0)
/* AF8384 800811E4 8C6F0000 */  lw    $t7, ($v1)
/* AF8388 800811E8 00065040 */  sll   $t2, $a2, 1
/* AF838C 800811EC 8D6C003C */  lw    $t4, 0x3c($t3)
/* AF8390 800811F0 01826821 */  addu  $t5, $t4, $v0
/* AF8394 800811F4 85AE0006 */  lh    $t6, 6($t5)
/* AF8398 800811F8 A5EE0F36 */  sh    $t6, 0xf36($t7)
/* AF839C 800811FC 8D180000 */  lw    $t8, ($t0)
/* AF83A0 80081200 8C6C0000 */  lw    $t4, ($v1)
/* AF83A4 80081204 8F190038 */  lw    $t9, 0x38($t8)
/* AF83A8 80081208 032A5821 */  addu  $t3, $t9, $t2
/* AF83AC 8008120C 85670000 */  lh    $a3, ($t3)
/* AF83B0 80081210 A5870F2C */  sh    $a3, 0xf2c($t4)
/* AF83B4 80081214 8C6D0000 */  lw    $t5, ($v1)
/* AF83B8 80081218 A5A70F2E */  sh    $a3, 0xf2e($t5)
/* AF83BC 8008121C 8FAE0018 */  lw    $t6, 0x18($sp)
/* AF83C0 80081220 0C020381 */  jal   func_80080E04
/* AF83C4 80081224 81C51CBC */   lb    $a1, 0x1cbc($t6)
/* AF83C8 80081228 0C01ECA4 */  jal   MapMark_Init
/* AF83CC 8008122C 8FA40030 */   lw    $a0, 0x30($sp)
.L80081230:
/* AF83D0 80081230 8FBF0014 */  lw    $ra, 0x14($sp)
.L80081234:
/* AF83D4 80081234 27BD0030 */  addiu $sp, $sp, 0x30
/* AF83D8 80081238 03E00008 */  jr    $ra
/* AF83DC 8008123C 00000000 */   nop   

glabel func_80081240
/* AF83E0 80081240 27BDFF90 */  addiu $sp, $sp, -0x70
/* AF83E4 80081244 AFBF001C */  sw    $ra, 0x1c($sp)
/* AF83E8 80081248 AFB00018 */  sw    $s0, 0x18($sp)
/* AF83EC 8008124C AFA40070 */  sw    $a0, 0x70($sp)
/* AF83F0 80081250 8C8F1C44 */  lw    $t7, 0x1c44($a0)
/* AF83F4 80081254 3C068014 */  lui   $a2, %hi(D_8013D918) # $a2, 0x8014
/* AF83F8 80081258 24C6D918 */  addiu $a2, %lo(D_8013D918) # addiu $a2, $a2, -0x26e8
/* AF83FC 8008125C AFAF0068 */  sw    $t7, 0x68($sp)
/* AF8400 80081260 8C850000 */  lw    $a1, ($a0)
/* AF8404 80081264 27A40050 */  addiu $a0, $sp, 0x50
/* AF8408 80081268 24070235 */  li    $a3, 565
/* AF840C 8008126C 0C031AB1 */  jal   func_800C6AC4
/* AF8410 80081270 00A08025 */   move  $s0, $a1
/* AF8414 80081274 8FA20070 */  lw    $v0, 0x70($sp)
/* AF8418 80081278 3C180001 */  lui   $t8, 1
/* AF841C 8008127C 0302C021 */  addu  $t8, $t8, $v0
/* AF8420 80081280 97180744 */  lhu   $t8, 0x744($t8)
/* AF8424 80081284 2B0100AA */  slti  $at, $t8, 0xaa
/* AF8428 80081288 1420010A */  bnez  $at, .L800816B4
/* AF842C 8008128C 00000000 */   nop   
/* AF8430 80081290 0C025285 */  jal   func_80094A14
/* AF8434 80081294 8C440000 */   lw    $a0, ($v0)
/* AF8438 80081298 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF843C 8008129C 3C08DA38 */  lui   $t0, (0xDA380003 >> 16) # lui $t0, 0xda38
/* AF8440 800812A0 3C098013 */  lui   $t1, %hi(D_8012DB20) # $t1, 0x8013
/* AF8444 800812A4 24590008 */  addiu $t9, $v0, 8
/* AF8448 800812A8 AE1902B0 */  sw    $t9, 0x2b0($s0)
/* AF844C 800812AC 2529DB20 */  addiu $t1, %lo(D_8012DB20) # addiu $t1, $t1, -0x24e0
/* AF8450 800812B0 35080003 */  ori   $t0, (0xDA380003 & 0xFFFF) # ori $t0, $t0, 3
/* AF8454 800812B4 AC480000 */  sw    $t0, ($v0)
/* AF8458 800812B8 AC490004 */  sw    $t1, 4($v0)
/* AF845C 800812BC 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF8460 800812C0 3C0BFC30 */  lui   $t3, (0xFC309661 >> 16) # lui $t3, 0xfc30
/* AF8464 800812C4 3C0C552E */  lui   $t4, (0x552EFF7F >> 16) # lui $t4, 0x552e
/* AF8468 800812C8 244A0008 */  addiu $t2, $v0, 8
/* AF846C 800812CC AE0A02B0 */  sw    $t2, 0x2b0($s0)
/* AF8470 800812D0 358CFF7F */  ori   $t4, (0x552EFF7F & 0xFFFF) # ori $t4, $t4, 0xff7f
/* AF8474 800812D4 356B9661 */  ori   $t3, (0xFC309661 & 0xFFFF) # ori $t3, $t3, 0x9661
/* AF8478 800812D8 AC4B0000 */  sw    $t3, ($v0)
/* AF847C 800812DC AC4C0004 */  sw    $t4, 4($v0)
/* AF8480 800812E0 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF8484 800812E4 3C0FFB00 */  lui   $t7, 0xfb00
/* AF8488 800812E8 240E00FF */  li    $t6, 255
/* AF848C 800812EC 244D0008 */  addiu $t5, $v0, 8
/* AF8490 800812F0 AE0D02B0 */  sw    $t5, 0x2b0($s0)
/* AF8494 800812F4 AC4E0004 */  sw    $t6, 4($v0)
/* AF8498 800812F8 AC4F0000 */  sw    $t7, ($v0)
/* AF849C 800812FC 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF84A0 80081300 3C08FFFD */  lui   $t0, (0xFFFDF6FB >> 16) # lui $t0, 0xfffd
/* AF84A4 80081304 3C19FCFF */  lui   $t9, (0xFCFFFFFF >> 16) # lui $t9, 0xfcff
/* AF84A8 80081308 24580008 */  addiu $t8, $v0, 8
/* AF84AC 8008130C AE1802B0 */  sw    $t8, 0x2b0($s0)
/* AF84B0 80081310 3739FFFF */  ori   $t9, (0xFCFFFFFF & 0xFFFF) # ori $t9, $t9, 0xffff
/* AF84B4 80081314 3508F6FB */  ori   $t0, (0xFFFDF6FB & 0xFFFF) # ori $t0, $t0, 0xf6fb
/* AF84B8 80081318 AC480004 */  sw    $t0, 4($v0)
/* AF84BC 8008131C AC590000 */  sw    $t9, ($v0)
/* AF84C0 80081320 8FA50068 */  lw    $a1, 0x68($sp)
/* AF84C4 80081324 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AF84C8 80081328 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AF84CC 8008132C C4A40024 */  lwc1  $f4, 0x24($a1)
/* AF84D0 80081330 C4A8002C */  lwc1  $f8, 0x2c($a1)
/* AF84D4 80081334 846B0F30 */  lh    $t3, 0xf30($v1)
/* AF84D8 80081338 4600218D */  trunc.w.s $f6, $f4
/* AF84DC 8008133C 3C014120 */  li    $at, 0x41200000 # 0.000000
/* AF84E0 80081340 44810000 */  mtc1  $at, $f0
/* AF84E4 80081344 4600428D */  trunc.w.s $f10, $f8
/* AF84E8 80081348 44023000 */  mfc1  $v0, $f6
/* AF84EC 8008134C 846C0F32 */  lh    $t4, 0xf32($v1)
/* AF84F0 80081350 846D0F34 */  lh    $t5, 0xf34($v1)
/* AF84F4 80081354 00021400 */  sll   $v0, $v0, 0x10
/* AF84F8 80081358 00021403 */  sra   $v0, $v0, 0x10
/* AF84FC 8008135C 004B001A */  div   $zero, $v0, $t3
/* AF8500 80081360 44045000 */  mfc1  $a0, $f10
/* AF8504 80081364 846E0F36 */  lh    $t6, 0xf36($v1)
/* AF8508 80081368 24060000 */  li    $a2, 0
/* AF850C 8008136C 00042400 */  sll   $a0, $a0, 0x10
/* AF8510 80081370 00042403 */  sra   $a0, $a0, 0x10
/* AF8514 80081374 15600002 */  bnez  $t3, .L80081380
/* AF8518 80081378 00000000 */   nop   
/* AF851C 8008137C 0007000D */  break 7
.L80081380:
/* AF8520 80081380 2401FFFF */  li    $at, -1
/* AF8524 80081384 15610004 */  bne   $t3, $at, .L80081398
/* AF8528 80081388 3C018000 */   lui   $at, 0x8000
/* AF852C 8008138C 14410002 */  bne   $v0, $at, .L80081398
/* AF8530 80081390 00000000 */   nop   
/* AF8534 80081394 0006000D */  break 6
.L80081398:
/* AF8538 80081398 00001012 */  mflo  $v0
/* AF853C 8008139C 00021400 */  sll   $v0, $v0, 0x10
/* AF8540 800813A0 00021403 */  sra   $v0, $v0, 0x10
/* AF8544 800813A4 008C001A */  div   $zero, $a0, $t4
/* AF8548 800813A8 15800002 */  bnez  $t4, .L800813B4
/* AF854C 800813AC 00000000 */   nop   
/* AF8550 800813B0 0007000D */  break 7
.L800813B4:
/* AF8554 800813B4 2401FFFF */  li    $at, -1
/* AF8558 800813B8 15810004 */  bne   $t4, $at, .L800813CC
/* AF855C 800813BC 3C018000 */   li    $at, 0x80000000 # 0.000000
/* AF8560 800813C0 14810002 */  bne   $a0, $at, .L800813CC
/* AF8564 800813C4 00000000 */   nop   
/* AF8568 800813C8 0006000D */  break 6
.L800813CC:
/* AF856C 800813CC 00002012 */  mflo  $a0
/* AF8570 800813D0 00042400 */  sll   $a0, $a0, 0x10
/* AF8574 800813D4 00042403 */  sra   $a0, $a0, 0x10
/* AF8578 800813D8 01A27821 */  addu  $t7, $t5, $v0
/* AF857C 800813DC 01C4C023 */  subu  $t8, $t6, $a0
/* AF8580 800813E0 44982000 */  mtc1  $t8, $f4
/* AF8584 800813E4 448F8000 */  mtc1  $t7, $f16
/* AF8588 800813E8 00003825 */  move  $a3, $zero
/* AF858C 800813EC 468021A0 */  cvt.s.w $f6, $f4
/* AF8590 800813F0 468084A0 */  cvt.s.w $f18, $f16
/* AF8594 800813F4 46003383 */  div.s $f14, $f6, $f0
/* AF8598 800813F8 0C034261 */  jal   func_800D0984
/* AF859C 800813FC 46009303 */   div.s $f12, $f18, $f0
/* AF85A0 80081400 3C018014 */  lui   $at, %hi(D_8013DC0C)
/* AF85A4 80081404 C42CDC0C */  lwc1  $f12, %lo(D_8013DC0C)($at)
/* AF85A8 80081408 24070001 */  li    $a3, 1
/* AF85AC 8008140C 44066000 */  mfc1  $a2, $f12
/* AF85B0 80081410 0C0342A3 */  jal   func_800D0A8C
/* AF85B4 80081414 46006386 */   mov.s $f14, $f12
/* AF85B8 80081418 3C018014 */  lui   $at, %hi(D_8013DC10)
/* AF85BC 8008141C C42CDC10 */  lwc1  $f12, %lo(D_8013DC10)($at)
/* AF85C0 80081420 0C0342DC */  jal   func_800D0B70
/* AF85C4 80081424 24050001 */   li    $a1, 1
/* AF85C8 80081428 8FB90068 */  lw    $t9, 0x68($sp)
/* AF85CC 8008142C 24097FFF */  li    $t1, 32767
/* AF85D0 80081430 24050001 */  li    $a1, 1
/* AF85D4 80081434 872800B6 */  lh    $t0, 0xb6($t9)
/* AF85D8 80081438 01281023 */  subu  $v0, $t1, $t0
/* AF85DC 8008143C 04410002 */  bgez  $v0, .L80081448
/* AF85E0 80081440 00400821 */   addu  $at, $v0, $zero
/* AF85E4 80081444 244103FF */  addiu $at, $v0, 0x3ff
.L80081448:
/* AF85E8 80081448 00011283 */  sra   $v0, $at, 0xa
/* AF85EC 8008144C 00021400 */  sll   $v0, $v0, 0x10
/* AF85F0 80081450 00021403 */  sra   $v0, $v0, 0x10
/* AF85F4 80081454 44824000 */  mtc1  $v0, $f8
/* AF85F8 80081458 3C014120 */  li    $at, 0x41200000 # 0.000000
/* AF85FC 8008145C 44818000 */  mtc1  $at, $f16
/* AF8600 80081460 468042A0 */  cvt.s.w $f10, $f8
/* AF8604 80081464 0C034348 */  jal   func_800D0D20
/* AF8608 80081468 46105303 */   div.s $f12, $f10, $f16
/* AF860C 8008146C 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF8610 80081470 3C0BDA38 */  lui   $t3, (0xDA380003 >> 16) # lui $t3, 0xda38
/* AF8614 80081474 356B0003 */  ori   $t3, (0xDA380003 & 0xFFFF) # ori $t3, $t3, 3
/* AF8618 80081478 244A0008 */  addiu $t2, $v0, 8
/* AF861C 8008147C AE0A02B0 */  sw    $t2, 0x2b0($s0)
/* AF8620 80081480 AC4B0000 */  sw    $t3, ($v0)
/* AF8624 80081484 8FAC0070 */  lw    $t4, 0x70($sp)
/* AF8628 80081488 3C058014 */  lui   $a1, %hi(D_8013D928) # $a1, 0x8014
/* AF862C 8008148C 24A5D928 */  addiu $a1, %lo(D_8013D928) # addiu $a1, $a1, -0x26d8
/* AF8630 80081490 8D840000 */  lw    $a0, ($t4)
/* AF8634 80081494 24060249 */  li    $a2, 585
/* AF8638 80081498 0C0346A2 */  jal   func_800D1A88
/* AF863C 8008149C AFA2003C */   sw    $v0, 0x3c($sp)
/* AF8640 800814A0 8FA3003C */  lw    $v1, 0x3c($sp)
/* AF8644 800814A4 3C0EC8FF */  lui   $t6, (0xC8FF00FF >> 16) # lui $t6, 0xc8ff
/* AF8648 800814A8 35CE00FF */  ori   $t6, (0xC8FF00FF & 0xFFFF) # ori $t6, $t6, 0xff
/* AF864C 800814AC AC620004 */  sw    $v0, 4($v1)
/* AF8650 800814B0 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF8654 800814B4 3C0FFA00 */  lui   $t7, 0xfa00
/* AF8658 800814B8 3C050401 */  lui   $a1, %hi(D_0400C820) # $a1, 0x401
/* AF865C 800814BC 244D0008 */  addiu $t5, $v0, 8
/* AF8660 800814C0 AE0D02B0 */  sw    $t5, 0x2b0($s0)
/* AF8664 800814C4 AC4E0004 */  sw    $t6, 4($v0)
/* AF8668 800814C8 AC4F0000 */  sw    $t7, ($v0)
/* AF866C 800814CC 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF8670 800814D0 24A5C820 */  addiu $a1, %lo(D_0400C820) # addiu $a1, $a1, -0x37e0
/* AF8674 800814D4 3C19DE00 */  lui   $t9, 0xde00
/* AF8678 800814D8 24580008 */  addiu $t8, $v0, 8
/* AF867C 800814DC AE1802B0 */  sw    $t8, 0x2b0($s0)
/* AF8680 800814E0 AC450004 */  sw    $a1, 4($v0)
/* AF8684 800814E4 AC590000 */  sw    $t9, ($v0)
/* AF8688 800814E8 3C028012 */  lui   $v0, %hi(D_80123A50) # $v0, 0x8012
/* AF868C 800814EC 84423A50 */  lh    $v0, %lo(D_80123A50)($v0)
/* AF8690 800814F0 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AF8694 800814F4 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AF8698 800814F8 3C048012 */  lui   $a0, %hi(D_80123A54) # $a0, 0x8012
/* AF869C 800814FC 84843A54 */  lh    $a0, %lo(D_80123A54)($a0)
/* AF86A0 80081500 84690F30 */  lh    $t1, 0xf30($v1)
/* AF86A4 80081504 3C014120 */  li    $at, 0x41200000 # 0.000000
/* AF86A8 80081508 44810000 */  mtc1  $at, $f0
/* AF86AC 8008150C 0049001A */  div   $zero, $v0, $t1
/* AF86B0 80081510 15200002 */  bnez  $t1, .L8008151C
/* AF86B4 80081514 00000000 */   nop   
/* AF86B8 80081518 0007000D */  break 7
.L8008151C:
/* AF86BC 8008151C 2401FFFF */  li    $at, -1
/* AF86C0 80081520 15210004 */  bne   $t1, $at, .L80081534
/* AF86C4 80081524 3C018000 */   lui   $at, 0x8000
/* AF86C8 80081528 14410002 */  bne   $v0, $at, .L80081534
/* AF86CC 8008152C 00000000 */   nop   
/* AF86D0 80081530 0006000D */  break 6
.L80081534:
/* AF86D4 80081534 84680F32 */  lh    $t0, 0xf32($v1)
/* AF86D8 80081538 00001012 */  mflo  $v0
/* AF86DC 8008153C 846A0F34 */  lh    $t2, 0xf34($v1)
/* AF86E0 80081540 846C0F36 */  lh    $t4, 0xf36($v1)
/* AF86E4 80081544 0088001A */  div   $zero, $a0, $t0
/* AF86E8 80081548 00021400 */  sll   $v0, $v0, 0x10
/* AF86EC 8008154C 00021403 */  sra   $v0, $v0, 0x10
/* AF86F0 80081550 15000002 */  bnez  $t0, .L8008155C
/* AF86F4 80081554 00000000 */   nop   
/* AF86F8 80081558 0007000D */  break 7
.L8008155C:
/* AF86FC 8008155C 2401FFFF */  li    $at, -1
/* AF8700 80081560 15010004 */  bne   $t0, $at, .L80081574
/* AF8704 80081564 3C018000 */   li    $at, 0x80000000 # 0.000000
/* AF8708 80081568 14810002 */  bne   $a0, $at, .L80081574
/* AF870C 8008156C 00000000 */   nop   
/* AF8710 80081570 0006000D */  break 6
.L80081574:
/* AF8714 80081574 00002012 */  mflo  $a0
/* AF8718 80081578 00042400 */  sll   $a0, $a0, 0x10
/* AF871C 8008157C 00042403 */  sra   $a0, $a0, 0x10
/* AF8720 80081580 01425821 */  addu  $t3, $t2, $v0
/* AF8724 80081584 01846823 */  subu  $t5, $t4, $a0
/* AF8728 80081588 448D3000 */  mtc1  $t5, $f6
/* AF872C 8008158C 448B9000 */  mtc1  $t3, $f18
/* AF8730 80081590 AFA50024 */  sw    $a1, 0x24($sp)
/* AF8734 80081594 46803220 */  cvt.s.w $f8, $f6
/* AF8738 80081598 24060000 */  li    $a2, 0
/* AF873C 8008159C 00003825 */  move  $a3, $zero
/* AF8740 800815A0 46809120 */  cvt.s.w $f4, $f18
/* AF8744 800815A4 46004383 */  div.s $f14, $f8, $f0
/* AF8748 800815A8 0C034261 */  jal   func_800D0984
/* AF874C 800815AC 46002303 */   div.s $f12, $f4, $f0
/* AF8750 800815B0 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* AF8754 800815B4 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* AF8758 800815B8 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* AF875C 800815BC 44819000 */  mtc1  $at, $f18
/* AF8760 800815C0 85EE0F26 */  lh    $t6, 0xf26($t7)
/* AF8764 800815C4 24070001 */  li    $a3, 1
/* AF8768 800815C8 448E5000 */  mtc1  $t6, $f10
/* AF876C 800815CC 00000000 */  nop   
/* AF8770 800815D0 46805420 */  cvt.s.w $f16, $f10
/* AF8774 800815D4 46128303 */  div.s $f12, $f16, $f18
/* AF8778 800815D8 44066000 */  mfc1  $a2, $f12
/* AF877C 800815DC 0C0342A3 */  jal   func_800D0A8C
/* AF8780 800815E0 46006386 */   mov.s $f14, $f12
/* AF8784 800815E4 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* AF8788 800815E8 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* AF878C 800815EC 3C014120 */  li    $at, 0x41200000 # 0.000000
/* AF8790 800815F0 44814000 */  mtc1  $at, $f8
/* AF8794 800815F4 87190F7C */  lh    $t9, 0xf7c($t8)
/* AF8798 800815F8 24050001 */  li    $a1, 1
/* AF879C 800815FC 44992000 */  mtc1  $t9, $f4
/* AF87A0 80081600 00000000 */  nop   
/* AF87A4 80081604 468021A0 */  cvt.s.w $f6, $f4
/* AF87A8 80081608 0C0342DC */  jal   func_800D0B70
/* AF87AC 8008160C 46083303 */   div.s $f12, $f6, $f8
/* AF87B0 80081610 3C098012 */  lui   $t1, %hi(D_80123A58) # $t1, 0x8012
/* AF87B4 80081614 85293A58 */  lh    $t1, %lo(D_80123A58)($t1)
/* AF87B8 80081618 3C014120 */  li    $at, 0x41200000 # 0.000000
/* AF87BC 8008161C 44819000 */  mtc1  $at, $f18
/* AF87C0 80081620 44895000 */  mtc1  $t1, $f10
/* AF87C4 80081624 24050001 */  li    $a1, 1
/* AF87C8 80081628 46805420 */  cvt.s.w $f16, $f10
/* AF87CC 8008162C 0C034348 */  jal   func_800D0D20
/* AF87D0 80081630 46128303 */   div.s $f12, $f16, $f18
/* AF87D4 80081634 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF87D8 80081638 3C0ADA38 */  lui   $t2, (0xDA380003 >> 16) # lui $t2, 0xda38
/* AF87DC 8008163C 354A0003 */  ori   $t2, (0xDA380003 & 0xFFFF) # ori $t2, $t2, 3
/* AF87E0 80081640 24480008 */  addiu $t0, $v0, 8
/* AF87E4 80081644 AE0802B0 */  sw    $t0, 0x2b0($s0)
/* AF87E8 80081648 AC4A0000 */  sw    $t2, ($v0)
/* AF87EC 8008164C 8FAB0070 */  lw    $t3, 0x70($sp)
/* AF87F0 80081650 3C058014 */  lui   $a1, %hi(D_8013D938) # $a1, 0x8014
/* AF87F4 80081654 24A5D938 */  addiu $a1, %lo(D_8013D938) # addiu $a1, $a1, -0x26c8
/* AF87F8 80081658 8D640000 */  lw    $a0, ($t3)
/* AF87FC 8008165C 2406025B */  li    $a2, 603
/* AF8800 80081660 0C0346A2 */  jal   func_800D1A88
/* AF8804 80081664 AFA20030 */   sw    $v0, 0x30($sp)
/* AF8808 80081668 8FA30030 */  lw    $v1, 0x30($sp)
/* AF880C 8008166C 3C0DFA00 */  lui   $t5, (0xFA0000FF >> 16) # lui $t5, 0xfa00
/* AF8810 80081670 3C0FC800 */  lui   $t7, (0xC80000FF >> 16) # lui $t7, 0xc800
/* AF8814 80081674 AC620004 */  sw    $v0, 4($v1)
/* AF8818 80081678 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF881C 8008167C 35EF00FF */  ori   $t7, (0xC80000FF & 0xFFFF) # ori $t7, $t7, 0xff
/* AF8820 80081680 35AD00FF */  ori   $t5, (0xFA0000FF & 0xFFFF) # ori $t5, $t5, 0xff
/* AF8824 80081684 244C0008 */  addiu $t4, $v0, 8
/* AF8828 80081688 AE0C02B0 */  sw    $t4, 0x2b0($s0)
/* AF882C 8008168C AC4F0004 */  sw    $t7, 4($v0)
/* AF8830 80081690 AC4D0000 */  sw    $t5, ($v0)
/* AF8834 80081694 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF8838 80081698 3C18DE00 */  lui   $t8, 0xde00
/* AF883C 8008169C 244E0008 */  addiu $t6, $v0, 8
/* AF8840 800816A0 AE0E02B0 */  sw    $t6, 0x2b0($s0)
/* AF8844 800816A4 AC580000 */  sw    $t8, ($v0)
/* AF8848 800816A8 8FB90024 */  lw    $t9, 0x24($sp)
/* AF884C 800816AC AC590004 */  sw    $t9, 4($v0)
/* AF8850 800816B0 8FA20070 */  lw    $v0, 0x70($sp)
.L800816B4:
/* AF8854 800816B4 3C068014 */  lui   $a2, %hi(D_8013D948) # $a2, 0x8014
/* AF8858 800816B8 24C6D948 */  addiu $a2, %lo(D_8013D948) # addiu $a2, $a2, -0x26b8
/* AF885C 800816BC 27A40050 */  addiu $a0, $sp, 0x50
/* AF8860 800816C0 8C450000 */  lw    $a1, ($v0)
/* AF8864 800816C4 0C031AD5 */  jal   func_800C6B54
/* AF8868 800816C8 2407025F */   li    $a3, 607
/* AF886C 800816CC 8FBF001C */  lw    $ra, 0x1c($sp)
/* AF8870 800816D0 8FB00018 */  lw    $s0, 0x18($sp)
/* AF8874 800816D4 27BD0070 */  addiu $sp, $sp, 0x70
/* AF8878 800816D8 03E00008 */  jr    $ra
/* AF887C 800816DC 00000000 */   nop   

glabel func_800816E0
/* AF8880 800816E0 3C0E8016 */  lui   $t6, %hi(gSaveContext+0x1402) # $t6, 0x8016
/* AF8884 800816E4 95CEFA62 */  lhu   $t6, %lo(gSaveContext+0x1402)($t6)
/* AF8888 800816E8 27BDFEF0 */  addiu $sp, $sp, -0x110
/* AF888C 800816EC AFBF001C */  sw    $ra, 0x1c($sp)
/* AF8890 800816F0 AFA40110 */  sw    $a0, 0x110($sp)
/* AF8894 800816F4 AFAE0100 */  sw    $t6, 0x100($sp)
/* AF8898 800816F8 8C850000 */  lw    $a1, ($a0)
/* AF889C 800816FC 3C068014 */  lui   $a2, %hi(D_8013D958) # $a2, 0x8014
/* AF88A0 80081700 24C6D958 */  addiu $a2, %lo(D_8013D958) # addiu $a2, $a2, -0x26a8
/* AF88A4 80081704 27A400EC */  addiu $a0, $sp, 0xec
/* AF88A8 80081708 24070272 */  li    $a3, 626
/* AF88AC 8008170C 0C031AB1 */  jal   func_800C6AC4
/* AF88B0 80081710 AFA500FC */   sw    $a1, 0xfc($sp)
/* AF88B4 80081714 8FB80110 */  lw    $t8, 0x110($sp)
/* AF88B8 80081718 3C190001 */  lui   $t9, 1
/* AF88BC 8008171C 8FA800FC */  lw    $t0, 0xfc($sp)
/* AF88C0 80081720 0338C821 */  addu  $t9, $t9, $t8
/* AF88C4 80081724 97390934 */  lhu   $t9, 0x934($t9)
/* AF88C8 80081728 2B210004 */  slti  $at, $t9, 4
/* AF88CC 8008172C 502002BC */  beql  $at, $zero, .L80082220
/* AF88D0 80081730 8FAF0110 */   lw    $t7, 0x110($sp)
/* AF88D4 80081734 870200A4 */  lh    $v0, 0xa4($t8)
/* AF88D8 80081738 2841000A */  slti  $at, $v0, 0xa
/* AF88DC 8008173C 14200009 */  bnez  $at, .L80081764
/* AF88E0 80081740 244EFFAF */   addiu $t6, $v0, -0x51
/* AF88E4 80081744 2DC10014 */  sltiu $at, $t6, 0x14
/* AF88E8 80081748 102002B4 */  beqz  $at, .L8008221C
/* AF88EC 8008174C 000E7080 */   sll   $t6, $t6, 2
/* AF88F0 80081750 3C018014 */  lui   $at, %hi(jtbl_8013DC14)
/* AF88F4 80081754 002E0821 */  addu  $at, $at, $t6
/* AF88F8 80081758 8C2EDC14 */  lw    $t6, %lo(jtbl_8013DC14)($at)
/* AF88FC 8008175C 01C00008 */  jr    $t6
/* AF8900 80081760 00000000 */   nop   
.L80081764:
/* AF8904 80081764 2C41000A */  sltiu $at, $v0, 0xa
/* AF8908 80081768 102002AC */  beqz  $at, .L8008221C
/* AF890C 8008176C 00027880 */   sll   $t7, $v0, 2
/* AF8910 80081770 3C018014 */  lui   $at, %hi(jtbl_8013DC64)
/* AF8914 80081774 002F0821 */  addu  $at, $at, $t7
/* AF8918 80081778 8C2FDC64 */  lw    $t7, %lo(jtbl_8013DC64)($at)
/* AF891C 8008177C 01E00008 */  jr    $t7
/* AF8920 80081780 00000000 */   nop   
/* AF8924 80081784 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* AF8928 80081788 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* AF892C 8008178C 8FAE0110 */  lw    $t6, 0x110($sp)
/* AF8930 80081790 87380DD2 */  lh    $t8, 0xdd2($t9)
/* AF8934 80081794 57000091 */  bnezl $t8, .L800819DC
/* AF8938 80081798 8FAE0110 */   lw    $t6, 0x110($sp)
/* AF893C 8008179C 8DC40000 */  lw    $a0, ($t6)
/* AF8940 800817A0 0C025148 */  jal   func_80094520
/* AF8944 800817A4 AFA800FC */   sw    $t0, 0xfc($sp)
/* AF8948 800817A8 8FA800FC */  lw    $t0, 0xfc($sp)
/* AF894C 800817AC 3C19FC61 */  lui   $t9, (0xFC6196C3 >> 16) # lui $t9, 0xfc61
/* AF8950 800817B0 3C18FF2F */  lui   $t8, (0xFF2FFFFF >> 16) # lui $t8, 0xff2f
/* AF8954 800817B4 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8958 800817B8 3718FFFF */  ori   $t8, (0xFF2FFFFF & 0xFFFF) # ori $t8, $t8, 0xffff
/* AF895C 800817BC 373996C3 */  ori   $t9, (0xFC6196C3 & 0xFFFF) # ori $t9, $t9, 0x96c3
/* AF8960 800817C0 246F0008 */  addiu $t7, $v1, 8
/* AF8964 800817C4 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF8968 800817C8 AC780004 */  sw    $t8, 4($v1)
/* AF896C 800817CC AC790000 */  sw    $t9, ($v1)
/* AF8970 800817D0 8FAE0100 */  lw    $t6, 0x100($sp)
/* AF8974 800817D4 3C0F8016 */  lui   $t7, %hi(gSaveContext) # $t7, 0x8016
/* AF8978 800817D8 25EFE660 */  addiu $t7, %lo(gSaveContext) # addiu $t7, $t7, -0x19a0
/* AF897C 800817DC 3C198012 */  lui   $t9, %hi(D_80127128) # $t9, 0x8012
/* AF8980 800817E0 01CF3021 */  addu  $a2, $t6, $t7
/* AF8984 800817E4 90C200A8 */  lbu   $v0, 0xa8($a2)
/* AF8988 800817E8 8F397128 */  lw    $t9, %lo(D_80127128)($t9)
/* AF898C 800817EC 0322C024 */  and   $t8, $t9, $v0
/* AF8990 800817F0 1300006D */  beqz  $t8, .L800819A8
/* AF8994 800817F4 00000000 */   nop   
/* AF8998 800817F8 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF899C 800817FC 3C0FFA00 */  lui   $t7, 0xfa00
/* AF89A0 80081800 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AF89A4 80081804 246E0008 */  addiu $t6, $v1, 8
/* AF89A8 80081808 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF89AC 8008180C AC6F0000 */  sw    $t7, ($v1)
/* AF89B0 80081810 8FA50110 */  lw    $a1, 0x110($sp)
/* AF89B4 80081814 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AF89B8 80081818 3C0A0700 */  lui   $t2, 0x700
/* AF89BC 8008181C 00A12821 */  addu  $a1, $a1, $at
/* AF89C0 80081820 94B90254 */  lhu   $t9, 0x254($a1)
/* AF89C4 80081824 3C0164FF */  lui   $at, (0x64FFFF00 >> 16) # lui $at, 0x64ff
/* AF89C8 80081828 3421FF00 */  ori   $at, (0x64FFFF00 & 0xFFFF) # ori $at, $at, 0xff00
/* AF89CC 8008182C 333800FF */  andi  $t8, $t9, 0xff
/* AF89D0 80081830 03017025 */  or    $t6, $t8, $at
/* AF89D4 80081834 AC6E0004 */  sw    $t6, 4($v1)
/* AF89D8 80081838 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF89DC 8008183C 3C19FD90 */  lui   $t9, 0xfd90
/* AF89E0 80081840 3C0BE700 */  lui   $t3, 0xe700
/* AF89E4 80081844 246F0008 */  addiu $t7, $v1, 8
/* AF89E8 80081848 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF89EC 8008184C AC790000 */  sw    $t9, ($v1)
/* AF89F0 80081850 8CB8013C */  lw    $t8, 0x13c($a1)
/* AF89F4 80081854 3C0FF590 */  lui   $t7, 0xf590
/* AF89F8 80081858 3C0CF200 */  lui   $t4, 0xf200
/* AF89FC 8008185C AC780004 */  sw    $t8, 4($v1)
/* AF8A00 80081860 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8A04 80081864 3C18E600 */  lui   $t8, 0xe600
/* AF8A08 80081868 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AF8A0C 8008186C 246E0008 */  addiu $t6, $v1, 8
/* AF8A10 80081870 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF8A14 80081874 AC6A0004 */  sw    $t2, 4($v1)
/* AF8A18 80081878 AC6F0000 */  sw    $t7, ($v1)
/* AF8A1C 8008187C 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8A20 80081880 3C0FF300 */  lui   $t7, 0xf300
/* AF8A24 80081884 3C01E400 */  lui   $at, 0xe400
/* AF8A28 80081888 24790008 */  addiu $t9, $v1, 8
/* AF8A2C 8008188C AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AF8A30 80081890 AC600004 */  sw    $zero, 4($v1)
/* AF8A34 80081894 AC780000 */  sw    $t8, ($v1)
/* AF8A38 80081898 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8A3C 8008189C 3C19077F */  lui   $t9, (0x077F7156 >> 16) # lui $t9, 0x77f
/* AF8A40 800818A0 37397156 */  ori   $t9, (0x077F7156 & 0xFFFF) # ori $t9, $t9, 0x7156
/* AF8A44 800818A4 246E0008 */  addiu $t6, $v1, 8
/* AF8A48 800818A8 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF8A4C 800818AC AC790004 */  sw    $t9, 4($v1)
/* AF8A50 800818B0 AC6F0000 */  sw    $t7, ($v1)
/* AF8A54 800818B4 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8A58 800818B8 3C0FF580 */  lui   $t7, (0xF5800C00 >> 16) # lui $t7, 0xf580
/* AF8A5C 800818BC 35EF0C00 */  ori   $t7, (0xF5800C00 & 0xFFFF) # ori $t7, $t7, 0xc00
/* AF8A60 800818C0 24780008 */  addiu $t8, $v1, 8
/* AF8A64 800818C4 AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AF8A68 800818C8 AC600004 */  sw    $zero, 4($v1)
/* AF8A6C 800818CC AC6B0000 */  sw    $t3, ($v1)
/* AF8A70 800818D0 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8A74 800818D4 3C180017 */  lui   $t8, (0x0017C150 >> 16) # lui $t8, 0x17
/* AF8A78 800818D8 3718C150 */  ori   $t8, (0x0017C150 & 0xFFFF) # ori $t8, $t8, 0xc150
/* AF8A7C 800818DC 246E0008 */  addiu $t6, $v1, 8
/* AF8A80 800818E0 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF8A84 800818E4 AC600004 */  sw    $zero, 4($v1)
/* AF8A88 800818E8 AC6F0000 */  sw    $t7, ($v1)
/* AF8A8C 800818EC 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8A90 800818F0 3C0DE100 */  lui   $t5, 0xe100
/* AF8A94 800818F4 3C1FF100 */  lui   $ra, 0xf100
/* AF8A98 800818F8 24790008 */  addiu $t9, $v1, 8
/* AF8A9C 800818FC AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AF8AA0 80081900 AC780004 */  sw    $t8, 4($v1)
/* AF8AA4 80081904 AC6C0000 */  sw    $t4, ($v1)
/* AF8AA8 80081908 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8AAC 8008190C 246E0008 */  addiu $t6, $v1, 8
/* AF8AB0 80081910 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF8AB4 80081914 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AF8AB8 80081918 844F0E1E */  lh    $t7, 0xe1e($v0)
/* AF8ABC 8008191C 25F90055 */  addiu $t9, $t7, 0x55
/* AF8AC0 80081920 0019C080 */  sll   $t8, $t9, 2
/* AF8AC4 80081924 84590E1C */  lh    $t9, 0xe1c($v0)
/* AF8AC8 80081928 330E0FFF */  andi  $t6, $t8, 0xfff
/* AF8ACC 8008192C 01C17825 */  or    $t7, $t6, $at
/* AF8AD0 80081930 27380060 */  addiu $t8, $t9, 0x60
/* AF8AD4 80081934 00187080 */  sll   $t6, $t8, 2
/* AF8AD8 80081938 31D90FFF */  andi  $t9, $t6, 0xfff
/* AF8ADC 8008193C 0019C300 */  sll   $t8, $t9, 0xc
/* AF8AE0 80081940 01F87025 */  or    $t6, $t7, $t8
/* AF8AE4 80081944 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AF8AE8 80081948 AC6E0000 */  sw    $t6, ($v1)
/* AF8AEC 8008194C 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AF8AF0 80081950 84590E1E */  lh    $t9, 0xe1e($v0)
/* AF8AF4 80081954 844E0E1C */  lh    $t6, 0xe1c($v0)
/* AF8AF8 80081958 00197880 */  sll   $t7, $t9, 2
/* AF8AFC 8008195C 31F80FFF */  andi  $t8, $t7, 0xfff
/* AF8B00 80081960 000EC880 */  sll   $t9, $t6, 2
/* AF8B04 80081964 332F0FFF */  andi  $t7, $t9, 0xfff
/* AF8B08 80081968 000F7300 */  sll   $t6, $t7, 0xc
/* AF8B0C 8008196C 030EC825 */  or    $t9, $t8, $t6
/* AF8B10 80081970 AC790004 */  sw    $t9, 4($v1)
/* AF8B14 80081974 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8B18 80081978 3C0E0400 */  lui   $t6, (0x04000400 >> 16) # lui $t6, 0x400
/* AF8B1C 8008197C 35CE0400 */  ori   $t6, (0x04000400 & 0xFFFF) # ori $t6, $t6, 0x400
/* AF8B20 80081980 246F0008 */  addiu $t7, $v1, 8
/* AF8B24 80081984 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF8B28 80081988 AC600004 */  sw    $zero, 4($v1)
/* AF8B2C 8008198C AC6D0000 */  sw    $t5, ($v1)
/* AF8B30 80081990 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8B34 80081994 24780008 */  addiu $t8, $v1, 8
/* AF8B38 80081998 AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AF8B3C 8008199C AC6E0004 */  sw    $t6, 4($v1)
/* AF8B40 800819A0 AC7F0000 */  sw    $ra, ($v1)
/* AF8B44 800819A4 90C200A8 */  lbu   $v0, 0xa8($a2)
.L800819A8:
/* AF8B48 800819A8 3C198012 */  lui   $t9, %hi(D_80127124) # $t9, 0x8012
/* AF8B4C 800819AC 8F397124 */  lw    $t9, %lo(D_80127124)($t9)
/* AF8B50 800819B0 03227824 */  and   $t7, $t9, $v0
/* AF8B54 800819B4 51E00009 */  beql  $t7, $zero, .L800819DC
/* AF8B58 800819B8 8FAE0110 */   lw    $t6, 0x110($sp)
/* AF8B5C 800819BC 0C020490 */  jal   func_80081240
/* AF8B60 800819C0 8FA40110 */   lw    $a0, 0x110($sp)
/* AF8B64 800819C4 8FB80110 */  lw    $t8, 0x110($sp)
/* AF8B68 800819C8 0C025148 */  jal   func_80094520
/* AF8B6C 800819CC 8F040000 */   lw    $a0, ($t8)
/* AF8B70 800819D0 0C01EE33 */  jal   MapMark_DrawConditionally
/* AF8B74 800819D4 8FA40110 */   lw    $a0, 0x110($sp)
/* AF8B78 800819D8 8FAE0110 */  lw    $t6, 0x110($sp)
.L800819DC:
/* AF8B7C 800819DC 2401FFDF */  li    $at, -33
/* AF8B80 800819E0 95D90020 */  lhu   $t9, 0x20($t6)
/* AF8B84 800819E4 03217827 */  nor   $t7, $t9, $at
/* AF8B88 800819E8 55E0020D */  bnezl $t7, .L80082220
/* AF8B8C 800819EC 8FAF0110 */   lw    $t7, 0x110($sp)
/* AF8B90 800819F0 0C02FF21 */  jal   func_800BFC84
/* AF8B94 800819F4 01C02025 */   move  $a0, $t6
/* AF8B98 800819F8 54400209 */  bnezl $v0, .L80082220
/* AF8B9C 800819FC 8FAF0110 */   lw    $t7, 0x110($sp)
/* AF8BA0 80081A00 0C02FF21 */  jal   func_800BFC84
/* AF8BA4 80081A04 8FA40110 */   lw    $a0, 0x110($sp)
/* AF8BA8 80081A08 3C048014 */  lui   $a0, %hi(D_8013D968) # $a0, 0x8014
/* AF8BAC 80081A0C 2484D968 */  addiu $a0, %lo(D_8013D968) # addiu $a0, $a0, -0x2698
/* AF8BB0 80081A10 0C00084C */  jal   osSyncPrintf
/* AF8BB4 80081A14 00402825 */   move  $a1, $v0
/* AF8BB8 80081A18 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* AF8BBC 80081A1C 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* AF8BC0 80081A20 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AF8BC4 80081A24 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* AF8BC8 80081A28 87190DD2 */  lh    $t9, 0xdd2($t8)
/* AF8BCC 80081A2C 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AF8BD0 80081A30 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* AF8BD4 80081A34 1720000E */  bnez  $t9, .L80081A70
/* AF8BD8 80081A38 24044814 */   li    $a0, 18452
/* AF8BDC 80081A3C 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AF8BE0 80081A40 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* AF8BE4 80081A44 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* AF8BE8 80081A48 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AF8BEC 80081A4C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* AF8BF0 80081A50 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* AF8BF4 80081A54 AFA70010 */  sw    $a3, 0x10($sp)
/* AF8BF8 80081A58 AFAF0014 */  sw    $t7, 0x14($sp)
/* AF8BFC 80081A5C 24044813 */  li    $a0, 18451
/* AF8C00 80081A60 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* AF8C04 80081A64 24060004 */   li    $a2, 4
/* AF8C08 80081A68 10000007 */  b     .L80081A88
/* AF8C0C 80081A6C 00000000 */   nop   
.L80081A70:
/* AF8C10 80081A70 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* AF8C14 80081A74 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* AF8C18 80081A78 AFAE0014 */  sw    $t6, 0x14($sp)
/* AF8C1C 80081A7C 24060004 */  li    $a2, 4
/* AF8C20 80081A80 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* AF8C24 80081A84 AFA70010 */   sw    $a3, 0x10($sp)
.L80081A88:
/* AF8C28 80081A88 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AF8C2C 80081A8C 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AF8C30 80081A90 84580DD2 */  lh    $t8, 0xdd2($v0)
/* AF8C34 80081A94 3B190001 */  xori  $t9, $t8, 1
/* AF8C38 80081A98 100001E0 */  b     .L8008221C
/* AF8C3C 80081A9C A4590DD2 */   sh    $t9, 0xdd2($v0)
/* AF8C40 80081AA0 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* AF8C44 80081AA4 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* AF8C48 80081AA8 8FB80110 */  lw    $t8, 0x110($sp)
/* AF8C4C 80081AAC 85EE0DD2 */  lh    $t6, 0xdd2($t7)
/* AF8C50 80081AB0 55C001B1 */  bnezl $t6, .L80082178
/* AF8C54 80081AB4 8FB90110 */   lw    $t9, 0x110($sp)
/* AF8C58 80081AB8 8F040000 */  lw    $a0, ($t8)
/* AF8C5C 80081ABC 0C025148 */  jal   func_80094520
/* AF8C60 80081AC0 AFA800FC */   sw    $t0, 0xfc($sp)
/* AF8C64 80081AC4 8FA800FC */  lw    $t0, 0xfc($sp)
/* AF8C68 80081AC8 3C0FFC11 */  lui   $t7, (0xFC119623 >> 16) # lui $t7, 0xfc11
/* AF8C6C 80081ACC 3C0EFF2F */  lui   $t6, (0xFF2FFFFF >> 16) # lui $t6, 0xff2f
/* AF8C70 80081AD0 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8C74 80081AD4 35CEFFFF */  ori   $t6, (0xFF2FFFFF & 0xFFFF) # ori $t6, $t6, 0xffff
/* AF8C78 80081AD8 35EF9623 */  ori   $t7, (0xFC119623 & 0xFFFF) # ori $t7, $t7, 0x9623
/* AF8C7C 80081ADC 24790008 */  addiu $t9, $v1, 8
/* AF8C80 80081AE0 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AF8C84 80081AE4 AC6E0004 */  sw    $t6, 4($v1)
/* AF8C88 80081AE8 AC6F0000 */  sw    $t7, ($v1)
/* AF8C8C 80081AEC 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8C90 80081AF0 3C19FA00 */  lui   $t9, 0xfa00
/* AF8C94 80081AF4 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AF8C98 80081AF8 24780008 */  addiu $t8, $v1, 8
/* AF8C9C 80081AFC AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AF8CA0 80081B00 AC790000 */  sw    $t9, ($v1)
/* AF8CA4 80081B04 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AF8CA8 80081B08 8FA50110 */  lw    $a1, 0x110($sp)
/* AF8CAC 80081B0C 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AF8CB0 80081B10 844F0F3C */  lh    $t7, 0xf3c($v0)
/* AF8CB4 80081B14 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AF8CB8 80081B18 00A12821 */  addu  $a1, $a1, $at
/* AF8CBC 80081B1C 31EE00FF */  andi  $t6, $t7, 0xff
/* AF8CC0 80081B20 844F0F38 */  lh    $t7, 0xf38($v0)
/* AF8CC4 80081B24 000EC200 */  sll   $t8, $t6, 8
/* AF8CC8 80081B28 3C0A0700 */  lui   $t2, 0x700
/* AF8CCC 80081B2C 000F7600 */  sll   $t6, $t7, 0x18
/* AF8CD0 80081B30 844F0F3A */  lh    $t7, 0xf3a($v0)
/* AF8CD4 80081B34 030EC825 */  or    $t9, $t8, $t6
/* AF8CD8 80081B38 3C098016 */  lui   $t1, %hi(D_8015FFD0) # $t1, 0x8016
/* AF8CDC 80081B3C 31F800FF */  andi  $t8, $t7, 0xff
/* AF8CE0 80081B40 00187400 */  sll   $t6, $t8, 0x10
/* AF8CE4 80081B44 94B80254 */  lhu   $t8, 0x254($a1)
/* AF8CE8 80081B48 032E7825 */  or    $t7, $t9, $t6
/* AF8CEC 80081B4C 2529FFD0 */  addiu $t1, %lo(D_8015FFD0) # addiu $t1, $t1, -0x30
/* AF8CF0 80081B50 331900FF */  andi  $t9, $t8, 0xff
/* AF8CF4 80081B54 01F97025 */  or    $t6, $t7, $t9
/* AF8CF8 80081B58 AC6E0004 */  sw    $t6, 4($v1)
/* AF8CFC 80081B5C 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8D00 80081B60 3C0FFD70 */  lui   $t7, 0xfd70
/* AF8D04 80081B64 24780008 */  addiu $t8, $v1, 8
/* AF8D08 80081B68 AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AF8D0C 80081B6C AC6F0000 */  sw    $t7, ($v1)
/* AF8D10 80081B70 8CB9013C */  lw    $t9, 0x13c($a1)
/* AF8D14 80081B74 3C18F570 */  lui   $t8, 0xf570
/* AF8D18 80081B78 AC790004 */  sw    $t9, 4($v1)
/* AF8D1C 80081B7C 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8D20 80081B80 3C19E600 */  lui   $t9, 0xe600
/* AF8D24 80081B84 246E0008 */  addiu $t6, $v1, 8
/* AF8D28 80081B88 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF8D2C 80081B8C AC6A0004 */  sw    $t2, 4($v1)
/* AF8D30 80081B90 AC780000 */  sw    $t8, ($v1)
/* AF8D34 80081B94 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8D38 80081B98 3C18F300 */  lui   $t8, 0xf300
/* AF8D3C 80081B9C 246F0008 */  addiu $t7, $v1, 8
/* AF8D40 80081BA0 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF8D44 80081BA4 AC600004 */  sw    $zero, 4($v1)
/* AF8D48 80081BA8 AC790000 */  sw    $t9, ($v1)
/* AF8D4C 80081BAC 8D0702B0 */  lw    $a3, 0x2b0($t0)
/* AF8D50 80081BB0 24EE0008 */  addiu $t6, $a3, 8
/* AF8D54 80081BB4 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF8D58 80081BB8 ACF80000 */  sw    $t8, ($a3)
/* AF8D5C 80081BBC 8D240000 */  lw    $a0, ($t1)
/* AF8D60 80081BC0 8FA60100 */  lw    $a2, 0x100($sp)
/* AF8D64 80081BC4 8C8F0040 */  lw    $t7, 0x40($a0)
/* AF8D68 80081BC8 8C8E0044 */  lw    $t6, 0x44($a0)
/* AF8D6C 80081BCC 00063040 */  sll   $a2, $a2, 1
/* AF8D70 80081BD0 01E6C821 */  addu  $t9, $t7, $a2
/* AF8D74 80081BD4 01C6C021 */  addu  $t8, $t6, $a2
/* AF8D78 80081BD8 870F0000 */  lh    $t7, ($t8)
/* AF8D7C 80081BDC 87220000 */  lh    $v0, ($t9)
/* AF8D80 80081BE0 240407FF */  li    $a0, 2047
/* AF8D84 80081BE4 01E20019 */  multu $t7, $v0
/* AF8D88 80081BE8 00002812 */  mflo  $a1
/* AF8D8C 80081BEC 24A50003 */  addiu $a1, $a1, 3
/* AF8D90 80081BF0 00052883 */  sra   $a1, $a1, 2
/* AF8D94 80081BF4 24A5FFFF */  addiu $a1, $a1, -1
/* AF8D98 80081BF8 28A107FF */  slti  $at, $a1, 0x7ff
/* AF8D9C 80081BFC 10200003 */  beqz  $at, .L80081C0C
/* AF8DA0 80081C00 00000000 */   nop   
/* AF8DA4 80081C04 10000001 */  b     .L80081C0C
/* AF8DA8 80081C08 00A02025 */   move  $a0, $a1
.L80081C0C:
/* AF8DAC 80081C0C 04410003 */  bgez  $v0, .L80081C1C
/* AF8DB0 80081C10 00021903 */   sra   $v1, $v0, 4
/* AF8DB4 80081C14 2441000F */  addiu $at, $v0, 0xf
/* AF8DB8 80081C18 00011903 */  sra   $v1, $at, 4
.L80081C1C:
/* AF8DBC 80081C1C 1C600003 */  bgtz  $v1, .L80081C2C
/* AF8DC0 80081C20 00602825 */   move  $a1, $v1
/* AF8DC4 80081C24 10000001 */  b     .L80081C2C
/* AF8DC8 80081C28 24050001 */   li    $a1, 1
.L80081C2C:
/* AF8DCC 80081C2C 1C600003 */  bgtz  $v1, .L80081C3C
/* AF8DD0 80081C30 24B907FF */   addiu $t9, $a1, 0x7ff
/* AF8DD4 80081C34 10000002 */  b     .L80081C40
/* AF8DD8 80081C38 24020001 */   li    $v0, 1
.L80081C3C:
/* AF8DDC 80081C3C 00601025 */  move  $v0, $v1
.L80081C40:
/* AF8DE0 80081C40 0322001A */  div   $zero, $t9, $v0
/* AF8DE4 80081C44 00007012 */  mflo  $t6
/* AF8DE8 80081C48 31D80FFF */  andi  $t8, $t6, 0xfff
/* AF8DEC 80081C4C 14400002 */  bnez  $v0, .L80081C58
/* AF8DF0 80081C50 00000000 */   nop   
/* AF8DF4 80081C54 0007000D */  break 7
.L80081C58:
/* AF8DF8 80081C58 2401FFFF */  li    $at, -1
/* AF8DFC 80081C5C 14410004 */  bne   $v0, $at, .L80081C70
/* AF8E00 80081C60 3C018000 */   lui   $at, 0x8000
/* AF8E04 80081C64 17210002 */  bne   $t9, $at, .L80081C70
/* AF8E08 80081C68 00000000 */   nop   
/* AF8E0C 80081C6C 0006000D */  break 6
.L80081C70:
/* AF8E10 80081C70 30990FFF */  andi  $t9, $a0, 0xfff
/* AF8E14 80081C74 00197300 */  sll   $t6, $t9, 0xc
/* AF8E18 80081C78 030A7825 */  or    $t7, $t8, $t2
/* AF8E1C 80081C7C 01EEC025 */  or    $t8, $t7, $t6
/* AF8E20 80081C80 ACF80004 */  sw    $t8, 4($a3)
/* AF8E24 80081C84 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8E28 80081C88 3C0BE700 */  lui   $t3, 0xe700
/* AF8E2C 80081C8C 3C01F560 */  lui   $at, 0xf560
/* AF8E30 80081C90 24790008 */  addiu $t9, $v1, 8
/* AF8E34 80081C94 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AF8E38 80081C98 AC600004 */  sw    $zero, 4($v1)
/* AF8E3C 80081C9C AC6B0000 */  sw    $t3, ($v1)
/* AF8E40 80081CA0 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8E44 80081CA4 3C0CF200 */  lui   $t4, 0xf200
/* AF8E48 80081CA8 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AF8E4C 80081CAC 246F0008 */  addiu $t7, $v1, 8
/* AF8E50 80081CB0 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF8E54 80081CB4 8D2E0000 */  lw    $t6, ($t1)
/* AF8E58 80081CB8 3C0DE100 */  lui   $t5, 0xe100
/* AF8E5C 80081CBC 3C1FF100 */  lui   $ra, 0xf100
/* AF8E60 80081CC0 8DD80040 */  lw    $t8, 0x40($t6)
/* AF8E64 80081CC4 0306C821 */  addu  $t9, $t8, $a2
/* AF8E68 80081CC8 872F0000 */  lh    $t7, ($t9)
/* AF8E6C 80081CCC AC600004 */  sw    $zero, 4($v1)
/* AF8E70 80081CD0 000F7043 */  sra   $t6, $t7, 1
/* AF8E74 80081CD4 25D80007 */  addiu $t8, $t6, 7
/* AF8E78 80081CD8 0018C8C3 */  sra   $t9, $t8, 3
/* AF8E7C 80081CDC 332F01FF */  andi  $t7, $t9, 0x1ff
/* AF8E80 80081CE0 000F7240 */  sll   $t6, $t7, 9
/* AF8E84 80081CE4 01C1C025 */  or    $t8, $t6, $at
/* AF8E88 80081CE8 AC780000 */  sw    $t8, ($v1)
/* AF8E8C 80081CEC 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8E90 80081CF0 3C01E400 */  lui   $at, 0xe400
/* AF8E94 80081CF4 24790008 */  addiu $t9, $v1, 8
/* AF8E98 80081CF8 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AF8E9C 80081CFC AC6C0000 */  sw    $t4, ($v1)
/* AF8EA0 80081D00 8D240000 */  lw    $a0, ($t1)
/* AF8EA4 80081D04 8C8F0044 */  lw    $t7, 0x44($a0)
/* AF8EA8 80081D08 01E67021 */  addu  $t6, $t7, $a2
/* AF8EAC 80081D0C 85D80000 */  lh    $t8, ($t6)
/* AF8EB0 80081D10 2719FFFF */  addiu $t9, $t8, -1
/* AF8EB4 80081D14 8C980040 */  lw    $t8, 0x40($a0)
/* AF8EB8 80081D18 00197880 */  sll   $t7, $t9, 2
/* AF8EBC 80081D1C 31EE0FFF */  andi  $t6, $t7, 0xfff
/* AF8EC0 80081D20 0306C821 */  addu  $t9, $t8, $a2
/* AF8EC4 80081D24 872F0000 */  lh    $t7, ($t9)
/* AF8EC8 80081D28 25F8FFFF */  addiu $t8, $t7, -1
/* AF8ECC 80081D2C 0018C880 */  sll   $t9, $t8, 2
/* AF8ED0 80081D30 332F0FFF */  andi  $t7, $t9, 0xfff
/* AF8ED4 80081D34 000FC300 */  sll   $t8, $t7, 0xc
/* AF8ED8 80081D38 01D8C825 */  or    $t9, $t6, $t8
/* AF8EDC 80081D3C AC790004 */  sw    $t9, 4($v1)
/* AF8EE0 80081D40 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8EE4 80081D44 246F0008 */  addiu $t7, $v1, 8
/* AF8EE8 80081D48 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF8EEC 80081D4C 8D240000 */  lw    $a0, ($t1)
/* AF8EF0 80081D50 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AF8EF4 80081D54 00602825 */  move  $a1, $v1
/* AF8EF8 80081D58 8C8E0044 */  lw    $t6, 0x44($a0)
/* AF8EFC 80081D5C 844F0DD0 */  lh    $t7, 0xdd0($v0)
/* AF8F00 80081D60 01C6C021 */  addu  $t8, $t6, $a2
/* AF8F04 80081D64 87190000 */  lh    $t9, ($t8)
/* AF8F08 80081D68 032F7021 */  addu  $t6, $t9, $t7
/* AF8F0C 80081D6C 000EC080 */  sll   $t8, $t6, 2
/* AF8F10 80081D70 33190FFF */  andi  $t9, $t8, 0xfff
/* AF8F14 80081D74 8C980040 */  lw    $t8, 0x40($a0)
/* AF8F18 80081D78 03217825 */  or    $t7, $t9, $at
/* AF8F1C 80081D7C 844E0DCE */  lh    $t6, 0xdce($v0)
/* AF8F20 80081D80 0306C821 */  addu  $t9, $t8, $a2
/* AF8F24 80081D84 87380000 */  lh    $t8, ($t9)
/* AF8F28 80081D88 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AF8F2C 80081D8C 24010052 */  li    $at, 82
/* AF8F30 80081D90 01D8C821 */  addu  $t9, $t6, $t8
/* AF8F34 80081D94 00197080 */  sll   $t6, $t9, 2
/* AF8F38 80081D98 31D80FFF */  andi  $t8, $t6, 0xfff
/* AF8F3C 80081D9C 0018CB00 */  sll   $t9, $t8, 0xc
/* AF8F40 80081DA0 01F97025 */  or    $t6, $t7, $t9
/* AF8F44 80081DA4 AC6E0000 */  sw    $t6, ($v1)
/* AF8F48 80081DA8 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AF8F4C 80081DAC 84580DD0 */  lh    $t8, 0xdd0($v0)
/* AF8F50 80081DB0 844E0DCE */  lh    $t6, 0xdce($v0)
/* AF8F54 80081DB4 00187880 */  sll   $t7, $t8, 2
/* AF8F58 80081DB8 31F90FFF */  andi  $t9, $t7, 0xfff
/* AF8F5C 80081DBC 000EC080 */  sll   $t8, $t6, 2
/* AF8F60 80081DC0 330F0FFF */  andi  $t7, $t8, 0xfff
/* AF8F64 80081DC4 000F7300 */  sll   $t6, $t7, 0xc
/* AF8F68 80081DC8 032EC025 */  or    $t8, $t9, $t6
/* AF8F6C 80081DCC AC780004 */  sw    $t8, 4($v1)
/* AF8F70 80081DD0 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8F74 80081DD4 3C0E0400 */  lui   $t6, (0x04000400 >> 16) # lui $t6, 0x400
/* AF8F78 80081DD8 35CE0400 */  ori   $t6, (0x04000400 & 0xFFFF) # ori $t6, $t6, 0x400
/* AF8F7C 80081DDC 246F0008 */  addiu $t7, $v1, 8
/* AF8F80 80081DE0 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF8F84 80081DE4 AC600004 */  sw    $zero, 4($v1)
/* AF8F88 80081DE8 AC6D0000 */  sw    $t5, ($v1)
/* AF8F8C 80081DEC 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8F90 80081DF0 3C0F8016 */  lui   $t7, %hi(gSaveContext+4) # $t7, 0x8016
/* AF8F94 80081DF4 24790008 */  addiu $t9, $v1, 8
/* AF8F98 80081DF8 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AF8F9C 80081DFC AC6E0004 */  sw    $t6, 4($v1)
/* AF8FA0 80081E00 AC7F0000 */  sw    $ra, ($v1)
/* AF8FA4 80081E04 8FB80110 */  lw    $t8, 0x110($sp)
/* AF8FA8 80081E08 00601025 */  move  $v0, $v1
/* AF8FAC 80081E0C 870400A4 */  lh    $a0, 0xa4($t8)
/* AF8FB0 80081E10 10810005 */  beq   $a0, $at, .L80081E28
/* AF8FB4 80081E14 24010055 */   li    $at, 85
/* AF8FB8 80081E18 10810003 */  beq   $a0, $at, .L80081E28
/* AF8FBC 80081E1C 24010059 */   li    $at, 89
/* AF8FC0 80081E20 5481000B */  bnel  $a0, $at, .L80081E50
/* AF8FC4 80081E24 8D390000 */   lw    $t9, ($t1)
.L80081E28:
/* AF8FC8 80081E28 8DEFE664 */  lw    $t7, %lo(gSaveContext+4)($t7)
/* AF8FCC 80081E2C 24010011 */  li    $at, 17
/* AF8FD0 80081E30 24020011 */  li    $v0, 17
/* AF8FD4 80081E34 11E00003 */  beqz  $t7, .L80081E44
/* AF8FD8 80081E38 00000000 */   nop   
/* AF8FDC 80081E3C 10000001 */  b     .L80081E44
/* AF8FE0 80081E40 24020005 */   li    $v0, 5
.L80081E44:
/* AF8FE4 80081E44 5041007D */  beql  $v0, $at, .L8008203C
/* AF8FE8 80081E48 24010059 */   li    $at, 89
/* AF8FEC 80081E4C 8D390000 */  lw    $t9, ($t1)
.L80081E50:
/* AF8FF0 80081E50 3C078012 */  lui   $a3, %hi(D_80123A5C) # $a3, 0x8012
/* AF8FF4 80081E54 24E73A5C */  addiu $a3, %lo(D_80123A5C) # addiu $a3, $a3, 0x3a5c
/* AF8FF8 80081E58 84EE0000 */  lh    $t6, ($a3)
/* AF8FFC 80081E5C 8F220050 */  lw    $v0, 0x50($t9)
/* AF9000 80081E60 3405FFFF */  li    $a1, 65535
/* AF9004 80081E64 000EC040 */  sll   $t8, $t6, 1
/* AF9008 80081E68 00587821 */  addu  $t7, $v0, $t8
/* AF900C 80081E6C 95E30000 */  lhu   $v1, ($t7)
/* AF9010 80081E70 50A3000E */  beql  $a1, $v1, .L80081EAC
/* AF9014 80081E74 8D0302B0 */   lw    $v1, 0x2b0($t0)
/* AF9018 80081E78 10A3006F */  beq   $a1, $v1, .L80082038
/* AF901C 80081E7C 0046C821 */   addu  $t9, $v0, $a2
/* AF9020 80081E80 972E0000 */  lhu   $t6, ($t9)
/* AF9024 80081E84 3C0F8012 */  lui   $t7, %hi(D_80127120)
/* AF9028 80081E88 3C198016 */  lui   $t9, %hi(gSaveContext+0xf2c) # $t9, 0x8016
/* AF902C 80081E8C 000EC080 */  sll   $t8, $t6, 2
/* AF9030 80081E90 01F87821 */  addu  $t7, $t7, $t8
/* AF9034 80081E94 8DEF7120 */  lw    $t7, %lo(D_80127120)($t7)
/* AF9038 80081E98 9739F58C */  lhu   $t9, %lo(gSaveContext+0xf2c)($t9)
/* AF903C 80081E9C 01F97024 */  and   $t6, $t7, $t9
/* AF9040 80081EA0 51C00066 */  beql  $t6, $zero, .L8008203C
/* AF9044 80081EA4 24010059 */   li    $at, 89
/* AF9048 80081EA8 8D0302B0 */  lw    $v1, 0x2b0($t0)
.L80081EAC:
/* AF904C 80081EAC 3C190200 */  lui   $t9, %hi(D_02002500) # $t9, 0x200
/* AF9050 80081EB0 27392500 */  addiu $t9, %lo(D_02002500) # addiu $t9, $t9, 0x2500
/* AF9054 80081EB4 24780008 */  addiu $t8, $v1, 8
/* AF9058 80081EB8 AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AF905C 80081EBC 3C0FFD10 */  lui   $t7, 0xfd10
/* AF9060 80081EC0 AC6F0000 */  sw    $t7, ($v1)
/* AF9064 80081EC4 AC790004 */  sw    $t9, 4($v1)
/* AF9068 80081EC8 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF906C 80081ECC 3C18F510 */  lui   $t8, 0xf510
/* AF9070 80081ED0 3C19E600 */  lui   $t9, 0xe600
/* AF9074 80081ED4 246E0008 */  addiu $t6, $v1, 8
/* AF9078 80081ED8 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF907C 80081EDC AC6A0004 */  sw    $t2, 4($v1)
/* AF9080 80081EE0 AC780000 */  sw    $t8, ($v1)
/* AF9084 80081EE4 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF9088 80081EE8 3C18F300 */  lui   $t8, 0xf300
/* AF908C 80081EEC 3C01E400 */  lui   $at, 0xe400
/* AF9090 80081EF0 246F0008 */  addiu $t7, $v1, 8
/* AF9094 80081EF4 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF9098 80081EF8 AC600004 */  sw    $zero, 4($v1)
/* AF909C 80081EFC AC790000 */  sw    $t9, ($v1)
/* AF90A0 80081F00 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF90A4 80081F04 3C0F0703 */  lui   $t7, (0x0703F400 >> 16) # lui $t7, 0x703
/* AF90A8 80081F08 35EFF400 */  ori   $t7, (0x0703F400 & 0xFFFF) # ori $t7, $t7, 0xf400
/* AF90AC 80081F0C 246E0008 */  addiu $t6, $v1, 8
/* AF90B0 80081F10 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF90B4 80081F14 AC6F0004 */  sw    $t7, 4($v1)
/* AF90B8 80081F18 AC780000 */  sw    $t8, ($v1)
/* AF90BC 80081F1C 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF90C0 80081F20 3C18F510 */  lui   $t8, (0xF5100400 >> 16) # lui $t8, 0xf510
/* AF90C4 80081F24 37180400 */  ori   $t8, (0xF5100400 & 0xFFFF) # ori $t8, $t8, 0x400
/* AF90C8 80081F28 24790008 */  addiu $t9, $v1, 8
/* AF90CC 80081F2C AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AF90D0 80081F30 AC600004 */  sw    $zero, 4($v1)
/* AF90D4 80081F34 AC6B0000 */  sw    $t3, ($v1)
/* AF90D8 80081F38 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF90DC 80081F3C 3C190001 */  lui   $t9, (0x0001C01C >> 16) # lui $t9, 1
/* AF90E0 80081F40 3739C01C */  ori   $t9, (0x0001C01C & 0xFFFF) # ori $t9, $t9, 0xc01c
/* AF90E4 80081F44 246E0008 */  addiu $t6, $v1, 8
/* AF90E8 80081F48 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF90EC 80081F4C AC600004 */  sw    $zero, 4($v1)
/* AF90F0 80081F50 AC780000 */  sw    $t8, ($v1)
/* AF90F4 80081F54 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF90F8 80081F58 246F0008 */  addiu $t7, $v1, 8
/* AF90FC 80081F5C AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF9100 80081F60 AC790004 */  sw    $t9, 4($v1)
/* AF9104 80081F64 AC6C0000 */  sw    $t4, ($v1)
/* AF9108 80081F68 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF910C 80081F6C 246E0008 */  addiu $t6, $v1, 8
/* AF9110 80081F70 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF9114 80081F74 8D240000 */  lw    $a0, ($t1)
/* AF9118 80081F78 84E20000 */  lh    $v0, ($a3)
/* AF911C 80081F7C 8C98004C */  lw    $t8, 0x4c($a0)
/* AF9120 80081F80 00021040 */  sll   $v0, $v0, 1
/* AF9124 80081F84 03027821 */  addu  $t7, $t8, $v0
/* AF9128 80081F88 85F90000 */  lh    $t9, ($t7)
/* AF912C 80081F8C 272E0008 */  addiu $t6, $t9, 8
/* AF9130 80081F90 000EC080 */  sll   $t8, $t6, 2
/* AF9134 80081F94 8C8E0048 */  lw    $t6, 0x48($a0)
/* AF9138 80081F98 330F0FFF */  andi  $t7, $t8, 0xfff
/* AF913C 80081F9C 01E1C825 */  or    $t9, $t7, $at
/* AF9140 80081FA0 01C2C021 */  addu  $t8, $t6, $v0
/* AF9144 80081FA4 870F0000 */  lh    $t7, ($t8)
/* AF9148 80081FA8 25EE0008 */  addiu $t6, $t7, 8
/* AF914C 80081FAC 000EC080 */  sll   $t8, $t6, 2
/* AF9150 80081FB0 330F0FFF */  andi  $t7, $t8, 0xfff
/* AF9154 80081FB4 000F7300 */  sll   $t6, $t7, 0xc
/* AF9158 80081FB8 032EC025 */  or    $t8, $t9, $t6
/* AF915C 80081FBC AC780000 */  sw    $t8, ($v1)
/* AF9160 80081FC0 8D240000 */  lw    $a0, ($t1)
/* AF9164 80081FC4 84E20000 */  lh    $v0, ($a3)
/* AF9168 80081FC8 8C8F004C */  lw    $t7, 0x4c($a0)
/* AF916C 80081FCC 00021040 */  sll   $v0, $v0, 1
/* AF9170 80081FD0 01E2C821 */  addu  $t9, $t7, $v0
/* AF9174 80081FD4 872E0000 */  lh    $t6, ($t9)
/* AF9178 80081FD8 8C990048 */  lw    $t9, 0x48($a0)
/* AF917C 80081FDC 000EC080 */  sll   $t8, $t6, 2
/* AF9180 80081FE0 330F0FFF */  andi  $t7, $t8, 0xfff
/* AF9184 80081FE4 03227021 */  addu  $t6, $t9, $v0
/* AF9188 80081FE8 85D80000 */  lh    $t8, ($t6)
/* AF918C 80081FEC 0018C880 */  sll   $t9, $t8, 2
/* AF9190 80081FF0 332E0FFF */  andi  $t6, $t9, 0xfff
/* AF9194 80081FF4 000EC300 */  sll   $t8, $t6, 0xc
/* AF9198 80081FF8 01F8C825 */  or    $t9, $t7, $t8
/* AF919C 80081FFC AC790004 */  sw    $t9, 4($v1)
/* AF91A0 80082000 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF91A4 80082004 3C180400 */  lui   $t8, (0x04000400 >> 16) # lui $t8, 0x400
/* AF91A8 80082008 37180400 */  ori   $t8, (0x04000400 & 0xFFFF) # ori $t8, $t8, 0x400
/* AF91AC 8008200C 246E0008 */  addiu $t6, $v1, 8
/* AF91B0 80082010 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF91B4 80082014 AC600004 */  sw    $zero, 4($v1)
/* AF91B8 80082018 AC6D0000 */  sw    $t5, ($v1)
/* AF91BC 8008201C 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF91C0 80082020 246F0008 */  addiu $t7, $v1, 8
/* AF91C4 80082024 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF91C8 80082028 AC780004 */  sw    $t8, 4($v1)
/* AF91CC 8008202C AC7F0000 */  sw    $ra, ($v1)
/* AF91D0 80082030 8FB90110 */  lw    $t9, 0x110($sp)
/* AF91D4 80082034 872400A4 */  lh    $a0, 0xa4($t9)
.L80082038:
/* AF91D8 80082038 24010059 */  li    $at, 89
.L8008203C:
/* AF91DC 8008203C 1481004B */  bne   $a0, $at, .L8008216C
/* AF91E0 80082040 3C0E8012 */   lui   $t6, %hi(D_80127144) # $t6, 0x8012
/* AF91E4 80082044 3C0F8016 */  lui   $t7, %hi(gSaveContext+0xf2c) # $t7, 0x8016
/* AF91E8 80082048 95EFF58C */  lhu   $t7, %lo(gSaveContext+0xf2c)($t7)
/* AF91EC 8008204C 8DCE7144 */  lw    $t6, %lo(D_80127144)($t6)
/* AF91F0 80082050 3C040200 */  lui   $a0, %hi(D_02002500) # $a0, 0x200
/* AF91F4 80082054 01CFC024 */  and   $t8, $t6, $t7
/* AF91F8 80082058 13000044 */  beqz  $t8, .L8008216C
/* AF91FC 8008205C 00000000 */   nop   
/* AF9200 80082060 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF9204 80082064 24842500 */  addiu $a0, %lo(D_02002500) # addiu $a0, $a0, 0x2500
/* AF9208 80082068 3C0EFD10 */  lui   $t6, 0xfd10
/* AF920C 8008206C 24790008 */  addiu $t9, $v1, 8
/* AF9210 80082070 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AF9214 80082074 AC640004 */  sw    $a0, 4($v1)
/* AF9218 80082078 AC6E0000 */  sw    $t6, ($v1)
/* AF921C 8008207C 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF9220 80082080 3C18F510 */  lui   $t8, 0xf510
/* AF9224 80082084 3C0EE600 */  lui   $t6, 0xe600
/* AF9228 80082088 246F0008 */  addiu $t7, $v1, 8
/* AF922C 8008208C AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF9230 80082090 AC6A0004 */  sw    $t2, 4($v1)
/* AF9234 80082094 AC780000 */  sw    $t8, ($v1)
/* AF9238 80082098 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF923C 8008209C 3C18F300 */  lui   $t8, 0xf300
/* AF9240 800820A0 24790008 */  addiu $t9, $v1, 8
/* AF9244 800820A4 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AF9248 800820A8 AC600004 */  sw    $zero, 4($v1)
/* AF924C 800820AC AC6E0000 */  sw    $t6, ($v1)
/* AF9250 800820B0 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF9254 800820B4 3C190703 */  lui   $t9, (0x0703F400 >> 16) # lui $t9, 0x703
/* AF9258 800820B8 3739F400 */  ori   $t9, (0x0703F400 & 0xFFFF) # ori $t9, $t9, 0xf400
/* AF925C 800820BC 246F0008 */  addiu $t7, $v1, 8
/* AF9260 800820C0 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF9264 800820C4 AC790004 */  sw    $t9, 4($v1)
/* AF9268 800820C8 AC780000 */  sw    $t8, ($v1)
/* AF926C 800820CC 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF9270 800820D0 3C18F510 */  lui   $t8, (0xF5100400 >> 16) # lui $t8, 0xf510
/* AF9274 800820D4 37180400 */  ori   $t8, (0xF5100400 & 0xFFFF) # ori $t8, $t8, 0x400
/* AF9278 800820D8 246E0008 */  addiu $t6, $v1, 8
/* AF927C 800820DC AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF9280 800820E0 AC600004 */  sw    $zero, 4($v1)
/* AF9284 800820E4 AC6B0000 */  sw    $t3, ($v1)
/* AF9288 800820E8 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF928C 800820EC 3C0E0001 */  lui   $t6, (0x0001C01C >> 16) # lui $t6, 1
/* AF9290 800820F0 35CEC01C */  ori   $t6, (0x0001C01C & 0xFFFF) # ori $t6, $t6, 0xc01c
/* AF9294 800820F4 246F0008 */  addiu $t7, $v1, 8
/* AF9298 800820F8 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF929C 800820FC AC600004 */  sw    $zero, 4($v1)
/* AF92A0 80082100 AC780000 */  sw    $t8, ($v1)
/* AF92A4 80082104 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF92A8 80082108 3C18E445 */  lui   $t8, (0xE4458288 >> 16) # lui $t8, 0xe445
/* AF92AC 8008210C 37188288 */  ori   $t8, (0xE4458288 & 0xFFFF) # ori $t8, $t8, 0x8288
/* AF92B0 80082110 24790008 */  addiu $t9, $v1, 8
/* AF92B4 80082114 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AF92B8 80082118 AC6E0004 */  sw    $t6, 4($v1)
/* AF92BC 8008211C AC6C0000 */  sw    $t4, ($v1)
/* AF92C0 80082120 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF92C4 80082124 3C190043 */  lui   $t9, (0x00438268 >> 16) # lui $t9, 0x43
/* AF92C8 80082128 37398268 */  ori   $t9, (0x00438268 & 0xFFFF) # ori $t9, $t9, 0x8268
/* AF92CC 8008212C 246F0008 */  addiu $t7, $v1, 8
/* AF92D0 80082130 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF92D4 80082134 AC790004 */  sw    $t9, 4($v1)
/* AF92D8 80082138 AC780000 */  sw    $t8, ($v1)
/* AF92DC 8008213C 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF92E0 80082140 3C180400 */  lui   $t8, (0x04000400 >> 16) # lui $t8, 0x400
/* AF92E4 80082144 37180400 */  ori   $t8, (0x04000400 & 0xFFFF) # ori $t8, $t8, 0x400
/* AF92E8 80082148 246E0008 */  addiu $t6, $v1, 8
/* AF92EC 8008214C AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF92F0 80082150 AC600004 */  sw    $zero, 4($v1)
/* AF92F4 80082154 AC6D0000 */  sw    $t5, ($v1)
/* AF92F8 80082158 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF92FC 8008215C 246F0008 */  addiu $t7, $v1, 8
/* AF9300 80082160 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF9304 80082164 AC780004 */  sw    $t8, 4($v1)
/* AF9308 80082168 AC7F0000 */  sw    $ra, ($v1)
.L8008216C:
/* AF930C 8008216C 0C020490 */  jal   func_80081240
/* AF9310 80082170 8FA40110 */   lw    $a0, 0x110($sp)
/* AF9314 80082174 8FB90110 */  lw    $t9, 0x110($sp)
.L80082178:
/* AF9318 80082178 2401FFDF */  li    $at, -33
/* AF931C 8008217C 972E0020 */  lhu   $t6, 0x20($t9)
/* AF9320 80082180 01C17827 */  nor   $t7, $t6, $at
/* AF9324 80082184 55E00026 */  bnezl $t7, .L80082220
/* AF9328 80082188 8FAF0110 */   lw    $t7, 0x110($sp)
/* AF932C 8008218C 0C02FF21 */  jal   func_800BFC84
/* AF9330 80082190 03202025 */   move  $a0, $t9
/* AF9334 80082194 14400021 */  bnez  $v0, .L8008221C
/* AF9338 80082198 3C188016 */   lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* AF933C 8008219C 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* AF9340 800821A0 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AF9344 800821A4 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* AF9348 800821A8 870E0DD2 */  lh    $t6, 0xdd2($t8)
/* AF934C 800821AC 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AF9350 800821B0 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* AF9354 800821B4 15C0000E */  bnez  $t6, .L800821F0
/* AF9358 800821B8 24044814 */   li    $a0, 18452
/* AF935C 800821BC 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AF9360 800821C0 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* AF9364 800821C4 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* AF9368 800821C8 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AF936C 800821CC 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* AF9370 800821D0 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* AF9374 800821D4 AFA70010 */  sw    $a3, 0x10($sp)
/* AF9378 800821D8 AFAF0014 */  sw    $t7, 0x14($sp)
/* AF937C 800821DC 24044813 */  li    $a0, 18451
/* AF9380 800821E0 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* AF9384 800821E4 24060004 */   li    $a2, 4
/* AF9388 800821E8 10000007 */  b     .L80082208
/* AF938C 800821EC 00000000 */   nop   
.L800821F0:
/* AF9390 800821F0 3C198013 */  lui   $t9, %hi(D_801333E8) # $t9, 0x8013
/* AF9394 800821F4 273933E8 */  addiu $t9, %lo(D_801333E8) # addiu $t9, $t9, 0x33e8
/* AF9398 800821F8 AFB90014 */  sw    $t9, 0x14($sp)
/* AF939C 800821FC 24060004 */  li    $a2, 4
/* AF93A0 80082200 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* AF93A4 80082204 AFA70010 */   sw    $a3, 0x10($sp)
.L80082208:
/* AF93A8 80082208 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AF93AC 8008220C 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AF93B0 80082210 84580DD2 */  lh    $t8, 0xdd2($v0)
/* AF93B4 80082214 3B0E0001 */  xori  $t6, $t8, 1
/* AF93B8 80082218 A44E0DD2 */  sh    $t6, 0xdd2($v0)
.L8008221C:
/* AF93BC 8008221C 8FAF0110 */  lw    $t7, 0x110($sp)
.L80082220:
/* AF93C0 80082220 3C068014 */  lui   $a2, %hi(D_8013D988) # $a2, 0x8014
/* AF93C4 80082224 24C6D988 */  addiu $a2, %lo(D_8013D988) # addiu $a2, $a2, -0x2678
/* AF93C8 80082228 27A400EC */  addiu $a0, $sp, 0xec
/* AF93CC 8008222C 2407030E */  li    $a3, 782
/* AF93D0 80082230 0C031AD5 */  jal   func_800C6B54
/* AF93D4 80082234 8DE50000 */   lw    $a1, ($t7)
/* AF93D8 80082238 8FBF001C */  lw    $ra, 0x1c($sp)
/* AF93DC 8008223C 27BD0110 */  addiu $sp, $sp, 0x110
/* AF93E0 80082240 03E00008 */  jr    $ra
/* AF93E4 80082244 00000000 */   nop   

glabel func_80082248
/* AF93E8 80082248 3C0E8016 */  lui   $t6, %hi(D_8015FFD0) # $t6, 0x8016
/* AF93EC 8008224C 8DCEFFD0 */  lw    $t6, %lo(D_8015FFD0)($t6)
/* AF93F0 80082250 0004C100 */  sll   $t8, $a0, 4
/* AF93F4 80082254 00054040 */  sll   $t0, $a1, 1
/* AF93F8 80082258 8DCF0000 */  lw    $t7, ($t6)
/* AF93FC 8008225C 01F8C821 */  addu  $t9, $t7, $t8
/* AF9400 80082260 03284821 */  addu  $t1, $t9, $t0
/* AF9404 80082264 03E00008 */  jr    $ra
/* AF9408 80082268 85220000 */   lh    $v0, ($t1)

glabel func_8008226C
/* AF940C 8008226C 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AF9410 80082270 3C010001 */  lui   $at, 1
/* AF9414 80082274 AFBF002C */  sw    $ra, 0x2c($sp)
/* AF9418 80082278 AFB40028 */  sw    $s4, 0x28($sp)
/* AF941C 8008227C AFB30024 */  sw    $s3, 0x24($sp)
/* AF9420 80082280 AFB20020 */  sw    $s2, 0x20($sp)
/* AF9424 80082284 AFB1001C */  sw    $s1, 0x1c($sp)
/* AF9428 80082288 AFB00018 */  sw    $s0, 0x18($sp)
/* AF942C 8008228C 00811021 */  addu  $v0, $a0, $at
/* AF9430 80082290 944E0934 */  lhu   $t6, 0x934($v0)
/* AF9434 80082294 3C068016 */  lui   $a2, %hi(gSaveContext) # $a2, 0x8016
/* AF9438 80082298 24C6E660 */  addiu $a2, %lo(gSaveContext) # addiu $a2, $a2, -0x19a0
/* AF943C 8008229C 0080A025 */  move  $s4, $a0
/* AF9440 800822A0 8C851C44 */  lw    $a1, 0x1c44($a0)
/* AF9444 800822A4 15C000C5 */  bnez  $t6, .L800825BC
/* AF9448 800822A8 94D31402 */   lhu   $s3, 0x1402($a2)
/* AF944C 800822AC 944F0936 */  lhu   $t7, 0x936($v0)
/* AF9450 800822B0 55E000C3 */  bnezl $t7, .L800825C0
/* AF9454 800822B4 8FBF002C */   lw    $ra, 0x2c($sp)
/* AF9458 800822B8 848200A4 */  lh    $v0, 0xa4($a0)
/* AF945C 800822BC 2C410019 */  sltiu $at, $v0, 0x19
/* AF9460 800822C0 102000BE */  beqz  $at, .L800825BC
/* AF9464 800822C4 0002C080 */   sll   $t8, $v0, 2
/* AF9468 800822C8 3C018014 */  lui   $at, %hi(jtbl_8013DC8C)
/* AF946C 800822CC 00380821 */  addu  $at, $at, $t8
/* AF9470 800822D0 8C38DC8C */  lw    $t8, %lo(jtbl_8013DC8C)($at)
/* AF9474 800822D4 03000008 */  jr    $t8
/* AF9478 800822D8 00000000 */   nop   
/* AF947C 800822DC 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AF9480 800822E0 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AF9484 800822E4 02819021 */  addu  $s2, $s4, $at
/* AF9488 800822E8 3C078012 */  lui   $a3, %hi(D_80127120) # $a3, 0x8012
/* AF948C 800822EC A240015E */  sb    $zero, 0x15e($s2)
/* AF9490 800822F0 24E77120 */  addiu $a3, %lo(D_80127120) # addiu $a3, $a3, 0x7120
/* AF9494 800822F4 00D34021 */  addu  $t0, $a2, $s3
/* AF9498 800822F8 910900A8 */  lbu   $t1, 0xa8($t0)
/* AF949C 800822FC 8CF90008 */  lw    $t9, 8($a3)
/* AF94A0 80082300 0013C0C0 */  sll   $t8, $s3, 3
/* AF94A4 80082304 3C0C8016 */  lui   $t4, %hi(D_8015FFD0) # $t4, 0x8016
/* AF94A8 80082308 03295024 */  and   $t2, $t9, $t1
/* AF94AC 8008230C 11400004 */  beqz  $t2, .L80082320
/* AF94B0 80082310 0313C023 */   subu  $t8, $t8, $s3
/* AF94B4 80082314 240B0001 */  li    $t3, 1
/* AF94B8 80082318 10000002 */  b     .L80082324
/* AF94BC 8008231C A24B015F */   sb    $t3, 0x15f($s2)
.L80082320:
/* AF94C0 80082320 A240015F */  sb    $zero, 0x15f($s2)
.L80082324:
/* AF94C4 80082324 8D8CFFD0 */  lw    $t4, %lo(D_8015FFD0)($t4)
/* AF94C8 80082328 00137140 */  sll   $t6, $s3, 5
/* AF94CC 8008232C 00008825 */  move  $s1, $zero
/* AF94D0 80082330 8D8D0054 */  lw    $t5, 0x54($t4)
/* AF94D4 80082334 C4A00028 */  lwc1  $f0, 0x28($a1)
/* AF94D8 80082338 0018C080 */  sll   $t8, $t8, 2
/* AF94DC 8008233C 01AE1821 */  addu  $v1, $t5, $t6
/* AF94E0 80082340 00111080 */  sll   $v0, $s1, 2
.L80082344:
/* AF94E4 80082344 00627821 */  addu  $t7, $v1, $v0
/* AF94E8 80082348 C5E40000 */  lwc1  $f4, ($t7)
/* AF94EC 8008234C 4600203C */  c.lt.s $f4, $f0
/* AF94F0 80082350 00000000 */  nop   
/* AF94F4 80082354 45030009 */  bc1tl .L8008237C
/* AF94F8 80082358 00D81821 */   addu  $v1, $a2, $t8
/* AF94FC 8008235C 26310001 */  addiu $s1, $s1, 1
/* AF9500 80082360 00118C00 */  sll   $s1, $s1, 0x10
/* AF9504 80082364 00118C03 */  sra   $s1, $s1, 0x10
/* AF9508 80082368 2A210008 */  slti  $at, $s1, 8
/* AF950C 8008236C 5420FFF5 */  bnezl $at, .L80082344
/* AF9510 80082370 00111080 */   sll   $v0, $s1, 2
/* AF9514 80082374 00111080 */  sll   $v0, $s1, 2
/* AF9518 80082378 00D81821 */  addu  $v1, $a2, $t8
.L8008237C:
/* AF951C 8008237C 00E2C821 */  addu  $t9, $a3, $v0
/* AF9520 80082380 8F290000 */  lw    $t1, ($t9)
/* AF9524 80082384 8C6800EC */  lw    $t0, 0xec($v1)
/* AF9528 80082388 3C0B8016 */  lui   $t3, %hi(gGameInfo) # $t3, 0x8016
/* AF952C 8008238C 02602025 */  move  $a0, $s3
/* AF9530 80082390 01095025 */  or    $t2, $t0, $t1
/* AF9534 80082394 AC6A00EC */  sw    $t2, 0xec($v1)
/* AF9538 80082398 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* AF953C 8008239C 02202825 */  move  $a1, $s1
/* AF9540 800823A0 0C020892 */  jal   func_80082248
/* AF9544 800823A4 A5710F50 */   sh    $s1, 0xf50($t3)
/* AF9548 800823A8 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AF954C 800823AC 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AF9550 800823B0 02602025 */  move  $a0, $s3
/* AF9554 800823B4 846D0F2C */  lh    $t5, 0xf2c($v1)
/* AF9558 800823B8 846C0F2E */  lh    $t4, 0xf2e($v1)
/* AF955C 800823BC 004D7021 */  addu  $t6, $v0, $t5
/* AF9560 800823C0 118E0008 */  beq   $t4, $t6, .L800823E4
/* AF9564 800823C4 00000000 */   nop   
/* AF9568 800823C8 0C020892 */  jal   func_80082248
/* AF956C 800823CC 02202825 */   move  $a1, $s1
/* AF9570 800823D0 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AF9574 800823D4 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AF9578 800823D8 846F0F2C */  lh    $t7, 0xf2c($v1)
/* AF957C 800823DC 004FC021 */  addu  $t8, $v0, $t7
/* AF9580 800823E0 A4780F2E */  sh    $t8, 0xf2e($v1)
.L800823E4:
/* AF9584 800823E4 3C198012 */  lui   $t9, %hi(D_80123A60) # $t9, 0x8012
/* AF9588 800823E8 87393A60 */  lh    $t9, %lo(D_80123A60)($t9)
/* AF958C 800823EC 8646025C */  lh    $a2, 0x25c($s2)
/* AF9590 800823F0 3C088016 */  lui   $t0, %hi(D_8015FFD0) # $t0, 0x8016
/* AF9594 800823F4 1326000D */  beq   $t9, $a2, .L8008242C
/* AF9598 800823F8 00000000 */   nop   
/* AF959C 800823FC 8D08FFD0 */  lw    $t0, %lo(D_8015FFD0)($t0)
/* AF95A0 80082400 00135040 */  sll   $t2, $s3, 1
/* AF95A4 80082404 3C048014 */  lui   $a0, %hi(D_8013D998) # $a0, 0x8014
/* AF95A8 80082408 8D090058 */  lw    $t1, 0x58($t0)
/* AF95AC 8008240C 2484D998 */  addiu $a0, %lo(D_8013D998) # addiu $a0, $a0, -0x2668
/* AF95B0 80082410 02202825 */  move  $a1, $s1
/* AF95B4 80082414 012A5821 */  addu  $t3, $t1, $t2
/* AF95B8 80082418 0C00084C */  jal   osSyncPrintf
/* AF95BC 8008241C 95670000 */   lhu   $a3, ($t3)
/* AF95C0 80082420 8646025C */  lh    $a2, 0x25c($s2)
/* AF95C4 80082424 3C018012 */  lui   $at, %hi(D_80123A60) # $at, 0x8012
/* AF95C8 80082428 A4263A60 */  sh    $a2, %lo(D_80123A60)($at)
.L8008242C:
/* AF95CC 8008242C 3C028016 */  lui   $v0, %hi(D_8015FFD0) # $v0, 0x8016
/* AF95D0 80082430 8C42FFD0 */  lw    $v0, %lo(D_8015FFD0)($v0)
/* AF95D4 80082434 00136840 */  sll   $t5, $s3, 1
/* AF95D8 80082438 AFAD0034 */  sw    $t5, 0x34($sp)
/* AF95DC 8008243C 8C4C0058 */  lw    $t4, 0x58($v0)
/* AF95E0 80082440 00008025 */  move  $s0, $zero
/* AF95E4 80082444 018D7821 */  addu  $t7, $t4, $t5
/* AF95E8 80082448 95E30000 */  lhu   $v1, ($t7)
/* AF95EC 8008244C 1860003F */  blez  $v1, .L8008254C
/* AF95F0 80082450 0013C880 */   sll   $t9, $s3, 2
.L80082454:
/* AF95F4 80082454 0333C823 */  subu  $t9, $t9, $s3
/* AF95F8 80082458 0019C880 */  sll   $t9, $t9, 2
/* AF95FC 8008245C 8C58005C */  lw    $t8, 0x5c($v0)
/* AF9600 80082460 0333C821 */  addu  $t9, $t9, $s3
/* AF9604 80082464 0019C880 */  sll   $t9, $t9, 2
/* AF9608 80082468 0333C823 */  subu  $t9, $t9, $s3
/* AF960C 8008246C 03194021 */  addu  $t0, $t8, $t9
/* AF9610 80082470 01104821 */  addu  $t1, $t0, $s0
/* AF9614 80082474 912A0000 */  lbu   $t2, ($t1)
/* AF9618 80082478 00136880 */  sll   $t5, $s3, 2
/* AF961C 8008247C 01B36823 */  subu  $t5, $t5, $s3
/* AF9620 80082480 14CA002C */  bne   $a2, $t2, .L80082534
/* AF9624 80082484 000D6880 */   sll   $t5, $t5, 2
/* AF9628 80082488 8C4B0060 */  lw    $t3, 0x60($v0)
/* AF962C 8008248C 01B36821 */  addu  $t5, $t5, $s3
/* AF9630 80082490 000D6880 */  sll   $t5, $t5, 2
/* AF9634 80082494 01B36823 */  subu  $t5, $t5, $s3
/* AF9638 80082498 016D6021 */  addu  $t4, $t3, $t5
/* AF963C 8008249C 01907021 */  addu  $t6, $t4, $s0
/* AF9640 800824A0 91CF0000 */  lbu   $t7, ($t6)
/* AF9644 800824A4 0013C880 */  sll   $t9, $s3, 2
/* AF9648 800824A8 0333C823 */  subu  $t9, $t9, $s3
/* AF964C 800824AC 162F0021 */  bne   $s1, $t7, .L80082534
/* AF9650 800824B0 0019C880 */   sll   $t9, $t9, 2
/* AF9654 800824B4 8C580064 */  lw    $t8, 0x64($v0)
/* AF9658 800824B8 0333C821 */  addu  $t9, $t9, $s3
/* AF965C 800824BC 0019C880 */  sll   $t9, $t9, 2
/* AF9660 800824C0 0333C823 */  subu  $t9, $t9, $s3
/* AF9664 800824C4 03194021 */  addu  $t0, $t8, $t9
/* AF9668 800824C8 01104821 */  addu  $t1, $t0, $s0
/* AF966C 800824CC 912A0000 */  lbu   $t2, ($t1)
/* AF9670 800824D0 3C048014 */  lui   $a0, %hi(D_8013D9C0) # $a0, 0x8014
/* AF9674 800824D4 2484D9C0 */  addiu $a0, %lo(D_8013D9C0) # addiu $a0, $a0, -0x2640
/* AF9678 800824D8 0C00084C */  jal   osSyncPrintf
/* AF967C 800824DC A64A025C */   sh    $t2, 0x25c($s2)
/* AF9680 800824E0 3C048014 */  lui   $a0, %hi(D_8013D9C8) # $a0, 0x8014
/* AF9684 800824E4 2484D9C8 */  addiu $a0, %lo(D_8013D9C8) # addiu $a0, $a0, -0x2638
/* AF9688 800824E8 0C00084C */  jal   osSyncPrintf
/* AF968C 800824EC 8645025C */   lh    $a1, 0x25c($s2)
/* AF9690 800824F0 3C048014 */  lui   $a0, %hi(D_8013D9D8) # $a0, 0x8014
/* AF9694 800824F4 0C00084C */  jal   osSyncPrintf
/* AF9698 800824F8 2484D9D8 */   addiu $a0, %lo(D_8013D9D8) # addiu $a0, $a0, -0x2628
/* AF969C 800824FC 02802025 */  move  $a0, $s4
/* AF96A0 80082500 0C0202AD */  jal   func_80080AB4
/* AF96A4 80082504 8645025C */   lh    $a1, 0x25c($s2)
/* AF96A8 80082508 3C018016 */  lui   $at, %hi(gSaveContext+0x1422) # $at, 0x8016
/* AF96AC 8008250C A420FA82 */  sh    $zero, %lo(gSaveContext+0x1422)($at)
/* AF96B0 80082510 0C0201E8 */  jal   func_800807A0
/* AF96B4 80082514 02802025 */   move  $a0, $s4
/* AF96B8 80082518 3C028016 */  lui   $v0, %hi(D_8015FFD0) # $v0, 0x8016
/* AF96BC 8008251C 8C42FFD0 */  lw    $v0, %lo(D_8015FFD0)($v0)
/* AF96C0 80082520 8FAD0034 */  lw    $t5, 0x34($sp)
/* AF96C4 80082524 8646025C */  lh    $a2, 0x25c($s2)
/* AF96C8 80082528 8C4B0058 */  lw    $t3, 0x58($v0)
/* AF96CC 8008252C 016D6021 */  addu  $t4, $t3, $t5
/* AF96D0 80082530 95830000 */  lhu   $v1, ($t4)
.L80082534:
/* AF96D4 80082534 26100001 */  addiu $s0, $s0, 1
/* AF96D8 80082538 00108400 */  sll   $s0, $s0, 0x10
/* AF96DC 8008253C 00108403 */  sra   $s0, $s0, 0x10
/* AF96E0 80082540 0203082A */  slt   $at, $s0, $v1
/* AF96E4 80082544 5420FFC3 */  bnezl $at, .L80082454
/* AF96E8 80082548 0013C880 */   sll   $t9, $s3, 2
.L8008254C:
/* AF96EC 8008254C 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AF96F0 80082550 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AF96F4 80082554 10000019 */  b     .L800825BC
/* AF96F8 80082558 A5C60F28 */   sh    $a2, 0xf28($t6)
/* AF96FC 8008255C 3C0F8016 */  lui   $t7, %hi(D_8015FFD0) # $t7, 0x8016
/* AF9700 80082560 8DEFFFD0 */  lw    $t7, %lo(D_8015FFD0)($t7)
/* AF9704 80082564 0002C840 */  sll   $t9, $v0, 1
/* AF9708 80082568 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* AF970C 8008256C 8DF80004 */  lw    $t8, 4($t7)
/* AF9710 80082570 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* AF9714 80082574 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AF9718 80082578 03194021 */  addu  $t0, $t8, $t9
/* AF971C 8008257C 8509FFDE */  lh    $t1, -0x22($t0)
/* AF9720 80082580 3C0B8016 */  lui   $t3, %hi(D_8015FFD0) # $t3, 0x8016
/* AF9724 80082584 A5490F50 */  sh    $t1, 0xf50($t2)
/* AF9728 80082588 8D6BFFD0 */  lw    $t3, %lo(D_8015FFD0)($t3)
/* AF972C 8008258C 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AF9730 80082590 868C00A4 */  lh    $t4, 0xa4($s4)
/* AF9734 80082594 8D6D0000 */  lw    $t5, ($t3)
/* AF9738 80082598 84780F50 */  lh    $t8, 0xf50($v1)
/* AF973C 8008259C 000C7100 */  sll   $t6, $t4, 4
/* AF9740 800825A0 01AE7821 */  addu  $t7, $t5, $t6
/* AF9744 800825A4 0018C840 */  sll   $t9, $t8, 1
/* AF9748 800825A8 01F94021 */  addu  $t0, $t7, $t9
/* AF974C 800825AC 8509FEF0 */  lh    $t1, -0x110($t0)
/* AF9750 800825B0 846A0F2C */  lh    $t2, 0xf2c($v1)
/* AF9754 800825B4 012A5821 */  addu  $t3, $t1, $t2
/* AF9758 800825B8 A46B0F2E */  sh    $t3, 0xf2e($v1)
.L800825BC:
/* AF975C 800825BC 8FBF002C */  lw    $ra, 0x2c($sp)
.L800825C0:
/* AF9760 800825C0 8FB00018 */  lw    $s0, 0x18($sp)
/* AF9764 800825C4 8FB1001C */  lw    $s1, 0x1c($sp)
/* AF9768 800825C8 8FB20020 */  lw    $s2, 0x20($sp)
/* AF976C 800825CC 8FB30024 */  lw    $s3, 0x24($sp)
/* AF9770 800825D0 8FB40028 */  lw    $s4, 0x28($sp)
/* AF9774 800825D4 03E00008 */  jr    $ra
/* AF9778 800825D8 27BD0050 */   addiu $sp, $sp, 0x50
