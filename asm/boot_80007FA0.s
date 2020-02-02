.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80007FA0
/* 008BA0 80007FA0 00A6001A */  div   $zero, $a1, $a2
/* 008BA4 80007FA4 00001012 */  mflo  $v0
/* 008BA8 80007FA8 27BDFFF8 */  addiu $sp, $sp, -8
/* 008BAC 80007FAC 14C00002 */  bnez  $a2, .L80007FB8
/* 008BB0 80007FB0 00000000 */   nop   
/* 008BB4 80007FB4 0007000D */  break 7
.L80007FB8:
/* 008BB8 80007FB8 2401FFFF */  li    $at, -1
/* 008BBC 80007FBC 14C10004 */  bne   $a2, $at, .L80007FD0
/* 008BC0 80007FC0 3C018000 */   lui   $at, 0x8000
/* 008BC4 80007FC4 14A10002 */  bne   $a1, $at, .L80007FD0
/* 008BC8 80007FC8 00000000 */   nop   
/* 008BCC 80007FCC 0006000D */  break 6
.L80007FD0:
/* 008BD0 80007FD0 00C20019 */  multu $a2, $v0
/* 008BD4 80007FD4 AFA20000 */  sw    $v0, ($sp)
/* 008BD8 80007FD8 27AF0000 */  addiu $t7, $sp, 0
/* 008BDC 80007FDC 00007012 */  mflo  $t6
/* 008BE0 80007FE0 00AE1823 */  subu  $v1, $a1, $t6
/* 008BE4 80007FE4 04410008 */  bgez  $v0, .L80008008
/* 008BE8 80007FE8 AFA30004 */   sw    $v1, 4($sp)
/* 008BEC 80007FEC AFA20000 */  sw    $v0, ($sp)
/* 008BF0 80007FF0 18600005 */  blez  $v1, .L80008008
/* 008BF4 80007FF4 AFA30004 */   sw    $v1, 4($sp)
/* 008BF8 80007FF8 24420001 */  addiu $v0, $v0, 1
/* 008BFC 80007FFC 00661823 */  subu  $v1, $v1, $a2
/* 008C00 80008000 AFA30004 */  sw    $v1, 4($sp)
/* 008C04 80008004 AFA20000 */  sw    $v0, ($sp)
.L80008008:
/* 008C08 80008008 8DE10000 */  lw    $at, ($t7)
/* 008C0C 8000800C 00801025 */  move  $v0, $a0
/* 008C10 80008010 AC810000 */  sw    $at, ($a0)
/* 008C14 80008014 8DE80004 */  lw    $t0, 4($t7)
/* 008C18 80008018 27BD0008 */  addiu $sp, $sp, 8
/* 008C1C 8000801C 03E00008 */  jr    $ra
/* 008C20 80008020 AC880004 */   sw    $t0, 4($a0)

