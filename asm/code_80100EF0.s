.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80100EF0
/* B78090 80100EF0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B78094 80100EF4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B78098 80100EF8 0C0402E8 */  jal   func_80100BA0
/* B7809C 80100EFC AFA40020 */   sw    $a0, 0x20($sp)
/* B780A0 80100F00 3C0E8017 */  lui   $t6, %hi(D_80175810) # $t6, 0x8017
/* B780A4 80100F04 91CE5810 */  lbu   $t6, %lo(D_80175810)($t6)
/* B780A8 80100F08 24010001 */  li    $at, 1
/* B780AC 80100F0C 11C1000B */  beq   $t6, $at, .L80100F3C
/* B780B0 80100F10 00000000 */   nop   
/* B780B4 80100F14 0C040400 */  jal   func_80101000
/* B780B8 80100F18 00000000 */   nop   
/* B780BC 80100F1C 3C058017 */  lui   $a1, %hi(D_801757D0) # $a1, 0x8017
/* B780C0 80100F20 24A557D0 */  addiu $a1, %lo(D_801757D0) # addiu $a1, $a1, 0x57d0
/* B780C4 80100F24 0C0404FC */  jal   func_801013F0
/* B780C8 80100F28 24040001 */   li    $a0, 1
/* B780CC 80100F2C 8FA40020 */  lw    $a0, 0x20($sp)
/* B780D0 80100F30 00002825 */  move  $a1, $zero
/* B780D4 80100F34 0C000CA0 */  jal   osRecvMesg
/* B780D8 80100F38 24060001 */   li    $a2, 1
.L80100F3C:
/* B780DC 80100F3C 3C058017 */  lui   $a1, %hi(D_801757D0) # $a1, 0x8017
/* B780E0 80100F40 24A557D0 */  addiu $a1, %lo(D_801757D0) # addiu $a1, $a1, 0x57d0
/* B780E4 80100F44 0C0404FC */  jal   func_801013F0
/* B780E8 80100F48 00002025 */   move  $a0, $zero
/* B780EC 80100F4C 240F0001 */  li    $t7, 1
/* B780F0 80100F50 3C018017 */  lui   $at, %hi(D_80175810) # $at, 0x8017
/* B780F4 80100F54 AFA2001C */  sw    $v0, 0x1c($sp)
/* B780F8 80100F58 0C0402F9 */  jal   func_80100BE4
/* B780FC 80100F5C A02F5810 */   sb    $t7, %lo(D_80175810)($at)
/* B78100 80100F60 8FBF0014 */  lw    $ra, 0x14($sp)
/* B78104 80100F64 8FA2001C */  lw    $v0, 0x1c($sp)
/* B78108 80100F68 27BD0020 */  addiu $sp, $sp, 0x20
/* B7810C 80100F6C 03E00008 */  jr    $ra
/* B78110 80100F70 00000000 */   nop   

glabel func_80100F74
/* B78114 80100F74 3C058017 */  lui   $a1, %hi(D_80175811) # $a1, 0x8017
/* B78118 80100F78 24A55811 */  addiu $a1, %lo(D_80175811) # addiu $a1, $a1, 0x5811
/* B7811C 80100F7C 90AE0000 */  lbu   $t6, ($a1)
/* B78120 80100F80 3C028017 */  lui   $v0, %hi(D_801757D0) # $v0, 0x8017
/* B78124 80100F84 27BDFFF0 */  addiu $sp, $sp, -0x10
/* B78128 80100F88 244257D0 */  addiu $v0, %lo(D_801757D0) # addiu $v0, $v0, 0x57d0
/* B7812C 80100F8C 19C0001A */  blez  $t6, .L80100FF8
/* B78130 80100F90 00001825 */   move  $v1, $zero
/* B78134 80100F94 27A60004 */  addiu $a2, $sp, 4
.L80100F98:
/* B78138 80100F98 88410000 */  lwl   $at, ($v0)
/* B7813C 80100F9C 98410003 */  lwr   $at, 3($v0)
/* B78140 80100FA0 ACC10000 */  sw    $at, ($a2)
/* B78144 80100FA4 88580004 */  lwl   $t8, 4($v0)
/* B78148 80100FA8 98580007 */  lwr   $t8, 7($v0)
/* B7814C 80100FAC ACD80004 */  sw    $t8, 4($a2)
/* B78150 80100FB0 93B90006 */  lbu   $t9, 6($sp)
/* B78154 80100FB4 332800C0 */  andi  $t0, $t9, 0xc0
/* B78158 80100FB8 00084903 */  sra   $t1, $t0, 4
/* B7815C 80100FBC 312A00FF */  andi  $t2, $t1, 0xff
/* B78160 80100FC0 15400007 */  bnez  $t2, .L80100FE0
/* B78164 80100FC4 A0890004 */   sb    $t1, 4($a0)
/* B78168 80100FC8 97AB0008 */  lhu   $t3, 8($sp)
/* B7816C 80100FCC A48B0000 */  sh    $t3, ($a0)
/* B78170 80100FD0 83AC000A */  lb    $t4, 0xa($sp)
/* B78174 80100FD4 A08C0002 */  sb    $t4, 2($a0)
/* B78178 80100FD8 83AD000B */  lb    $t5, 0xb($sp)
/* B7817C 80100FDC A08D0003 */  sb    $t5, 3($a0)
.L80100FE0:
/* B78180 80100FE0 90AE0000 */  lbu   $t6, ($a1)
/* B78184 80100FE4 24630001 */  addiu $v1, $v1, 1
/* B78188 80100FE8 24420008 */  addiu $v0, $v0, 8
/* B7818C 80100FEC 006E082A */  slt   $at, $v1, $t6
/* B78190 80100FF0 1420FFE9 */  bnez  $at, .L80100F98
/* B78194 80100FF4 24840006 */   addiu $a0, $a0, 6
.L80100FF8:
/* B78198 80100FF8 03E00008 */  jr    $ra
/* B7819C 80100FFC 27BD0010 */   addiu $sp, $sp, 0x10

