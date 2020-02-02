.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800C6DD0
/* B3DF70 800C6DD0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3DF74 800C6DD4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3DF78 800C6DD8 3C048014 */  lui   $a0, %hi(D_80145670) # $a0, 0x8014
/* B3DF7C 800C6DDC 0C00084C */  jal   osSyncPrintf
/* B3DF80 800C6DE0 24845670 */   addiu $a0, %lo(D_80145670) # addiu $a0, $a0, 0x5670
/* B3DF84 800C6DE4 3C058013 */  lui   $a1, %hi(D_8012D278) # $a1, 0x8013
/* B3DF88 800C6DE8 8CA5D278 */  lw    $a1, %lo(D_8012D278)($a1)
/* B3DF8C 800C6DEC 3C048014 */  lui   $a0, %hi(D_80145678) # $a0, 0x8014
/* B3DF90 800C6DF0 3C078021 */  lui   $a3, %hi(gSystemHeap) # $a3, 0x8021
/* B3DF94 800C6DF4 24E709E0 */  addiu $a3, %lo(gSystemHeap) # addiu $a3, $a3, 0x9e0
/* B3DF98 800C6DF8 24845678 */  addiu $a0, %lo(D_80145678) # addiu $a0, $a0, 0x5678
/* B3DF9C 800C6DFC 0C00084C */  jal   osSyncPrintf
/* B3DFA0 800C6E00 00053282 */   srl   $a2, $a1, 0xa
/* B3DFA4 800C6E04 3C048014 */  lui   $a0, %hi(D_801456AC) # $a0, 0x8014
/* B3DFA8 800C6E08 0C00084C */  jal   osSyncPrintf
/* B3DFAC 800C6E0C 248456AC */   addiu $a0, %lo(D_801456AC) # addiu $a0, $a0, 0x56ac
/* B3DFB0 800C6E10 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3DFB4 800C6E14 27BD0018 */  addiu $sp, $sp, 0x18
/* B3DFB8 800C6E18 03E00008 */  jr    $ra
/* B3DFBC 800C6E1C 00000000 */   nop   