glabel lldiv
/* 008C24 80008024 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 008C28 80008028 AFA40030 */  sw    $a0, 0x30($sp)
/* 008C2C 8000802C AFBF0014 */  sw    $ra, 0x14($sp)
/* 008C30 80008030 AFA60038 */  sw    $a2, 0x38($sp)
/* 008C34 80008034 AFA7003C */  sw    $a3, 0x3c($sp)
/* 008C38 80008038 00C02025 */  move  $a0, $a2
/* 008C3C 8000803C 00E02825 */  move  $a1, $a3
/* 008C40 80008040 8FA70044 */  lw    $a3, 0x44($sp)
/* 008C44 80008044 0C000E07 */  jal   __ll_div
/* 008C48 80008048 8FA60040 */   lw    $a2, 0x40($sp)
/* 008C4C 8000804C AFA20020 */  sw    $v0, 0x20($sp)
/* 008C50 80008050 AFA30024 */  sw    $v1, 0x24($sp)
/* 008C54 80008054 8FA40040 */  lw    $a0, 0x40($sp)
/* 008C58 80008058 8FA50044 */  lw    $a1, 0x44($sp)
/* 008C5C 8000805C 00403025 */  move  $a2, $v0
/* 008C60 80008060 0C000E1E */  jal   __ll_mul
/* 008C64 80008064 00603825 */   move  $a3, $v1
/* 008C68 80008068 8FAE0038 */  lw    $t6, 0x38($sp)
/* 008C6C 8000806C 8FAF003C */  lw    $t7, 0x3c($sp)
/* 008C70 80008070 8FA80020 */  lw    $t0, 0x20($sp)
/* 008C74 80008074 01C2C023 */  subu  $t8, $t6, $v0
/* 008C78 80008078 01E3082B */  sltu  $at, $t7, $v1
/* 008C7C 8000807C 0301C023 */  subu  $t8, $t8, $at
/* 008C80 80008080 01E3C823 */  subu  $t9, $t7, $v1
/* 008C84 80008084 AFB9002C */  sw    $t9, 0x2c($sp)
/* 008C88 80008088 AFB80028 */  sw    $t8, 0x28($sp)
/* 008C8C 8000808C 1D000017 */  bgtz  $t0, .L800080EC
/* 008C90 80008090 8FA90024 */   lw    $t1, 0x24($sp)
/* 008C94 80008094 05000003 */  bltz  $t0, .L800080A4
/* 008C98 80008098 00000000 */   nop   
/* 008C9C 8000809C 10000014 */  b     .L800080F0
/* 008CA0 800080A0 27A80020 */   addiu $t0, $sp, 0x20
.L800080A4:
/* 008CA4 800080A4 07020012 */  bltzl $t8, .L800080F0
/* 008CA8 800080A8 27A80020 */   addiu $t0, $sp, 0x20
/* 008CAC 800080AC 1F000003 */  bgtz  $t8, .L800080BC
/* 008CB0 800080B0 252B0001 */   addiu $t3, $t1, 1
/* 008CB4 800080B4 5320000E */  beql  $t9, $zero, .L800080F0
/* 008CB8 800080B8 27A80020 */   addiu $t0, $sp, 0x20
.L800080BC:
/* 008CBC 800080BC 8FAC0040 */  lw    $t4, 0x40($sp)
/* 008CC0 800080C0 8FAD0044 */  lw    $t5, 0x44($sp)
/* 008CC4 800080C4 2D610001 */  sltiu $at, $t3, 1
/* 008CC8 800080C8 01015021 */  addu  $t2, $t0, $at
/* 008CCC 800080CC 030C7023 */  subu  $t6, $t8, $t4
/* 008CD0 800080D0 032D082B */  sltu  $at, $t9, $t5
/* 008CD4 800080D4 01C17023 */  subu  $t6, $t6, $at
/* 008CD8 800080D8 032D7823 */  subu  $t7, $t9, $t5
/* 008CDC 800080DC AFAA0020 */  sw    $t2, 0x20($sp)
/* 008CE0 800080E0 AFAB0024 */  sw    $t3, 0x24($sp)
/* 008CE4 800080E4 AFAF002C */  sw    $t7, 0x2c($sp)
/* 008CE8 800080E8 AFAE0028 */  sw    $t6, 0x28($sp)
.L800080EC:
/* 008CEC 800080EC 27A80020 */  addiu $t0, $sp, 0x20
.L800080F0:
/* 008CF0 800080F0 8FA20030 */  lw    $v0, 0x30($sp)
/* 008CF4 800080F4 8D010000 */  lw    $at, ($t0)
/* 008CF8 800080F8 AC410000 */  sw    $at, ($v0)
/* 008CFC 800080FC 8D0B0004 */  lw    $t3, 4($t0)
/* 008D00 80008100 AC4B0004 */  sw    $t3, 4($v0)
/* 008D04 80008104 8D010008 */  lw    $at, 8($t0)
/* 008D08 80008108 AC410008 */  sw    $at, 8($v0)
/* 008D0C 8000810C 8D0B000C */  lw    $t3, 0xc($t0)
/* 008D10 80008110 AC4B000C */  sw    $t3, 0xc($v0)
/* 008D14 80008114 8FBF0014 */  lw    $ra, 0x14($sp)
/* 008D18 80008118 27BD0030 */  addiu $sp, $sp, 0x30
/* 008D1C 8000811C 03E00008 */  jr    $ra
/* 008D20 80008120 00000000 */   nop   