glabel func_80101000
/* B781A0 80101000 3C058017 */  lui   $a1, %hi(D_801757D0) # $a1, 0x8017
/* B781A4 80101004 24A557D0 */  addiu $a1, %lo(D_801757D0) # addiu $a1, $a1, 0x57d0
/* B781A8 80101008 3C048017 */  lui   $a0, %hi(D_801757D0) # $a0, 0x8017
/* B781AC 8010100C 3C038017 */  lui   $v1, %hi(D_8017580C) # $v1, 0x8017
/* B781B0 80101010 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B781B4 80101014 00A01025 */  move  $v0, $a1
/* B781B8 80101018 2463580C */  addiu $v1, %lo(D_8017580C) # addiu $v1, $v1, 0x580c
/* B781BC 8010101C 248457D0 */  addiu $a0, %lo(D_801757D0) # addiu $a0, $a0, 0x57d0
.L80101020:
/* B781C0 80101020 24840004 */  addiu $a0, $a0, 4
/* B781C4 80101024 0083082B */  sltu  $at, $a0, $v1
/* B781C8 80101028 1420FFFD */  bnez  $at, .L80101020
/* B781CC 8010102C AC80FFFC */   sw    $zero, -4($a0)
/* B781D0 80101030 3C048017 */  lui   $a0, %hi(D_80175811) # $a0, 0x8017
/* B781D4 80101034 24845811 */  addiu $a0, %lo(D_80175811) # addiu $a0, $a0, 0x5811
/* B781D8 80101038 908C0000 */  lbu   $t4, ($a0)
/* B781DC 8010103C 240E0001 */  li    $t6, 1
/* B781E0 80101040 240F00FF */  li    $t7, 255
/* B781E4 80101044 24180001 */  li    $t8, 1
/* B781E8 80101048 24190004 */  li    $t9, 4
/* B781EC 8010104C 24080001 */  li    $t0, 1
/* B781F0 80101050 3409FFFF */  li    $t1, 65535
/* B781F4 80101054 240AFFFF */  li    $t2, -1
/* B781F8 80101058 240BFFFF */  li    $t3, -1
/* B781FC 8010105C ACAE003C */  sw    $t6, 0x3c($a1)
/* B78200 80101060 A3AF000C */  sb    $t7, 0xc($sp)
/* B78204 80101064 A3B8000D */  sb    $t8, 0xd($sp)
/* B78208 80101068 A3B9000E */  sb    $t9, 0xe($sp)
/* B7820C 8010106C A3A8000F */  sb    $t0, 0xf($sp)
/* B78210 80101070 A7A90010 */  sh    $t1, 0x10($sp)
/* B78214 80101074 A3AA0012 */  sb    $t2, 0x12($sp)
/* B78218 80101078 A3AB0013 */  sb    $t3, 0x13($sp)
/* B7821C 8010107C 1980000E */  blez  $t4, .L801010B8
/* B78220 80101080 00001825 */   move  $v1, $zero
/* B78224 80101084 27A5000C */  addiu $a1, $sp, 0xc
/* B78228 80101088 8CA10000 */  lw    $at, ($a1)
.L8010108C:
/* B7822C 8010108C 24630001 */  addiu $v1, $v1, 1
/* B78230 80101090 24420008 */  addiu $v0, $v0, 8
/* B78234 80101094 A841FFF8 */  swl   $at, -8($v0)
/* B78238 80101098 B841FFFB */  swr   $at, -5($v0)
/* B7823C 8010109C 8CAE0004 */  lw    $t6, 4($a1)
/* B78240 801010A0 A84EFFFC */  swl   $t6, -4($v0)
/* B78244 801010A4 B84EFFFF */  swr   $t6, -1($v0)
/* B78248 801010A8 908F0000 */  lbu   $t7, ($a0)
/* B7824C 801010AC 006F082A */  slt   $at, $v1, $t7
/* B78250 801010B0 5420FFF6 */  bnezl $at, .L8010108C
/* B78254 801010B4 8CA10000 */   lw    $at, ($a1)
.L801010B8:
/* B78258 801010B8 241800FE */  li    $t8, 254
/* B7825C 801010BC A0580000 */  sb    $t8, ($v0)
/* B78260 801010C0 03E00008 */  jr    $ra
/* B78264 801010C4 27BD0018 */   addiu $sp, $sp, 0x18