glabel func_800C6E20
/* B3DFC0 800C6E20 27BDFEB8 */  addiu $sp, $sp, -0x148
/* B3DFC4 800C6E24 AFA40148 */  sw    $a0, 0x148($sp)
/* B3DFC8 800C6E28 AFBF001C */  sw    $ra, 0x1c($sp)
/* B3DFCC 800C6E2C 3C048014 */  lui   $a0, %hi(D_801456B0) # $a0, 0x8014
/* B3DFD0 800C6E30 0C00084C */  jal   osSyncPrintf
/* B3DFD4 800C6E34 248456B0 */   addiu $a0, %lo(D_801456B0) # addiu $a0, $a0, 0x56b0
/* B3DFD8 800C6E38 240E0140 */  li    $t6, 320
/* B3DFDC 800C6E3C 3C018013 */  lui   $at, %hi(D_8012D270) # $at, 0x8013
/* B3DFE0 800C6E40 AC2ED270 */  sw    $t6, %lo(D_8012D270)($at)
/* B3DFE4 800C6E44 3C028016 */  lui   $v0, %hi(D_80166660) # $v0, 0x8016
/* B3DFE8 800C6E48 3C018013 */  lui   $at, %hi(D_8012D274) # $at, 0x8013
/* B3DFEC 800C6E4C 240F00F0 */  li    $t7, 240
/* B3DFF0 800C6E50 3C188000 */  lui   $t8, %hi(osAppNmiBuffer)
/* B3DFF4 800C6E54 24426660 */  addiu $v0, %lo(D_80166660) # addiu $v0, $v0, 0x6660
/* B3DFF8 800C6E58 AC2FD274 */  sw    $t7, %lo(D_8012D274)($at)
/* B3DFFC 800C6E5C 2704031C */  addiu $a0, $t8, %lo(osAppNmiBuffer)
/* B3E000 800C6E60 0C01EF98 */  jal   func_8007BE60
/* B3E004 800C6E64 AC440000 */   sw    $a0, ($v0)
/* B3E008 800C6E68 0C035921 */  jal   Fault_Start
/* B3E00C 800C6E6C 00000000 */   nop   
/* B3E010 800C6E70 0C0328E8 */  jal   func_800CA3A0
/* B3E014 800C6E74 00002025 */   move  $a0, $zero
/* B3E018 800C6E78 0C032942 */  jal   func_800CA508
/* B3E01C 800C6E7C 00002025 */   move  $a0, $zero
/* B3E020 800C6E80 3C058021 */  lui   $a1, %hi(gSystemHeap) # $a1, 0x8021
/* B3E024 800C6E84 24A509E0 */  addiu $a1, %lo(gSystemHeap) # addiu $a1, $a1, 0x9e0
/* B3E028 800C6E88 0045C823 */  subu  $t9, $v0, $a1
/* B3E02C 800C6E8C 3C018013 */  lui   $at, %hi(D_8012D278) # $at, 0x8013
/* B3E030 800C6E90 AC39D278 */  sw    $t9, %lo(D_8012D278)($at)
/* B3E034 800C6E94 3C048014 */  lui   $a0, %hi(D_801456C4) # $a0, 0x8014
/* B3E038 800C6E98 3C078013 */  lui   $a3, %hi(D_8012D278) # $a3, 0x8013
/* B3E03C 800C6E9C 8CE7D278 */  lw    $a3, %lo(D_8012D278)($a3)
/* B3E040 800C6EA0 248456C4 */  addiu $a0, %lo(D_801456C4) # addiu $a0, $a0, 0x56c4
/* B3E044 800C6EA4 AFA50020 */  sw    $a1, 0x20($sp)
/* B3E048 800C6EA8 0C00084C */  jal   osSyncPrintf
/* B3E04C 800C6EAC 00403025 */   move  $a2, $v0
/* B3E050 800C6EB0 3C058013 */  lui   $a1, %hi(D_8012D278) # $a1, 0x8013
/* B3E054 800C6EB4 8CA5D278 */  lw    $a1, %lo(D_8012D278)($a1)
/* B3E058 800C6EB8 0C03F2C9 */  jal   func_800FCB24
/* B3E05C 800C6EBC 8FA40020 */   lw    $a0, 0x20($sp)
/* B3E060 800C6EC0 3C088000 */  lui   $t0, %hi(osMemSize) # $t0, 0x8000
/* B3E064 800C6EC4 8D080318 */  lw    $t0, %lo(osMemSize)($t0)
/* B3E068 800C6EC8 3C010080 */  lui   $at, 0x80
/* B3E06C 800C6ECC 0101082B */  sltu  $at, $t0, $at
/* B3E070 800C6ED0 54200009 */  bnezl $at, .L800C6EF8
/* B3E074 800C6ED4 240B0400 */   li    $t3, 1024
/* B3E078 800C6ED8 0C03294C */  jal   func_800CA530
/* B3E07C 800C6EDC 00000000 */   nop   
/* B3E080 800C6EE0 3C098060 */  lui   $t1, 0x8060
/* B3E084 800C6EE4 01225023 */  subu  $t2, $t1, $v0
/* B3E088 800C6EE8 00403825 */  move  $a3, $v0
/* B3E08C 800C6EEC 10000009 */  b     .L800C6F14
/* B3E090 800C6EF0 AFAA0028 */   sw    $t2, 0x28($sp)
/* B3E094 800C6EF4 240B0400 */  li    $t3, 1024
.L800C6EF8:
/* B3E098 800C6EF8 3C058014 */  lui   $a1, %hi(D_801456EC) # $a1, 0x8014
/* B3E09C 800C6EFC AFAB0028 */  sw    $t3, 0x28($sp)
/* B3E0A0 800C6F00 24A556EC */  addiu $a1, %lo(D_801456EC) # addiu $a1, $a1, 0x56ec
/* B3E0A4 800C6F04 24040400 */  li    $a0, 1024
/* B3E0A8 800C6F08 0C03F570 */  jal   func_800FD5C0
/* B3E0AC 800C6F0C 24060235 */   li    $a2, 565
/* B3E0B0 800C6F10 00403825 */  move  $a3, $v0
.L800C6F14:
/* B3E0B4 800C6F14 3C048014 */  lui   $a0, %hi(D_801456F8) # $a0, 0x8014
/* B3E0B8 800C6F18 248456F8 */  addiu $a0, %lo(D_801456F8) # addiu $a0, $a0, 0x56f8
/* B3E0BC 800C6F1C 00E02825 */  move  $a1, $a3
/* B3E0C0 800C6F20 8FA60028 */  lw    $a2, 0x28($sp)
/* B3E0C4 800C6F24 0C00084C */  jal   osSyncPrintf
/* B3E0C8 800C6F28 AFA7002C */   sw    $a3, 0x2c($sp)
/* B3E0CC 800C6F2C 8FA4002C */  lw    $a0, 0x2c($sp)
/* B3E0D0 800C6F30 0C034FA1 */  jal   func_800D3E84
/* B3E0D4 800C6F34 8FA50028 */   lw    $a1, 0x28($sp)
/* B3E0D8 800C6F38 0C018DB0 */  jal   func_800636C0
/* B3E0DC 800C6F3C 00000000 */   nop   
/* B3E0E0 800C6F40 3C0C8016 */  lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* B3E0E4 800C6F44 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* B3E0E8 800C6F48 3C048017 */  lui   $a0, %hi(D_8016A4D0) # $a0, 0x8017
/* B3E0EC 800C6F4C 3C058017 */  lui   $a1, %hi(D_8016A4E8) # $a1, 0x8017
/* B3E0F0 800C6F50 24A5A4E8 */  addiu $a1, %lo(D_8016A4E8) # addiu $a1, $a1, -0x5b18
/* B3E0F4 800C6F54 2484A4D0 */  addiu $a0, %lo(D_8016A4D0) # addiu $a0, $a0, -0x5b30
/* B3E0F8 800C6F58 24060001 */  li    $a2, 1
/* B3E0FC 800C6F5C 0C001874 */  jal   osCreateMesgQueue
/* B3E100 800C6F60 A58000D4 */   sh    $zero, 0xd4($t4)
/* B3E104 800C6F64 3C058017 */  lui   $a1, %hi(D_8016A4D0) # $a1, 0x8017
/* B3E108 800C6F68 24A5A4D0 */  addiu $a1, %lo(D_8016A4D0) # addiu $a1, $a1, -0x5b30
/* B3E10C 800C6F6C 24040005 */  li    $a0, 5
/* B3E110 800C6F70 0C001488 */  jal   func_80005220
/* B3E114 800C6F74 00003025 */   move  $a2, $zero
/* B3E118 800C6F78 0C031B74 */  jal   func_800C6DD0
/* B3E11C 800C6F7C 00000000 */   nop   
/* B3E120 800C6F80 27A40128 */  addiu $a0, $sp, 0x128
/* B3E124 800C6F84 27A50038 */  addiu $a1, $sp, 0x38
/* B3E128 800C6F88 0C001874 */  jal   osCreateMesgQueue
/* B3E12C 800C6F8C 2406003C */   li    $a2, 60
/* B3E130 800C6F90 3C0E8014 */  lui   $t6, %hi(D_80145718) # $t6, 0x8014
/* B3E134 800C6F94 25CE5718 */  addiu $t6, %lo(D_80145718) # addiu $t6, $t6, 0x5718
/* B3E138 800C6F98 3C048017 */  lui   $a0, %hi(D_8016A218) # $a0, 0x8017
/* B3E13C 800C6F9C 3C058017 */  lui   $a1, %hi(D_80169C98) # $a1, 0x8017
/* B3E140 800C6FA0 3C068017 */  lui   $a2, %hi(D_8016A198) # $a2, 0x8017
/* B3E144 800C6FA4 240D0100 */  li    $t5, 256
/* B3E148 800C6FA8 AFAD0010 */  sw    $t5, 0x10($sp)
/* B3E14C 800C6FAC 24C6A198 */  addiu $a2, %lo(D_8016A198) # addiu $a2, $a2, -0x5e68
/* B3E150 800C6FB0 24A59C98 */  addiu $a1, %lo(D_80169C98) # addiu $a1, $a1, -0x6368
/* B3E154 800C6FB4 2484A218 */  addiu $a0, %lo(D_8016A218) # addiu $a0, $a0, -0x5de8
/* B3E158 800C6FB8 AFAE0014 */  sw    $t6, 0x14($sp)
/* B3E15C 800C6FBC 0C000998 */  jal   StackCheck_Init
/* B3E160 800C6FC0 00003825 */   move  $a3, $zero
/* B3E164 800C6FC4 3C048016 */  lui   $a0, %hi(D_80166D28) # $a0, 0x8016
/* B3E168 800C6FC8 3C058017 */  lui   $a1, %hi(D_8016A198) # $a1, 0x8017
/* B3E16C 800C6FCC 24A5A198 */  addiu $a1, %lo(D_8016A198) # addiu $a1, $a1, -0x5e68
/* B3E170 800C6FD0 24846D28 */  addiu $a0, %lo(D_80166D28) # addiu $a0, $a0, 0x6d28
/* B3E174 800C6FD4 24060011 */  li    $a2, 17
/* B3E178 800C6FD8 0C034E64 */  jal   func_800D3990
/* B3E17C 800C6FDC 24070001 */   li    $a3, 1
/* B3E180 800C6FE0 3C048014 */  lui   $a0, %hi(D_80145720) # $a0, 0x8014
/* B3E184 800C6FE4 0C00084C */  jal   osSyncPrintf
/* B3E188 800C6FE8 24845720 */   addiu $a0, %lo(D_80145720) # addiu $a0, $a0, 0x5720
/* B3E18C 800C6FEC 3C188014 */  lui   $t8, %hi(D_8014573C) # $t8, 0x8014
/* B3E190 800C6FF0 2718573C */  addiu $t8, %lo(D_8014573C) # addiu $t8, $t8, 0x573c
/* B3E194 800C6FF4 3C048017 */  lui   $a0, %hi(D_8016A1B8) # $a0, 0x8017
/* B3E198 800C6FF8 3C058017 */  lui   $a1, %hi(D_80168998) # $a1, 0x8017
/* B3E19C 800C6FFC 3C068017 */  lui   $a2, %hi(D_80168F98) # $a2, 0x8017
/* B3E1A0 800C7000 240F0100 */  li    $t7, 256
/* B3E1A4 800C7004 AFAF0010 */  sw    $t7, 0x10($sp)
/* B3E1A8 800C7008 24C68F98 */  addiu $a2, %lo(D_80168F98) # addiu $a2, $a2, -0x7068
/* B3E1AC 800C700C 24A58998 */  addiu $a1, %lo(D_80168998) # addiu $a1, $a1, -0x7668
/* B3E1B0 800C7010 2484A1B8 */  addiu $a0, %lo(D_8016A1B8) # addiu $a0, $a0, -0x5e48
/* B3E1B4 800C7014 AFB80014 */  sw    $t8, 0x14($sp)
/* B3E1B8 800C7018 0C000998 */  jal   StackCheck_Init
/* B3E1BC 800C701C 00003825 */   move  $a3, $zero
/* B3E1C0 800C7020 3C088016 */  lui   $t0, %hi(D_80166D28) # $t0, 0x8016
/* B3E1C4 800C7024 25086D28 */  addiu $t0, %lo(D_80166D28) # addiu $t0, $t0, 0x6d28
/* B3E1C8 800C7028 3C048016 */  lui   $a0, %hi(D_80166668) # $a0, 0x8016
/* B3E1CC 800C702C 3C058017 */  lui   $a1, %hi(D_80168F98) # $a1, 0x8017
/* B3E1D0 800C7030 3C078001 */  lui   $a3, %hi(D_80013960) # $a3, 0x8001
/* B3E1D4 800C7034 24190001 */  li    $t9, 1
/* B3E1D8 800C7038 AFB90010 */  sw    $t9, 0x10($sp)
/* B3E1DC 800C703C 90E73960 */  lbu   $a3, %lo(D_80013960)($a3)
/* B3E1E0 800C7040 24A58F98 */  addiu $a1, %lo(D_80168F98) # addiu $a1, $a1, -0x7068
/* B3E1E4 800C7044 24846668 */  addiu $a0, %lo(D_80166668) # addiu $a0, $a0, 0x6668
/* B3E1E8 800C7048 AFA80014 */  sw    $t0, 0x14($sp)
/* B3E1EC 800C704C 0C03261D */  jal   func_800C9874
/* B3E1F0 800C7050 2406000F */   li    $a2, 15
/* B3E1F4 800C7054 3C048016 */  lui   $a0, %hi(D_80166D28) # $a0, 0x8016
/* B3E1F8 800C7058 24846D28 */  addiu $a0, %lo(D_80166D28) # addiu $a0, $a0, 0x6d28
/* B3E1FC 800C705C 27A50140 */  addiu $a1, $sp, 0x140
/* B3E200 800C7060 0C034C88 */  jal   func_800D3220
/* B3E204 800C7064 27A60128 */   addiu $a2, $sp, 0x128
/* B3E208 800C7068 3C0A8014 */  lui   $t2, %hi(D_80145744) # $t2, 0x8014
/* B3E20C 800C706C 254A5744 */  addiu $t2, %lo(D_80145744) # addiu $t2, $t2, 0x5744
/* B3E210 800C7070 3C048017 */  lui   $a0, %hi(D_8016A1D8) # $a0, 0x8017
/* B3E214 800C7074 3C058017 */  lui   $a1, %hi(D_80168F98) # $a1, 0x8017
/* B3E218 800C7078 3C068017 */  lui   $a2, %hi(D_80169798) # $a2, 0x8017
/* B3E21C 800C707C 24090100 */  li    $t1, 256
/* B3E220 800C7080 AFA90010 */  sw    $t1, 0x10($sp)
/* B3E224 800C7084 24C69798 */  addiu $a2, %lo(D_80169798) # addiu $a2, $a2, -0x6868
/* B3E228 800C7088 24A58F98 */  addiu $a1, %lo(D_80168F98) # addiu $a1, $a1, -0x7068
/* B3E22C 800C708C 2484A1D8 */  addiu $a0, %lo(D_8016A1D8) # addiu $a0, $a0, -0x5e28
/* B3E230 800C7090 AFAA0014 */  sw    $t2, 0x14($sp)
/* B3E234 800C7094 0C000998 */  jal   StackCheck_Init
/* B3E238 800C7098 00003825 */   move  $a3, $zero
/* B3E23C 800C709C 3C0B8016 */  lui   $t3, %hi(D_80166668) # $t3, 0x8016
/* B3E240 800C70A0 3C0C8016 */  lui   $t4, %hi(D_80166D28) # $t4, 0x8016
/* B3E244 800C70A4 258C6D28 */  addiu $t4, %lo(D_80166D28) # addiu $t4, $t4, 0x6d28
/* B3E248 800C70A8 256B6668 */  addiu $t3, %lo(D_80166668) # addiu $t3, $t3, 0x6668
/* B3E24C 800C70AC 3C048017 */  lui   $a0, %hi(D_8016A238) # $a0, 0x8017
/* B3E250 800C70B0 3C058017 */  lui   $a1, %hi(D_80169798) # $a1, 0x8017
/* B3E254 800C70B4 24A59798 */  addiu $a1, %lo(D_80169798) # addiu $a1, $a1, -0x6868
/* B3E258 800C70B8 2484A238 */  addiu $a0, %lo(D_8016A238) # addiu $a0, $a0, -0x5dc8
/* B3E25C 800C70BC AFAB0010 */  sw    $t3, 0x10($sp)
/* B3E260 800C70C0 AFAC0014 */  sw    $t4, 0x14($sp)
/* B3E264 800C70C4 2406000C */  li    $a2, 12
/* B3E268 800C70C8 0C030FFB */  jal   func_800C3FEC
/* B3E26C 800C70CC 2407000A */   li    $a3, 10
/* B3E270 800C70D0 3C0E8014 */  lui   $t6, %hi(D_8014574C) # $t6, 0x8014
/* B3E274 800C70D4 25CE574C */  addiu $t6, %lo(D_8014574C) # addiu $t6, $t6, 0x574c
/* B3E278 800C70D8 3C048017 */  lui   $a0, %hi(D_8016A1F8) # $a0, 0x8017
/* B3E27C 800C70DC 3C058017 */  lui   $a1, %hi(D_80169798) # $a1, 0x8017
/* B3E280 800C70E0 3C068017 */  lui   $a2, %hi(D_80169C98) # $a2, 0x8017
/* B3E284 800C70E4 240D0100 */  li    $t5, 256
/* B3E288 800C70E8 AFAD0010 */  sw    $t5, 0x10($sp)
/* B3E28C 800C70EC 24C69C98 */  addiu $a2, %lo(D_80169C98) # addiu $a2, $a2, -0x6368
/* B3E290 800C70F0 24A59798 */  addiu $a1, %lo(D_80169798) # addiu $a1, $a1, -0x6868
/* B3E294 800C70F4 2484A1F8 */  addiu $a0, %lo(D_8016A1F8) # addiu $a0, $a0, -0x5e08
/* B3E298 800C70F8 AFAE0014 */  sw    $t6, 0x14($sp)
/* B3E29C 800C70FC 0C000998 */  jal   StackCheck_Init
/* B3E2A0 800C7100 00003825 */   move  $a3, $zero
/* B3E2A4 800C7104 3C188017 */  lui   $t8, %hi(D_80169C98) # $t8, 0x8017
/* B3E2A8 800C7108 27189C98 */  addiu $t8, %lo(D_80169C98) # addiu $t8, $t8, -0x6368
/* B3E2AC 800C710C 3C048016 */  lui   $a0, %hi(D_801668C0) # $a0, 0x8016
/* B3E2B0 800C7110 3C058017 */  lui   $a1, %hi(D_8016A4D0) # $a1, 0x8017
/* B3E2B4 800C7114 3C068016 */  lui   $a2, %hi(D_80166D28) # $a2, 0x8016
/* B3E2B8 800C7118 240F000E */  li    $t7, 14
/* B3E2BC 800C711C AFAF0010 */  sw    $t7, 0x10($sp)
/* B3E2C0 800C7120 24C66D28 */  addiu $a2, %lo(D_80166D28) # addiu $a2, $a2, 0x6d28
/* B3E2C4 800C7124 24A5A4D0 */  addiu $a1, %lo(D_8016A4D0) # addiu $a1, $a1, -0x5b30
/* B3E2C8 800C7128 248468C0 */  addiu $a0, %lo(D_801668C0) # addiu $a0, $a0, 0x68c0
/* B3E2CC 800C712C AFB80014 */  sw    $t8, 0x14($sp)
/* B3E2D0 800C7130 0C032067 */  jal   func_800C819C
/* B3E2D4 800C7134 24070007 */   li    $a3, 7
/* B3E2D8 800C7138 3C048017 */  lui   $a0, %hi(D_8016A238) # $a0, 0x8017
/* B3E2DC 800C713C 0C030FF1 */  jal   func_800C3FC4
/* B3E2E0 800C7140 2484A238 */   addiu $a0, %lo(D_8016A238) # addiu $a0, $a0, -0x5dc8
/* B3E2E4 800C7144 3C088014 */  lui   $t0, %hi(D_80145754) # $t0, 0x8014
/* B3E2E8 800C7148 25085754 */  addiu $t0, %lo(D_80145754) # addiu $t0, $t0, 0x5754
/* B3E2EC 800C714C 3C048017 */  lui   $a0, %hi(D_8016A198) # $a0, 0x8017
/* B3E2F0 800C7150 3C058016 */  lui   $a1, %hi(D_80167198) # $a1, 0x8016
/* B3E2F4 800C7154 3C068017 */  lui   $a2, %hi(D_80168998) # $a2, 0x8017
/* B3E2F8 800C7158 24190100 */  li    $t9, 256
/* B3E2FC 800C715C AFB90010 */  sw    $t9, 0x10($sp)
/* B3E300 800C7160 24C68998 */  addiu $a2, %lo(D_80168998) # addiu $a2, $a2, -0x7668
/* B3E304 800C7164 24A57198 */  addiu $a1, %lo(D_80167198) # addiu $a1, $a1, 0x7198
/* B3E308 800C7168 2484A198 */  addiu $a0, %lo(D_8016A198) # addiu $a0, $a0, -0x5e68
/* B3E30C 800C716C AFA80014 */  sw    $t0, 0x14($sp)
/* B3E310 800C7170 0C000998 */  jal   StackCheck_Init
/* B3E314 800C7174 00003825 */   move  $a3, $zero
/* B3E318 800C7178 3C098017 */  lui   $t1, %hi(D_80168998) # $t1, 0x8017
/* B3E31C 800C717C 25298998 */  addiu $t1, %lo(D_80168998) # addiu $t1, $t1, -0x7668
/* B3E320 800C7180 3C048016 */  lui   $a0, %hi(D_80166FE8) # $a0, 0x8016
/* B3E324 800C7184 3C06800C */  lui   $a2, %hi(func_800C6844) # $a2, 0x800c
/* B3E328 800C7188 240A000B */  li    $t2, 11
/* B3E32C 800C718C AFAA0014 */  sw    $t2, 0x14($sp)
/* B3E330 800C7190 24C66844 */  addiu $a2, %lo(func_800C6844) # addiu $a2, $a2, 0x6844
/* B3E334 800C7194 24846FE8 */  addiu $a0, %lo(D_80166FE8) # addiu $a0, $a0, 0x6fe8
/* B3E338 800C7198 AFA90010 */  sw    $t1, 0x10($sp)
/* B3E33C 800C719C 24050004 */  li    $a1, 4
/* B3E340 800C71A0 0C001154 */  jal   osCreateThread
/* B3E344 800C71A4 8FA70148 */   lw    $a3, 0x148($sp)
/* B3E348 800C71A8 3C048016 */  lui   $a0, %hi(D_80166FE8) # $a0, 0x8016
/* B3E34C 800C71AC 0C0023F0 */  jal   osStartThread
/* B3E350 800C71B0 24846FE8 */   addiu $a0, %lo(D_80166FE8) # addiu $a0, $a0, 0x6fe8
/* B3E354 800C71B4 00002025 */  move  $a0, $zero
/* B3E358 800C71B8 0C00190C */  jal   osSetThreadPri
/* B3E35C 800C71BC 2405000F */   li    $a1, 15
/* B3E360 800C71C0 AFA00024 */  sw    $zero, 0x24($sp)
.L800C71C4:
/* B3E364 800C71C4 27A40128 */  addiu $a0, $sp, 0x128
/* B3E368 800C71C8 27A50024 */  addiu $a1, $sp, 0x24
/* B3E36C 800C71CC 0C000CA0 */  jal   osRecvMesg
/* B3E370 800C71D0 24060001 */   li    $a2, 1
/* B3E374 800C71D4 8FAB0024 */  lw    $t3, 0x24($sp)
/* B3E378 800C71D8 8FAC0024 */  lw    $t4, 0x24($sp)
/* B3E37C 800C71DC 1160000D */  beqz  $t3, .L800C7214
/* B3E380 800C71E0 00000000 */   nop   
/* B3E384 800C71E4 858D0000 */  lh    $t5, ($t4)
/* B3E388 800C71E8 24010004 */  li    $at, 4
/* B3E38C 800C71EC 55A1FFF5 */  bnel  $t5, $at, .L800C71C4
/* B3E390 800C71F0 AFA00024 */   sw    $zero, 0x24($sp)
/* B3E394 800C71F4 3C048014 */  lui   $a0, %hi(D_8014575C) # $a0, 0x8014
/* B3E398 800C71F8 0C00084C */  jal   osSyncPrintf
/* B3E39C 800C71FC 2484575C */   addiu $a0, %lo(D_8014575C) # addiu $a0, $a0, 0x575c
/* B3E3A0 800C7200 3C048016 */  lui   $a0, %hi(D_80166660) # $a0, 0x8016
/* B3E3A4 800C7204 0C01EFB5 */  jal   func_8007BED4
/* B3E3A8 800C7208 8C846660 */   lw    $a0, %lo(D_80166660)($a0)
/* B3E3AC 800C720C 1000FFED */  b     .L800C71C4
/* B3E3B0 800C7210 AFA00024 */   sw    $zero, 0x24($sp)
.L800C7214:
/* B3E3B4 800C7214 3C048014 */  lui   $a0, %hi(D_80145780) # $a0, 0x8014
/* B3E3B8 800C7218 0C00084C */  jal   osSyncPrintf
/* B3E3BC 800C721C 24845780 */   addiu $a0, %lo(D_80145780) # addiu $a0, $a0, 0x5780
/* B3E3C0 800C7220 3C048016 */  lui   $a0, %hi(D_80166FE8) # $a0, 0x8016
/* B3E3C4 800C7224 0C0010D0 */  jal   func_80004340
/* B3E3C8 800C7228 24846FE8 */   addiu $a0, %lo(D_80166FE8) # addiu $a0, $a0, 0x6fe8
/* B3E3CC 800C722C 0C03EFF6 */  jal   func_800FBFD8
/* B3E3D0 800C7230 00000000 */   nop   
/* B3E3D4 800C7234 3C048014 */  lui   $a0, %hi(D_80145794) # $a0, 0x8014
/* B3E3D8 800C7238 0C00084C */  jal   osSyncPrintf
/* B3E3DC 800C723C 24845794 */   addiu $a0, %lo(D_80145794) # addiu $a0, $a0, 0x5794
/* B3E3E0 800C7240 8FBF001C */  lw    $ra, 0x1c($sp)
/* B3E3E4 800C7244 27BD0148 */  addiu $sp, $sp, 0x148
/* B3E3E8 800C7248 03E00008 */  jr    $ra
/* B3E3EC 800C724C 00000000 */   nop   

