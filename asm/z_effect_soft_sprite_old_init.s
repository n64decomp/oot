.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80027F80
/* A9F120 80027F80 27BDFE98 */  addiu $sp, $sp, -0x168
/* A9F124 80027F84 AFBF001C */  sw    $ra, 0x1c($sp)
/* A9F128 80027F88 AFB10018 */  sw    $s1, 0x18($sp)
/* A9F12C 80027F8C AFB00014 */  sw    $s0, 0x14($sp)
/* A9F130 80027F90 AFA40168 */  sw    $a0, 0x168($sp)
/* A9F134 80027F94 AFA60170 */  sw    $a2, 0x170($sp)
/* A9F138 80027F98 84AF0056 */  lh    $t7, 0x56($a1)
/* A9F13C 80027F9C 3C080001 */  lui   $t0, 1
/* A9F140 80027FA0 8C900000 */  lw    $s0, ($a0)
/* A9F144 80027FA4 000FC100 */  sll   $t8, $t7, 4
/* A9F148 80027FA8 030FC021 */  addu  $t8, $t8, $t7
/* A9F14C 80027FAC 0018C080 */  sll   $t8, $t8, 2
/* A9F150 80027FB0 0098C821 */  addu  $t9, $a0, $t8
/* A9F154 80027FB4 01194021 */  addu  $t0, $t0, $t9
/* A9F158 80027FB8 8D0817B4 */  lw    $t0, 0x17b4($t0)
/* A9F15C 80027FBC 00A08825 */  move  $s1, $a1
/* A9F160 80027FC0 3C068013 */  lui   $a2, %hi(D_80135C00) # $a2, 0x8013
/* A9F164 80027FC4 24C65C00 */  addiu $a2, %lo(D_80135C00) # addiu $a2, $a2, 0x5c00
/* A9F168 80027FC8 27A40040 */  addiu $a0, $sp, 0x40
/* A9F16C 80027FCC 240700C4 */  li    $a3, 196
/* A9F170 80027FD0 02002825 */  move  $a1, $s0
/* A9F174 80027FD4 0C031AB1 */  jal   func_800C6AC4
/* A9F178 80027FD8 AFA80054 */   sw    $t0, 0x54($sp)
/* A9F17C 80027FDC 86290042 */  lh    $t1, 0x42($s1)
/* A9F180 80027FE0 3C018013 */  lui   $at, %hi(D_80135C48)
/* A9F184 80027FE4 C4285C48 */  lwc1  $f8, %lo(D_80135C48)($at)
/* A9F188 80027FE8 44892000 */  mtc1  $t1, $f4
/* A9F18C 80027FEC 8E250000 */  lw    $a1, ($s1)
/* A9F190 80027FF0 8E260004 */  lw    $a2, 4($s1)
/* A9F194 80027FF4 468021A0 */  cvt.s.w $f6, $f4
/* A9F198 80027FF8 8E270008 */  lw    $a3, 8($s1)
/* A9F19C 80027FFC 27A40120 */  addiu $a0, $sp, 0x120
/* A9F1A0 80028000 46083002 */  mul.s $f0, $f6, $f8
/* A9F1A4 80028004 0C029E89 */  jal   func_800A7A24
/* A9F1A8 80028008 E7A00160 */   swc1  $f0, 0x160($sp)
/* A9F1AC 8002800C C7A00160 */  lwc1  $f0, 0x160($sp)
/* A9F1B0 80028010 27A400E0 */  addiu $a0, $sp, 0xe0
/* A9F1B4 80028014 44050000 */  mfc1  $a1, $f0
/* A9F1B8 80028018 44060000 */  mfc1  $a2, $f0
/* A9F1BC 8002801C 44070000 */  mfc1  $a3, $f0
/* A9F1C0 80028020 0C029DA9 */  jal   func_800A76A4
/* A9F1C4 80028024 00000000 */   nop   
/* A9F1C8 80028028 8FA50168 */  lw    $a1, 0x168($sp)
/* A9F1CC 8002802C 3C010001 */  lui   $at, (0x00011DA0 >> 16) # lui $at, 1
/* A9F1D0 80028030 34211DA0 */  ori   $at, (0x00011DA0 & 0xFFFF) # ori $at, $at, 0x1da0
/* A9F1D4 80028034 27A40120 */  addiu $a0, $sp, 0x120
/* A9F1D8 80028038 27A60060 */  addiu $a2, $sp, 0x60
/* A9F1DC 8002803C 0C029BE8 */  jal   func_800A6FA0
/* A9F1E0 80028040 00A12821 */   addu  $a1, $a1, $at
/* A9F1E4 80028044 27A40060 */  addiu $a0, $sp, 0x60
/* A9F1E8 80028048 27A500E0 */  addiu $a1, $sp, 0xe0
/* A9F1EC 8002804C 0C029BE8 */  jal   func_800A6FA0
/* A9F1F0 80028050 27A600A0 */   addiu $a2, $sp, 0xa0
/* A9F1F4 80028054 8FA40054 */  lw    $a0, 0x54($sp)
/* A9F1F8 80028058 3C018000 */  lui   $at, 0x8000
/* A9F1FC 8002805C 3C0CDB06 */  lui   $t4, (0xDB060018 >> 16) # lui $t4, 0xdb06
/* A9F200 80028060 00815021 */  addu  $t2, $a0, $at
/* A9F204 80028064 3C018016 */  lui   $at, %hi(D_80166FC0) # $at, 0x8016
/* A9F208 80028068 AC2A6FC0 */  sw    $t2, %lo(D_80166FC0)($at)
/* A9F20C 8002806C 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* A9F210 80028070 358C0018 */  ori   $t4, (0xDB060018 & 0xFFFF) # ori $t4, $t4, 0x18
/* A9F214 80028074 27A500A0 */  addiu $a1, $sp, 0xa0
/* A9F218 80028078 246B0008 */  addiu $t3, $v1, 8
/* A9F21C 8002807C AE0B02D0 */  sw    $t3, 0x2d0($s0)
/* A9F220 80028080 AC640004 */  sw    $a0, 4($v1)
/* A9F224 80028084 02002025 */  move  $a0, $s0
/* A9F228 80028088 0C029F9C */  jal   func_800A7E70
/* A9F22C 8002808C AC6C0000 */   sw    $t4, ($v1)
/* A9F230 80028090 1040004A */  beqz  $v0, .L800281BC
/* A9F234 80028094 3C0FDA38 */   lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* A9F238 80028098 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* A9F23C 8002809C 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* A9F240 800280A0 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* A9F244 800280A4 246D0008 */  addiu $t5, $v1, 8
/* A9F248 800280A8 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* A9F24C 800280AC AC620004 */  sw    $v0, 4($v1)
/* A9F250 800280B0 AC6F0000 */  sw    $t7, ($v1)
/* A9F254 800280B4 8FA40170 */  lw    $a0, 0x170($sp)
/* A9F258 800280B8 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* A9F25C 800280BC 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* A9F260 800280C0 0004C900 */  sll   $t9, $a0, 4
/* A9F264 800280C4 00194702 */  srl   $t0, $t9, 0x1c
/* A9F268 800280C8 246E0008 */  addiu $t6, $v1, 8
/* A9F26C 800280CC AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* A9F270 800280D0 00084880 */  sll   $t1, $t0, 2
/* A9F274 800280D4 3C0A8016 */  lui   $t2, %hi(D_80166FA8)
/* A9F278 800280D8 01495021 */  addu  $t2, $t2, $t1
/* A9F27C 800280DC 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* A9F280 800280E0 AC780000 */  sw    $t8, ($v1)
/* A9F284 800280E4 8D4A6FA8 */  lw    $t2, %lo(D_80166FA8)($t2)
/* A9F288 800280E8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* A9F28C 800280EC 00815824 */  and   $t3, $a0, $at
/* A9F290 800280F0 3C018000 */  lui   $at, 0x8000
/* A9F294 800280F4 014B6021 */  addu  $t4, $t2, $t3
/* A9F298 800280F8 01816821 */  addu  $t5, $t4, $at
/* A9F29C 800280FC 02002025 */  move  $a0, $s0
/* A9F2A0 80028100 0C025314 */  jal   func_80094C50
/* A9F2A4 80028104 AC6D0004 */   sw    $t5, 4($v1)
/* A9F2A8 80028108 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* A9F2AC 8002810C 3C0EFA00 */  lui   $t6, 0xfa00
/* A9F2B0 80028110 246F0008 */  addiu $t7, $v1, 8
/* A9F2B4 80028114 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* A9F2B8 80028118 AC6E0000 */  sw    $t6, ($v1)
/* A9F2BC 8002811C 8638004C */  lh    $t8, 0x4c($s1)
/* A9F2C0 80028120 862C0048 */  lh    $t4, 0x48($s1)
/* A9F2C4 80028124 86290046 */  lh    $t1, 0x46($s1)
/* A9F2C8 80028128 331900FF */  andi  $t9, $t8, 0xff
/* A9F2CC 8002812C 8638004A */  lh    $t8, 0x4a($s1)
/* A9F2D0 80028130 318D00FF */  andi  $t5, $t4, 0xff
/* A9F2D4 80028134 00095600 */  sll   $t2, $t1, 0x18
/* A9F2D8 80028138 032A5825 */  or    $t3, $t9, $t2
/* A9F2DC 8002813C 000D7C00 */  sll   $t7, $t5, 0x10
/* A9F2E0 80028140 330800FF */  andi  $t0, $t8, 0xff
/* A9F2E4 80028144 00084A00 */  sll   $t1, $t0, 8
/* A9F2E8 80028148 016F7025 */  or    $t6, $t3, $t7
/* A9F2EC 8002814C 01C9C825 */  or    $t9, $t6, $t1
/* A9F2F0 80028150 AC790004 */  sw    $t9, 4($v1)
/* A9F2F4 80028154 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* A9F2F8 80028158 3C0CFB00 */  lui   $t4, 0xfb00
/* A9F2FC 8002815C 246A0008 */  addiu $t2, $v1, 8
/* A9F300 80028160 AE0A02D0 */  sw    $t2, 0x2d0($s0)
/* A9F304 80028164 AC6C0000 */  sw    $t4, ($v1)
/* A9F308 80028168 862D0054 */  lh    $t5, 0x54($s1)
/* A9F30C 8002816C 86290050 */  lh    $t1, 0x50($s1)
/* A9F310 80028170 8638004E */  lh    $t8, 0x4e($s1)
/* A9F314 80028174 31AB00FF */  andi  $t3, $t5, 0xff
/* A9F318 80028178 862D0052 */  lh    $t5, 0x52($s1)
/* A9F31C 8002817C 313900FF */  andi  $t9, $t1, 0xff
/* A9F320 80028180 00184600 */  sll   $t0, $t8, 0x18
/* A9F324 80028184 01687025 */  or    $t6, $t3, $t0
/* A9F328 80028188 00195400 */  sll   $t2, $t9, 0x10
/* A9F32C 8002818C 31AF00FF */  andi  $t7, $t5, 0xff
/* A9F330 80028190 000FC200 */  sll   $t8, $t7, 8
/* A9F334 80028194 01CA6025 */  or    $t4, $t6, $t2
/* A9F338 80028198 01985825 */  or    $t3, $t4, $t8
/* A9F33C 8002819C AC6B0004 */  sw    $t3, 4($v1)
/* A9F340 800281A0 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* A9F344 800281A4 3C09DE00 */  lui   $t1, 0xde00
/* A9F348 800281A8 24680008 */  addiu $t0, $v1, 8
/* A9F34C 800281AC AE0802D0 */  sw    $t0, 0x2d0($s0)
/* A9F350 800281B0 AC690000 */  sw    $t1, ($v1)
/* A9F354 800281B4 8E390038 */  lw    $t9, 0x38($s1)
/* A9F358 800281B8 AC790004 */  sw    $t9, 4($v1)
.L800281BC:
/* A9F35C 800281BC 3C068013 */  lui   $a2, %hi(D_80135C24) # $a2, 0x8013
/* A9F360 800281C0 24C65C24 */  addiu $a2, %lo(D_80135C24) # addiu $a2, $a2, 0x5c24
/* A9F364 800281C4 27A40040 */  addiu $a0, $sp, 0x40
/* A9F368 800281C8 02002825 */  move  $a1, $s0
/* A9F36C 800281CC 0C031AD5 */  jal   func_800C6B54
/* A9F370 800281D0 240700F3 */   li    $a3, 243
/* A9F374 800281D4 8FBF001C */  lw    $ra, 0x1c($sp)
/* A9F378 800281D8 8FB00014 */  lw    $s0, 0x14($sp)
/* A9F37C 800281DC 8FB10018 */  lw    $s1, 0x18($sp)
/* A9F380 800281E0 03E00008 */  jr    $ra
/* A9F384 800281E4 27BD0168 */   addiu $sp, $sp, 0x168

glabel func_800281E8
/* A9F388 800281E8 27BDFFB0 */  addiu $sp, $sp, -0x50
/* A9F38C 800281EC AFBF0014 */  sw    $ra, 0x14($sp)
/* A9F390 800281F0 AFA40050 */  sw    $a0, 0x50($sp)
/* A9F394 800281F4 AFA50054 */  sw    $a1, 0x54($sp)
/* A9F398 800281F8 AFA7005C */  sw    $a3, 0x5c($sp)
/* A9F39C 800281FC 00C02825 */  move  $a1, $a2
/* A9F3A0 80028200 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9F3A4 80028204 27A40018 */   addiu $a0, $sp, 0x18
/* A9F3A8 80028208 27A40024 */  addiu $a0, $sp, 0x24
/* A9F3AC 8002820C 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9F3B0 80028210 8FA5005C */   lw    $a1, 0x5c($sp)
/* A9F3B4 80028214 27A40030 */  addiu $a0, $sp, 0x30
/* A9F3B8 80028218 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9F3BC 8002821C 8FA50060 */   lw    $a1, 0x60($sp)
/* A9F3C0 80028220 8FAF0064 */  lw    $t7, 0x64($sp)
/* A9F3C4 80028224 27AE003C */  addiu $t6, $sp, 0x3c
/* A9F3C8 80028228 27A80040 */  addiu $t0, $sp, 0x40
/* A9F3CC 8002822C 89F90000 */  lwl   $t9, ($t7)
/* A9F3D0 80028230 99F90003 */  lwr   $t9, 3($t7)
/* A9F3D4 80028234 00002825 */  move  $a1, $zero
/* A9F3D8 80028238 24060080 */  li    $a2, 128
/* A9F3DC 8002823C A9D90000 */  swl   $t9, ($t6)
/* A9F3E0 80028240 B9D90003 */  swr   $t9, 3($t6)
/* A9F3E4 80028244 8FA90068 */  lw    $t1, 0x68($sp)
/* A9F3E8 80028248 27A70018 */  addiu $a3, $sp, 0x18
/* A9F3EC 8002824C 892B0000 */  lwl   $t3, ($t1)
/* A9F3F0 80028250 992B0003 */  lwr   $t3, 3($t1)
/* A9F3F4 80028254 A90B0000 */  swl   $t3, ($t0)
/* A9F3F8 80028258 B90B0003 */  swr   $t3, 3($t0)
/* A9F3FC 8002825C 97AC0056 */  lhu   $t4, 0x56($sp)
/* A9F400 80028260 87AD006E */  lh    $t5, 0x6e($sp)
/* A9F404 80028264 87AE0072 */  lh    $t6, 0x72($sp)
/* A9F408 80028268 87AF0076 */  lh    $t7, 0x76($sp)
/* A9F40C 8002826C 93B8007B */  lbu   $t8, 0x7b($sp)
/* A9F410 80028270 8FA40050 */  lw    $a0, 0x50($sp)
/* A9F414 80028274 A7AC004A */  sh    $t4, 0x4a($sp)
/* A9F418 80028278 A7AD0044 */  sh    $t5, 0x44($sp)
/* A9F41C 8002827C A7AE0046 */  sh    $t6, 0x46($sp)
/* A9F420 80028280 A7AF0048 */  sh    $t7, 0x48($sp)
/* A9F424 80028284 0C009DE6 */  jal   func_80027798
/* A9F428 80028288 A3B8004C */   sb    $t8, 0x4c($sp)
/* A9F42C 8002828C 8FBF0014 */  lw    $ra, 0x14($sp)
/* A9F430 80028290 27BD0050 */  addiu $sp, $sp, 0x50
/* A9F434 80028294 03E00008 */  jr    $ra
/* A9F438 80028298 00000000 */   nop   

glabel func_8002829C
/* A9F43C 8002829C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9F440 800282A0 AFA70044 */  sw    $a3, 0x44($sp)
/* A9F444 800282A4 8FAE0044 */  lw    $t6, 0x44($sp)
/* A9F448 800282A8 8FAF0048 */  lw    $t7, 0x48($sp)
/* A9F44C 800282AC 8FB8004C */  lw    $t8, 0x4c($sp)
/* A9F450 800282B0 87B90052 */  lh    $t9, 0x52($sp)
/* A9F454 800282B4 87A80056 */  lh    $t0, 0x56($sp)
/* A9F458 800282B8 AFA60040 */  sw    $a2, 0x40($sp)
/* A9F45C 800282BC 00A03025 */  move  $a2, $a1
/* A9F460 800282C0 AFBF0034 */  sw    $ra, 0x34($sp)
/* A9F464 800282C4 AFA5003C */  sw    $a1, 0x3c($sp)
/* A9F468 800282C8 2409000A */  li    $t1, 10
/* A9F46C 800282CC 8FA70040 */  lw    $a3, 0x40($sp)
/* A9F470 800282D0 AFA90024 */  sw    $t1, 0x24($sp)
/* A9F474 800282D4 00002825 */  move  $a1, $zero
/* A9F478 800282D8 AFA00028 */  sw    $zero, 0x28($sp)
/* A9F47C 800282DC AFAE0010 */  sw    $t6, 0x10($sp)
/* A9F480 800282E0 AFAF0014 */  sw    $t7, 0x14($sp)
/* A9F484 800282E4 AFB80018 */  sw    $t8, 0x18($sp)
/* A9F488 800282E8 AFB9001C */  sw    $t9, 0x1c($sp)
/* A9F48C 800282EC 0C00A07A */  jal   func_800281E8
/* A9F490 800282F0 AFA80020 */   sw    $t0, 0x20($sp)
/* A9F494 800282F4 8FBF0034 */  lw    $ra, 0x34($sp)
/* A9F498 800282F8 27BD0038 */  addiu $sp, $sp, 0x38
/* A9F49C 800282FC 03E00008 */  jr    $ra
/* A9F4A0 80028300 00000000 */   nop   

glabel func_80028304
/* A9F4A4 80028304 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9F4A8 80028308 AFA70044 */  sw    $a3, 0x44($sp)
/* A9F4AC 8002830C 8FAE0044 */  lw    $t6, 0x44($sp)
/* A9F4B0 80028310 8FAF0048 */  lw    $t7, 0x48($sp)
/* A9F4B4 80028314 8FB8004C */  lw    $t8, 0x4c($sp)
/* A9F4B8 80028318 87B90052 */  lh    $t9, 0x52($sp)
/* A9F4BC 8002831C 87A80056 */  lh    $t0, 0x56($sp)
/* A9F4C0 80028320 AFA60040 */  sw    $a2, 0x40($sp)
/* A9F4C4 80028324 00A03025 */  move  $a2, $a1
/* A9F4C8 80028328 AFBF0034 */  sw    $ra, 0x34($sp)
/* A9F4CC 8002832C AFA5003C */  sw    $a1, 0x3c($sp)
/* A9F4D0 80028330 2409000A */  li    $t1, 10
/* A9F4D4 80028334 8FA70040 */  lw    $a3, 0x40($sp)
/* A9F4D8 80028338 AFA90024 */  sw    $t1, 0x24($sp)
/* A9F4DC 8002833C 24050001 */  li    $a1, 1
/* A9F4E0 80028340 AFA00028 */  sw    $zero, 0x28($sp)
/* A9F4E4 80028344 AFAE0010 */  sw    $t6, 0x10($sp)
/* A9F4E8 80028348 AFAF0014 */  sw    $t7, 0x14($sp)
/* A9F4EC 8002834C AFB80018 */  sw    $t8, 0x18($sp)
/* A9F4F0 80028350 AFB9001C */  sw    $t9, 0x1c($sp)
/* A9F4F4 80028354 0C00A07A */  jal   func_800281E8
/* A9F4F8 80028358 AFA80020 */   sw    $t0, 0x20($sp)
/* A9F4FC 8002835C 8FBF0034 */  lw    $ra, 0x34($sp)
/* A9F500 80028360 27BD0038 */  addiu $sp, $sp, 0x38
/* A9F504 80028364 03E00008 */  jr    $ra
/* A9F508 80028368 00000000 */   nop   

glabel func_8002836C
/* A9F50C 8002836C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9F510 80028370 AFA70044 */  sw    $a3, 0x44($sp)
/* A9F514 80028374 8FAE0044 */  lw    $t6, 0x44($sp)
/* A9F518 80028378 8FAF0048 */  lw    $t7, 0x48($sp)
/* A9F51C 8002837C 8FB8004C */  lw    $t8, 0x4c($sp)
/* A9F520 80028380 87B90052 */  lh    $t9, 0x52($sp)
/* A9F524 80028384 87A80056 */  lh    $t0, 0x56($sp)
/* A9F528 80028388 87A9005A */  lh    $t1, 0x5a($sp)
/* A9F52C 8002838C AFA60040 */  sw    $a2, 0x40($sp)
/* A9F530 80028390 00A03025 */  move  $a2, $a1
/* A9F534 80028394 AFBF0034 */  sw    $ra, 0x34($sp)
/* A9F538 80028398 AFA5003C */  sw    $a1, 0x3c($sp)
/* A9F53C 8002839C 8FA70040 */  lw    $a3, 0x40($sp)
/* A9F540 800283A0 00002825 */  move  $a1, $zero
/* A9F544 800283A4 AFA00028 */  sw    $zero, 0x28($sp)
/* A9F548 800283A8 AFAE0010 */  sw    $t6, 0x10($sp)
/* A9F54C 800283AC AFAF0014 */  sw    $t7, 0x14($sp)
/* A9F550 800283B0 AFB80018 */  sw    $t8, 0x18($sp)
/* A9F554 800283B4 AFB9001C */  sw    $t9, 0x1c($sp)
/* A9F558 800283B8 AFA80020 */  sw    $t0, 0x20($sp)
/* A9F55C 800283BC 0C00A07A */  jal   func_800281E8
/* A9F560 800283C0 AFA90024 */   sw    $t1, 0x24($sp)
/* A9F564 800283C4 8FBF0034 */  lw    $ra, 0x34($sp)
/* A9F568 800283C8 27BD0038 */  addiu $sp, $sp, 0x38
/* A9F56C 800283CC 03E00008 */  jr    $ra
/* A9F570 800283D0 00000000 */   nop   

glabel func_800283D4
/* A9F574 800283D4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9F578 800283D8 AFA70044 */  sw    $a3, 0x44($sp)
/* A9F57C 800283DC 8FAE0044 */  lw    $t6, 0x44($sp)
/* A9F580 800283E0 8FAF0048 */  lw    $t7, 0x48($sp)
/* A9F584 800283E4 8FB8004C */  lw    $t8, 0x4c($sp)
/* A9F588 800283E8 87B90052 */  lh    $t9, 0x52($sp)
/* A9F58C 800283EC 87A80056 */  lh    $t0, 0x56($sp)
/* A9F590 800283F0 87A9005A */  lh    $t1, 0x5a($sp)
/* A9F594 800283F4 AFA60040 */  sw    $a2, 0x40($sp)
/* A9F598 800283F8 00A03025 */  move  $a2, $a1
/* A9F59C 800283FC AFBF0034 */  sw    $ra, 0x34($sp)
/* A9F5A0 80028400 AFA5003C */  sw    $a1, 0x3c($sp)
/* A9F5A4 80028404 8FA70040 */  lw    $a3, 0x40($sp)
/* A9F5A8 80028408 24050001 */  li    $a1, 1
/* A9F5AC 8002840C AFA00028 */  sw    $zero, 0x28($sp)
/* A9F5B0 80028410 AFAE0010 */  sw    $t6, 0x10($sp)
/* A9F5B4 80028414 AFAF0014 */  sw    $t7, 0x14($sp)
/* A9F5B8 80028418 AFB80018 */  sw    $t8, 0x18($sp)
/* A9F5BC 8002841C AFB9001C */  sw    $t9, 0x1c($sp)
/* A9F5C0 80028420 AFA80020 */  sw    $t0, 0x20($sp)
/* A9F5C4 80028424 0C00A07A */  jal   func_800281E8
/* A9F5C8 80028428 AFA90024 */   sw    $t1, 0x24($sp)
/* A9F5CC 8002842C 8FBF0034 */  lw    $ra, 0x34($sp)
/* A9F5D0 80028430 27BD0038 */  addiu $sp, $sp, 0x38
/* A9F5D4 80028434 03E00008 */  jr    $ra
/* A9F5D8 80028438 00000000 */   nop   

glabel func_8002843C
/* A9F5DC 8002843C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9F5E0 80028440 AFA70044 */  sw    $a3, 0x44($sp)
/* A9F5E4 80028444 8FAE0044 */  lw    $t6, 0x44($sp)
/* A9F5E8 80028448 8FAF0048 */  lw    $t7, 0x48($sp)
/* A9F5EC 8002844C 8FB8004C */  lw    $t8, 0x4c($sp)
/* A9F5F0 80028450 87B90052 */  lh    $t9, 0x52($sp)
/* A9F5F4 80028454 87A80056 */  lh    $t0, 0x56($sp)
/* A9F5F8 80028458 87A9005A */  lh    $t1, 0x5a($sp)
/* A9F5FC 8002845C AFA60040 */  sw    $a2, 0x40($sp)
/* A9F600 80028460 00A03025 */  move  $a2, $a1
/* A9F604 80028464 AFBF0034 */  sw    $ra, 0x34($sp)
/* A9F608 80028468 AFA5003C */  sw    $a1, 0x3c($sp)
/* A9F60C 8002846C 8FA70040 */  lw    $a3, 0x40($sp)
/* A9F610 80028470 24050002 */  li    $a1, 2
/* A9F614 80028474 AFA00028 */  sw    $zero, 0x28($sp)
/* A9F618 80028478 AFAE0010 */  sw    $t6, 0x10($sp)
/* A9F61C 8002847C AFAF0014 */  sw    $t7, 0x14($sp)
/* A9F620 80028480 AFB80018 */  sw    $t8, 0x18($sp)
/* A9F624 80028484 AFB9001C */  sw    $t9, 0x1c($sp)
/* A9F628 80028488 AFA80020 */  sw    $t0, 0x20($sp)
/* A9F62C 8002848C 0C00A07A */  jal   func_800281E8
/* A9F630 80028490 AFA90024 */   sw    $t1, 0x24($sp)
/* A9F634 80028494 8FBF0034 */  lw    $ra, 0x34($sp)
/* A9F638 80028498 27BD0038 */  addiu $sp, $sp, 0x38
/* A9F63C 8002849C 03E00008 */  jr    $ra
/* A9F640 800284A0 00000000 */   nop   

glabel func_800284A4
/* A9F644 800284A4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9F648 800284A8 AFA70044 */  sw    $a3, 0x44($sp)
/* A9F64C 800284AC 8FAE0044 */  lw    $t6, 0x44($sp)
/* A9F650 800284B0 8FAF0048 */  lw    $t7, 0x48($sp)
/* A9F654 800284B4 8FB8004C */  lw    $t8, 0x4c($sp)
/* A9F658 800284B8 87B90052 */  lh    $t9, 0x52($sp)
/* A9F65C 800284BC 87A80056 */  lh    $t0, 0x56($sp)
/* A9F660 800284C0 AFA60040 */  sw    $a2, 0x40($sp)
/* A9F664 800284C4 00A03025 */  move  $a2, $a1
/* A9F668 800284C8 AFBF0034 */  sw    $ra, 0x34($sp)
/* A9F66C 800284CC AFA5003C */  sw    $a1, 0x3c($sp)
/* A9F670 800284D0 2409000A */  li    $t1, 10
/* A9F674 800284D4 240A0001 */  li    $t2, 1
/* A9F678 800284D8 8FA70040 */  lw    $a3, 0x40($sp)
/* A9F67C 800284DC AFAA0028 */  sw    $t2, 0x28($sp)
/* A9F680 800284E0 AFA90024 */  sw    $t1, 0x24($sp)
/* A9F684 800284E4 00002825 */  move  $a1, $zero
/* A9F688 800284E8 AFAE0010 */  sw    $t6, 0x10($sp)
/* A9F68C 800284EC AFAF0014 */  sw    $t7, 0x14($sp)
/* A9F690 800284F0 AFB80018 */  sw    $t8, 0x18($sp)
/* A9F694 800284F4 AFB9001C */  sw    $t9, 0x1c($sp)
/* A9F698 800284F8 0C00A07A */  jal   func_800281E8
/* A9F69C 800284FC AFA80020 */   sw    $t0, 0x20($sp)
/* A9F6A0 80028500 8FBF0034 */  lw    $ra, 0x34($sp)
/* A9F6A4 80028504 27BD0038 */  addiu $sp, $sp, 0x38
/* A9F6A8 80028508 03E00008 */  jr    $ra
/* A9F6AC 8002850C 00000000 */   nop   

glabel func_80028510
/* A9F6B0 80028510 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9F6B4 80028514 AFA70044 */  sw    $a3, 0x44($sp)
/* A9F6B8 80028518 8FAE0044 */  lw    $t6, 0x44($sp)
/* A9F6BC 8002851C 8FAF0048 */  lw    $t7, 0x48($sp)
/* A9F6C0 80028520 8FB8004C */  lw    $t8, 0x4c($sp)
/* A9F6C4 80028524 87B90052 */  lh    $t9, 0x52($sp)
/* A9F6C8 80028528 87A80056 */  lh    $t0, 0x56($sp)
/* A9F6CC 8002852C AFA60040 */  sw    $a2, 0x40($sp)
/* A9F6D0 80028530 00A03025 */  move  $a2, $a1
/* A9F6D4 80028534 AFBF0034 */  sw    $ra, 0x34($sp)
/* A9F6D8 80028538 AFA5003C */  sw    $a1, 0x3c($sp)
/* A9F6DC 8002853C 2409000A */  li    $t1, 10
/* A9F6E0 80028540 240A0001 */  li    $t2, 1
/* A9F6E4 80028544 8FA70040 */  lw    $a3, 0x40($sp)
/* A9F6E8 80028548 AFAA0028 */  sw    $t2, 0x28($sp)
/* A9F6EC 8002854C AFA90024 */  sw    $t1, 0x24($sp)
/* A9F6F0 80028550 24050001 */  li    $a1, 1
/* A9F6F4 80028554 AFAE0010 */  sw    $t6, 0x10($sp)
/* A9F6F8 80028558 AFAF0014 */  sw    $t7, 0x14($sp)
/* A9F6FC 8002855C AFB80018 */  sw    $t8, 0x18($sp)
/* A9F700 80028560 AFB9001C */  sw    $t9, 0x1c($sp)
/* A9F704 80028564 0C00A07A */  jal   func_800281E8
/* A9F708 80028568 AFA80020 */   sw    $t0, 0x20($sp)
/* A9F70C 8002856C 8FBF0034 */  lw    $ra, 0x34($sp)
/* A9F710 80028570 27BD0038 */  addiu $sp, $sp, 0x38
/* A9F714 80028574 03E00008 */  jr    $ra
/* A9F718 80028578 00000000 */   nop   

glabel func_8002857C
/* A9F71C 8002857C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9F720 80028580 AFA70044 */  sw    $a3, 0x44($sp)
/* A9F724 80028584 8FAE0044 */  lw    $t6, 0x44($sp)
/* A9F728 80028588 AFA60040 */  sw    $a2, 0x40($sp)
/* A9F72C 8002858C 3C0F8011 */  lui   $t7, %hi(D_801158CC) # $t7, 0x8011
/* A9F730 80028590 3C188011 */  lui   $t8, %hi(D_801158D0) # $t8, 0x8011
/* A9F734 80028594 00A03025 */  move  $a2, $a1
/* A9F738 80028598 AFBF0034 */  sw    $ra, 0x34($sp)
/* A9F73C 8002859C AFA5003C */  sw    $a1, 0x3c($sp)
/* A9F740 800285A0 271858D0 */  addiu $t8, %lo(D_801158D0) # addiu $t8, $t8, 0x58d0
/* A9F744 800285A4 25EF58CC */  addiu $t7, %lo(D_801158CC) # addiu $t7, $t7, 0x58cc
/* A9F748 800285A8 24190064 */  li    $t9, 100
/* A9F74C 800285AC 24080005 */  li    $t0, 5
/* A9F750 800285B0 2409000A */  li    $t1, 10
/* A9F754 800285B4 8FA70040 */  lw    $a3, 0x40($sp)
/* A9F758 800285B8 AFA90024 */  sw    $t1, 0x24($sp)
/* A9F75C 800285BC AFA80020 */  sw    $t0, 0x20($sp)
/* A9F760 800285C0 AFB9001C */  sw    $t9, 0x1c($sp)
/* A9F764 800285C4 AFAF0014 */  sw    $t7, 0x14($sp)
/* A9F768 800285C8 AFB80018 */  sw    $t8, 0x18($sp)
/* A9F76C 800285CC 24050004 */  li    $a1, 4
/* A9F770 800285D0 AFA00028 */  sw    $zero, 0x28($sp)
/* A9F774 800285D4 0C00A07A */  jal   func_800281E8
/* A9F778 800285D8 AFAE0010 */   sw    $t6, 0x10($sp)
/* A9F77C 800285DC 8FBF0034 */  lw    $ra, 0x34($sp)
/* A9F780 800285E0 27BD0038 */  addiu $sp, $sp, 0x38
/* A9F784 800285E4 03E00008 */  jr    $ra
/* A9F788 800285E8 00000000 */   nop   

glabel func_800285EC
/* A9F78C 800285EC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9F790 800285F0 AFA70044 */  sw    $a3, 0x44($sp)
/* A9F794 800285F4 8FAE0044 */  lw    $t6, 0x44($sp)
/* A9F798 800285F8 AFA60040 */  sw    $a2, 0x40($sp)
/* A9F79C 800285FC 3C0F8011 */  lui   $t7, %hi(D_801158CC) # $t7, 0x8011
/* A9F7A0 80028600 3C188011 */  lui   $t8, %hi(D_801158D0) # $t8, 0x8011
/* A9F7A4 80028604 00A03025 */  move  $a2, $a1
/* A9F7A8 80028608 AFBF0034 */  sw    $ra, 0x34($sp)
/* A9F7AC 8002860C AFA5003C */  sw    $a1, 0x3c($sp)
/* A9F7B0 80028610 271858D0 */  addiu $t8, %lo(D_801158D0) # addiu $t8, $t8, 0x58d0
/* A9F7B4 80028614 25EF58CC */  addiu $t7, %lo(D_801158CC) # addiu $t7, $t7, 0x58cc
/* A9F7B8 80028618 24190064 */  li    $t9, 100
/* A9F7BC 8002861C 24080005 */  li    $t0, 5
/* A9F7C0 80028620 2409000A */  li    $t1, 10
/* A9F7C4 80028624 8FA70040 */  lw    $a3, 0x40($sp)
/* A9F7C8 80028628 AFA90024 */  sw    $t1, 0x24($sp)
/* A9F7CC 8002862C AFA80020 */  sw    $t0, 0x20($sp)
/* A9F7D0 80028630 AFB9001C */  sw    $t9, 0x1c($sp)
/* A9F7D4 80028634 AFAF0014 */  sw    $t7, 0x14($sp)
/* A9F7D8 80028638 AFB80018 */  sw    $t8, 0x18($sp)
/* A9F7DC 8002863C 24050005 */  li    $a1, 5
/* A9F7E0 80028640 AFA00028 */  sw    $zero, 0x28($sp)
/* A9F7E4 80028644 0C00A07A */  jal   func_800281E8
/* A9F7E8 80028648 AFAE0010 */   sw    $t6, 0x10($sp)
/* A9F7EC 8002864C 8FBF0034 */  lw    $ra, 0x34($sp)
/* A9F7F0 80028650 27BD0038 */  addiu $sp, $sp, 0x38
/* A9F7F4 80028654 03E00008 */  jr    $ra
/* A9F7F8 80028658 00000000 */   nop   

glabel func_8002865C
/* A9F7FC 8002865C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9F800 80028660 AFA70044 */  sw    $a3, 0x44($sp)
/* A9F804 80028664 8FAE0044 */  lw    $t6, 0x44($sp)
/* A9F808 80028668 87B9004A */  lh    $t9, 0x4a($sp)
/* A9F80C 8002866C 87A8004E */  lh    $t0, 0x4e($sp)
/* A9F810 80028670 AFA60040 */  sw    $a2, 0x40($sp)
/* A9F814 80028674 3C0F8011 */  lui   $t7, %hi(D_801158CC) # $t7, 0x8011
/* A9F818 80028678 3C188011 */  lui   $t8, %hi(D_801158D0) # $t8, 0x8011
/* A9F81C 8002867C 00A03025 */  move  $a2, $a1
/* A9F820 80028680 AFBF0034 */  sw    $ra, 0x34($sp)
/* A9F824 80028684 AFA5003C */  sw    $a1, 0x3c($sp)
/* A9F828 80028688 271858D0 */  addiu $t8, %lo(D_801158D0) # addiu $t8, $t8, 0x58d0
/* A9F82C 8002868C 25EF58CC */  addiu $t7, %lo(D_801158CC) # addiu $t7, $t7, 0x58cc
/* A9F830 80028690 2409000A */  li    $t1, 10
/* A9F834 80028694 8FA70040 */  lw    $a3, 0x40($sp)
/* A9F838 80028698 AFA90024 */  sw    $t1, 0x24($sp)
/* A9F83C 8002869C AFAF0014 */  sw    $t7, 0x14($sp)
/* A9F840 800286A0 AFB80018 */  sw    $t8, 0x18($sp)
/* A9F844 800286A4 24050004 */  li    $a1, 4
/* A9F848 800286A8 AFA00028 */  sw    $zero, 0x28($sp)
/* A9F84C 800286AC AFAE0010 */  sw    $t6, 0x10($sp)
/* A9F850 800286B0 AFB9001C */  sw    $t9, 0x1c($sp)
/* A9F854 800286B4 0C00A07A */  jal   func_800281E8
/* A9F858 800286B8 AFA80020 */   sw    $t0, 0x20($sp)
/* A9F85C 800286BC 8FBF0034 */  lw    $ra, 0x34($sp)
/* A9F860 800286C0 27BD0038 */  addiu $sp, $sp, 0x38
/* A9F864 800286C4 03E00008 */  jr    $ra
/* A9F868 800286C8 00000000 */   nop   

glabel func_800286CC
/* A9F86C 800286CC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9F870 800286D0 AFA70044 */  sw    $a3, 0x44($sp)
/* A9F874 800286D4 8FAE0044 */  lw    $t6, 0x44($sp)
/* A9F878 800286D8 87B9004A */  lh    $t9, 0x4a($sp)
/* A9F87C 800286DC 87A8004E */  lh    $t0, 0x4e($sp)
/* A9F880 800286E0 AFA60040 */  sw    $a2, 0x40($sp)
/* A9F884 800286E4 3C0F8011 */  lui   $t7, %hi(D_801158CC) # $t7, 0x8011
/* A9F888 800286E8 3C188011 */  lui   $t8, %hi(D_801158D0) # $t8, 0x8011
/* A9F88C 800286EC 00A03025 */  move  $a2, $a1
/* A9F890 800286F0 AFBF0034 */  sw    $ra, 0x34($sp)
/* A9F894 800286F4 AFA5003C */  sw    $a1, 0x3c($sp)
/* A9F898 800286F8 271858D0 */  addiu $t8, %lo(D_801158D0) # addiu $t8, $t8, 0x58d0
/* A9F89C 800286FC 25EF58CC */  addiu $t7, %lo(D_801158CC) # addiu $t7, $t7, 0x58cc
/* A9F8A0 80028700 2409000A */  li    $t1, 10
/* A9F8A4 80028704 8FA70040 */  lw    $a3, 0x40($sp)
/* A9F8A8 80028708 AFA90024 */  sw    $t1, 0x24($sp)
/* A9F8AC 8002870C AFAF0014 */  sw    $t7, 0x14($sp)
/* A9F8B0 80028710 AFB80018 */  sw    $t8, 0x18($sp)
/* A9F8B4 80028714 24050005 */  li    $a1, 5
/* A9F8B8 80028718 AFA00028 */  sw    $zero, 0x28($sp)
/* A9F8BC 8002871C AFAE0010 */  sw    $t6, 0x10($sp)
/* A9F8C0 80028720 AFB9001C */  sw    $t9, 0x1c($sp)
/* A9F8C4 80028724 0C00A07A */  jal   func_800281E8
/* A9F8C8 80028728 AFA80020 */   sw    $t0, 0x20($sp)
/* A9F8CC 8002872C 8FBF0034 */  lw    $ra, 0x34($sp)
/* A9F8D0 80028730 27BD0038 */  addiu $sp, $sp, 0x38
/* A9F8D4 80028734 03E00008 */  jr    $ra
/* A9F8D8 80028738 00000000 */   nop   

glabel func_8002873C
/* A9F8DC 8002873C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9F8E0 80028740 AFA70044 */  sw    $a3, 0x44($sp)
/* A9F8E4 80028744 8FAE0044 */  lw    $t6, 0x44($sp)
/* A9F8E8 80028748 87B9004A */  lh    $t9, 0x4a($sp)
/* A9F8EC 8002874C 87A8004E */  lh    $t0, 0x4e($sp)
/* A9F8F0 80028750 87A90052 */  lh    $t1, 0x52($sp)
/* A9F8F4 80028754 AFA60040 */  sw    $a2, 0x40($sp)
/* A9F8F8 80028758 3C0F8011 */  lui   $t7, %hi(D_801158CC) # $t7, 0x8011
/* A9F8FC 8002875C 3C188011 */  lui   $t8, %hi(D_801158D0) # $t8, 0x8011
/* A9F900 80028760 00A03025 */  move  $a2, $a1
/* A9F904 80028764 AFBF0034 */  sw    $ra, 0x34($sp)
/* A9F908 80028768 AFA5003C */  sw    $a1, 0x3c($sp)
/* A9F90C 8002876C 271858D0 */  addiu $t8, %lo(D_801158D0) # addiu $t8, $t8, 0x58d0
/* A9F910 80028770 25EF58CC */  addiu $t7, %lo(D_801158CC) # addiu $t7, $t7, 0x58cc
/* A9F914 80028774 8FA70040 */  lw    $a3, 0x40($sp)
/* A9F918 80028778 AFAF0014 */  sw    $t7, 0x14($sp)
/* A9F91C 8002877C AFB80018 */  sw    $t8, 0x18($sp)
/* A9F920 80028780 24050004 */  li    $a1, 4
/* A9F924 80028784 AFA00028 */  sw    $zero, 0x28($sp)
/* A9F928 80028788 AFAE0010 */  sw    $t6, 0x10($sp)
/* A9F92C 8002878C AFB9001C */  sw    $t9, 0x1c($sp)
/* A9F930 80028790 AFA80020 */  sw    $t0, 0x20($sp)
/* A9F934 80028794 0C00A07A */  jal   func_800281E8
/* A9F938 80028798 AFA90024 */   sw    $t1, 0x24($sp)
/* A9F93C 8002879C 8FBF0034 */  lw    $ra, 0x34($sp)
/* A9F940 800287A0 27BD0038 */  addiu $sp, $sp, 0x38
/* A9F944 800287A4 03E00008 */  jr    $ra
/* A9F948 800287A8 00000000 */   nop   

glabel func_800287AC
/* A9F94C 800287AC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9F950 800287B0 AFA70044 */  sw    $a3, 0x44($sp)
/* A9F954 800287B4 8FAE0044 */  lw    $t6, 0x44($sp)
/* A9F958 800287B8 87B9004A */  lh    $t9, 0x4a($sp)
/* A9F95C 800287BC 87A8004E */  lh    $t0, 0x4e($sp)
/* A9F960 800287C0 87A90052 */  lh    $t1, 0x52($sp)
/* A9F964 800287C4 AFA60040 */  sw    $a2, 0x40($sp)
/* A9F968 800287C8 3C0F8011 */  lui   $t7, %hi(D_801158CC) # $t7, 0x8011
/* A9F96C 800287CC 3C188011 */  lui   $t8, %hi(D_801158D0) # $t8, 0x8011
/* A9F970 800287D0 00A03025 */  move  $a2, $a1
/* A9F974 800287D4 AFBF0034 */  sw    $ra, 0x34($sp)
/* A9F978 800287D8 AFA5003C */  sw    $a1, 0x3c($sp)
/* A9F97C 800287DC 271858D0 */  addiu $t8, %lo(D_801158D0) # addiu $t8, $t8, 0x58d0
/* A9F980 800287E0 25EF58CC */  addiu $t7, %lo(D_801158CC) # addiu $t7, $t7, 0x58cc
/* A9F984 800287E4 8FA70040 */  lw    $a3, 0x40($sp)
/* A9F988 800287E8 AFAF0014 */  sw    $t7, 0x14($sp)
/* A9F98C 800287EC AFB80018 */  sw    $t8, 0x18($sp)
/* A9F990 800287F0 24050005 */  li    $a1, 5
/* A9F994 800287F4 AFA00028 */  sw    $zero, 0x28($sp)
/* A9F998 800287F8 AFAE0010 */  sw    $t6, 0x10($sp)
/* A9F99C 800287FC AFB9001C */  sw    $t9, 0x1c($sp)
/* A9F9A0 80028800 AFA80020 */  sw    $t0, 0x20($sp)
/* A9F9A4 80028804 0C00A07A */  jal   func_800281E8
/* A9F9A8 80028808 AFA90024 */   sw    $t1, 0x24($sp)
/* A9F9AC 8002880C 8FBF0034 */  lw    $ra, 0x34($sp)
/* A9F9B0 80028810 27BD0038 */  addiu $sp, $sp, 0x38
/* A9F9B4 80028814 03E00008 */  jr    $ra
/* A9F9B8 80028818 00000000 */   nop   

glabel func_8002881C
/* A9F9BC 8002881C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* A9F9C0 80028820 8FAE0038 */  lw    $t6, 0x38($sp)
/* A9F9C4 80028824 8FAF003C */  lw    $t7, 0x3c($sp)
/* A9F9C8 80028828 AFBF0024 */  sw    $ra, 0x24($sp)
/* A9F9CC 8002882C 24180064 */  li    $t8, 100
/* A9F9D0 80028830 24190005 */  li    $t9, 5
/* A9F9D4 80028834 AFB9001C */  sw    $t9, 0x1c($sp)
/* A9F9D8 80028838 AFB80018 */  sw    $t8, 0x18($sp)
/* A9F9DC 8002883C AFAE0010 */  sw    $t6, 0x10($sp)
/* A9F9E0 80028840 0C00A0A7 */  jal   func_8002829C
/* A9F9E4 80028844 AFAF0014 */   sw    $t7, 0x14($sp)
/* A9F9E8 80028848 8FBF0024 */  lw    $ra, 0x24($sp)
/* A9F9EC 8002884C 27BD0028 */  addiu $sp, $sp, 0x28
/* A9F9F0 80028850 03E00008 */  jr    $ra
/* A9F9F4 80028854 00000000 */   nop   

glabel func_80028858
/* A9F9F8 80028858 27BDFFD8 */  addiu $sp, $sp, -0x28
/* A9F9FC 8002885C 8FAE0038 */  lw    $t6, 0x38($sp)
/* A9FA00 80028860 8FAF003C */  lw    $t7, 0x3c($sp)
/* A9FA04 80028864 AFBF0024 */  sw    $ra, 0x24($sp)
/* A9FA08 80028868 24180064 */  li    $t8, 100
/* A9FA0C 8002886C 24190005 */  li    $t9, 5
/* A9FA10 80028870 AFB9001C */  sw    $t9, 0x1c($sp)
/* A9FA14 80028874 AFB80018 */  sw    $t8, 0x18($sp)
/* A9FA18 80028878 AFAE0010 */  sw    $t6, 0x10($sp)
/* A9FA1C 8002887C 0C00A0C1 */  jal   func_80028304
/* A9FA20 80028880 AFAF0014 */   sw    $t7, 0x14($sp)
/* A9FA24 80028884 8FBF0024 */  lw    $ra, 0x24($sp)
/* A9FA28 80028888 27BD0028 */  addiu $sp, $sp, 0x28
/* A9FA2C 8002888C 03E00008 */  jr    $ra
/* A9FA30 80028890 00000000 */   nop   

glabel func_80028894
/* A9FA34 80028894 27BDFFD8 */  addiu $sp, $sp, -0x28
/* A9FA38 80028898 AFBF001C */  sw    $ra, 0x1c($sp)
/* A9FA3C 8002889C AFB00018 */  sw    $s0, 0x18($sp)
/* A9FA40 800288A0 00C08025 */  move  $s0, $a2
/* A9FA44 800288A4 AFA40028 */  sw    $a0, 0x28($sp)
/* A9FA48 800288A8 AFA5002C */  sw    $a1, 0x2c($sp)
/* A9FA4C 800288AC 0C03F66B */  jal   Math_Rand_ZeroOne
/* A9FA50 800288B0 AFA70034 */   sw    $a3, 0x34($sp)
/* A9FA54 800288B4 C7A4002C */  lwc1  $f4, 0x2c($sp)
/* A9FA58 800288B8 46040182 */  mul.s $f6, $f0, $f4
/* A9FA5C 800288BC 0C03F66B */  jal   Math_Rand_ZeroOne
/* A9FA60 800288C0 E7A60020 */   swc1  $f6, 0x20($sp)
/* A9FA64 800288C4 3C014780 */  li    $at, 0x47800000 # 0.000000
/* A9FA68 800288C8 44814000 */  mtc1  $at, $f8
/* A9FA6C 800288CC 8FAF0028 */  lw    $t7, 0x28($sp)
/* A9FA70 800288D0 46080282 */  mul.s $f10, $f0, $f8
/* A9FA74 800288D4 4600540D */  trunc.w.s $f16, $f10
/* A9FA78 800288D8 44028000 */  mfc1  $v0, $f16
/* A9FA7C 800288DC 00000000 */  nop   
/* A9FA80 800288E0 A7A20026 */  sh    $v0, 0x26($sp)
/* A9FA84 800288E4 8DF90000 */  lw    $t9, ($t7)
/* A9FA88 800288E8 00022400 */  sll   $a0, $v0, 0x10
/* A9FA8C 800288EC 00042403 */  sra   $a0, $a0, 0x10
/* A9FA90 800288F0 AE190000 */  sw    $t9, ($s0)
/* A9FA94 800288F4 8DF80004 */  lw    $t8, 4($t7)
/* A9FA98 800288F8 AE180004 */  sw    $t8, 4($s0)
/* A9FA9C 800288FC 8DF90008 */  lw    $t9, 8($t7)
/* A9FAA0 80028900 0C01DE1C */  jal   Math_Sins
/* A9FAA4 80028904 AE190008 */   sw    $t9, 8($s0)
/* A9FAA8 80028908 C7A40020 */  lwc1  $f4, 0x20($sp)
/* A9FAAC 8002890C C6120000 */  lwc1  $f18, ($s0)
/* A9FAB0 80028910 46040182 */  mul.s $f6, $f0, $f4
/* A9FAB4 80028914 46069200 */  add.s $f8, $f18, $f6
/* A9FAB8 80028918 E6080000 */  swc1  $f8, ($s0)
/* A9FABC 8002891C 0C01DE0D */  jal   Math_Coss
/* A9FAC0 80028920 87A40026 */   lh    $a0, 0x26($sp)
/* A9FAC4 80028924 C7B00020 */  lwc1  $f16, 0x20($sp)
/* A9FAC8 80028928 C60A0008 */  lwc1  $f10, 8($s0)
/* A9FACC 8002892C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* A9FAD0 80028930 46100102 */  mul.s $f4, $f0, $f16
/* A9FAD4 80028934 44813000 */  mtc1  $at, $f6
/* A9FAD8 80028938 46045480 */  add.s $f18, $f10, $f4
/* A9FADC 8002893C E6120008 */  swc1  $f18, 8($s0)
/* A9FAE0 80028940 8FA80034 */  lw    $t0, 0x34($sp)
/* A9FAE4 80028944 E5060004 */  swc1  $f6, 4($t0)
/* A9FAE8 80028948 0C01DE1C */  jal   Math_Sins
/* A9FAEC 8002894C 87A40026 */   lh    $a0, 0x26($sp)
/* A9FAF0 80028950 8FA90034 */  lw    $t1, 0x34($sp)
/* A9FAF4 80028954 E5200000 */  swc1  $f0, ($t1)
/* A9FAF8 80028958 0C01DE0D */  jal   Math_Coss
/* A9FAFC 8002895C 87A40026 */   lh    $a0, 0x26($sp)
/* A9FB00 80028960 8FA20038 */  lw    $v0, 0x38($sp)
/* A9FB04 80028964 8FAA0034 */  lw    $t2, 0x34($sp)
/* A9FB08 80028968 44801000 */  mtc1  $zero, $f2
/* A9FB0C 8002896C E5400008 */  swc1  $f0, 8($t2)
/* A9FB10 80028970 E4420000 */  swc1  $f2, ($v0)
/* A9FB14 80028974 E4420004 */  swc1  $f2, 4($v0)
/* A9FB18 80028978 E4420008 */  swc1  $f2, 8($v0)
/* A9FB1C 8002897C 8FBF001C */  lw    $ra, 0x1c($sp)
/* A9FB20 80028980 8FB00018 */  lw    $s0, 0x18($sp)
/* A9FB24 80028984 27BD0028 */  addiu $sp, $sp, 0x28
/* A9FB28 80028988 03E00008 */  jr    $ra
/* A9FB2C 8002898C 00000000 */   nop   

glabel func_80028990
/* A9FB30 80028990 27BDFF88 */  addiu $sp, $sp, -0x78
/* A9FB34 80028994 F7B40028 */  sdc1  $f20, 0x28($sp)
/* A9FB38 80028998 AFB60048 */  sw    $s6, 0x48($sp)
/* A9FB3C 8002899C AFB50044 */  sw    $s5, 0x44($sp)
/* A9FB40 800289A0 AFB40040 */  sw    $s4, 0x40($sp)
/* A9FB44 800289A4 AFB3003C */  sw    $s3, 0x3c($sp)
/* A9FB48 800289A8 AFB20038 */  sw    $s2, 0x38($sp)
/* A9FB4C 800289AC AFB10034 */  sw    $s1, 0x34($sp)
/* A9FB50 800289B0 AFB00030 */  sw    $s0, 0x30($sp)
/* A9FB54 800289B4 4485A000 */  mtc1  $a1, $f20
/* A9FB58 800289B8 00C0A025 */  move  $s4, $a2
/* A9FB5C 800289BC 0080A825 */  move  $s5, $a0
/* A9FB60 800289C0 AFBF004C */  sw    $ra, 0x4c($sp)
/* A9FB64 800289C4 00008025 */  move  $s0, $zero
/* A9FB68 800289C8 27B10068 */  addiu $s1, $sp, 0x68
/* A9FB6C 800289CC 27B2005C */  addiu $s2, $sp, 0x5c
/* A9FB70 800289D0 27B30050 */  addiu $s3, $sp, 0x50
/* A9FB74 800289D4 24160014 */  li    $s6, 20
/* A9FB78 800289D8 4405A000 */  mfc1  $a1, $f20
.L800289DC:
/* A9FB7C 800289DC 02802025 */  move  $a0, $s4
/* A9FB80 800289E0 02203025 */  move  $a2, $s1
/* A9FB84 800289E4 02403825 */  move  $a3, $s2
/* A9FB88 800289E8 0C00A225 */  jal   func_80028894
/* A9FB8C 800289EC AFB30010 */   sw    $s3, 0x10($sp)
/* A9FB90 800289F0 240E0064 */  li    $t6, 100
/* A9FB94 800289F4 240F001E */  li    $t7, 30
/* A9FB98 800289F8 24180007 */  li    $t8, 7
/* A9FB9C 800289FC AFB80018 */  sw    $t8, 0x18($sp)
/* A9FBA0 80028A00 AFAF0014 */  sw    $t7, 0x14($sp)
/* A9FBA4 80028A04 AFAE0010 */  sw    $t6, 0x10($sp)
/* A9FBA8 80028A08 02A02025 */  move  $a0, $s5
/* A9FBAC 80028A0C 02202825 */  move  $a1, $s1
/* A9FBB0 80028A10 02403025 */  move  $a2, $s2
/* A9FBB4 80028A14 0C00A1CF */  jal   func_8002873C
/* A9FBB8 80028A18 02603825 */   move  $a3, $s3
/* A9FBBC 80028A1C 26100001 */  addiu $s0, $s0, 1
/* A9FBC0 80028A20 5616FFEE */  bnel  $s0, $s6, .L800289DC
/* A9FBC4 80028A24 4405A000 */   mfc1  $a1, $f20
/* A9FBC8 80028A28 8FBF004C */  lw    $ra, 0x4c($sp)
/* A9FBCC 80028A2C D7B40028 */  ldc1  $f20, 0x28($sp)
/* A9FBD0 80028A30 8FB00030 */  lw    $s0, 0x30($sp)
/* A9FBD4 80028A34 8FB10034 */  lw    $s1, 0x34($sp)
/* A9FBD8 80028A38 8FB20038 */  lw    $s2, 0x38($sp)
/* A9FBDC 80028A3C 8FB3003C */  lw    $s3, 0x3c($sp)
/* A9FBE0 80028A40 8FB40040 */  lw    $s4, 0x40($sp)
/* A9FBE4 80028A44 8FB50044 */  lw    $s5, 0x44($sp)
/* A9FBE8 80028A48 8FB60048 */  lw    $s6, 0x48($sp)
/* A9FBEC 80028A4C 03E00008 */  jr    $ra
/* A9FBF0 80028A50 27BD0078 */   addiu $sp, $sp, 0x78

glabel func_80028A54
/* A9FBF4 80028A54 27BDFF88 */  addiu $sp, $sp, -0x78
/* A9FBF8 80028A58 F7B40028 */  sdc1  $f20, 0x28($sp)
/* A9FBFC 80028A5C AFB60048 */  sw    $s6, 0x48($sp)
/* A9FC00 80028A60 AFB50044 */  sw    $s5, 0x44($sp)
/* A9FC04 80028A64 AFB40040 */  sw    $s4, 0x40($sp)
/* A9FC08 80028A68 AFB3003C */  sw    $s3, 0x3c($sp)
/* A9FC0C 80028A6C AFB20038 */  sw    $s2, 0x38($sp)
/* A9FC10 80028A70 AFB10034 */  sw    $s1, 0x34($sp)
/* A9FC14 80028A74 AFB00030 */  sw    $s0, 0x30($sp)
/* A9FC18 80028A78 4485A000 */  mtc1  $a1, $f20
/* A9FC1C 80028A7C 00C0A025 */  move  $s4, $a2
/* A9FC20 80028A80 0080A825 */  move  $s5, $a0
/* A9FC24 80028A84 AFBF004C */  sw    $ra, 0x4c($sp)
/* A9FC28 80028A88 00008025 */  move  $s0, $zero
/* A9FC2C 80028A8C 27B10068 */  addiu $s1, $sp, 0x68
/* A9FC30 80028A90 27B2005C */  addiu $s2, $sp, 0x5c
/* A9FC34 80028A94 27B30050 */  addiu $s3, $sp, 0x50
/* A9FC38 80028A98 24160014 */  li    $s6, 20
/* A9FC3C 80028A9C 4405A000 */  mfc1  $a1, $f20
.L80028AA0:
/* A9FC40 80028AA0 02802025 */  move  $a0, $s4
/* A9FC44 80028AA4 02203025 */  move  $a2, $s1
/* A9FC48 80028AA8 02403825 */  move  $a3, $s2
/* A9FC4C 80028AAC 0C00A225 */  jal   func_80028894
/* A9FC50 80028AB0 AFB30010 */   sw    $s3, 0x10($sp)
/* A9FC54 80028AB4 240E0064 */  li    $t6, 100
/* A9FC58 80028AB8 240F001E */  li    $t7, 30
/* A9FC5C 80028ABC 24180007 */  li    $t8, 7
/* A9FC60 80028AC0 AFB80018 */  sw    $t8, 0x18($sp)
/* A9FC64 80028AC4 AFAF0014 */  sw    $t7, 0x14($sp)
/* A9FC68 80028AC8 AFAE0010 */  sw    $t6, 0x10($sp)
/* A9FC6C 80028ACC 02A02025 */  move  $a0, $s5
/* A9FC70 80028AD0 02202825 */  move  $a1, $s1
/* A9FC74 80028AD4 02403025 */  move  $a2, $s2
/* A9FC78 80028AD8 0C00A1EB */  jal   func_800287AC
/* A9FC7C 80028ADC 02603825 */   move  $a3, $s3
/* A9FC80 80028AE0 26100001 */  addiu $s0, $s0, 1
/* A9FC84 80028AE4 5616FFEE */  bnel  $s0, $s6, .L80028AA0
/* A9FC88 80028AE8 4405A000 */   mfc1  $a1, $f20
/* A9FC8C 80028AEC 8FBF004C */  lw    $ra, 0x4c($sp)
/* A9FC90 80028AF0 D7B40028 */  ldc1  $f20, 0x28($sp)
/* A9FC94 80028AF4 8FB00030 */  lw    $s0, 0x30($sp)
/* A9FC98 80028AF8 8FB10034 */  lw    $s1, 0x34($sp)
/* A9FC9C 80028AFC 8FB20038 */  lw    $s2, 0x38($sp)
/* A9FCA0 80028B00 8FB3003C */  lw    $s3, 0x3c($sp)
/* A9FCA4 80028B04 8FB40040 */  lw    $s4, 0x40($sp)
/* A9FCA8 80028B08 8FB50044 */  lw    $s5, 0x44($sp)
/* A9FCAC 80028B0C 8FB60048 */  lw    $s6, 0x48($sp)
/* A9FCB0 80028B10 03E00008 */  jr    $ra
/* A9FCB4 80028B14 27BD0078 */   addiu $sp, $sp, 0x78

glabel func_80028B18
/* A9FCB8 80028B18 27BDFFD0 */  addiu $sp, $sp, -0x30
/* A9FCBC 80028B1C 3C0E8011 */  lui   $t6, %hi(D_801158D4) # $t6, 0x8011
/* A9FCC0 80028B20 AFBF0024 */  sw    $ra, 0x24($sp)
/* A9FCC4 80028B24 25CE58D4 */  addiu $t6, %lo(D_801158D4) # addiu $t6, $t6, 0x58d4
/* A9FCC8 80028B28 8DD80000 */  lw    $t8, ($t6)
/* A9FCCC 80028B2C 27A2002C */  addiu $v0, $sp, 0x2c
/* A9FCD0 80028B30 3C198011 */  lui   $t9, %hi(D_801158D8) # $t9, 0x8011
/* A9FCD4 80028B34 273958D8 */  addiu $t9, %lo(D_801158D8) # addiu $t9, $t9, 0x58d8
/* A9FCD8 80028B38 AC580000 */  sw    $t8, ($v0)
/* A9FCDC 80028B3C 8F290000 */  lw    $t1, ($t9)
/* A9FCE0 80028B40 27A30028 */  addiu $v1, $sp, 0x28
/* A9FCE4 80028B44 240A03E8 */  li    $t2, 1000
/* A9FCE8 80028B48 AC690000 */  sw    $t1, ($v1)
/* A9FCEC 80028B4C 240B0010 */  li    $t3, 16
/* A9FCF0 80028B50 AFAB001C */  sw    $t3, 0x1c($sp)
/* A9FCF4 80028B54 AFAA0018 */  sw    $t2, 0x18($sp)
/* A9FCF8 80028B58 AFA30014 */  sw    $v1, 0x14($sp)
/* A9FCFC 80028B5C 0C00A2EC */  jal   func_80028BB0
/* A9FD00 80028B60 AFA20010 */   sw    $v0, 0x10($sp)
/* A9FD04 80028B64 8FBF0024 */  lw    $ra, 0x24($sp)
/* A9FD08 80028B68 27BD0030 */  addiu $sp, $sp, 0x30
/* A9FD0C 80028B6C 03E00008 */  jr    $ra
/* A9FD10 80028B70 00000000 */   nop   

glabel func_80028B74
/* A9FD14 80028B74 27BDFFD8 */  addiu $sp, $sp, -0x28
/* A9FD18 80028B78 8FAE0038 */  lw    $t6, 0x38($sp)
/* A9FD1C 80028B7C 8FAF003C */  lw    $t7, 0x3c($sp)
/* A9FD20 80028B80 AFBF0024 */  sw    $ra, 0x24($sp)
/* A9FD24 80028B84 241803E8 */  li    $t8, 1000
/* A9FD28 80028B88 24190010 */  li    $t9, 16
/* A9FD2C 80028B8C AFB9001C */  sw    $t9, 0x1c($sp)
/* A9FD30 80028B90 AFB80018 */  sw    $t8, 0x18($sp)
/* A9FD34 80028B94 AFAE0010 */  sw    $t6, 0x10($sp)
/* A9FD38 80028B98 0C00A2EC */  jal   func_80028BB0
/* A9FD3C 80028B9C AFAF0014 */   sw    $t7, 0x14($sp)
/* A9FD40 80028BA0 8FBF0024 */  lw    $ra, 0x24($sp)
/* A9FD44 80028BA4 27BD0028 */  addiu $sp, $sp, 0x28
/* A9FD48 80028BA8 03E00008 */  jr    $ra
/* A9FD4C 80028BAC 00000000 */   nop   

glabel func_80028BB0
/* A9FD50 80028BB0 27BDFFA8 */  addiu $sp, $sp, -0x58
/* A9FD54 80028BB4 AFBF0014 */  sw    $ra, 0x14($sp)
/* A9FD58 80028BB8 AFA40058 */  sw    $a0, 0x58($sp)
/* A9FD5C 80028BBC AFA60060 */  sw    $a2, 0x60($sp)
/* A9FD60 80028BC0 AFA70064 */  sw    $a3, 0x64($sp)
/* A9FD64 80028BC4 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FD68 80028BC8 27A4001C */   addiu $a0, $sp, 0x1c
/* A9FD6C 80028BCC 27A40028 */  addiu $a0, $sp, 0x28
/* A9FD70 80028BD0 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FD74 80028BD4 8FA50060 */   lw    $a1, 0x60($sp)
/* A9FD78 80028BD8 0C03F66B */  jal   Math_Rand_ZeroOne
/* A9FD7C 80028BDC 00000000 */   nop   
/* A9FD80 80028BE0 C7A2002C */  lwc1  $f2, 0x2c($sp)
/* A9FD84 80028BE4 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* A9FD88 80028BE8 44814000 */  mtc1  $at, $f8
/* A9FD8C 80028BEC 46020102 */  mul.s $f4, $f0, $f2
/* A9FD90 80028BF0 27A40034 */  addiu $a0, $sp, 0x34
/* A9FD94 80028BF4 8FA50064 */  lw    $a1, 0x64($sp)
/* A9FD98 80028BF8 46022180 */  add.s $f6, $f4, $f2
/* A9FD9C 80028BFC 46083082 */  mul.s $f2, $f6, $f8
/* A9FDA0 80028C00 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FDA4 80028C04 E7A2002C */   swc1  $f2, 0x2c($sp)
/* A9FDA8 80028C08 0C03F66B */  jal   Math_Rand_ZeroOne
/* A9FDAC 80028C0C 00000000 */   nop   
/* A9FDB0 80028C10 C7A20038 */  lwc1  $f2, 0x38($sp)
/* A9FDB4 80028C14 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* A9FDB8 80028C18 44819000 */  mtc1  $at, $f18
/* A9FDBC 80028C1C 46020282 */  mul.s $f10, $f0, $f2
/* A9FDC0 80028C20 8FAE0074 */  lw    $t6, 0x74($sp)
/* A9FDC4 80028C24 240F1518 */  li    $t7, 5400
/* A9FDC8 80028C28 A3A00054 */  sb    $zero, 0x54($sp)
/* A9FDCC 80028C2C A7AF0050 */  sh    $t7, 0x50($sp)
/* A9FDD0 80028C30 AFAE004C */  sw    $t6, 0x4c($sp)
/* A9FDD4 80028C34 46025400 */  add.s $f16, $f10, $f2
/* A9FDD8 80028C38 46128082 */  mul.s $f2, $f16, $f18
/* A9FDDC 80028C3C 0C03F66B */  jal   Math_Rand_ZeroOne
/* A9FDE0 80028C40 E7A20038 */   swc1  $f2, 0x38($sp)
/* A9FDE4 80028C44 3C014680 */  li    $at, 0x46800000 # 0.000000
/* A9FDE8 80028C48 44812000 */  mtc1  $at, $f4
/* A9FDEC 80028C4C 87A80072 */  lh    $t0, 0x72($sp)
/* A9FDF0 80028C50 8FAA0068 */  lw    $t2, 0x68($sp)
/* A9FDF4 80028C54 46040182 */  mul.s $f6, $f0, $f4
/* A9FDF8 80028C58 A7A8004A */  sh    $t0, 0x4a($sp)
/* A9FDFC 80028C5C 27A90040 */  addiu $t1, $sp, 0x40
/* A9FE00 80028C60 27AD0044 */  addiu $t5, $sp, 0x44
/* A9FE04 80028C64 3C01437F */  li    $at, 0x437F0000 # 0.000000
/* A9FE08 80028C68 44815000 */  mtc1  $at, $f10
/* A9FE0C 80028C6C 24050001 */  li    $a1, 1
/* A9FE10 80028C70 4600320D */  trunc.w.s $f8, $f6
/* A9FE14 80028C74 24060080 */  li    $a2, 128
/* A9FE18 80028C78 27A7001C */  addiu $a3, $sp, 0x1c
/* A9FE1C 80028C7C 44194000 */  mfc1  $t9, $f8
/* A9FE20 80028C80 00000000 */  nop   
/* A9FE24 80028C84 A7B90052 */  sh    $t9, 0x52($sp)
/* A9FE28 80028C88 894C0000 */  lwl   $t4, ($t2)
/* A9FE2C 80028C8C 994C0003 */  lwr   $t4, 3($t2)
/* A9FE30 80028C90 A92C0000 */  swl   $t4, ($t1)
/* A9FE34 80028C94 B92C0003 */  swr   $t4, 3($t1)
/* A9FE38 80028C98 8FAE006C */  lw    $t6, 0x6c($sp)
/* A9FE3C 80028C9C 89D80000 */  lwl   $t8, ($t6)
/* A9FE40 80028CA0 99D80003 */  lwr   $t8, 3($t6)
/* A9FE44 80028CA4 A9B80000 */  swl   $t8, ($t5)
/* A9FE48 80028CA8 B9B80003 */  swr   $t8, 3($t5)
/* A9FE4C 80028CAC 8FB9004C */  lw    $t9, 0x4c($sp)
/* A9FE50 80028CB0 8FA40058 */  lw    $a0, 0x58($sp)
/* A9FE54 80028CB4 44998000 */  mtc1  $t9, $f16
/* A9FE58 80028CB8 00000000 */  nop   
/* A9FE5C 80028CBC 468084A0 */  cvt.s.w $f18, $f16
/* A9FE60 80028CC0 46125083 */  div.s $f2, $f10, $f18
/* A9FE64 80028CC4 46001087 */  neg.s $f2, $f2
/* A9FE68 80028CC8 46021100 */  add.s $f4, $f2, $f2
/* A9FE6C 80028CCC 4600218D */  trunc.w.s $f6, $f4
/* A9FE70 80028CD0 44093000 */  mfc1  $t1, $f6
/* A9FE74 80028CD4 0C009DE6 */  jal   func_80027798
/* A9FE78 80028CD8 A7A90048 */   sh    $t1, 0x48($sp)
/* A9FE7C 80028CDC 8FBF0014 */  lw    $ra, 0x14($sp)
/* A9FE80 80028CE0 27BD0058 */  addiu $sp, $sp, 0x58
/* A9FE84 80028CE4 03E00008 */  jr    $ra
/* A9FE88 80028CE8 00000000 */   nop   

glabel func_80028CEC
/* A9FE8C 80028CEC 27BDFFA8 */  addiu $sp, $sp, -0x58
/* A9FE90 80028CF0 AFBF0014 */  sw    $ra, 0x14($sp)
/* A9FE94 80028CF4 AFA40058 */  sw    $a0, 0x58($sp)
/* A9FE98 80028CF8 AFA60060 */  sw    $a2, 0x60($sp)
/* A9FE9C 80028CFC AFA70064 */  sw    $a3, 0x64($sp)
/* A9FEA0 80028D00 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FEA4 80028D04 27A4001C */   addiu $a0, $sp, 0x1c
/* A9FEA8 80028D08 27A40028 */  addiu $a0, $sp, 0x28
/* A9FEAC 80028D0C 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FEB0 80028D10 8FA50060 */   lw    $a1, 0x60($sp)
/* A9FEB4 80028D14 27A40034 */  addiu $a0, $sp, 0x34
/* A9FEB8 80028D18 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FEBC 80028D1C 8FA50064 */   lw    $a1, 0x64($sp)
/* A9FEC0 80028D20 8FAE0074 */  lw    $t6, 0x74($sp)
/* A9FEC4 80028D24 240F0001 */  li    $t7, 1
/* A9FEC8 80028D28 24181518 */  li    $t8, 5400
/* A9FECC 80028D2C A3AF0054 */  sb    $t7, 0x54($sp)
/* A9FED0 80028D30 A7B80050 */  sh    $t8, 0x50($sp)
/* A9FED4 80028D34 0C03F66B */  jal   Math_Rand_ZeroOne
/* A9FED8 80028D38 AFAE004C */   sw    $t6, 0x4c($sp)
/* A9FEDC 80028D3C 3C014680 */  li    $at, 0x46800000 # 0.000000
/* A9FEE0 80028D40 44812000 */  mtc1  $at, $f4
/* A9FEE4 80028D44 87A90072 */  lh    $t1, 0x72($sp)
/* A9FEE8 80028D48 27A40040 */  addiu $a0, $sp, 0x40
/* A9FEEC 80028D4C 46040182 */  mul.s $f6, $f0, $f4
/* A9FEF0 80028D50 8FA50068 */  lw    $a1, 0x68($sp)
/* A9FEF4 80028D54 A7A9004A */  sh    $t1, 0x4a($sp)
/* A9FEF8 80028D58 4600320D */  trunc.w.s $f8, $f6
/* A9FEFC 80028D5C 44084000 */  mfc1  $t0, $f8
/* A9FF00 80028D60 0C01E218 */  jal   Color_RGBA8_Copy
/* A9FF04 80028D64 A7A80052 */   sh    $t0, 0x52($sp)
/* A9FF08 80028D68 27A40044 */  addiu $a0, $sp, 0x44
/* A9FF0C 80028D6C 0C01E218 */  jal   Color_RGBA8_Copy
/* A9FF10 80028D70 8FA5006C */   lw    $a1, 0x6c($sp)
/* A9FF14 80028D74 8FAA004C */  lw    $t2, 0x4c($sp)
/* A9FF18 80028D78 3C01437F */  li    $at, 0x437F0000 # 0.000000
/* A9FF1C 80028D7C 44815000 */  mtc1  $at, $f10
/* A9FF20 80028D80 448A8000 */  mtc1  $t2, $f16
/* A9FF24 80028D84 8FA40058 */  lw    $a0, 0x58($sp)
/* A9FF28 80028D88 24050001 */  li    $a1, 1
/* A9FF2C 80028D8C 468084A0 */  cvt.s.w $f18, $f16
/* A9FF30 80028D90 24060080 */  li    $a2, 128
/* A9FF34 80028D94 27A7001C */  addiu $a3, $sp, 0x1c
/* A9FF38 80028D98 46125003 */  div.s $f0, $f10, $f18
/* A9FF3C 80028D9C 46000007 */  neg.s $f0, $f0
/* A9FF40 80028DA0 46000100 */  add.s $f4, $f0, $f0
/* A9FF44 80028DA4 4600218D */  trunc.w.s $f6, $f4
/* A9FF48 80028DA8 440C3000 */  mfc1  $t4, $f6
/* A9FF4C 80028DAC 0C009DE6 */  jal   func_80027798
/* A9FF50 80028DB0 A7AC0048 */   sh    $t4, 0x48($sp)
/* A9FF54 80028DB4 8FBF0014 */  lw    $ra, 0x14($sp)
/* A9FF58 80028DB8 27BD0058 */  addiu $sp, $sp, 0x58
/* A9FF5C 80028DBC 03E00008 */  jr    $ra
/* A9FF60 80028DC0 00000000 */   nop   

glabel func_80028DC4
/* A9FF64 80028DC4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* A9FF68 80028DC8 AFBF0014 */  sw    $ra, 0x14($sp)
/* A9FF6C 80028DCC AFA40040 */  sw    $a0, 0x40($sp)
/* A9FF70 80028DD0 AFA60048 */  sw    $a2, 0x48($sp)
/* A9FF74 80028DD4 AFA7004C */  sw    $a3, 0x4c($sp)
/* A9FF78 80028DD8 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FF7C 80028DDC 27A4001C */   addiu $a0, $sp, 0x1c
/* A9FF80 80028DE0 27A40028 */  addiu $a0, $sp, 0x28
/* A9FF84 80028DE4 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FF88 80028DE8 8FA50048 */   lw    $a1, 0x48($sp)
/* A9FF8C 80028DEC 27A40034 */  addiu $a0, $sp, 0x34
/* A9FF90 80028DF0 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FF94 80028DF4 8FA5004C */   lw    $a1, 0x4c($sp)
/* A9FF98 80028DF8 8FA40040 */  lw    $a0, 0x40($sp)
/* A9FF9C 80028DFC 24050002 */  li    $a1, 2
/* A9FFA0 80028E00 24060080 */  li    $a2, 128
/* A9FFA4 80028E04 0C009DE6 */  jal   func_80027798
/* A9FFA8 80028E08 27A7001C */   addiu $a3, $sp, 0x1c
/* A9FFAC 80028E0C 8FBF0014 */  lw    $ra, 0x14($sp)
/* A9FFB0 80028E10 27BD0040 */  addiu $sp, $sp, 0x40
/* A9FFB4 80028E14 03E00008 */  jr    $ra
/* A9FFB8 80028E18 00000000 */   nop   

glabel func_80028E1C
/* A9FFBC 80028E1C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* A9FFC0 80028E20 AFBF0014 */  sw    $ra, 0x14($sp)
/* A9FFC4 80028E24 AFA40048 */  sw    $a0, 0x48($sp)
/* A9FFC8 80028E28 AFA60050 */  sw    $a2, 0x50($sp)
/* A9FFCC 80028E2C AFA70054 */  sw    $a3, 0x54($sp)
/* A9FFD0 80028E30 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FFD4 80028E34 27A4001C */   addiu $a0, $sp, 0x1c
/* A9FFD8 80028E38 27A40028 */  addiu $a0, $sp, 0x28
/* A9FFDC 80028E3C 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FFE0 80028E40 8FA50050 */   lw    $a1, 0x50($sp)
/* A9FFE4 80028E44 27A40034 */  addiu $a0, $sp, 0x34
/* A9FFE8 80028E48 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FFEC 80028E4C 8FA50054 */   lw    $a1, 0x54($sp)
/* A9FFF0 80028E50 240E0064 */  li    $t6, 100
/* A9FFF4 80028E54 A7AE0040 */  sh    $t6, 0x40($sp)
/* A9FFF8 80028E58 A7A00042 */  sh    $zero, 0x42($sp)
/* A9FFFC 80028E5C A3A00044 */  sb    $zero, 0x44($sp)
/* AA0000 80028E60 8FA40048 */  lw    $a0, 0x48($sp)
/* AA0004 80028E64 24050003 */  li    $a1, 3
/* AA0008 80028E68 2406000A */  li    $a2, 10
/* AA000C 80028E6C 0C009DE6 */  jal   func_80027798
/* AA0010 80028E70 27A7001C */   addiu $a3, $sp, 0x1c
/* AA0014 80028E74 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0018 80028E78 27BD0048 */  addiu $sp, $sp, 0x48
/* AA001C 80028E7C 03E00008 */  jr    $ra
/* AA0020 80028E80 00000000 */   nop   

glabel func_80028E84
/* AA0024 80028E84 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AA0028 80028E88 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA002C 80028E8C AFA40048 */  sw    $a0, 0x48($sp)
/* AA0030 80028E90 AFA60050 */  sw    $a2, 0x50($sp)
/* AA0034 80028E94 AFA70054 */  sw    $a3, 0x54($sp)
/* AA0038 80028E98 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA003C 80028E9C 27A4001C */   addiu $a0, $sp, 0x1c
/* AA0040 80028EA0 27A40028 */  addiu $a0, $sp, 0x28
/* AA0044 80028EA4 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0048 80028EA8 8FA50050 */   lw    $a1, 0x50($sp)
/* AA004C 80028EAC 27A40034 */  addiu $a0, $sp, 0x34
/* AA0050 80028EB0 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0054 80028EB4 8FA50054 */   lw    $a1, 0x54($sp)
/* AA0058 80028EB8 87AE005A */  lh    $t6, 0x5a($sp)
/* AA005C 80028EBC 87AF005E */  lh    $t7, 0x5e($sp)
/* AA0060 80028EC0 24180001 */  li    $t8, 1
/* AA0064 80028EC4 A3B80044 */  sb    $t8, 0x44($sp)
/* AA0068 80028EC8 8FA40048 */  lw    $a0, 0x48($sp)
/* AA006C 80028ECC 24050003 */  li    $a1, 3
/* AA0070 80028ED0 2406000A */  li    $a2, 10
/* AA0074 80028ED4 27A7001C */  addiu $a3, $sp, 0x1c
/* AA0078 80028ED8 A7AE0040 */  sh    $t6, 0x40($sp)
/* AA007C 80028EDC 0C009DE6 */  jal   func_80027798
/* AA0080 80028EE0 A7AF0042 */   sh    $t7, 0x42($sp)
/* AA0084 80028EE4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0088 80028EE8 27BD0048 */  addiu $sp, $sp, 0x48
/* AA008C 80028EEC 03E00008 */  jr    $ra
/* AA0090 80028EF0 00000000 */   nop   

glabel func_80028EF4
/* AA0094 80028EF4 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AA0098 80028EF8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA009C 80028EFC AFA40050 */  sw    $a0, 0x50($sp)
/* AA00A0 80028F00 AFA60058 */  sw    $a2, 0x58($sp)
/* AA00A4 80028F04 AFA7005C */  sw    $a3, 0x5c($sp)
/* AA00A8 80028F08 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA00AC 80028F0C 27A4001C */   addiu $a0, $sp, 0x1c
/* AA00B0 80028F10 27A40028 */  addiu $a0, $sp, 0x28
/* AA00B4 80028F14 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA00B8 80028F18 8FA50058 */   lw    $a1, 0x58($sp)
/* AA00BC 80028F1C 27A40034 */  addiu $a0, $sp, 0x34
/* AA00C0 80028F20 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA00C4 80028F24 8FA5005C */   lw    $a1, 0x5c($sp)
/* AA00C8 80028F28 27A40040 */  addiu $a0, $sp, 0x40
/* AA00CC 80028F2C 0C01E218 */  jal   Color_RGBA8_Copy
/* AA00D0 80028F30 8FA50060 */   lw    $a1, 0x60($sp)
/* AA00D4 80028F34 27A40044 */  addiu $a0, $sp, 0x44
/* AA00D8 80028F38 0C01E218 */  jal   Color_RGBA8_Copy
/* AA00DC 80028F3C 8FA50064 */   lw    $a1, 0x64($sp)
/* AA00E0 80028F40 87AE006A */  lh    $t6, 0x6a($sp)
/* AA00E4 80028F44 87AF006E */  lh    $t7, 0x6e($sp)
/* AA00E8 80028F48 87B80072 */  lh    $t8, 0x72($sp)
/* AA00EC 80028F4C 87B90076 */  lh    $t9, 0x76($sp)
/* AA00F0 80028F50 8FA40050 */  lw    $a0, 0x50($sp)
/* AA00F4 80028F54 24050004 */  li    $a1, 4
/* AA00F8 80028F58 24060080 */  li    $a2, 128
/* AA00FC 80028F5C 27A7001C */  addiu $a3, $sp, 0x1c
/* AA0100 80028F60 A7AE0048 */  sh    $t6, 0x48($sp)
/* AA0104 80028F64 A7AF004A */  sh    $t7, 0x4a($sp)
/* AA0108 80028F68 A7B8004C */  sh    $t8, 0x4c($sp)
/* AA010C 80028F6C 0C009DE6 */  jal   func_80027798
/* AA0110 80028F70 A7B9004E */   sh    $t9, 0x4e($sp)
/* AA0114 80028F74 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0118 80028F78 27BD0050 */  addiu $sp, $sp, 0x50
/* AA011C 80028F7C 03E00008 */  jr    $ra
/* AA0120 80028F80 00000000 */   nop   

glabel func_80028F84
/* AA0124 80028F84 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA0128 80028F88 87B80042 */  lh    $t8, 0x42($sp)
/* AA012C 80028F8C 87B90046 */  lh    $t9, 0x46($sp)
/* AA0130 80028F90 87A9004A */  lh    $t1, 0x4a($sp)
/* AA0134 80028F94 3C0E8011 */  lui   $t6, %hi(D_801158DC) # $t6, 0x8011
/* AA0138 80028F98 3C0F8011 */  lui   $t7, %hi(D_801158E0) # $t7, 0x8011
/* AA013C 80028F9C AFBF002C */  sw    $ra, 0x2c($sp)
/* AA0140 80028FA0 25EF58E0 */  addiu $t7, %lo(D_801158E0) # addiu $t7, $t7, 0x58e0
/* AA0144 80028FA4 25CE58DC */  addiu $t6, %lo(D_801158DC) # addiu $t6, $t6, 0x58dc
/* AA0148 80028FA8 24080023 */  li    $t0, 35
/* AA014C 80028FAC AFA80020 */  sw    $t0, 0x20($sp)
/* AA0150 80028FB0 AFAE0010 */  sw    $t6, 0x10($sp)
/* AA0154 80028FB4 AFAF0014 */  sw    $t7, 0x14($sp)
/* AA0158 80028FB8 AFB80018 */  sw    $t8, 0x18($sp)
/* AA015C 80028FBC AFB9001C */  sw    $t9, 0x1c($sp)
/* AA0160 80028FC0 0C00A3BD */  jal   func_80028EF4
/* AA0164 80028FC4 AFA90024 */   sw    $t1, 0x24($sp)
/* AA0168 80028FC8 8FBF002C */  lw    $ra, 0x2c($sp)
/* AA016C 80028FCC 27BD0030 */  addiu $sp, $sp, 0x30
/* AA0170 80028FD0 03E00008 */  jr    $ra
/* AA0174 80028FD4 00000000 */   nop   

glabel func_80028FD8
/* AA0178 80028FD8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA017C 80028FDC 8FAE0040 */  lw    $t6, 0x40($sp)
/* AA0180 80028FE0 8FAF0044 */  lw    $t7, 0x44($sp)
/* AA0184 80028FE4 87A9004A */  lh    $t1, 0x4a($sp)
/* AA0188 80028FE8 AFBF002C */  sw    $ra, 0x2c($sp)
/* AA018C 80028FEC 24180064 */  li    $t8, 100
/* AA0190 80028FF0 24190177 */  li    $t9, 375
/* AA0194 80028FF4 24080023 */  li    $t0, 35
/* AA0198 80028FF8 AFA80020 */  sw    $t0, 0x20($sp)
/* AA019C 80028FFC AFB9001C */  sw    $t9, 0x1c($sp)
/* AA01A0 80029000 AFB80018 */  sw    $t8, 0x18($sp)
/* AA01A4 80029004 AFAE0010 */  sw    $t6, 0x10($sp)
/* AA01A8 80029008 AFAF0014 */  sw    $t7, 0x14($sp)
/* AA01AC 8002900C 0C00A3BD */  jal   func_80028EF4
/* AA01B0 80029010 AFA90024 */   sw    $t1, 0x24($sp)
/* AA01B4 80029014 8FBF002C */  lw    $ra, 0x2c($sp)
/* AA01B8 80029018 27BD0030 */  addiu $sp, $sp, 0x30
/* AA01BC 8002901C 03E00008 */  jr    $ra
/* AA01C0 80029020 00000000 */   nop   

glabel func_80029024
/* AA01C4 80029024 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AA01C8 80029028 3C0E8011 */  lui   $t6, %hi(D_801158E4) # $t6, 0x8011
/* AA01CC 8002902C 3C0F8011 */  lui   $t7, %hi(D_801158E8) # $t7, 0x8011
/* AA01D0 80029030 AFBF0024 */  sw    $ra, 0x24($sp)
/* AA01D4 80029034 25EF58E8 */  addiu $t7, %lo(D_801158E8) # addiu $t7, $t7, 0x58e8
/* AA01D8 80029038 25CE58E4 */  addiu $t6, %lo(D_801158E4) # addiu $t6, $t6, 0x58e4
/* AA01DC 8002903C 2418000A */  li    $t8, 10
/* AA01E0 80029040 AFB80018 */  sw    $t8, 0x18($sp)
/* AA01E4 80029044 AFAE0010 */  sw    $t6, 0x10($sp)
/* AA01E8 80029048 0C00A3F6 */  jal   func_80028FD8
/* AA01EC 8002904C AFAF0014 */   sw    $t7, 0x14($sp)
/* AA01F0 80029050 8FBF0024 */  lw    $ra, 0x24($sp)
/* AA01F4 80029054 27BD0028 */  addiu $sp, $sp, 0x28
/* AA01F8 80029058 03E00008 */  jr    $ra
/* AA01FC 8002905C 00000000 */   nop   

glabel func_80029060
/* AA0200 80029060 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AA0204 80029064 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0208 80029068 AFA40050 */  sw    $a0, 0x50($sp)
/* AA020C 8002906C AFA50054 */  sw    $a1, 0x54($sp)
/* AA0210 80029070 AFA7005C */  sw    $a3, 0x5c($sp)
/* AA0214 80029074 00C02825 */  move  $a1, $a2
/* AA0218 80029078 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA021C 8002907C 27A4001C */   addiu $a0, $sp, 0x1c
/* AA0220 80029080 27A40028 */  addiu $a0, $sp, 0x28
/* AA0224 80029084 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0228 80029088 8FA5005C */   lw    $a1, 0x5c($sp)
/* AA022C 8002908C 27A40034 */  addiu $a0, $sp, 0x34
/* AA0230 80029090 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0234 80029094 8FA50060 */   lw    $a1, 0x60($sp)
/* AA0238 80029098 27A40040 */  addiu $a0, $sp, 0x40
/* AA023C 8002909C 0C01E218 */  jal   Color_RGBA8_Copy
/* AA0240 800290A0 8FA50064 */   lw    $a1, 0x64($sp)
/* AA0244 800290A4 27A40044 */  addiu $a0, $sp, 0x44
/* AA0248 800290A8 0C01E218 */  jal   Color_RGBA8_Copy
/* AA024C 800290AC 8FA50068 */   lw    $a1, 0x68($sp)
/* AA0250 800290B0 8FAE0054 */  lw    $t6, 0x54($sp)
/* AA0254 800290B4 87AF006E */  lh    $t7, 0x6e($sp)
/* AA0258 800290B8 87B80072 */  lh    $t8, 0x72($sp)
/* AA025C 800290BC A3A0004C */  sb    $zero, 0x4c($sp)
/* AA0260 800290C0 8FA40050 */  lw    $a0, 0x50($sp)
/* AA0264 800290C4 24050005 */  li    $a1, 5
/* AA0268 800290C8 24060080 */  li    $a2, 128
/* AA026C 800290CC 27A70018 */  addiu $a3, $sp, 0x18
/* AA0270 800290D0 AFAE0018 */  sw    $t6, 0x18($sp)
/* AA0274 800290D4 A7AF0048 */  sh    $t7, 0x48($sp)
/* AA0278 800290D8 0C009DE6 */  jal   func_80027798
/* AA027C 800290DC A7B8004A */   sh    $t8, 0x4a($sp)
/* AA0280 800290E0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0284 800290E4 27BD0050 */  addiu $sp, $sp, 0x50
/* AA0288 800290E8 03E00008 */  jr    $ra
/* AA028C 800290EC 00000000 */   nop   

glabel func_800290F0
/* AA0290 800290F0 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AA0294 800290F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0298 800290F8 AFA40050 */  sw    $a0, 0x50($sp)
/* AA029C 800290FC AFA50054 */  sw    $a1, 0x54($sp)
/* AA02A0 80029100 AFA7005C */  sw    $a3, 0x5c($sp)
/* AA02A4 80029104 00C02825 */  move  $a1, $a2
/* AA02A8 80029108 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA02AC 8002910C 27A4001C */   addiu $a0, $sp, 0x1c
/* AA02B0 80029110 27A40028 */  addiu $a0, $sp, 0x28
/* AA02B4 80029114 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA02B8 80029118 8FA5005C */   lw    $a1, 0x5c($sp)
/* AA02BC 8002911C 27A40034 */  addiu $a0, $sp, 0x34
/* AA02C0 80029120 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA02C4 80029124 8FA50060 */   lw    $a1, 0x60($sp)
/* AA02C8 80029128 27A40040 */  addiu $a0, $sp, 0x40
/* AA02CC 8002912C 0C01E218 */  jal   Color_RGBA8_Copy
/* AA02D0 80029130 8FA50064 */   lw    $a1, 0x64($sp)
/* AA02D4 80029134 27A40044 */  addiu $a0, $sp, 0x44
/* AA02D8 80029138 0C01E218 */  jal   Color_RGBA8_Copy
/* AA02DC 8002913C 8FA50068 */   lw    $a1, 0x68($sp)
/* AA02E0 80029140 8FAE0054 */  lw    $t6, 0x54($sp)
/* AA02E4 80029144 87AF006E */  lh    $t7, 0x6e($sp)
/* AA02E8 80029148 87B80072 */  lh    $t8, 0x72($sp)
/* AA02EC 8002914C 24190001 */  li    $t9, 1
/* AA02F0 80029150 A3B9004C */  sb    $t9, 0x4c($sp)
/* AA02F4 80029154 8FA40050 */  lw    $a0, 0x50($sp)
/* AA02F8 80029158 24050005 */  li    $a1, 5
/* AA02FC 8002915C 24060080 */  li    $a2, 128
/* AA0300 80029160 27A70018 */  addiu $a3, $sp, 0x18
/* AA0304 80029164 AFAE0018 */  sw    $t6, 0x18($sp)
/* AA0308 80029168 A7AF0048 */  sh    $t7, 0x48($sp)
/* AA030C 8002916C 0C009DE6 */  jal   func_80027798
/* AA0310 80029170 A7B8004A */   sh    $t8, 0x4a($sp)
/* AA0314 80029174 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0318 80029178 27BD0050 */  addiu $sp, $sp, 0x50
/* AA031C 8002917C 03E00008 */  jr    $ra
/* AA0320 80029180 00000000 */   nop   

glabel func_80029184
/* AA0324 80029184 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA0328 80029188 3C0E8011 */  lui   $t6, %hi(D_801158EC) # $t6, 0x8011
/* AA032C 8002918C AFBF0024 */  sw    $ra, 0x24($sp)
/* AA0330 80029190 25CE58EC */  addiu $t6, %lo(D_801158EC) # addiu $t6, $t6, 0x58ec
/* AA0334 80029194 8DD80000 */  lw    $t8, ($t6)
/* AA0338 80029198 27A2002C */  addiu $v0, $sp, 0x2c
/* AA033C 8002919C 3C198011 */  lui   $t9, %hi(D_801158F0) # $t9, 0x8011
/* AA0340 800291A0 273958F0 */  addiu $t9, %lo(D_801158F0) # addiu $t9, $t9, 0x58f0
/* AA0344 800291A4 AC580000 */  sw    $t8, ($v0)
/* AA0348 800291A8 8F290000 */  lw    $t1, ($t9)
/* AA034C 800291AC 27A30028 */  addiu $v1, $sp, 0x28
/* AA0350 800291B0 AC690000 */  sw    $t1, ($v1)
/* AA0354 800291B4 8FAA0040 */  lw    $t2, 0x40($sp)
/* AA0358 800291B8 AFA30018 */  sw    $v1, 0x18($sp)
/* AA035C 800291BC AFA20014 */  sw    $v0, 0x14($sp)
/* AA0360 800291C0 0C00A4B7 */  jal   func_800292DC
/* AA0364 800291C4 AFAA0010 */   sw    $t2, 0x10($sp)
/* AA0368 800291C8 8FBF0024 */  lw    $ra, 0x24($sp)
/* AA036C 800291CC 27BD0030 */  addiu $sp, $sp, 0x30
/* AA0370 800291D0 03E00008 */  jr    $ra
/* AA0374 800291D4 00000000 */   nop   

glabel func_800291D8
/* AA0378 800291D8 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AA037C 800291DC 3C0E8011 */  lui   $t6, %hi(D_801158F4) # $t6, 0x8011
/* AA0380 800291E0 3C0F8011 */  lui   $t7, %hi(D_801158F8) # $t7, 0x8011
/* AA0384 800291E4 8DCE58F4 */  lw    $t6, %lo(D_801158F4)($t6)
/* AA0388 800291E8 8DEF58F8 */  lw    $t7, %lo(D_801158F8)($t7)
/* AA038C 800291EC AFBF002C */  sw    $ra, 0x2c($sp)
/* AA0390 800291F0 AFA40040 */  sw    $a0, 0x40($sp)
/* AA0394 800291F4 AFA50044 */  sw    $a1, 0x44($sp)
/* AA0398 800291F8 AFA60048 */  sw    $a2, 0x48($sp)
/* AA039C 800291FC AFA7004C */  sw    $a3, 0x4c($sp)
/* AA03A0 80029200 AFAE003C */  sw    $t6, 0x3c($sp)
/* AA03A4 80029204 0C03F66B */  jal   Math_Rand_ZeroOne
/* AA03A8 80029208 AFAF0038 */   sw    $t7, 0x38($sp)
/* AA03AC 8002920C 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
/* AA03B0 80029210 44812000 */  mtc1  $at, $f4
/* AA03B4 80029214 3C014120 */  li    $at, 0x41200000 # 0.000000
/* AA03B8 80029218 44814000 */  mtc1  $at, $f8
/* AA03BC 8002921C 46040182 */  mul.s $f6, $f0, $f4
/* AA03C0 80029220 93B9003C */  lbu   $t9, 0x3c($sp)
/* AA03C4 80029224 93A9003D */  lbu   $t1, 0x3d($sp)
/* AA03C8 80029228 93AB003E */  lbu   $t3, 0x3e($sp)
/* AA03CC 8002922C 93AD003F */  lbu   $t5, 0x3f($sp)
/* AA03D0 80029230 93AF0038 */  lbu   $t7, 0x38($sp)
/* AA03D4 80029234 8FA40040 */  lw    $a0, 0x40($sp)
/* AA03D8 80029238 46083281 */  sub.s $f10, $f6, $f8
/* AA03DC 8002923C 8FA50044 */  lw    $a1, 0x44($sp)
/* AA03E0 80029240 8FA60048 */  lw    $a2, 0x48($sp)
/* AA03E4 80029244 8FA7004C */  lw    $a3, 0x4c($sp)
/* AA03E8 80029248 4600540D */  trunc.w.s $f16, $f10
/* AA03EC 8002924C 44028000 */  mfc1  $v0, $f16
/* AA03F0 80029250 00000000 */  nop   
/* AA03F4 80029254 03224021 */  addu  $t0, $t9, $v0
/* AA03F8 80029258 93B90039 */  lbu   $t9, 0x39($sp)
/* AA03FC 8002925C 01225021 */  addu  $t2, $t1, $v0
/* AA0400 80029260 01626021 */  addu  $t4, $t3, $v0
/* AA0404 80029264 93A9003A */  lbu   $t1, 0x3a($sp)
/* AA0408 80029268 93AB003B */  lbu   $t3, 0x3b($sp)
/* AA040C 8002926C A3A8003C */  sb    $t0, 0x3c($sp)
/* AA0410 80029270 01A27021 */  addu  $t6, $t5, $v0
/* AA0414 80029274 01E2C021 */  addu  $t8, $t7, $v0
/* AA0418 80029278 A3B80038 */  sb    $t8, 0x38($sp)
/* AA041C 8002927C 03224021 */  addu  $t0, $t9, $v0
/* AA0420 80029280 87B9005A */  lh    $t9, 0x5a($sp)
/* AA0424 80029284 87B80056 */  lh    $t8, 0x56($sp)
/* AA0428 80029288 8FAD0050 */  lw    $t5, 0x50($sp)
/* AA042C 8002928C A3AA003D */  sb    $t2, 0x3d($sp)
/* AA0430 80029290 A3AC003E */  sb    $t4, 0x3e($sp)
/* AA0434 80029294 A3AE003F */  sb    $t6, 0x3f($sp)
/* AA0438 80029298 27AE003C */  addiu $t6, $sp, 0x3c
/* AA043C 8002929C 27AF0038 */  addiu $t7, $sp, 0x38
/* AA0440 800292A0 01225021 */  addu  $t2, $t1, $v0
/* AA0444 800292A4 01626021 */  addu  $t4, $t3, $v0
/* AA0448 800292A8 A3A80039 */  sb    $t0, 0x39($sp)
/* AA044C 800292AC A3AA003A */  sb    $t2, 0x3a($sp)
/* AA0450 800292B0 A3AC003B */  sb    $t4, 0x3b($sp)
/* AA0454 800292B4 AFAF0018 */  sw    $t7, 0x18($sp)
/* AA0458 800292B8 AFAE0014 */  sw    $t6, 0x14($sp)
/* AA045C 800292BC AFB90020 */  sw    $t9, 0x20($sp)
/* AA0460 800292C0 AFB8001C */  sw    $t8, 0x1c($sp)
/* AA0464 800292C4 0C00A418 */  jal   func_80029060
/* AA0468 800292C8 AFAD0010 */   sw    $t5, 0x10($sp)
/* AA046C 800292CC 8FBF002C */  lw    $ra, 0x2c($sp)
/* AA0470 800292D0 27BD0040 */  addiu $sp, $sp, 0x40
/* AA0474 800292D4 03E00008 */  jr    $ra
/* AA0478 800292D8 00000000 */   nop   

glabel func_800292DC
/* AA047C 800292DC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA0480 800292E0 8FAE0040 */  lw    $t6, 0x40($sp)
/* AA0484 800292E4 8FAF0044 */  lw    $t7, 0x44($sp)
/* AA0488 800292E8 8FB80048 */  lw    $t8, 0x48($sp)
/* AA048C 800292EC AFBF002C */  sw    $ra, 0x2c($sp)
/* AA0490 800292F0 24190064 */  li    $t9, 100
/* AA0494 800292F4 24080005 */  li    $t0, 5
/* AA0498 800292F8 AFA80020 */  sw    $t0, 0x20($sp)
/* AA049C 800292FC AFB9001C */  sw    $t9, 0x1c($sp)
/* AA04A0 80029300 AFAE0010 */  sw    $t6, 0x10($sp)
/* AA04A4 80029304 AFAF0014 */  sw    $t7, 0x14($sp)
/* AA04A8 80029308 0C00A418 */  jal   func_80029060
/* AA04AC 8002930C AFB80018 */   sw    $t8, 0x18($sp)
/* AA04B0 80029310 8FBF002C */  lw    $ra, 0x2c($sp)
/* AA04B4 80029314 27BD0030 */  addiu $sp, $sp, 0x30
/* AA04B8 80029318 03E00008 */  jr    $ra
/* AA04BC 8002931C 00000000 */   nop   

glabel func_80029320
/* AA04C0 80029320 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AA04C4 80029324 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA04C8 80029328 AFA40048 */  sw    $a0, 0x48($sp)
/* AA04CC 8002932C AFA60050 */  sw    $a2, 0x50($sp)
/* AA04D0 80029330 AFA70054 */  sw    $a3, 0x54($sp)
/* AA04D4 80029334 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA04D8 80029338 27A40018 */   addiu $a0, $sp, 0x18
/* AA04DC 8002933C 27A40024 */  addiu $a0, $sp, 0x24
/* AA04E0 80029340 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA04E4 80029344 8FA50050 */   lw    $a1, 0x50($sp)
/* AA04E8 80029348 27A40030 */  addiu $a0, $sp, 0x30
/* AA04EC 8002934C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA04F0 80029350 8FA50054 */   lw    $a1, 0x54($sp)
/* AA04F4 80029354 87AE005A */  lh    $t6, 0x5a($sp)
/* AA04F8 80029358 87AF005E */  lh    $t7, 0x5e($sp)
/* AA04FC 8002935C 87B80062 */  lh    $t8, 0x62($sp)
/* AA0500 80029360 87B90066 */  lh    $t9, 0x66($sp)
/* AA0504 80029364 8FA80068 */  lw    $t0, 0x68($sp)
/* AA0508 80029368 8FA40048 */  lw    $a0, 0x48($sp)
/* AA050C 8002936C 24050006 */  li    $a1, 6
/* AA0510 80029370 24060080 */  li    $a2, 128
/* AA0514 80029374 27A70018 */  addiu $a3, $sp, 0x18
/* AA0518 80029378 A7AE003C */  sh    $t6, 0x3c($sp)
/* AA051C 8002937C A7AF003E */  sh    $t7, 0x3e($sp)
/* AA0520 80029380 A7B80040 */  sh    $t8, 0x40($sp)
/* AA0524 80029384 A7B90042 */  sh    $t9, 0x42($sp)
/* AA0528 80029388 0C009DE6 */  jal   func_80027798
/* AA052C 8002938C AFA80044 */   sw    $t0, 0x44($sp)
/* AA0530 80029390 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0534 80029394 27BD0048 */  addiu $sp, $sp, 0x48
/* AA0538 80029398 03E00008 */  jr    $ra
/* AA053C 8002939C 00000000 */   nop   

glabel func_800293A0
/* AA0540 800293A0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA0544 800293A4 87B80042 */  lh    $t8, 0x42($sp)
/* AA0548 800293A8 87B90046 */  lh    $t9, 0x46($sp)
/* AA054C 800293AC AFBF002C */  sw    $ra, 0x2c($sp)
/* AA0550 800293B0 240E0064 */  li    $t6, 100
/* AA0554 800293B4 240F0023 */  li    $t7, 35
/* AA0558 800293B8 24080008 */  li    $t0, 8
/* AA055C 800293BC AFA80020 */  sw    $t0, 0x20($sp)
/* AA0560 800293C0 AFAF0014 */  sw    $t7, 0x14($sp)
/* AA0564 800293C4 AFAE0010 */  sw    $t6, 0x10($sp)
/* AA0568 800293C8 AFB80018 */  sw    $t8, 0x18($sp)
/* AA056C 800293CC 0C00A4C8 */  jal   func_80029320
/* AA0570 800293D0 AFB9001C */   sw    $t9, 0x1c($sp)
/* AA0574 800293D4 8FBF002C */  lw    $ra, 0x2c($sp)
/* AA0578 800293D8 27BD0030 */  addiu $sp, $sp, 0x30
/* AA057C 800293DC 03E00008 */  jr    $ra
/* AA0580 800293E0 00000000 */   nop   

glabel func_800293E4
/* AA0584 800293E4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AA0588 800293E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA058C 800293EC AFA40038 */  sw    $a0, 0x38($sp)
/* AA0590 800293F0 AFA60040 */  sw    $a2, 0x40($sp)
/* AA0594 800293F4 AFA70044 */  sw    $a3, 0x44($sp)
/* AA0598 800293F8 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA059C 800293FC 27A4001C */   addiu $a0, $sp, 0x1c
/* AA05A0 80029400 C7A40040 */  lwc1  $f4, 0x40($sp)
/* AA05A4 80029404 C7A60044 */  lwc1  $f6, 0x44($sp)
/* AA05A8 80029408 C7A80048 */  lwc1  $f8, 0x48($sp)
/* AA05AC 8002940C C7AA004C */  lwc1  $f10, 0x4c($sp)
/* AA05B0 80029410 8FA40038 */  lw    $a0, 0x38($sp)
/* AA05B4 80029414 24050007 */  li    $a1, 7
/* AA05B8 80029418 24060080 */  li    $a2, 128
/* AA05BC 8002941C 27A7001C */  addiu $a3, $sp, 0x1c
/* AA05C0 80029420 E7A40028 */  swc1  $f4, 0x28($sp)
/* AA05C4 80029424 E7A6002C */  swc1  $f6, 0x2c($sp)
/* AA05C8 80029428 E7A80030 */  swc1  $f8, 0x30($sp)
/* AA05CC 8002942C 0C009DE6 */  jal   func_80027798
/* AA05D0 80029430 E7AA0034 */   swc1  $f10, 0x34($sp)
/* AA05D4 80029434 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA05D8 80029438 27BD0038 */  addiu $sp, $sp, 0x38
/* AA05DC 8002943C 03E00008 */  jr    $ra
/* AA05E0 80029440 00000000 */   nop   

glabel func_80029444
/* AA05E4 80029444 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA05E8 80029448 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA05EC 8002944C AFA40030 */  sw    $a0, 0x30($sp)
/* AA05F0 80029450 AFA60038 */  sw    $a2, 0x38($sp)
/* AA05F4 80029454 AFA7003C */  sw    $a3, 0x3c($sp)
/* AA05F8 80029458 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA05FC 8002945C 27A4001C */   addiu $a0, $sp, 0x1c
/* AA0600 80029460 87AE003A */  lh    $t6, 0x3a($sp)
/* AA0604 80029464 87AF003E */  lh    $t7, 0x3e($sp)
/* AA0608 80029468 87B80042 */  lh    $t8, 0x42($sp)
/* AA060C 8002946C 8FA40030 */  lw    $a0, 0x30($sp)
/* AA0610 80029470 24050009 */  li    $a1, 9
/* AA0614 80029474 24060080 */  li    $a2, 128
/* AA0618 80029478 27A7001C */  addiu $a3, $sp, 0x1c
/* AA061C 8002947C A7AE0028 */  sh    $t6, 0x28($sp)
/* AA0620 80029480 A7AF002A */  sh    $t7, 0x2a($sp)
/* AA0624 80029484 0C009DE6 */  jal   func_80027798
/* AA0628 80029488 A7B8002C */   sh    $t8, 0x2c($sp)
/* AA062C 8002948C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0630 80029490 27BD0030 */  addiu $sp, $sp, 0x30
/* AA0634 80029494 03E00008 */  jr    $ra
/* AA0638 80029498 00000000 */   nop   

glabel func_8002949C
/* AA063C 8002949C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA0640 800294A0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0644 800294A4 AFA40030 */  sw    $a0, 0x30($sp)
/* AA0648 800294A8 AFA60038 */  sw    $a2, 0x38($sp)
/* AA064C 800294AC AFA7003C */  sw    $a3, 0x3c($sp)
/* AA0650 800294B0 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0654 800294B4 27A40018 */   addiu $a0, $sp, 0x18
/* AA0658 800294B8 8FA20038 */  lw    $v0, 0x38($sp)
/* AA065C 800294BC 87AE0042 */  lh    $t6, 0x42($sp)
/* AA0660 800294C0 87AF0046 */  lh    $t7, 0x46($sp)
/* AA0664 800294C4 2405000A */  li    $a1, 10
/* AA0668 800294C8 A3AE0024 */  sb    $t6, 0x24($sp)
/* AA066C 800294CC 1040000F */  beqz  $v0, .L8002950C
/* AA0670 800294D0 A7AF0026 */   sh    $t7, 0x26($sp)
/* AA0674 800294D4 88480000 */  lwl   $t0, ($v0)
/* AA0678 800294D8 98480003 */  lwr   $t0, 3($v0)
/* AA067C 800294DC 27B80028 */  addiu $t8, $sp, 0x28
/* AA0680 800294E0 27A9002C */  addiu $t1, $sp, 0x2c
/* AA0684 800294E4 AB080000 */  swl   $t0, ($t8)
/* AA0688 800294E8 BB080003 */  swr   $t0, 3($t8)
/* AA068C 800294EC 8FAA003C */  lw    $t2, 0x3c($sp)
/* AA0690 800294F0 240D0001 */  li    $t5, 1
/* AA0694 800294F4 894C0000 */  lwl   $t4, ($t2)
/* AA0698 800294F8 994C0003 */  lwr   $t4, 3($t2)
/* AA069C 800294FC A92C0000 */  swl   $t4, ($t1)
/* AA06A0 80029500 B92C0003 */  swr   $t4, 3($t1)
/* AA06A4 80029504 10000002 */  b     .L80029510
/* AA06A8 80029508 A3AD0025 */   sb    $t5, 0x25($sp)
.L8002950C:
/* AA06AC 8002950C A3A00025 */  sb    $zero, 0x25($sp)
.L80029510:
/* AA06B0 80029510 8FA40030 */  lw    $a0, 0x30($sp)
/* AA06B4 80029514 24060080 */  li    $a2, 128
/* AA06B8 80029518 0C009DE6 */  jal   func_80027798
/* AA06BC 8002951C 27A70018 */   addiu $a3, $sp, 0x18
/* AA06C0 80029520 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA06C4 80029524 27BD0030 */  addiu $sp, $sp, 0x30
/* AA06C8 80029528 03E00008 */  jr    $ra
/* AA06CC 8002952C 00000000 */   nop   

glabel func_80029530
/* AA06D0 80029530 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AA06D4 80029534 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA06D8 80029538 AFA40028 */  sw    $a0, 0x28($sp)
/* AA06DC 8002953C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA06E0 80029540 27A4001C */   addiu $a0, $sp, 0x1c
/* AA06E4 80029544 8FA40028 */  lw    $a0, 0x28($sp)
/* AA06E8 80029548 2405000B */  li    $a1, 11
/* AA06EC 8002954C 24060080 */  li    $a2, 128
/* AA06F0 80029550 0C009DE6 */  jal   func_80027798
/* AA06F4 80029554 27A7001C */   addiu $a3, $sp, 0x1c
/* AA06F8 80029558 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA06FC 8002955C 27BD0028 */  addiu $sp, $sp, 0x28
/* AA0700 80029560 03E00008 */  jr    $ra
/* AA0704 80029564 00000000 */   nop   

glabel func_80029568
/* AA0708 80029568 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AA070C 8002956C AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0710 80029570 AFA40028 */  sw    $a0, 0x28($sp)
/* AA0714 80029574 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0718 80029578 27A4001C */   addiu $a0, $sp, 0x1c
/* AA071C 8002957C 8FA40028 */  lw    $a0, 0x28($sp)
/* AA0720 80029580 2405000C */  li    $a1, 12
/* AA0724 80029584 24060080 */  li    $a2, 128
/* AA0728 80029588 0C009DE6 */  jal   func_80027798
/* AA072C 8002958C 27A7001C */   addiu $a3, $sp, 0x1c
/* AA0730 80029590 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0734 80029594 27BD0028 */  addiu $sp, $sp, 0x28
/* AA0738 80029598 03E00008 */  jr    $ra
/* AA073C 8002959C 00000000 */   nop   

glabel func_800295A0
/* AA0740 800295A0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AA0744 800295A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0748 800295A8 AFA40038 */  sw    $a0, 0x38($sp)
/* AA074C 800295AC AFA60040 */  sw    $a2, 0x40($sp)
/* AA0750 800295B0 AFA70044 */  sw    $a3, 0x44($sp)
/* AA0754 800295B4 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0758 800295B8 27A4001C */   addiu $a0, $sp, 0x1c
/* AA075C 800295BC 27A40028 */  addiu $a0, $sp, 0x28
/* AA0760 800295C0 0C01E218 */  jal   Color_RGBA8_Copy
/* AA0764 800295C4 8FA50040 */   lw    $a1, 0x40($sp)
/* AA0768 800295C8 27A4002C */  addiu $a0, $sp, 0x2c
/* AA076C 800295CC 0C01E218 */  jal   Color_RGBA8_Copy
/* AA0770 800295D0 8FA50044 */   lw    $a1, 0x44($sp)
/* AA0774 800295D4 87AE004A */  lh    $t6, 0x4a($sp)
/* AA0778 800295D8 87AF004E */  lh    $t7, 0x4e($sp)
/* AA077C 800295DC 87B80052 */  lh    $t8, 0x52($sp)
/* AA0780 800295E0 87B90056 */  lh    $t9, 0x56($sp)
/* AA0784 800295E4 8FA40038 */  lw    $a0, 0x38($sp)
/* AA0788 800295E8 2405000D */  li    $a1, 13
/* AA078C 800295EC 24060080 */  li    $a2, 128
/* AA0790 800295F0 27A7001C */  addiu $a3, $sp, 0x1c
/* AA0794 800295F4 A7AE0030 */  sh    $t6, 0x30($sp)
/* AA0798 800295F8 A7AF0032 */  sh    $t7, 0x32($sp)
/* AA079C 800295FC A7B80034 */  sh    $t8, 0x34($sp)
/* AA07A0 80029600 0C009DE6 */  jal   func_80027798
/* AA07A4 80029604 A7B90036 */   sh    $t9, 0x36($sp)
/* AA07A8 80029608 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA07AC 8002960C 27BD0038 */  addiu $sp, $sp, 0x38
/* AA07B0 80029610 03E00008 */  jr    $ra
/* AA07B4 80029614 00000000 */   nop   

glabel func_80029618
/* AA07B8 80029618 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AA07BC 8002961C AFBF0014 */  sw    $ra, 0x14($sp)
/* AA07C0 80029620 AFA40050 */  sw    $a0, 0x50($sp)
/* AA07C4 80029624 AFA60058 */  sw    $a2, 0x58($sp)
/* AA07C8 80029628 AFA7005C */  sw    $a3, 0x5c($sp)
/* AA07CC 8002962C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA07D0 80029630 27A40018 */   addiu $a0, $sp, 0x18
/* AA07D4 80029634 27A40024 */  addiu $a0, $sp, 0x24
/* AA07D8 80029638 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA07DC 8002963C 8FA50058 */   lw    $a1, 0x58($sp)
/* AA07E0 80029640 27A40030 */  addiu $a0, $sp, 0x30
/* AA07E4 80029644 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA07E8 80029648 8FA5005C */   lw    $a1, 0x5c($sp)
/* AA07EC 8002964C 87AE006A */  lh    $t6, 0x6a($sp)
/* AA07F0 80029650 87AF0062 */  lh    $t7, 0x62($sp)
/* AA07F4 80029654 87B80066 */  lh    $t8, 0x66($sp)
/* AA07F8 80029658 87B9006E */  lh    $t9, 0x6e($sp)
/* AA07FC 8002965C A3A0004C */  sb    $zero, 0x4c($sp)
/* AA0800 80029660 8FA40050 */  lw    $a0, 0x50($sp)
/* AA0804 80029664 2405000E */  li    $a1, 14
/* AA0808 80029668 24060080 */  li    $a2, 128
/* AA080C 8002966C 27A70018 */  addiu $a3, $sp, 0x18
/* AA0810 80029670 A7AE0048 */  sh    $t6, 0x48($sp)
/* AA0814 80029674 A7AF0044 */  sh    $t7, 0x44($sp)
/* AA0818 80029678 A7B80046 */  sh    $t8, 0x46($sp)
/* AA081C 8002967C 0C009DE6 */  jal   func_80027798
/* AA0820 80029680 A7B9004A */   sh    $t9, 0x4a($sp)
/* AA0824 80029684 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0828 80029688 27BD0050 */  addiu $sp, $sp, 0x50
/* AA082C 8002968C 03E00008 */  jr    $ra
/* AA0830 80029690 00000000 */   nop   

glabel func_80029694
/* AA0834 80029694 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AA0838 80029698 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA083C 8002969C AFA40050 */  sw    $a0, 0x50($sp)
/* AA0840 800296A0 AFA60058 */  sw    $a2, 0x58($sp)
/* AA0844 800296A4 AFA7005C */  sw    $a3, 0x5c($sp)
/* AA0848 800296A8 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA084C 800296AC 27A40018 */   addiu $a0, $sp, 0x18
/* AA0850 800296B0 27A40024 */  addiu $a0, $sp, 0x24
/* AA0854 800296B4 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0858 800296B8 8FA50058 */   lw    $a1, 0x58($sp)
/* AA085C 800296BC 27A40030 */  addiu $a0, $sp, 0x30
/* AA0860 800296C0 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0864 800296C4 8FA5005C */   lw    $a1, 0x5c($sp)
/* AA0868 800296C8 27A4003C */  addiu $a0, $sp, 0x3c
/* AA086C 800296CC 0C01E218 */  jal   Color_RGBA8_Copy
/* AA0870 800296D0 8FA50060 */   lw    $a1, 0x60($sp)
/* AA0874 800296D4 27A40040 */  addiu $a0, $sp, 0x40
/* AA0878 800296D8 0C01E218 */  jal   Color_RGBA8_Copy
/* AA087C 800296DC 8FA50064 */   lw    $a1, 0x64($sp)
/* AA0880 800296E0 87AE006A */  lh    $t6, 0x6a($sp)
/* AA0884 800296E4 87AF006E */  lh    $t7, 0x6e($sp)
/* AA0888 800296E8 87B80072 */  lh    $t8, 0x72($sp)
/* AA088C 800296EC 24190001 */  li    $t9, 1
/* AA0890 800296F0 A3B9004C */  sb    $t9, 0x4c($sp)
/* AA0894 800296F4 8FA40050 */  lw    $a0, 0x50($sp)
/* AA0898 800296F8 2405000E */  li    $a1, 14
/* AA089C 800296FC 24060080 */  li    $a2, 128
/* AA08A0 80029700 27A70018 */  addiu $a3, $sp, 0x18
/* AA08A4 80029704 A7AE0044 */  sh    $t6, 0x44($sp)
/* AA08A8 80029708 A7AF0046 */  sh    $t7, 0x46($sp)
/* AA08AC 8002970C 0C009DE6 */  jal   func_80027798
/* AA08B0 80029710 A7B8004A */   sh    $t8, 0x4a($sp)
/* AA08B4 80029714 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA08B8 80029718 27BD0050 */  addiu $sp, $sp, 0x50
/* AA08BC 8002971C 03E00008 */  jr    $ra
/* AA08C0 80029720 00000000 */   nop   

glabel func_80029724
/* AA08C4 80029724 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AA08C8 80029728 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA08CC 8002972C AFA40048 */  sw    $a0, 0x48($sp)
/* AA08D0 80029730 AFA60050 */  sw    $a2, 0x50($sp)
/* AA08D4 80029734 AFA70054 */  sw    $a3, 0x54($sp)
/* AA08D8 80029738 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA08DC 8002973C 27A40018 */   addiu $a0, $sp, 0x18
/* AA08E0 80029740 27A40024 */  addiu $a0, $sp, 0x24
/* AA08E4 80029744 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA08E8 80029748 8FA50050 */   lw    $a1, 0x50($sp)
/* AA08EC 8002974C 27A40030 */  addiu $a0, $sp, 0x30
/* AA08F0 80029750 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA08F4 80029754 8FA50054 */   lw    $a1, 0x54($sp)
/* AA08F8 80029758 8FAE0068 */  lw    $t6, 0x68($sp)
/* AA08FC 8002975C 87AF005A */  lh    $t7, 0x5a($sp)
/* AA0900 80029760 87B8005E */  lh    $t8, 0x5e($sp)
/* AA0904 80029764 87B90062 */  lh    $t9, 0x62($sp)
/* AA0908 80029768 87A80066 */  lh    $t0, 0x66($sp)
/* AA090C 8002976C 8FA40048 */  lw    $a0, 0x48($sp)
/* AA0910 80029770 2405000F */  li    $a1, 15
/* AA0914 80029774 24060080 */  li    $a2, 128
/* AA0918 80029778 27A70018 */  addiu $a3, $sp, 0x18
/* AA091C 8002977C AFAE003C */  sw    $t6, 0x3c($sp)
/* AA0920 80029780 A7AF0040 */  sh    $t7, 0x40($sp)
/* AA0924 80029784 A7B80042 */  sh    $t8, 0x42($sp)
/* AA0928 80029788 A7B90044 */  sh    $t9, 0x44($sp)
/* AA092C 8002978C 0C009DE6 */  jal   func_80027798
/* AA0930 80029790 A7A80046 */   sh    $t0, 0x46($sp)
/* AA0934 80029794 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0938 80029798 27BD0048 */  addiu $sp, $sp, 0x48
/* AA093C 8002979C 03E00008 */  jr    $ra
/* AA0940 800297A0 00000000 */   nop   

glabel func_800297a4
/* AA0944 800297A4 27BDFF78 */  addiu $sp, $sp, -0x88
/* AA0948 800297A8 F7B60038 */  sdc1  $f22, 0x38($sp)
/* AA094C 800297AC 3C018013 */  lui   $at, %hi(D_80135C4C)
/* AA0950 800297B0 4486B000 */  mtc1  $a2, $f22
/* AA0954 800297B4 C4245C4C */  lwc1  $f4, %lo(D_80135C4C)($at)
/* AA0958 800297B8 AFB10044 */  sw    $s1, 0x44($sp)
/* AA095C 800297BC 87B100A2 */  lh    $s1, 0xa2($sp)
/* AA0960 800297C0 46162182 */  mul.s $f6, $f4, $f22
/* AA0964 800297C4 44800000 */  mtc1  $zero, $f0
/* AA0968 800297C8 AFB60058 */  sw    $s6, 0x58($sp)
/* AA096C 800297CC 0007B400 */  sll   $s6, $a3, 0x10
/* AA0970 800297D0 AFB50054 */  sw    $s5, 0x54($sp)
/* AA0974 800297D4 AFB40050 */  sw    $s4, 0x50($sp)
/* AA0978 800297D8 AFB00040 */  sw    $s0, 0x40($sp)
/* AA097C 800297DC 0080A025 */  move  $s4, $a0
/* AA0980 800297E0 00A0A825 */  move  $s5, $a1
/* AA0984 800297E4 0016B403 */  sra   $s6, $s6, 0x10
/* AA0988 800297E8 AFBF0064 */  sw    $ra, 0x64($sp)
/* AA098C 800297EC AFBE0060 */  sw    $fp, 0x60($sp)
/* AA0990 800297F0 AFB7005C */  sw    $s7, 0x5c($sp)
/* AA0994 800297F4 AFB3004C */  sw    $s3, 0x4c($sp)
/* AA0998 800297F8 AFB20048 */  sw    $s2, 0x48($sp)
/* AA099C 800297FC F7B40030 */  sdc1  $f20, 0x30($sp)
/* AA09A0 80029800 AFA70094 */  sw    $a3, 0x94($sp)
/* AA09A4 80029804 E7A60070 */  swc1  $f6, 0x70($sp)
/* AA09A8 80029808 00008025 */  move  $s0, $zero
/* AA09AC 8002980C E7A00074 */  swc1  $f0, 0x74($sp)
/* AA09B0 80029810 1A200028 */  blez  $s1, .L800298B4
/* AA09B4 80029814 E7A0006C */   swc1  $f0, 0x6c($sp)
/* AA09B8 80029818 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AA09BC 8002981C 4481A000 */  mtc1  $at, $f20
/* AA09C0 80029820 87BE00AA */  lh    $fp, 0xaa($sp)
/* AA09C4 80029824 87B700A6 */  lh    $s7, 0xa6($sp)
/* AA09C8 80029828 87B3009E */  lh    $s3, 0x9e($sp)
/* AA09CC 8002982C 87B2009A */  lh    $s2, 0x9a($sp)
.L80029830:
/* AA09D0 80029830 0C03F66B */  jal   Math_Rand_ZeroOne
/* AA09D4 80029834 00000000 */   nop   
/* AA09D8 80029838 46140201 */  sub.s $f8, $f0, $f20
/* AA09DC 8002983C 46164282 */  mul.s $f10, $f8, $f22
/* AA09E0 80029840 0C03F66B */  jal   Math_Rand_ZeroOne
/* AA09E4 80029844 E7AA0078 */   swc1  $f10, 0x78($sp)
/* AA09E8 80029848 46140401 */  sub.s $f16, $f0, $f20
/* AA09EC 8002984C 46168482 */  mul.s $f18, $f16, $f22
/* AA09F0 80029850 0C03F66B */  jal   Math_Rand_ZeroOne
/* AA09F4 80029854 E7B20080 */   swc1  $f18, 0x80($sp)
/* AA09F8 80029858 46140102 */  mul.s $f4, $f0, $f20
/* AA09FC 8002985C 00122400 */  sll   $a0, $s2, 0x10
/* AA0A00 80029860 00132C00 */  sll   $a1, $s3, 0x10
/* AA0A04 80029864 00052C03 */  sra   $a1, $a1, 0x10
/* AA0A08 80029868 00042403 */  sra   $a0, $a0, 0x10
/* AA0A0C 8002986C 46142180 */  add.s $f6, $f4, $f20
/* AA0A10 80029870 46163202 */  mul.s $f8, $f6, $f22
/* AA0A14 80029874 0C01DF64 */  jal   Math_Rand_S16Offset
/* AA0A18 80029878 E7A8007C */   swc1  $f8, 0x7c($sp)
/* AA0A1C 8002987C 8FAE00AC */  lw    $t6, 0xac($sp)
/* AA0A20 80029880 02802025 */  move  $a0, $s4
/* AA0A24 80029884 02A02825 */  move  $a1, $s5
/* AA0A28 80029888 27A60078 */  addiu $a2, $sp, 0x78
/* AA0A2C 8002988C 27A7006C */  addiu $a3, $sp, 0x6c
/* AA0A30 80029890 AFB60010 */  sw    $s6, 0x10($sp)
/* AA0A34 80029894 AFA20014 */  sw    $v0, 0x14($sp)
/* AA0A38 80029898 AFB70018 */  sw    $s7, 0x18($sp)
/* AA0A3C 8002989C AFBE001C */  sw    $fp, 0x1c($sp)
/* AA0A40 800298A0 0C00A5C9 */  jal   func_80029724
/* AA0A44 800298A4 AFAE0020 */   sw    $t6, 0x20($sp)
/* AA0A48 800298A8 26100001 */  addiu $s0, $s0, 1
/* AA0A4C 800298AC 1611FFE0 */  bne   $s0, $s1, .L80029830
/* AA0A50 800298B0 00000000 */   nop   
.L800298B4:
/* AA0A54 800298B4 8FBF0064 */  lw    $ra, 0x64($sp)
/* AA0A58 800298B8 D7B40030 */  ldc1  $f20, 0x30($sp)
/* AA0A5C 800298BC D7B60038 */  ldc1  $f22, 0x38($sp)
/* AA0A60 800298C0 8FB00040 */  lw    $s0, 0x40($sp)
/* AA0A64 800298C4 8FB10044 */  lw    $s1, 0x44($sp)
/* AA0A68 800298C8 8FB20048 */  lw    $s2, 0x48($sp)
/* AA0A6C 800298CC 8FB3004C */  lw    $s3, 0x4c($sp)
/* AA0A70 800298D0 8FB40050 */  lw    $s4, 0x50($sp)
/* AA0A74 800298D4 8FB50054 */  lw    $s5, 0x54($sp)
/* AA0A78 800298D8 8FB60058 */  lw    $s6, 0x58($sp)
/* AA0A7C 800298DC 8FB7005C */  lw    $s7, 0x5c($sp)
/* AA0A80 800298E0 8FBE0060 */  lw    $fp, 0x60($sp)
/* AA0A84 800298E4 03E00008 */  jr    $ra
/* AA0A88 800298E8 27BD0088 */   addiu $sp, $sp, 0x88

glabel func_800298EC
/* AA0A8C 800298EC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AA0A90 800298F0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0A94 800298F4 AFA5002C */  sw    $a1, 0x2c($sp)
/* AA0A98 800298F8 AFA60030 */  sw    $a2, 0x30($sp)
/* AA0A9C 800298FC 8CB80000 */  lw    $t8, ($a1)
/* AA0AA0 80029900 27A70018 */  addiu $a3, $sp, 0x18
/* AA0AA4 80029904 24060080 */  li    $a2, 128
/* AA0AA8 80029908 ACF80000 */  sw    $t8, ($a3)
/* AA0AAC 8002990C 8CAF0004 */  lw    $t7, 4($a1)
/* AA0AB0 80029910 ACEF0004 */  sw    $t7, 4($a3)
/* AA0AB4 80029914 8CB80008 */  lw    $t8, 8($a1)
/* AA0AB8 80029918 24050010 */  li    $a1, 16
/* AA0ABC 8002991C ACF80008 */  sw    $t8, 8($a3)
/* AA0AC0 80029920 87B90032 */  lh    $t9, 0x32($sp)
/* AA0AC4 80029924 0C009DE6 */  jal   func_80027798
/* AA0AC8 80029928 A7B90024 */   sh    $t9, 0x24($sp)
/* AA0ACC 8002992C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0AD0 80029930 27BD0028 */  addiu $sp, $sp, 0x28
/* AA0AD4 80029934 03E00008 */  jr    $ra
/* AA0AD8 80029938 00000000 */   nop   

glabel func_8002993C
/* AA0ADC 8002993C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AA0AE0 80029940 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0AE4 80029944 AFA40048 */  sw    $a0, 0x48($sp)
/* AA0AE8 80029948 AFA60050 */  sw    $a2, 0x50($sp)
/* AA0AEC 8002994C AFA70054 */  sw    $a3, 0x54($sp)
/* AA0AF0 80029950 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0AF4 80029954 27A4001C */   addiu $a0, $sp, 0x1c
/* AA0AF8 80029958 27A40028 */  addiu $a0, $sp, 0x28
/* AA0AFC 8002995C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0B00 80029960 8FA50050 */   lw    $a1, 0x50($sp)
/* AA0B04 80029964 27A40034 */  addiu $a0, $sp, 0x34
/* AA0B08 80029968 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0B0C 8002996C 8FA50054 */   lw    $a1, 0x54($sp)
/* AA0B10 80029970 87AE005A */  lh    $t6, 0x5a($sp)
/* AA0B14 80029974 87AF005E */  lh    $t7, 0x5e($sp)
/* AA0B18 80029978 87B80062 */  lh    $t8, 0x62($sp)
/* AA0B1C 8002997C 8FA40048 */  lw    $a0, 0x48($sp)
/* AA0B20 80029980 24050011 */  li    $a1, 17
/* AA0B24 80029984 24060080 */  li    $a2, 128
/* AA0B28 80029988 27A7001C */  addiu $a3, $sp, 0x1c
/* AA0B2C 8002998C A7AE0040 */  sh    $t6, 0x40($sp)
/* AA0B30 80029990 A7AF0042 */  sh    $t7, 0x42($sp)
/* AA0B34 80029994 0C009DE6 */  jal   func_80027798
/* AA0B38 80029998 A7B80044 */   sh    $t8, 0x44($sp)
/* AA0B3C 8002999C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0B40 800299A0 27BD0048 */  addiu $sp, $sp, 0x48
/* AA0B44 800299A4 03E00008 */  jr    $ra
/* AA0B48 800299A8 00000000 */   nop   

glabel func_800299AC
/* AA0B4C 800299AC 27BDFF88 */  addiu $sp, $sp, -0x78
/* AA0B50 800299B0 3C0F8011 */  lui   $t7, %hi(D_801158FC) # $t7, 0x8011
/* AA0B54 800299B4 AFBF0044 */  sw    $ra, 0x44($sp)
/* AA0B58 800299B8 AFB60040 */  sw    $s6, 0x40($sp)
/* AA0B5C 800299BC AFB5003C */  sw    $s5, 0x3c($sp)
/* AA0B60 800299C0 AFB40038 */  sw    $s4, 0x38($sp)
/* AA0B64 800299C4 AFB30034 */  sw    $s3, 0x34($sp)
/* AA0B68 800299C8 AFB20030 */  sw    $s2, 0x30($sp)
/* AA0B6C 800299CC AFB1002C */  sw    $s1, 0x2c($sp)
/* AA0B70 800299D0 AFB00028 */  sw    $s0, 0x28($sp)
/* AA0B74 800299D4 25EF58FC */  addiu $t7, %lo(D_801158FC) # addiu $t7, $t7, 0x58fc
/* AA0B78 800299D8 8DF90000 */  lw    $t9, ($t7)
/* AA0B7C 800299DC 27AE0068 */  addiu $t6, $sp, 0x68
/* AA0B80 800299E0 8DF80004 */  lw    $t8, 4($t7)
/* AA0B84 800299E4 ADD90000 */  sw    $t9, ($t6)
/* AA0B88 800299E8 8DF90008 */  lw    $t9, 8($t7)
/* AA0B8C 800299EC 3C098011 */  lui   $t1, %hi(D_80115908) # $t1, 0x8011
/* AA0B90 800299F0 25295908 */  addiu $t1, %lo(D_80115908) # addiu $t1, $t1, 0x5908
/* AA0B94 800299F4 ADD80004 */  sw    $t8, 4($t6)
/* AA0B98 800299F8 ADD90008 */  sw    $t9, 8($t6)
/* AA0B9C 800299FC 8D2B0000 */  lw    $t3, ($t1)
/* AA0BA0 80029A00 27A8005C */  addiu $t0, $sp, 0x5c
/* AA0BA4 80029A04 8D2A0004 */  lw    $t2, 4($t1)
/* AA0BA8 80029A08 AD0B0000 */  sw    $t3, ($t0)
/* AA0BAC 80029A0C 8D2B0008 */  lw    $t3, 8($t1)
/* AA0BB0 80029A10 3C0C8011 */  lui   $t4, %hi(D_80115914) # $t4, 0x8011
/* AA0BB4 80029A14 258C5914 */  addiu $t4, %lo(D_80115914) # addiu $t4, $t4, 0x5914
/* AA0BB8 80029A18 AD0A0004 */  sw    $t2, 4($t0)
/* AA0BBC 80029A1C AD0B0008 */  sw    $t3, 8($t0)
/* AA0BC0 80029A20 8D8E0000 */  lw    $t6, ($t4)
/* AA0BC4 80029A24 27B20050 */  addiu $s2, $sp, 0x50
/* AA0BC8 80029A28 0080A025 */  move  $s4, $a0
/* AA0BCC 80029A2C AE4E0000 */  sw    $t6, ($s2)
/* AA0BD0 80029A30 8D8D0004 */  lw    $t5, 4($t4)
/* AA0BD4 80029A34 00A0A825 */  move  $s5, $a1
/* AA0BD8 80029A38 AE4D0004 */  sw    $t5, 4($s2)
/* AA0BDC 80029A3C 8D8E0008 */  lw    $t6, 8($t4)
/* AA0BE0 80029A40 0C03F66B */  jal   Math_Rand_ZeroOne
/* AA0BE4 80029A44 AE4E0008 */   sw    $t6, 8($s2)
/* AA0BE8 80029A48 3C018013 */  lui   $at, %hi(D_80135C50)
/* AA0BEC 80029A4C C4245C50 */  lwc1  $f4, %lo(D_80135C50)($at)
/* AA0BF0 80029A50 3C168016 */  lui   $s6, %hi(gGameInfo) # $s6, 0x8016
/* AA0BF4 80029A54 26D6FA90 */  addiu $s6, %lo(gGameInfo) # addiu $s6, $s6, -0x570
/* AA0BF8 80029A58 46040182 */  mul.s $f6, $f0, $f4
/* AA0BFC 80029A5C 8ED00000 */  lw    $s0, ($s6)
/* AA0C00 80029A60 00008825 */  move  $s1, $zero
/* AA0C04 80029A64 861809FA */  lh    $t8, 0x9fa($s0)
/* AA0C08 80029A68 4600320D */  trunc.w.s $f8, $f6
/* AA0C0C 80029A6C 2719001E */  addiu $t9, $t8, 0x1e
/* AA0C10 80029A70 44134000 */  mfc1  $s3, $f8
/* AA0C14 80029A74 00000000 */  nop   
/* AA0C18 80029A78 00139C00 */  sll   $s3, $s3, 0x10
/* AA0C1C 80029A7C 1B200022 */  blez  $t9, .L80029B08
/* AA0C20 80029A80 00139C03 */   sra   $s3, $s3, 0x10
/* AA0C24 80029A84 86080A0A */  lh    $t0, 0xa0a($s0)
.L80029A88:
/* AA0C28 80029A88 AFB30014 */  sw    $s3, 0x14($sp)
/* AA0C2C 80029A8C 02802025 */  move  $a0, $s4
/* AA0C30 80029A90 25090006 */  addiu $t1, $t0, 6
/* AA0C34 80029A94 0229001A */  div   $zero, $s1, $t1
/* AA0C38 80029A98 00005012 */  mflo  $t2
/* AA0C3C 80029A9C AFAA0010 */  sw    $t2, 0x10($sp)
/* AA0C40 80029AA0 860B09F8 */  lh    $t3, 0x9f8($s0)
/* AA0C44 80029AA4 02A02825 */  move  $a1, $s5
/* AA0C48 80029AA8 02403025 */  move  $a2, $s2
/* AA0C4C 80029AAC 256C0028 */  addiu $t4, $t3, 0x28
/* AA0C50 80029AB0 AFAC0018 */  sw    $t4, 0x18($sp)
/* AA0C54 80029AB4 02403825 */  move  $a3, $s2
/* AA0C58 80029AB8 15200002 */  bnez  $t1, .L80029AC4
/* AA0C5C 80029ABC 00000000 */   nop   
/* AA0C60 80029AC0 0007000D */  break 7
.L80029AC4:
/* AA0C64 80029AC4 2401FFFF */  li    $at, -1
/* AA0C68 80029AC8 15210004 */  bne   $t1, $at, .L80029ADC
/* AA0C6C 80029ACC 3C018000 */   lui   $at, 0x8000
/* AA0C70 80029AD0 16210002 */  bne   $s1, $at, .L80029ADC
/* AA0C74 80029AD4 00000000 */   nop   
/* AA0C78 80029AD8 0006000D */  break 6
.L80029ADC:
/* AA0C7C 80029ADC 0C00A64F */  jal   func_8002993C
/* AA0C80 80029AE0 00000000 */   nop   
/* AA0C84 80029AE4 8ED00000 */  lw    $s0, ($s6)
/* AA0C88 80029AE8 26310001 */  addiu $s1, $s1, 1
/* AA0C8C 80029AEC 00118C00 */  sll   $s1, $s1, 0x10
/* AA0C90 80029AF0 860D09FA */  lh    $t5, 0x9fa($s0)
/* AA0C94 80029AF4 00118C03 */  sra   $s1, $s1, 0x10
/* AA0C98 80029AF8 25AE001E */  addiu $t6, $t5, 0x1e
/* AA0C9C 80029AFC 022E082A */  slt   $at, $s1, $t6
/* AA0CA0 80029B00 5420FFE1 */  bnezl $at, .L80029A88
/* AA0CA4 80029B04 86080A0A */   lh    $t0, 0xa0a($s0)
.L80029B08:
/* AA0CA8 80029B08 8FBF0044 */  lw    $ra, 0x44($sp)
/* AA0CAC 80029B0C 8FB00028 */  lw    $s0, 0x28($sp)
/* AA0CB0 80029B10 8FB1002C */  lw    $s1, 0x2c($sp)
/* AA0CB4 80029B14 8FB20030 */  lw    $s2, 0x30($sp)
/* AA0CB8 80029B18 8FB30034 */  lw    $s3, 0x34($sp)
/* AA0CBC 80029B1C 8FB40038 */  lw    $s4, 0x38($sp)
/* AA0CC0 80029B20 8FB5003C */  lw    $s5, 0x3c($sp)
/* AA0CC4 80029B24 8FB60040 */  lw    $s6, 0x40($sp)
/* AA0CC8 80029B28 03E00008 */  jr    $ra
/* AA0CCC 80029B2C 27BD0078 */   addiu $sp, $sp, 0x78

glabel func_80029B30
/* AA0CD0 80029B30 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AA0CD4 80029B34 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0CD8 80029B38 AFA40040 */  sw    $a0, 0x40($sp)
/* AA0CDC 80029B3C AFA60048 */  sw    $a2, 0x48($sp)
/* AA0CE0 80029B40 AFA7004C */  sw    $a3, 0x4c($sp)
/* AA0CE4 80029B44 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0CE8 80029B48 27A40018 */   addiu $a0, $sp, 0x18
/* AA0CEC 80029B4C 27A40024 */  addiu $a0, $sp, 0x24
/* AA0CF0 80029B50 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0CF4 80029B54 8FA50048 */   lw    $a1, 0x48($sp)
/* AA0CF8 80029B58 27A40030 */  addiu $a0, $sp, 0x30
/* AA0CFC 80029B5C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0D00 80029B60 8FA5004C */   lw    $a1, 0x4c($sp)
/* AA0D04 80029B64 87AE0052 */  lh    $t6, 0x52($sp)
/* AA0D08 80029B68 8FA40040 */  lw    $a0, 0x40($sp)
/* AA0D0C 80029B6C 24050012 */  li    $a1, 18
/* AA0D10 80029B70 24060080 */  li    $a2, 128
/* AA0D14 80029B74 27A70018 */  addiu $a3, $sp, 0x18
/* AA0D18 80029B78 0C009DE6 */  jal   func_80027798
/* AA0D1C 80029B7C A7AE003C */   sh    $t6, 0x3c($sp)
/* AA0D20 80029B80 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0D24 80029B84 27BD0040 */  addiu $sp, $sp, 0x40
/* AA0D28 80029B88 03E00008 */  jr    $ra
/* AA0D2C 80029B8C 00000000 */   nop   

glabel func_80029B90
/* AA0D30 80029B90 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AA0D34 80029B94 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0D38 80029B98 AFA40038 */  sw    $a0, 0x38($sp)
/* AA0D3C 80029B9C AFA60040 */  sw    $a2, 0x40($sp)
/* AA0D40 80029BA0 AFA70044 */  sw    $a3, 0x44($sp)
/* AA0D44 80029BA4 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0D48 80029BA8 27A4001C */   addiu $a0, $sp, 0x1c
/* AA0D4C 80029BAC 27A40028 */  addiu $a0, $sp, 0x28
/* AA0D50 80029BB0 0C01E218 */  jal   Color_RGBA8_Copy
/* AA0D54 80029BB4 8FA50040 */   lw    $a1, 0x40($sp)
/* AA0D58 80029BB8 27A4002C */  addiu $a0, $sp, 0x2c
/* AA0D5C 80029BBC 0C01E218 */  jal   Color_RGBA8_Copy
/* AA0D60 80029BC0 8FA50044 */   lw    $a1, 0x44($sp)
/* AA0D64 80029BC4 87AE004A */  lh    $t6, 0x4a($sp)
/* AA0D68 80029BC8 87AF004E */  lh    $t7, 0x4e($sp)
/* AA0D6C 80029BCC 87B80052 */  lh    $t8, 0x52($sp)
/* AA0D70 80029BD0 8FA40038 */  lw    $a0, 0x38($sp)
/* AA0D74 80029BD4 24050013 */  li    $a1, 19
/* AA0D78 80029BD8 24060080 */  li    $a2, 128
/* AA0D7C 80029BDC 27A7001C */  addiu $a3, $sp, 0x1c
/* AA0D80 80029BE0 A7AE0030 */  sh    $t6, 0x30($sp)
/* AA0D84 80029BE4 A7AF0032 */  sh    $t7, 0x32($sp)
/* AA0D88 80029BE8 0C009DE6 */  jal   func_80027798
/* AA0D8C 80029BEC A7B80034 */   sh    $t8, 0x34($sp)
/* AA0D90 80029BF0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0D94 80029BF4 27BD0038 */  addiu $sp, $sp, 0x38
/* AA0D98 80029BF8 03E00008 */  jr    $ra
/* AA0D9C 80029BFC 00000000 */   nop   

glabel func_80029C00
/* AA0DA0 80029C00 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AA0DA4 80029C04 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0DA8 80029C08 AFA5002C */  sw    $a1, 0x2c($sp)
/* AA0DAC 80029C0C AFA60030 */  sw    $a2, 0x30($sp)
/* AA0DB0 80029C10 8CB80000 */  lw    $t8, ($a1)
/* AA0DB4 80029C14 27A70018 */  addiu $a3, $sp, 0x18
/* AA0DB8 80029C18 24060080 */  li    $a2, 128
/* AA0DBC 80029C1C ACF80000 */  sw    $t8, ($a3)
/* AA0DC0 80029C20 8CAF0004 */  lw    $t7, 4($a1)
/* AA0DC4 80029C24 ACEF0004 */  sw    $t7, 4($a3)
/* AA0DC8 80029C28 8CB80008 */  lw    $t8, 8($a1)
/* AA0DCC 80029C2C 24050014 */  li    $a1, 20
/* AA0DD0 80029C30 ACF80008 */  sw    $t8, 8($a3)
/* AA0DD4 80029C34 8FB90030 */  lw    $t9, 0x30($sp)
/* AA0DD8 80029C38 0C009DE6 */  jal   func_80027798
/* AA0DDC 80029C3C AFB90024 */   sw    $t9, 0x24($sp)
/* AA0DE0 80029C40 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0DE4 80029C44 27BD0028 */  addiu $sp, $sp, 0x28
/* AA0DE8 80029C48 03E00008 */  jr    $ra
/* AA0DEC 80029C4C 00000000 */   nop   

glabel func_80029C50
/* AA0DF0 80029C50 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA0DF4 80029C54 AFA60038 */  sw    $a2, 0x38($sp)
/* AA0DF8 80029C58 00063400 */  sll   $a2, $a2, 0x10
/* AA0DFC 80029C5C 00063403 */  sra   $a2, $a2, 0x10
/* AA0E00 80029C60 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0E04 80029C64 AFA40030 */  sw    $a0, 0x30($sp)
/* AA0E08 80029C68 AFA50034 */  sw    $a1, 0x34($sp)
/* AA0E0C 80029C6C AFA5001C */  sw    $a1, 0x1c($sp)
/* AA0E10 80029C70 A7A60020 */  sh    $a2, 0x20($sp)
/* AA0E14 80029C74 00E02825 */  move  $a1, $a3
/* AA0E18 80029C78 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0E1C 80029C7C 27A40024 */   addiu $a0, $sp, 0x24
/* AA0E20 80029C80 8FA40030 */  lw    $a0, 0x30($sp)
/* AA0E24 80029C84 24050015 */  li    $a1, 21
/* AA0E28 80029C88 24060080 */  li    $a2, 128
/* AA0E2C 80029C8C 0C009DE6 */  jal   func_80027798
/* AA0E30 80029C90 27A7001C */   addiu $a3, $sp, 0x1c
/* AA0E34 80029C94 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0E38 80029C98 27BD0030 */  addiu $sp, $sp, 0x30
/* AA0E3C 80029C9C 03E00008 */  jr    $ra
/* AA0E40 80029CA0 00000000 */   nop   

glabel func_80029CA4
/* AA0E44 80029CA4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AA0E48 80029CA8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0E4C 80029CAC 00C03825 */  move  $a3, $a2
/* AA0E50 80029CB0 0C00A714 */  jal   func_80029C50
/* AA0E54 80029CB4 2406012C */   li    $a2, 300
/* AA0E58 80029CB8 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0E5C 80029CBC 27BD0018 */  addiu $sp, $sp, 0x18
/* AA0E60 80029CC0 03E00008 */  jr    $ra
/* AA0E64 80029CC4 00000000 */   nop   

glabel func_80029CC8
/* AA0E68 80029CC8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AA0E6C 80029CCC AFA60020 */  sw    $a2, 0x20($sp)
/* AA0E70 80029CD0 00063400 */  sll   $a2, $a2, 0x10
/* AA0E74 80029CD4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0E78 80029CD8 0C00A714 */  jal   func_80029C50
/* AA0E7C 80029CDC 00063403 */   sra   $a2, $a2, 0x10
/* AA0E80 80029CE0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0E84 80029CE4 27BD0018 */  addiu $sp, $sp, 0x18
/* AA0E88 80029CE8 03E00008 */  jr    $ra
/* AA0E8C 80029CEC 00000000 */   nop   

glabel func_80029CF0
/* AA0E90 80029CF0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AA0E94 80029CF4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0E98 80029CF8 AFA40048 */  sw    $a0, 0x48($sp)
/* AA0E9C 80029CFC AFA60050 */  sw    $a2, 0x50($sp)
/* AA0EA0 80029D00 AFA70054 */  sw    $a3, 0x54($sp)
/* AA0EA4 80029D04 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0EA8 80029D08 27A40018 */   addiu $a0, $sp, 0x18
/* AA0EAC 80029D0C 27A40024 */  addiu $a0, $sp, 0x24
/* AA0EB0 80029D10 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0EB4 80029D14 8FA50050 */   lw    $a1, 0x50($sp)
/* AA0EB8 80029D18 27A40030 */  addiu $a0, $sp, 0x30
/* AA0EBC 80029D1C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0EC0 80029D20 8FA50054 */   lw    $a1, 0x54($sp)
/* AA0EC4 80029D24 87AE005A */  lh    $t6, 0x5a($sp)
/* AA0EC8 80029D28 93AF005F */  lbu   $t7, 0x5f($sp)
/* AA0ECC 80029D2C A3A00044 */  sb    $zero, 0x44($sp)
/* AA0ED0 80029D30 8FA40048 */  lw    $a0, 0x48($sp)
/* AA0ED4 80029D34 24050016 */  li    $a1, 22
/* AA0ED8 80029D38 24060080 */  li    $a2, 128
/* AA0EDC 80029D3C 27A70018 */  addiu $a3, $sp, 0x18
/* AA0EE0 80029D40 A7AE003C */  sh    $t6, 0x3c($sp)
/* AA0EE4 80029D44 0C009DE6 */  jal   func_80027798
/* AA0EE8 80029D48 A3AF003E */   sb    $t7, 0x3e($sp)
/* AA0EEC 80029D4C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0EF0 80029D50 27BD0048 */  addiu $sp, $sp, 0x48
/* AA0EF4 80029D54 03E00008 */  jr    $ra
/* AA0EF8 80029D58 00000000 */   nop   

glabel func_80029D5C
/* AA0EFC 80029D5C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AA0F00 80029D60 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0F04 80029D64 AFA40048 */  sw    $a0, 0x48($sp)
/* AA0F08 80029D68 AFA5004C */  sw    $a1, 0x4c($sp)
/* AA0F0C 80029D6C AFA50040 */  sw    $a1, 0x40($sp)
/* AA0F10 80029D70 AFA70054 */  sw    $a3, 0x54($sp)
/* AA0F14 80029D74 00C02825 */  move  $a1, $a2
/* AA0F18 80029D78 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0F1C 80029D7C 27A40018 */   addiu $a0, $sp, 0x18
/* AA0F20 80029D80 87AF0056 */  lh    $t7, 0x56($sp)
/* AA0F24 80029D84 93B8005B */  lbu   $t8, 0x5b($sp)
/* AA0F28 80029D88 24190001 */  li    $t9, 1
/* AA0F2C 80029D8C A3B90044 */  sb    $t9, 0x44($sp)
/* AA0F30 80029D90 8FA40048 */  lw    $a0, 0x48($sp)
/* AA0F34 80029D94 24050016 */  li    $a1, 22
/* AA0F38 80029D98 24060080 */  li    $a2, 128
/* AA0F3C 80029D9C 27A70018 */  addiu $a3, $sp, 0x18
/* AA0F40 80029DA0 A7AF003C */  sh    $t7, 0x3c($sp)
/* AA0F44 80029DA4 0C009DE6 */  jal   func_80027798
/* AA0F48 80029DA8 A3B8003E */   sb    $t8, 0x3e($sp)
/* AA0F4C 80029DAC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0F50 80029DB0 27BD0048 */  addiu $sp, $sp, 0x48
/* AA0F54 80029DB4 03E00008 */  jr    $ra
/* AA0F58 80029DB8 00000000 */   nop   

glabel func_80029DBC
/* AA0F5C 80029DBC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AA0F60 80029DC0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0F64 80029DC4 AFA40040 */  sw    $a0, 0x40($sp)
/* AA0F68 80029DC8 AFA60048 */  sw    $a2, 0x48($sp)
/* AA0F6C 80029DCC AFA7004C */  sw    $a3, 0x4c($sp)
/* AA0F70 80029DD0 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0F74 80029DD4 27A40018 */   addiu $a0, $sp, 0x18
/* AA0F78 80029DD8 27A40024 */  addiu $a0, $sp, 0x24
/* AA0F7C 80029DDC 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0F80 80029DE0 8FA50048 */   lw    $a1, 0x48($sp)
/* AA0F84 80029DE4 27A40030 */  addiu $a0, $sp, 0x30
/* AA0F88 80029DE8 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0F8C 80029DEC 8FA5004C */   lw    $a1, 0x4c($sp)
/* AA0F90 80029DF0 87AE0052 */  lh    $t6, 0x52($sp)
/* AA0F94 80029DF4 93AF0057 */  lbu   $t7, 0x57($sp)
/* AA0F98 80029DF8 8FA40040 */  lw    $a0, 0x40($sp)
/* AA0F9C 80029DFC 24050017 */  li    $a1, 23
/* AA0FA0 80029E00 24060080 */  li    $a2, 128
/* AA0FA4 80029E04 27A70018 */  addiu $a3, $sp, 0x18
/* AA0FA8 80029E08 A7AE003C */  sh    $t6, 0x3c($sp)
/* AA0FAC 80029E0C 0C009DE6 */  jal   func_80027798
/* AA0FB0 80029E10 A3AF003E */   sb    $t7, 0x3e($sp)
/* AA0FB4 80029E14 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0FB8 80029E18 27BD0040 */  addiu $sp, $sp, 0x40
/* AA0FBC 80029E1C 03E00008 */  jr    $ra
/* AA0FC0 80029E20 00000000 */   nop   

glabel func_80029E24
/* AA0FC4 80029E24 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AA0FC8 80029E28 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0FCC 80029E2C AFA40048 */  sw    $a0, 0x48($sp)
/* AA0FD0 80029E30 AFA60050 */  sw    $a2, 0x50($sp)
/* AA0FD4 80029E34 AFA70054 */  sw    $a3, 0x54($sp)
/* AA0FD8 80029E38 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0FDC 80029E3C 27A4001C */   addiu $a0, $sp, 0x1c
/* AA0FE0 80029E40 27A40028 */  addiu $a0, $sp, 0x28
/* AA0FE4 80029E44 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0FE8 80029E48 8FA50050 */   lw    $a1, 0x50($sp)
/* AA0FEC 80029E4C 27A40034 */  addiu $a0, $sp, 0x34
/* AA0FF0 80029E50 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0FF4 80029E54 8FA50054 */   lw    $a1, 0x54($sp)
/* AA0FF8 80029E58 87AE005A */  lh    $t6, 0x5a($sp)
/* AA0FFC 80029E5C 8FAF005C */  lw    $t7, 0x5c($sp)
/* AA1000 80029E60 8FA40048 */  lw    $a0, 0x48($sp)
/* AA1004 80029E64 24050018 */  li    $a1, 24
/* AA1008 80029E68 24060080 */  li    $a2, 128
/* AA100C 80029E6C 27A7001C */  addiu $a3, $sp, 0x1c
/* AA1010 80029E70 A7AE0040 */  sh    $t6, 0x40($sp)
/* AA1014 80029E74 0C009DE6 */  jal   func_80027798
/* AA1018 80029E78 AFAF0044 */   sw    $t7, 0x44($sp)
/* AA101C 80029E7C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA1020 80029E80 27BD0048 */  addiu $sp, $sp, 0x48
/* AA1024 80029E84 03E00008 */  jr    $ra
/* AA1028 80029E88 00000000 */   nop   

glabel Effect_SpawnFragment
/* AA102C 80029E8C 27BDFFA8 */  addiu $sp, $sp, -0x58
/* AA1030 80029E90 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA1034 80029E94 AFA40058 */  sw    $a0, 0x58($sp)
/* AA1038 80029E98 AFA60060 */  sw    $a2, 0x60($sp)
/* AA103C 80029E9C AFA70064 */  sw    $a3, 0x64($sp)
/* AA1040 80029EA0 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1044 80029EA4 27A40018 */   addiu $a0, $sp, 0x18
/* AA1048 80029EA8 27A40024 */  addiu $a0, $sp, 0x24
/* AA104C 80029EAC 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1050 80029EB0 8FA50060 */   lw    $a1, 0x60($sp)
/* AA1054 80029EB4 27A40030 */  addiu $a0, $sp, 0x30
/* AA1058 80029EB8 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA105C 80029EBC 8FA50064 */   lw    $a1, 0x64($sp)
/* AA1060 80029EC0 87AE006A */  lh    $t6, 0x6a($sp)
/* AA1064 80029EC4 87AF006E */  lh    $t7, 0x6e($sp)
/* AA1068 80029EC8 87B80072 */  lh    $t8, 0x72($sp)
/* AA106C 80029ECC A7AE003C */  sh    $t6, 0x3c($sp)
/* AA1070 80029ED0 A7AF003E */  sh    $t7, 0x3e($sp)
/* AA1074 80029ED4 87B90076 */  lh    $t9, 0x76($sp)
/* AA1078 80029ED8 87A8007A */  lh    $t0, 0x7a($sp)
/* AA107C 80029EDC 87A9007E */  lh    $t1, 0x7e($sp)
/* AA1080 80029EE0 87AA0082 */  lh    $t2, 0x82($sp)
/* AA1084 80029EE4 87AB0086 */  lh    $t3, 0x86($sp)
/* AA1088 80029EE8 8FAC0088 */  lw    $t4, 0x88($sp)
/* AA108C 80029EEC 87AD008E */  lh    $t5, 0x8e($sp)
/* AA1090 80029EF0 87AE0092 */  lh    $t6, 0x92($sp)
/* AA1094 80029EF4 8FAF0094 */  lw    $t7, 0x94($sp)
/* AA1098 80029EF8 8FA40058 */  lw    $a0, 0x58($sp)
/* AA109C 80029EFC 24050019 */  li    $a1, 25
/* AA10A0 80029F00 24060065 */  li    $a2, 101
/* AA10A4 80029F04 27A70018 */  addiu $a3, $sp, 0x18
/* AA10A8 80029F08 A7B80040 */  sh    $t8, 0x40($sp)
/* AA10AC 80029F0C A7B90042 */  sh    $t9, 0x42($sp)
/* AA10B0 80029F10 A7A80044 */  sh    $t0, 0x44($sp)
/* AA10B4 80029F14 A7A90046 */  sh    $t1, 0x46($sp)
/* AA10B8 80029F18 A7AA0048 */  sh    $t2, 0x48($sp)
/* AA10BC 80029F1C A7AB004A */  sh    $t3, 0x4a($sp)
/* AA10C0 80029F20 AFAC004C */  sw    $t4, 0x4c($sp)
/* AA10C4 80029F24 A7AD0050 */  sh    $t5, 0x50($sp)
/* AA10C8 80029F28 A7AE0052 */  sh    $t6, 0x52($sp)
/* AA10CC 80029F2C 0C009DE6 */  jal   func_80027798
/* AA10D0 80029F30 AFAF0054 */   sw    $t7, 0x54($sp)
/* AA10D4 80029F34 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA10D8 80029F38 27BD0058 */  addiu $sp, $sp, 0x58
/* AA10DC 80029F3C 03E00008 */  jr    $ra
/* AA10E0 80029F40 00000000 */   nop   

glabel func_80029F44
/* AA10E4 80029F44 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AA10E8 80029F48 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA10EC 80029F4C AFA40048 */  sw    $a0, 0x48($sp)
/* AA10F0 80029F50 AFA60050 */  sw    $a2, 0x50($sp)
/* AA10F4 80029F54 AFA70054 */  sw    $a3, 0x54($sp)
/* AA10F8 80029F58 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA10FC 80029F5C 27A4001C */   addiu $a0, $sp, 0x1c
/* AA1100 80029F60 27A4002C */  addiu $a0, $sp, 0x2c
/* AA1104 80029F64 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1108 80029F68 8FA50054 */   lw    $a1, 0x54($sp)
/* AA110C 80029F6C 27A40038 */  addiu $a0, $sp, 0x38
/* AA1110 80029F70 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1114 80029F74 8FA50058 */   lw    $a1, 0x58($sp)
/* AA1118 80029F78 C7A40050 */  lwc1  $f4, 0x50($sp)
/* AA111C 80029F7C 8FAE005C */  lw    $t6, 0x5c($sp)
/* AA1120 80029F80 8FA40048 */  lw    $a0, 0x48($sp)
/* AA1124 80029F84 2405001A */  li    $a1, 26
/* AA1128 80029F88 24060080 */  li    $a2, 128
/* AA112C 80029F8C 27A7001C */  addiu $a3, $sp, 0x1c
/* AA1130 80029F90 E7A40028 */  swc1  $f4, 0x28($sp)
/* AA1134 80029F94 0C009DE6 */  jal   func_80027798
/* AA1138 80029F98 AFAE0044 */   sw    $t6, 0x44($sp)
/* AA113C 80029F9C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA1140 80029FA0 27BD0048 */  addiu $sp, $sp, 0x48
/* AA1144 80029FA4 03E00008 */  jr    $ra
/* AA1148 80029FA8 00000000 */   nop   

glabel func_80029FAC
/* AA114C 80029FAC 3C018013 */  lui   $at, %hi(D_80135C54)
/* AA1150 80029FB0 C4245C54 */  lwc1  $f4, %lo(D_80135C54)($at)
/* AA1154 80029FB4 27BDFF70 */  addiu $sp, $sp, -0x90
/* AA1158 80029FB8 3C018011 */  lui   $at, %hi(D_80115924)
/* AA115C 80029FBC E4245924 */  swc1  $f4, %lo(D_80115924)($at)
/* AA1160 80029FC0 3C018013 */  lui   $at, %hi(D_80135C58)
/* AA1164 80029FC4 44866000 */  mtc1  $a2, $f12
/* AA1168 80029FC8 C4265C58 */  lwc1  $f6, %lo(D_80135C58)($at)
/* AA116C 80029FCC 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* AA1170 80029FD0 44815000 */  mtc1  $at, $f10
/* AA1174 80029FD4 46066202 */  mul.s $f8, $f12, $f6
/* AA1178 80029FD8 F7B80030 */  sdc1  $f24, 0x30($sp)
/* AA117C 80029FDC 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AA1180 80029FE0 4481C000 */  mtc1  $at, $f24
/* AA1184 80029FE4 F7B60028 */  sdc1  $f22, 0x28($sp)
/* AA1188 80029FE8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AA118C 80029FEC AFB60058 */  sw    $s6, 0x58($sp)
/* AA1190 80029FF0 AFB50054 */  sw    $s5, 0x54($sp)
/* AA1194 80029FF4 AFB00040 */  sw    $s0, 0x40($sp)
/* AA1198 80029FF8 F7BA0038 */  sdc1  $f26, 0x38($sp)
/* AA119C 80029FFC 4481B000 */  mtc1  $at, $f22
/* AA11A0 8002A000 AFB40050 */  sw    $s4, 0x50($sp)
/* AA11A4 8002A004 AFB3004C */  sw    $s3, 0x4c($sp)
/* AA11A8 8002A008 AFB20048 */  sw    $s2, 0x48($sp)
/* AA11AC 8002A00C AFB10044 */  sw    $s1, 0x44($sp)
/* AA11B0 8002A010 F7B40020 */  sdc1  $f20, 0x20($sp)
/* AA11B4 8002A014 3C018013 */  lui   $at, %hi(D_80135C5C)
/* AA11B8 8002A018 3C108011 */  lui   $s0, %hi(D_8011592C) # $s0, 0x8011
/* AA11BC 8002A01C 3C158011 */  lui   $s5, %hi(D_80115920) # $s5, 0x8011
/* AA11C0 8002A020 3C168011 */  lui   $s6, %hi(D_801159A4) # $s6, 0x8011
/* AA11C4 8002A024 460A4682 */  mul.s $f26, $f8, $f10
/* AA11C8 8002A028 00A09025 */  move  $s2, $a1
/* AA11CC 8002A02C 00809825 */  move  $s3, $a0
/* AA11D0 8002A030 AFBF005C */  sw    $ra, 0x5c($sp)
/* AA11D4 8002A034 26D659A4 */  addiu $s6, %lo(D_801159A4) # addiu $s6, $s6, 0x59a4
/* AA11D8 8002A038 26B55920 */  addiu $s5, %lo(D_80115920) # addiu $s5, $s5, 0x5920
/* AA11DC 8002A03C 2610592C */  addiu $s0, %lo(D_8011592C) # addiu $s0, $s0, 0x592c
/* AA11E0 8002A040 C4345C5C */  lwc1  $f20, %lo(D_80135C5C)($at)
/* AA11E4 8002A044 27B10074 */  addiu $s1, $sp, 0x74
/* AA11E8 8002A048 27B40080 */  addiu $s4, $sp, 0x80
/* AA11EC 8002A04C 8E4F0000 */  lw    $t7, ($s2)
.L8002A050:
/* AA11F0 8002A050 4600B306 */  mov.s $f12, $f22
/* AA11F4 8002A054 AE2F0000 */  sw    $t7, ($s1)
/* AA11F8 8002A058 8E4E0004 */  lw    $t6, 4($s2)
/* AA11FC 8002A05C AE2E0004 */  sw    $t6, 4($s1)
/* AA1200 8002A060 8E4F0008 */  lw    $t7, 8($s2)
/* AA1204 8002A064 0C00CFBE */  jal   Math_Rand_ZeroFloat
/* AA1208 8002A068 AE2F0008 */   sw    $t7, 8($s1)
/* AA120C 8002A06C C60E0000 */  lwc1  $f14, ($s0)
/* AA1210 8002A070 46180080 */  add.s $f2, $f0, $f24
/* AA1214 8002A074 C6100004 */  lwc1  $f16, 4($s0)
/* AA1218 8002A078 46147102 */  mul.s $f4, $f14, $f20
/* AA121C 8002A07C C6120008 */  lwc1  $f18, 8($s0)
/* AA1220 8002A080 4600B306 */  mov.s $f12, $f22
/* AA1224 8002A084 46022182 */  mul.s $f6, $f4, $f2
/* AA1228 8002A088 00000000 */  nop   
/* AA122C 8002A08C 46148202 */  mul.s $f8, $f16, $f20
/* AA1230 8002A090 E7A60080 */  swc1  $f6, 0x80($sp)
/* AA1234 8002A094 46024282 */  mul.s $f10, $f8, $f2
/* AA1238 8002A098 C7A80074 */  lwc1  $f8, 0x74($sp)
/* AA123C 8002A09C 46149102 */  mul.s $f4, $f18, $f20
/* AA1240 8002A0A0 E7AA0084 */  swc1  $f10, 0x84($sp)
/* AA1244 8002A0A4 460E4280 */  add.s $f10, $f8, $f14
/* AA1248 8002A0A8 C7A8007C */  lwc1  $f8, 0x7c($sp)
/* AA124C 8002A0AC 46022182 */  mul.s $f6, $f4, $f2
/* AA1250 8002A0B0 C7A40078 */  lwc1  $f4, 0x78($sp)
/* AA1254 8002A0B4 E7AA0074 */  swc1  $f10, 0x74($sp)
/* AA1258 8002A0B8 46124280 */  add.s $f10, $f8, $f18
/* AA125C 8002A0BC E7A60088 */  swc1  $f6, 0x88($sp)
/* AA1260 8002A0C0 46102180 */  add.s $f6, $f4, $f16
/* AA1264 8002A0C4 E7AA007C */  swc1  $f10, 0x7c($sp)
/* AA1268 8002A0C8 0C00CFBE */  jal   Math_Rand_ZeroFloat
/* AA126C 8002A0CC E7A60078 */   swc1  $f6, 0x78($sp)
/* AA1270 8002A0D0 46180100 */  add.s $f4, $f0, $f24
/* AA1274 8002A0D4 24180019 */  li    $t8, 25
/* AA1278 8002A0D8 AFB80014 */  sw    $t8, 0x14($sp)
/* AA127C 8002A0DC 02602025 */  move  $a0, $s3
/* AA1280 8002A0E0 461A2182 */  mul.s $f6, $f4, $f26
/* AA1284 8002A0E4 02202825 */  move  $a1, $s1
/* AA1288 8002A0E8 02803825 */  move  $a3, $s4
/* AA128C 8002A0EC AFB50010 */  sw    $s5, 0x10($sp)
/* AA1290 8002A0F0 44063000 */  mfc1  $a2, $f6
/* AA1294 8002A0F4 0C00A7D1 */  jal   func_80029F44
/* AA1298 8002A0F8 00000000 */   nop   
/* AA129C 8002A0FC 2610000C */  addiu $s0, $s0, 0xc
/* AA12A0 8002A100 5616FFD3 */  bnel  $s0, $s6, .L8002A050
/* AA12A4 8002A104 8E4F0000 */   lw    $t7, ($s2)
/* AA12A8 8002A108 8FBF005C */  lw    $ra, 0x5c($sp)
/* AA12AC 8002A10C D7B40020 */  ldc1  $f20, 0x20($sp)
/* AA12B0 8002A110 D7B60028 */  ldc1  $f22, 0x28($sp)
/* AA12B4 8002A114 D7B80030 */  ldc1  $f24, 0x30($sp)
/* AA12B8 8002A118 D7BA0038 */  ldc1  $f26, 0x38($sp)
/* AA12BC 8002A11C 8FB00040 */  lw    $s0, 0x40($sp)
/* AA12C0 8002A120 8FB10044 */  lw    $s1, 0x44($sp)
/* AA12C4 8002A124 8FB20048 */  lw    $s2, 0x48($sp)
/* AA12C8 8002A128 8FB3004C */  lw    $s3, 0x4c($sp)
/* AA12CC 8002A12C 8FB40050 */  lw    $s4, 0x50($sp)
/* AA12D0 8002A130 8FB50054 */  lw    $s5, 0x54($sp)
/* AA12D4 8002A134 8FB60058 */  lw    $s6, 0x58($sp)
/* AA12D8 8002A138 03E00008 */  jr    $ra
/* AA12DC 8002A13C 27BD0090 */   addiu $sp, $sp, 0x90

glabel func_8002A140
/* AA12E0 8002A140 27BDFFA8 */  addiu $sp, $sp, -0x58
/* AA12E4 8002A144 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA12E8 8002A148 AFA40058 */  sw    $a0, 0x58($sp)
/* AA12EC 8002A14C AFA5005C */  sw    $a1, 0x5c($sp)
/* AA12F0 8002A150 AFA5001C */  sw    $a1, 0x1c($sp)
/* AA12F4 8002A154 AFA70064 */  sw    $a3, 0x64($sp)
/* AA12F8 8002A158 00C02825 */  move  $a1, $a2
/* AA12FC 8002A15C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1300 8002A160 27A40020 */   addiu $a0, $sp, 0x20
/* AA1304 8002A164 8FA4005C */  lw    $a0, 0x5c($sp)
/* AA1308 8002A168 87AF0066 */  lh    $t7, 0x66($sp)
/* AA130C 8002A16C 87B8006A */  lh    $t8, 0x6a($sp)
/* AA1310 8002A170 87B9006E */  lh    $t9, 0x6e($sp)
/* AA1314 8002A174 87A80072 */  lh    $t0, 0x72($sp)
/* AA1318 8002A178 87A90076 */  lh    $t1, 0x76($sp)
/* AA131C 8002A17C 87AA007A */  lh    $t2, 0x7a($sp)
/* AA1320 8002A180 87AB007E */  lh    $t3, 0x7e($sp)
/* AA1324 8002A184 C7A40080 */  lwc1  $f4, 0x80($sp)
/* AA1328 8002A188 A7A00054 */  sh    $zero, 0x54($sp)
/* AA132C 8002A18C A3AF0048 */  sb    $t7, 0x48($sp)
/* AA1330 8002A190 A3B80049 */  sb    $t8, 0x49($sp)
/* AA1334 8002A194 A3B9004A */  sb    $t9, 0x4a($sp)
/* AA1338 8002A198 A3A8004B */  sb    $t0, 0x4b($sp)
/* AA133C 8002A19C A3A9004C */  sb    $t1, 0x4c($sp)
/* AA1340 8002A1A0 A3AA004D */  sb    $t2, 0x4d($sp)
/* AA1344 8002A1A4 A3AB004E */  sb    $t3, 0x4e($sp)
/* AA1348 8002A1A8 10800003 */  beqz  $a0, .L8002A1B8
/* AA134C 8002A1AC E7A4002C */   swc1  $f4, 0x2c($sp)
/* AA1350 8002A1B0 0C00BE0A */  jal   Audio_PlayActorSound2
/* AA1354 8002A1B4 24050874 */   li    $a1, 2164
.L8002A1B8:
/* AA1358 8002A1B8 8FA40058 */  lw    $a0, 0x58($sp)
/* AA135C 8002A1BC 2405001B */  li    $a1, 27
/* AA1360 8002A1C0 24060050 */  li    $a2, 80
/* AA1364 8002A1C4 0C009DE6 */  jal   func_80027798
/* AA1368 8002A1C8 27A7001C */   addiu $a3, $sp, 0x1c
/* AA136C 8002A1CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA1370 8002A1D0 27BD0058 */  addiu $sp, $sp, 0x58
/* AA1374 8002A1D4 03E00008 */  jr    $ra
/* AA1378 8002A1D8 00000000 */   nop   

glabel func_8002A1DC
/* AA137C 8002A1DC 27BDFFA8 */  addiu $sp, $sp, -0x58
/* AA1380 8002A1E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA1384 8002A1E4 AFA40058 */  sw    $a0, 0x58($sp)
/* AA1388 8002A1E8 AFA5005C */  sw    $a1, 0x5c($sp)
/* AA138C 8002A1EC AFA70064 */  sw    $a3, 0x64($sp)
/* AA1390 8002A1F0 AFA5001C */  sw    $a1, 0x1c($sp)
/* AA1394 8002A1F4 84CF0000 */  lh    $t7, ($a2)
/* AA1398 8002A1F8 87A8006A */  lh    $t0, 0x6a($sp)
/* AA139C 8002A1FC 87A9006E */  lh    $t1, 0x6e($sp)
/* AA13A0 8002A200 448F2000 */  mtc1  $t7, $f4
/* AA13A4 8002A204 87AA0072 */  lh    $t2, 0x72($sp)
/* AA13A8 8002A208 87AB0076 */  lh    $t3, 0x76($sp)
/* AA13AC 8002A20C 468021A0 */  cvt.s.w $f6, $f4
/* AA13B0 8002A210 87AC007A */  lh    $t4, 0x7a($sp)
/* AA13B4 8002A214 87AD007E */  lh    $t5, 0x7e($sp)
/* AA13B8 8002A218 C7A40080 */  lwc1  $f4, 0x80($sp)
/* AA13BC 8002A21C 00073C00 */  sll   $a3, $a3, 0x10
/* AA13C0 8002A220 00073C03 */  sra   $a3, $a3, 0x10
/* AA13C4 8002A224 E7A60020 */  swc1  $f6, 0x20($sp)
/* AA13C8 8002A228 84D80002 */  lh    $t8, 2($a2)
/* AA13CC 8002A22C 00A02025 */  move  $a0, $a1
/* AA13D0 8002A230 44984000 */  mtc1  $t8, $f8
/* AA13D4 8002A234 00000000 */  nop   
/* AA13D8 8002A238 468042A0 */  cvt.s.w $f10, $f8
/* AA13DC 8002A23C E7AA0024 */  swc1  $f10, 0x24($sp)
/* AA13E0 8002A240 84D90004 */  lh    $t9, 4($a2)
/* AA13E4 8002A244 A3A70048 */  sb    $a3, 0x48($sp)
/* AA13E8 8002A248 A7A00054 */  sh    $zero, 0x54($sp)
/* AA13EC 8002A24C 44998000 */  mtc1  $t9, $f16
/* AA13F0 8002A250 A3A80049 */  sb    $t0, 0x49($sp)
/* AA13F4 8002A254 A3A9004A */  sb    $t1, 0x4a($sp)
/* AA13F8 8002A258 468084A0 */  cvt.s.w $f18, $f16
/* AA13FC 8002A25C A3AA004B */  sb    $t2, 0x4b($sp)
/* AA1400 8002A260 A3AB004C */  sb    $t3, 0x4c($sp)
/* AA1404 8002A264 A3AC004D */  sb    $t4, 0x4d($sp)
/* AA1408 8002A268 A3AD004E */  sb    $t5, 0x4e($sp)
/* AA140C 8002A26C E7A4002C */  swc1  $f4, 0x2c($sp)
/* AA1410 8002A270 10A00003 */  beqz  $a1, .L8002A280
/* AA1414 8002A274 E7B20028 */   swc1  $f18, 0x28($sp)
/* AA1418 8002A278 0C00BE0A */  jal   Audio_PlayActorSound2
/* AA141C 8002A27C 24050874 */   li    $a1, 2164
.L8002A280:
/* AA1420 8002A280 8FA40058 */  lw    $a0, 0x58($sp)
/* AA1424 8002A284 2405001B */  li    $a1, 27
/* AA1428 8002A288 24060050 */  li    $a2, 80
/* AA142C 8002A28C 0C009DE6 */  jal   func_80027798
/* AA1430 8002A290 27A7001C */   addiu $a3, $sp, 0x1c
/* AA1434 8002A294 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA1438 8002A298 27BD0058 */  addiu $sp, $sp, 0x58
/* AA143C 8002A29C 03E00008 */  jr    $ra
/* AA1440 8002A2A0 00000000 */   nop   

glabel func_8002A2A4
/* AA1444 8002A2A4 27BDFFA8 */  addiu $sp, $sp, -0x58
/* AA1448 8002A2A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA144C 8002A2AC AFA40058 */  sw    $a0, 0x58($sp)
/* AA1450 8002A2B0 AFA60060 */  sw    $a2, 0x60($sp)
/* AA1454 8002A2B4 AFA70064 */  sw    $a3, 0x64($sp)
/* AA1458 8002A2B8 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA145C 8002A2BC 27A40020 */   addiu $a0, $sp, 0x20
/* AA1460 8002A2C0 27A40030 */  addiu $a0, $sp, 0x30
/* AA1464 8002A2C4 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1468 8002A2C8 8FA50064 */   lw    $a1, 0x64($sp)
/* AA146C 8002A2CC 27A4003C */  addiu $a0, $sp, 0x3c
/* AA1470 8002A2D0 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1474 8002A2D4 8FA50068 */   lw    $a1, 0x68($sp)
/* AA1478 8002A2D8 27A40048 */  addiu $a0, $sp, 0x48
/* AA147C 8002A2DC 0C01E218 */  jal   Color_RGBA8_Copy
/* AA1480 8002A2E0 8FA5006C */   lw    $a1, 0x6c($sp)
/* AA1484 8002A2E4 27A4004C */  addiu $a0, $sp, 0x4c
/* AA1488 8002A2E8 0C01E218 */  jal   Color_RGBA8_Copy
/* AA148C 8002A2EC 8FA50070 */   lw    $a1, 0x70($sp)
/* AA1490 8002A2F0 C7A40060 */  lwc1  $f4, 0x60($sp)
/* AA1494 8002A2F4 8FAE0074 */  lw    $t6, 0x74($sp)
/* AA1498 8002A2F8 240F0001 */  li    $t7, 1
/* AA149C 8002A2FC A7AF0054 */  sh    $t7, 0x54($sp)
/* AA14A0 8002A300 8FA40058 */  lw    $a0, 0x58($sp)
/* AA14A4 8002A304 2405001B */  li    $a1, 27
/* AA14A8 8002A308 24060080 */  li    $a2, 128
/* AA14AC 8002A30C 27A7001C */  addiu $a3, $sp, 0x1c
/* AA14B0 8002A310 E7A4002C */  swc1  $f4, 0x2c($sp)
/* AA14B4 8002A314 0C009DE6 */  jal   func_80027798
/* AA14B8 8002A318 AFAE0050 */   sw    $t6, 0x50($sp)
/* AA14BC 8002A31C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA14C0 8002A320 27BD0058 */  addiu $sp, $sp, 0x58
/* AA14C4 8002A324 03E00008 */  jr    $ra
/* AA14C8 8002A328 00000000 */   nop   

glabel func_8002A32C
/* AA14CC 8002A32C 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AA14D0 8002A330 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA14D4 8002A334 AFA40050 */  sw    $a0, 0x50($sp)
/* AA14D8 8002A338 AFA50054 */  sw    $a1, 0x54($sp)
/* AA14DC 8002A33C AFA7005C */  sw    $a3, 0x5c($sp)
/* AA14E0 8002A340 00C02825 */  move  $a1, $a2
/* AA14E4 8002A344 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA14E8 8002A348 27A40020 */   addiu $a0, $sp, 0x20
/* AA14EC 8002A34C 27A40030 */  addiu $a0, $sp, 0x30
/* AA14F0 8002A350 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA14F4 8002A354 8FA50060 */   lw    $a1, 0x60($sp)
/* AA14F8 8002A358 27A4003E */  addiu $a0, $sp, 0x3e
/* AA14FC 8002A35C 0C01E218 */  jal   Color_RGBA8_Copy
/* AA1500 8002A360 8FA50068 */   lw    $a1, 0x68($sp)
/* AA1504 8002A364 27A40042 */  addiu $a0, $sp, 0x42
/* AA1508 8002A368 0C01E218 */  jal   Color_RGBA8_Copy
/* AA150C 8002A36C 8FA5006C */   lw    $a1, 0x6c($sp)
/* AA1510 8002A370 87AE0066 */  lh    $t6, 0x66($sp)
/* AA1514 8002A374 8FAF0054 */  lw    $t7, 0x54($sp)
/* AA1518 8002A378 C7A4005C */  lwc1  $f4, 0x5c($sp)
/* AA151C 8002A37C 87B80072 */  lh    $t8, 0x72($sp)
/* AA1520 8002A380 87B90076 */  lh    $t9, 0x76($sp)
/* AA1524 8002A384 8FA80078 */  lw    $t0, 0x78($sp)
/* AA1528 8002A388 8FA40050 */  lw    $a0, 0x50($sp)
/* AA152C 8002A38C 2405001C */  li    $a1, 28
/* AA1530 8002A390 24060080 */  li    $a2, 128
/* AA1534 8002A394 27A7001C */  addiu $a3, $sp, 0x1c
/* AA1538 8002A398 A7AE003C */  sh    $t6, 0x3c($sp)
/* AA153C 8002A39C AFAF001C */  sw    $t7, 0x1c($sp)
/* AA1540 8002A3A0 E7A4002C */  swc1  $f4, 0x2c($sp)
/* AA1544 8002A3A4 A7B80046 */  sh    $t8, 0x46($sp)
/* AA1548 8002A3A8 A7B90048 */  sh    $t9, 0x48($sp)
/* AA154C 8002A3AC 0C009DE6 */  jal   func_80027798
/* AA1550 8002A3B0 AFA8004C */   sw    $t0, 0x4c($sp)
/* AA1554 8002A3B4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA1558 8002A3B8 27BD0050 */  addiu $sp, $sp, 0x50
/* AA155C 8002A3BC 03E00008 */  jr    $ra
/* AA1560 8002A3C0 00000000 */   nop   

glabel func_8002A3C4
/* AA1564 8002A3C4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AA1568 8002A3C8 3C01437F */  li    $at, 0x437F0000 # 0.000000
/* AA156C 8002A3CC C7AC004C */  lwc1  $f12, 0x4c($sp)
/* AA1570 8002A3D0 44812000 */  mtc1  $at, $f4
/* AA1574 8002A3D4 3C018011 */  lui   $at, %hi(D_801159A6) # 0.000000
/* AA1578 8002A3D8 A02059A6 */  sb    $zero, %lo(D_801159A6)($at)
/* AA157C 8002A3DC 460C2182 */  mul.s $f6, $f4, $f12
/* AA1580 8002A3E0 44877000 */  mtc1  $a3, $f14
/* AA1584 8002A3E4 3C198011 */  lui   $t9, %hi(D_801159A4) # $t9, 0x8011
/* AA1588 8002A3E8 3C088011 */  lui   $t0, %hi(D_801159A8) # $t0, 0x8011
/* AA158C 8002A3EC 44077000 */  mfc1  $a3, $f14
/* AA1590 8002A3F0 AFBF0034 */  sw    $ra, 0x34($sp)
/* AA1594 8002A3F4 250859A8 */  addiu $t0, %lo(D_801159A8) # addiu $t0, $t0, 0x59a8
/* AA1598 8002A3F8 4600320D */  trunc.w.s $f8, $f6
/* AA159C 8002A3FC 273959A4 */  addiu $t9, %lo(D_801159A4) # addiu $t9, $t9, 0x59a4
/* AA15A0 8002A400 24AF005C */  addiu $t7, $a1, 0x5c
/* AA15A4 8002A404 2418000F */  li    $t8, 15
/* AA15A8 8002A408 44024000 */  mfc1  $v0, $f8
/* AA15AC 8002A40C 240A0001 */  li    $t2, 1
/* AA15B0 8002A410 A02259A5 */  sb    $v0, 0x59a5($at)
/* AA15B4 8002A414 3C018011 */  lui   $at, %hi(D_801159A8) # $at, 0x8011
/* AA15B8 8002A418 A02059A9 */  sb    $zero, %lo(D_801159A9)($at)
/* AA15BC 8002A41C A02059AA */  sb    $zero, %lo(D_801159AA)($at)
/* AA15C0 8002A420 A02259A8 */  sb    $v0, %lo(D_801159A8)($at)
/* AA15C4 8002A424 3C018011 */  lui   $at, %hi(D_801159A4) # $at, 0x8011
/* AA15C8 8002A428 A02259A4 */  sb    $v0, %lo(D_801159A4)($at)
/* AA15CC 8002A42C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AA15D0 8002A430 44815000 */  mtc1  $at, $f10
/* AA15D4 8002A434 24020001 */  li    $v0, 1
/* AA15D8 8002A438 460A6032 */  c.eq.s $f12, $f10
/* AA15DC 8002A43C 00000000 */  nop   
/* AA15E0 8002A440 45000003 */  bc1f  .L8002A450
/* AA15E4 8002A444 00000000 */   nop   
/* AA15E8 8002A448 10000001 */  b     .L8002A450
/* AA15EC 8002A44C 00001025 */   move  $v0, $zero
.L8002A450:
/* AA15F0 8002A450 87A9004A */  lh    $t1, 0x4a($sp)
/* AA15F4 8002A454 AFAF0010 */  sw    $t7, 0x10($sp)
/* AA15F8 8002A458 AFB80014 */  sw    $t8, 0x14($sp)
/* AA15FC 8002A45C AFB90018 */  sw    $t9, 0x18($sp)
/* AA1600 8002A460 AFA8001C */  sw    $t0, 0x1c($sp)
/* AA1604 8002A464 AFA20020 */  sw    $v0, 0x20($sp)
/* AA1608 8002A468 AFAA0028 */  sw    $t2, 0x28($sp)
/* AA160C 8002A46C 0C00A8CB */  jal   func_8002A32C
/* AA1610 8002A470 AFA90024 */   sw    $t1, 0x24($sp)
/* AA1614 8002A474 8FBF0034 */  lw    $ra, 0x34($sp)
/* AA1618 8002A478 27BD0038 */  addiu $sp, $sp, 0x38
/* AA161C 8002A47C 03E00008 */  jr    $ra
/* AA1620 8002A480 00000000 */   nop   

glabel func_8002A484
/* AA1624 8002A484 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AA1628 8002A488 AFA60028 */  sw    $a2, 0x28($sp)
/* AA162C 8002A48C 87AE002A */  lh    $t6, 0x2a($sp)
/* AA1630 8002A490 44856000 */  mtc1  $a1, $f12
/* AA1634 8002A494 AFBF001C */  sw    $ra, 0x1c($sp)
/* AA1638 8002A498 8C851C44 */  lw    $a1, 0x1c44($a0)
/* AA163C 8002A49C 000E7880 */  sll   $t7, $t6, 2
/* AA1640 8002A4A0 44877000 */  mtc1  $a3, $f14
/* AA1644 8002A4A4 01EE7823 */  subu  $t7, $t7, $t6
/* AA1648 8002A4A8 000F7880 */  sll   $t7, $t7, 2
/* AA164C 8002A4AC 44076000 */  mfc1  $a3, $f12
/* AA1650 8002A4B0 00AF3021 */  addu  $a2, $a1, $t7
/* AA1654 8002A4B4 24C60908 */  addiu $a2, $a2, 0x908
/* AA1658 8002A4B8 AFAE0010 */  sw    $t6, 0x10($sp)
/* AA165C 8002A4BC 0C00A8F1 */  jal   func_8002A3C4
/* AA1660 8002A4C0 E7AE0014 */   swc1  $f14, 0x14($sp)
/* AA1664 8002A4C4 8FBF001C */  lw    $ra, 0x1c($sp)
/* AA1668 8002A4C8 27BD0020 */  addiu $sp, $sp, 0x20
/* AA166C 8002A4CC 03E00008 */  jr    $ra
/* AA1670 8002A4D0 00000000 */   nop   

glabel func_8002A4D4
/* AA1674 8002A4D4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA1678 8002A4D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA167C 8002A4DC AFA40030 */  sw    $a0, 0x30($sp)
/* AA1680 8002A4E0 AFA50034 */  sw    $a1, 0x34($sp)
/* AA1684 8002A4E4 AFA7003C */  sw    $a3, 0x3c($sp)
/* AA1688 8002A4E8 00C02825 */  move  $a1, $a2
/* AA168C 8002A4EC 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1690 8002A4F0 27A4001C */   addiu $a0, $sp, 0x1c
/* AA1694 8002A4F4 8FA40034 */  lw    $a0, 0x34($sp)
/* AA1698 8002A4F8 87AE003E */  lh    $t6, 0x3e($sp)
/* AA169C 8002A4FC 87AF0042 */  lh    $t7, 0x42($sp)
/* AA16A0 8002A500 87B80046 */  lh    $t8, 0x46($sp)
/* AA16A4 8002A504 87B9004A */  lh    $t9, 0x4a($sp)
/* AA16A8 8002A508 AFA40018 */  sw    $a0, 0x18($sp)
/* AA16AC 8002A50C A7AE0028 */  sh    $t6, 0x28($sp)
/* AA16B0 8002A510 A7AF002A */  sh    $t7, 0x2a($sp)
/* AA16B4 8002A514 A7B8002C */  sh    $t8, 0x2c($sp)
/* AA16B8 8002A518 10800003 */  beqz  $a0, .L8002A528
/* AA16BC 8002A51C A7B9002E */   sh    $t9, 0x2e($sp)
/* AA16C0 8002A520 0C00BE0A */  jal   Audio_PlayActorSound2
/* AA16C4 8002A524 24052822 */   li    $a1, 10274
.L8002A528:
/* AA16C8 8002A528 8FA40030 */  lw    $a0, 0x30($sp)
/* AA16CC 8002A52C 2405001D */  li    $a1, 29
/* AA16D0 8002A530 24060080 */  li    $a2, 128
/* AA16D4 8002A534 0C009DE6 */  jal   func_80027798
/* AA16D8 8002A538 27A70018 */   addiu $a3, $sp, 0x18
/* AA16DC 8002A53C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA16E0 8002A540 27BD0030 */  addiu $sp, $sp, 0x30
/* AA16E4 8002A544 03E00008 */  jr    $ra
/* AA16E8 8002A548 00000000 */   nop   

glabel func_8002A54C
/* AA16EC 8002A54C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA16F0 8002A550 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA16F4 8002A554 AFA40030 */  sw    $a0, 0x30($sp)
/* AA16F8 8002A558 AFA50034 */  sw    $a1, 0x34($sp)
/* AA16FC 8002A55C AFA7003C */  sw    $a3, 0x3c($sp)
/* AA1700 8002A560 84CE0000 */  lh    $t6, ($a2)
/* AA1704 8002A564 87A90046 */  lh    $t1, 0x46($sp)
/* AA1708 8002A568 87A80042 */  lh    $t0, 0x42($sp)
/* AA170C 8002A56C 448E2000 */  mtc1  $t6, $f4
/* AA1710 8002A570 87AB004A */  lh    $t3, 0x4a($sp)
/* AA1714 8002A574 00073C00 */  sll   $a3, $a3, 0x10
/* AA1718 8002A578 468021A0 */  cvt.s.w $f6, $f4
/* AA171C 8002A57C 00073C03 */  sra   $a3, $a3, 0x10
/* AA1720 8002A580 352A8000 */  ori   $t2, $t1, 0x8000
/* AA1724 8002A584 00A02025 */  move  $a0, $a1
/* AA1728 8002A588 E7A6001C */  swc1  $f6, 0x1c($sp)
/* AA172C 8002A58C 84CF0002 */  lh    $t7, 2($a2)
/* AA1730 8002A590 448F4000 */  mtc1  $t7, $f8
/* AA1734 8002A594 00000000 */  nop   
/* AA1738 8002A598 468042A0 */  cvt.s.w $f10, $f8
/* AA173C 8002A59C E7AA0020 */  swc1  $f10, 0x20($sp)
/* AA1740 8002A5A0 84D80004 */  lh    $t8, 4($a2)
/* AA1744 8002A5A4 AFA50018 */  sw    $a1, 0x18($sp)
/* AA1748 8002A5A8 A7A70028 */  sh    $a3, 0x28($sp)
/* AA174C 8002A5AC 44988000 */  mtc1  $t8, $f16
/* AA1750 8002A5B0 A7AA002C */  sh    $t2, 0x2c($sp)
/* AA1754 8002A5B4 A7A8002A */  sh    $t0, 0x2a($sp)
/* AA1758 8002A5B8 468084A0 */  cvt.s.w $f18, $f16
/* AA175C 8002A5BC A7AB002E */  sh    $t3, 0x2e($sp)
/* AA1760 8002A5C0 10A00003 */  beqz  $a1, .L8002A5D0
/* AA1764 8002A5C4 E7B20024 */   swc1  $f18, 0x24($sp)
/* AA1768 8002A5C8 0C00BE0A */  jal   Audio_PlayActorSound2
/* AA176C 8002A5CC 24052822 */   li    $a1, 10274
.L8002A5D0:
/* AA1770 8002A5D0 8FA40030 */  lw    $a0, 0x30($sp)
/* AA1774 8002A5D4 2405001D */  li    $a1, 29
/* AA1778 8002A5D8 24060080 */  li    $a2, 128
/* AA177C 8002A5DC 0C009DE6 */  jal   func_80027798
/* AA1780 8002A5E0 27A70018 */   addiu $a3, $sp, 0x18
/* AA1784 8002A5E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA1788 8002A5E8 27BD0030 */  addiu $sp, $sp, 0x30
/* AA178C 8002A5EC 03E00008 */  jr    $ra
/* AA1790 8002A5F0 00000000 */   nop   

glabel func_8002A5F4
/* AA1794 8002A5F4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AA1798 8002A5F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA179C 8002A5FC AFA40040 */  sw    $a0, 0x40($sp)
/* AA17A0 8002A600 AFA60048 */  sw    $a2, 0x48($sp)
/* AA17A4 8002A604 AFA7004C */  sw    $a3, 0x4c($sp)
/* AA17A8 8002A608 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA17AC 8002A60C 27A40018 */   addiu $a0, $sp, 0x18
/* AA17B0 8002A610 27A40024 */  addiu $a0, $sp, 0x24
/* AA17B4 8002A614 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA17B8 8002A618 8FA50048 */   lw    $a1, 0x48($sp)
/* AA17BC 8002A61C 27A40030 */  addiu $a0, $sp, 0x30
/* AA17C0 8002A620 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA17C4 8002A624 8FA5004C */   lw    $a1, 0x4c($sp)
/* AA17C8 8002A628 87AE0052 */  lh    $t6, 0x52($sp)
/* AA17CC 8002A62C 87AF0056 */  lh    $t7, 0x56($sp)
/* AA17D0 8002A630 8FA40040 */  lw    $a0, 0x40($sp)
/* AA17D4 8002A634 2405001E */  li    $a1, 30
/* AA17D8 8002A638 24060064 */  li    $a2, 100
/* AA17DC 8002A63C 27A70018 */  addiu $a3, $sp, 0x18
/* AA17E0 8002A640 A7AE003C */  sh    $t6, 0x3c($sp)
/* AA17E4 8002A644 0C009DE6 */  jal   func_80027798
/* AA17E8 8002A648 A7AF003E */   sh    $t7, 0x3e($sp)
/* AA17EC 8002A64C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA17F0 8002A650 27BD0040 */  addiu $sp, $sp, 0x40
/* AA17F4 8002A654 03E00008 */  jr    $ra
/* AA17F8 8002A658 00000000 */   nop   

glabel func_8002A65C
/* AA17FC 8002A65C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA1800 8002A660 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA1804 8002A664 AFA40030 */  sw    $a0, 0x30($sp)
/* AA1808 8002A668 AFA50034 */  sw    $a1, 0x34($sp)
/* AA180C 8002A66C AFA7003C */  sw    $a3, 0x3c($sp)
/* AA1810 8002A670 00C02825 */  move  $a1, $a2
/* AA1814 8002A674 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1818 8002A678 27A40020 */   addiu $a0, $sp, 0x20
/* AA181C 8002A67C 8FAE0034 */  lw    $t6, 0x34($sp)
/* AA1820 8002A680 87AF003E */  lh    $t7, 0x3e($sp)
/* AA1824 8002A684 87B80042 */  lh    $t8, 0x42($sp)
/* AA1828 8002A688 8FA40030 */  lw    $a0, 0x30($sp)
/* AA182C 8002A68C 2405001F */  li    $a1, 31
/* AA1830 8002A690 24060080 */  li    $a2, 128
/* AA1834 8002A694 27A7001C */  addiu $a3, $sp, 0x1c
/* AA1838 8002A698 AFAE001C */  sw    $t6, 0x1c($sp)
/* AA183C 8002A69C A7AF002C */  sh    $t7, 0x2c($sp)
/* AA1840 8002A6A0 0C009DE6 */  jal   func_80027798
/* AA1844 8002A6A4 A7B8002E */   sh    $t8, 0x2e($sp)
/* AA1848 8002A6A8 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA184C 8002A6AC 27BD0030 */  addiu $sp, $sp, 0x30
/* AA1850 8002A6B0 03E00008 */  jr    $ra
/* AA1854 8002A6B4 00000000 */   nop   

glabel func_8002A6B8
/* AA1858 8002A6B8 27BDFFA8 */  addiu $sp, $sp, -0x58
/* AA185C 8002A6BC AFBF0014 */  sw    $ra, 0x14($sp)
/* AA1860 8002A6C0 AFA40058 */  sw    $a0, 0x58($sp)
/* AA1864 8002A6C4 AFA60060 */  sw    $a2, 0x60($sp)
/* AA1868 8002A6C8 AFA70064 */  sw    $a3, 0x64($sp)
/* AA186C 8002A6CC 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1870 8002A6D0 27A4001C */   addiu $a0, $sp, 0x1c
/* AA1874 8002A6D4 27A40028 */  addiu $a0, $sp, 0x28
/* AA1878 8002A6D8 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA187C 8002A6DC 8FA50060 */   lw    $a1, 0x60($sp)
/* AA1880 8002A6E0 27A40034 */  addiu $a0, $sp, 0x34
/* AA1884 8002A6E4 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1888 8002A6E8 8FA50064 */   lw    $a1, 0x64($sp)
/* AA188C 8002A6EC 87AE006A */  lh    $t6, 0x6a($sp)
/* AA1890 8002A6F0 87AF006E */  lh    $t7, 0x6e($sp)
/* AA1894 8002A6F4 87B80072 */  lh    $t8, 0x72($sp)
/* AA1898 8002A6F8 A7AE0040 */  sh    $t6, 0x40($sp)
/* AA189C 8002A6FC A7AF0042 */  sh    $t7, 0x42($sp)
/* AA18A0 8002A700 87B90076 */  lh    $t9, 0x76($sp)
/* AA18A4 8002A704 87A8007A */  lh    $t0, 0x7a($sp)
/* AA18A8 8002A708 87A9007E */  lh    $t1, 0x7e($sp)
/* AA18AC 8002A70C 87AA0082 */  lh    $t2, 0x82($sp)
/* AA18B0 8002A710 87AB0086 */  lh    $t3, 0x86($sp)
/* AA18B4 8002A714 87AC008A */  lh    $t4, 0x8a($sp)
/* AA18B8 8002A718 87AD008E */  lh    $t5, 0x8e($sp)
/* AA18BC 8002A71C 8FAE0090 */  lw    $t6, 0x90($sp)
/* AA18C0 8002A720 87AF0096 */  lh    $t7, 0x96($sp)
/* AA18C4 8002A724 8FA40058 */  lw    $a0, 0x58($sp)
/* AA18C8 8002A728 24050020 */  li    $a1, 32
/* AA18CC 8002A72C 24060078 */  li    $a2, 120
/* AA18D0 8002A730 27A7001C */  addiu $a3, $sp, 0x1c
/* AA18D4 8002A734 A3B80044 */  sb    $t8, 0x44($sp)
/* AA18D8 8002A738 A3B90045 */  sb    $t9, 0x45($sp)
/* AA18DC 8002A73C A3A80046 */  sb    $t0, 0x46($sp)
/* AA18E0 8002A740 A3A90047 */  sb    $t1, 0x47($sp)
/* AA18E4 8002A744 A3AA0048 */  sb    $t2, 0x48($sp)
/* AA18E8 8002A748 A3AB0049 */  sb    $t3, 0x49($sp)
/* AA18EC 8002A74C A3AC004A */  sb    $t4, 0x4a($sp)
/* AA18F0 8002A750 A7AD004C */  sh    $t5, 0x4c($sp)
/* AA18F4 8002A754 AFAE0050 */  sw    $t6, 0x50($sp)
/* AA18F8 8002A758 0C009DE6 */  jal   func_80027798
/* AA18FC 8002A75C A7AF0054 */   sh    $t7, 0x54($sp)
/* AA1900 8002A760 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA1904 8002A764 27BD0058 */  addiu $sp, $sp, 0x58
/* AA1908 8002A768 03E00008 */  jr    $ra
/* AA190C 8002A76C 00000000 */   nop   

glabel func_8002A770
/* AA1910 8002A770 27BDFFA0 */  addiu $sp, $sp, -0x60
/* AA1914 8002A774 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA1918 8002A778 AFA40060 */  sw    $a0, 0x60($sp)
/* AA191C 8002A77C AFA60068 */  sw    $a2, 0x68($sp)
/* AA1920 8002A780 AFA7006C */  sw    $a3, 0x6c($sp)
/* AA1924 8002A784 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1928 8002A788 27A4001C */   addiu $a0, $sp, 0x1c
/* AA192C 8002A78C 27A40028 */  addiu $a0, $sp, 0x28
/* AA1930 8002A790 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1934 8002A794 8FA50068 */   lw    $a1, 0x68($sp)
/* AA1938 8002A798 27A40034 */  addiu $a0, $sp, 0x34
/* AA193C 8002A79C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1940 8002A7A0 8FA5006C */   lw    $a1, 0x6c($sp)
/* AA1944 8002A7A4 87AE0072 */  lh    $t6, 0x72($sp)
/* AA1948 8002A7A8 87AF0076 */  lh    $t7, 0x76($sp)
/* AA194C 8002A7AC 87B8007A */  lh    $t8, 0x7a($sp)
/* AA1950 8002A7B0 A7AE0040 */  sh    $t6, 0x40($sp)
/* AA1954 8002A7B4 87B9007E */  lh    $t9, 0x7e($sp)
/* AA1958 8002A7B8 87A80082 */  lh    $t0, 0x82($sp)
/* AA195C 8002A7BC 87A90086 */  lh    $t1, 0x86($sp)
/* AA1960 8002A7C0 87AA008A */  lh    $t2, 0x8a($sp)
/* AA1964 8002A7C4 87AB008E */  lh    $t3, 0x8e($sp)
/* AA1968 8002A7C8 87AC0092 */  lh    $t4, 0x92($sp)
/* AA196C 8002A7CC 87AD0096 */  lh    $t5, 0x96($sp)
/* AA1970 8002A7D0 8FAE0098 */  lw    $t6, 0x98($sp)
/* AA1974 8002A7D4 A3A0005C */  sb    $zero, 0x5c($sp)
/* AA1978 8002A7D8 8FA40060 */  lw    $a0, 0x60($sp)
/* AA197C 8002A7DC 24050021 */  li    $a1, 33
/* AA1980 8002A7E0 24060078 */  li    $a2, 120
/* AA1984 8002A7E4 27A7001C */  addiu $a3, $sp, 0x1c
/* AA1988 8002A7E8 A7AF0042 */  sh    $t7, 0x42($sp)
/* AA198C 8002A7EC A3B80044 */  sb    $t8, 0x44($sp)
/* AA1990 8002A7F0 A3B90045 */  sb    $t9, 0x45($sp)
/* AA1994 8002A7F4 A3A80046 */  sb    $t0, 0x46($sp)
/* AA1998 8002A7F8 A3A90047 */  sb    $t1, 0x47($sp)
/* AA199C 8002A7FC A3AA0048 */  sb    $t2, 0x48($sp)
/* AA19A0 8002A800 A3AB0049 */  sb    $t3, 0x49($sp)
/* AA19A4 8002A804 A3AC004A */  sb    $t4, 0x4a($sp)
/* AA19A8 8002A808 A7AD004C */  sh    $t5, 0x4c($sp)
/* AA19AC 8002A80C 0C009DE6 */  jal   func_80027798
/* AA19B0 8002A810 AFAE0050 */   sw    $t6, 0x50($sp)
/* AA19B4 8002A814 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA19B8 8002A818 27BD0060 */  addiu $sp, $sp, 0x60
/* AA19BC 8002A81C 03E00008 */  jr    $ra
/* AA19C0 8002A820 00000000 */   nop   

glabel func_8002A824
/* AA19C4 8002A824 27BDFFA0 */  addiu $sp, $sp, -0x60
/* AA19C8 8002A828 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA19CC 8002A82C AFA40060 */  sw    $a0, 0x60($sp)
/* AA19D0 8002A830 AFA60068 */  sw    $a2, 0x68($sp)
/* AA19D4 8002A834 AFA7006C */  sw    $a3, 0x6c($sp)
/* AA19D8 8002A838 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA19DC 8002A83C 27A4001C */   addiu $a0, $sp, 0x1c
/* AA19E0 8002A840 87AE006A */  lh    $t6, 0x6a($sp)
/* AA19E4 8002A844 87AF006E */  lh    $t7, 0x6e($sp)
/* AA19E8 8002A848 C7A40070 */  lwc1  $f4, 0x70($sp)
/* AA19EC 8002A84C 8FB80074 */  lw    $t8, 0x74($sp)
/* AA19F0 8002A850 8FB90078 */  lw    $t9, 0x78($sp)
/* AA19F4 8002A854 24080001 */  li    $t0, 1
/* AA19F8 8002A858 A3A8005C */  sb    $t0, 0x5c($sp)
/* AA19FC 8002A85C 8FA40060 */  lw    $a0, 0x60($sp)
/* AA1A00 8002A860 24050021 */  li    $a1, 33
/* AA1A04 8002A864 24060078 */  li    $a2, 120
/* AA1A08 8002A868 27A7001C */  addiu $a3, $sp, 0x1c
/* AA1A0C 8002A86C A7AE0040 */  sh    $t6, 0x40($sp)
/* AA1A10 8002A870 A7AF0042 */  sh    $t7, 0x42($sp)
/* AA1A14 8002A874 E7A40054 */  swc1  $f4, 0x54($sp)
/* AA1A18 8002A878 AFB80058 */  sw    $t8, 0x58($sp)
/* AA1A1C 8002A87C 0C009DE6 */  jal   func_80027798
/* AA1A20 8002A880 AFB90050 */   sw    $t9, 0x50($sp)
/* AA1A24 8002A884 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA1A28 8002A888 27BD0060 */  addiu $sp, $sp, 0x60
/* AA1A2C 8002A88C 03E00008 */  jr    $ra
/* AA1A30 8002A890 00000000 */   nop   

glabel func_8002A894
/* AA1A34 8002A894 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AA1A38 8002A898 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA1A3C 8002A89C AFA40048 */  sw    $a0, 0x48($sp)
/* AA1A40 8002A8A0 AFA60050 */  sw    $a2, 0x50($sp)
/* AA1A44 8002A8A4 AFA70054 */  sw    $a3, 0x54($sp)
/* AA1A48 8002A8A8 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1A4C 8002A8AC 27A40018 */   addiu $a0, $sp, 0x18
/* AA1A50 8002A8B0 27A40024 */  addiu $a0, $sp, 0x24
/* AA1A54 8002A8B4 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1A58 8002A8B8 8FA50050 */   lw    $a1, 0x50($sp)
/* AA1A5C 8002A8BC 27A40030 */  addiu $a0, $sp, 0x30
/* AA1A60 8002A8C0 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1A64 8002A8C4 8FA50054 */   lw    $a1, 0x54($sp)
/* AA1A68 8002A8C8 87AE005A */  lh    $t6, 0x5a($sp)
/* AA1A6C 8002A8CC 87AF005E */  lh    $t7, 0x5e($sp)
/* AA1A70 8002A8D0 87B80062 */  lh    $t8, 0x62($sp)
/* AA1A74 8002A8D4 8FB90064 */  lw    $t9, 0x64($sp)
/* AA1A78 8002A8D8 8FA40048 */  lw    $a0, 0x48($sp)
/* AA1A7C 8002A8DC 24050022 */  li    $a1, 34
/* AA1A80 8002A8E0 24060064 */  li    $a2, 100
/* AA1A84 8002A8E4 27A70018 */  addiu $a3, $sp, 0x18
/* AA1A88 8002A8E8 A7AE003C */  sh    $t6, 0x3c($sp)
/* AA1A8C 8002A8EC A7AF003E */  sh    $t7, 0x3e($sp)
/* AA1A90 8002A8F0 A7B80040 */  sh    $t8, 0x40($sp)
/* AA1A94 8002A8F4 0C009DE6 */  jal   func_80027798
/* AA1A98 8002A8F8 AFB90044 */   sw    $t9, 0x44($sp)
/* AA1A9C 8002A8FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA1AA0 8002A900 27BD0048 */  addiu $sp, $sp, 0x48
/* AA1AA4 8002A904 03E00008 */  jr    $ra
/* AA1AA8 8002A908 00000000 */   nop   

glabel func_8002A90C
/* AA1AAC 8002A90C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AA1AB0 8002A910 AFA60030 */  sw    $a2, 0x30($sp)
/* AA1AB4 8002A914 AFA70034 */  sw    $a3, 0x34($sp)
/* AA1AB8 8002A918 87AF0036 */  lh    $t7, 0x36($sp)
/* AA1ABC 8002A91C 87AE0032 */  lh    $t6, 0x32($sp)
/* AA1AC0 8002A920 87B8003A */  lh    $t8, 0x3a($sp)
/* AA1AC4 8002A924 8FB9003C */  lw    $t9, 0x3c($sp)
/* AA1AC8 8002A928 3C068011 */  lui   $a2, %hi(D_801158C0) # $a2, 0x8011
/* AA1ACC 8002A92C 24C658C0 */  addiu $a2, %lo(D_801158C0) # addiu $a2, $a2, 0x58c0
/* AA1AD0 8002A930 AFBF0024 */  sw    $ra, 0x24($sp)
/* AA1AD4 8002A934 00C03825 */  move  $a3, $a2
/* AA1AD8 8002A938 AFAF0014 */  sw    $t7, 0x14($sp)
/* AA1ADC 8002A93C AFAE0010 */  sw    $t6, 0x10($sp)
/* AA1AE0 8002A940 AFB80018 */  sw    $t8, 0x18($sp)
/* AA1AE4 8002A944 0C00AA25 */  jal   func_8002A894
/* AA1AE8 8002A948 AFB9001C */   sw    $t9, 0x1c($sp)
/* AA1AEC 8002A94C 8FBF0024 */  lw    $ra, 0x24($sp)
/* AA1AF0 8002A950 27BD0028 */  addiu $sp, $sp, 0x28
/* AA1AF4 8002A954 03E00008 */  jr    $ra
/* AA1AF8 8002A958 00000000 */   nop   

glabel func_8002A95C
/* AA1AFC 8002A95C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AA1B00 8002A960 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA1B04 8002A964 AFA40048 */  sw    $a0, 0x48($sp)
/* AA1B08 8002A968 AFA60050 */  sw    $a2, 0x50($sp)
/* AA1B0C 8002A96C AFA70054 */  sw    $a3, 0x54($sp)
/* AA1B10 8002A970 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1B14 8002A974 27A40018 */   addiu $a0, $sp, 0x18
/* AA1B18 8002A978 27A40024 */  addiu $a0, $sp, 0x24
/* AA1B1C 8002A97C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1B20 8002A980 8FA50050 */   lw    $a1, 0x50($sp)
/* AA1B24 8002A984 27A40030 */  addiu $a0, $sp, 0x30
/* AA1B28 8002A988 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1B2C 8002A98C 8FA50054 */   lw    $a1, 0x54($sp)
/* AA1B30 8002A990 87A2005E */  lh    $v0, 0x5e($sp)
/* AA1B34 8002A994 97AE005A */  lhu   $t6, 0x5a($sp)
/* AA1B38 8002A998 87AF0062 */  lh    $t7, 0x62($sp)
/* AA1B3C 8002A99C 8FB80064 */  lw    $t8, 0x64($sp)
/* AA1B40 8002A9A0 A7A2003E */  sh    $v0, 0x3e($sp)
/* AA1B44 8002A9A4 A7AE003C */  sh    $t6, 0x3c($sp)
/* AA1B48 8002A9A8 A7AF0040 */  sh    $t7, 0x40($sp)
/* AA1B4C 8002A9AC 14400008 */  bnez  $v0, .L8002A9D0
/* AA1B50 8002A9B0 AFB80044 */   sw    $t8, 0x44($sp)
/* AA1B54 8002A9B4 8FA40048 */  lw    $a0, 0x48($sp)
/* AA1B58 8002A9B8 24050023 */  li    $a1, 35
/* AA1B5C 8002A9BC 24060064 */  li    $a2, 100
/* AA1B60 8002A9C0 0C009DE6 */  jal   func_80027798
/* AA1B64 8002A9C4 27A70018 */   addiu $a3, $sp, 0x18
/* AA1B68 8002A9C8 10000007 */  b     .L8002A9E8
/* AA1B6C 8002A9CC 8FBF0014 */   lw    $ra, 0x14($sp)
.L8002A9D0:
/* AA1B70 8002A9D0 8FA40048 */  lw    $a0, 0x48($sp)
/* AA1B74 8002A9D4 24050023 */  li    $a1, 35
/* AA1B78 8002A9D8 2406007F */  li    $a2, 127
/* AA1B7C 8002A9DC 0C009DE6 */  jal   func_80027798
/* AA1B80 8002A9E0 27A70018 */   addiu $a3, $sp, 0x18
/* AA1B84 8002A9E4 8FBF0014 */  lw    $ra, 0x14($sp)
.L8002A9E8:
/* AA1B88 8002A9E8 27BD0048 */  addiu $sp, $sp, 0x48
/* AA1B8C 8002A9EC 03E00008 */  jr    $ra
/* AA1B90 8002A9F0 00000000 */   nop   

glabel func_8002A9F4
/* AA1B94 8002A9F4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AA1B98 8002A9F8 AFA60030 */  sw    $a2, 0x30($sp)
/* AA1B9C 8002A9FC AFA70034 */  sw    $a3, 0x34($sp)
/* AA1BA0 8002AA00 87AF0036 */  lh    $t7, 0x36($sp)
/* AA1BA4 8002AA04 97AE0032 */  lhu   $t6, 0x32($sp)
/* AA1BA8 8002AA08 87B8003A */  lh    $t8, 0x3a($sp)
/* AA1BAC 8002AA0C 8FB9003C */  lw    $t9, 0x3c($sp)
/* AA1BB0 8002AA10 3C068011 */  lui   $a2, %hi(D_801158C0) # $a2, 0x8011
/* AA1BB4 8002AA14 24C658C0 */  addiu $a2, %lo(D_801158C0) # addiu $a2, $a2, 0x58c0
/* AA1BB8 8002AA18 AFBF0024 */  sw    $ra, 0x24($sp)
/* AA1BBC 8002AA1C 00C03825 */  move  $a3, $a2
/* AA1BC0 8002AA20 AFAF0014 */  sw    $t7, 0x14($sp)
/* AA1BC4 8002AA24 AFAE0010 */  sw    $t6, 0x10($sp)
/* AA1BC8 8002AA28 AFB80018 */  sw    $t8, 0x18($sp)
/* AA1BCC 8002AA2C 0C00AA57 */  jal   func_8002A95C
/* AA1BD0 8002AA30 AFB9001C */   sw    $t9, 0x1c($sp)
/* AA1BD4 8002AA34 8FBF0024 */  lw    $ra, 0x24($sp)
/* AA1BD8 8002AA38 27BD0028 */  addiu $sp, $sp, 0x28
/* AA1BDC 8002AA3C 03E00008 */  jr    $ra
/* AA1BE0 8002AA40 00000000 */   nop   

glabel func_8002AA44
/* AA1BE4 8002AA44 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AA1BE8 8002AA48 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA1BEC 8002AA4C AFA40040 */  sw    $a0, 0x40($sp)
/* AA1BF0 8002AA50 AFA60048 */  sw    $a2, 0x48($sp)
/* AA1BF4 8002AA54 AFA7004C */  sw    $a3, 0x4c($sp)
/* AA1BF8 8002AA58 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1BFC 8002AA5C 27A40018 */   addiu $a0, $sp, 0x18
/* AA1C00 8002AA60 27A40024 */  addiu $a0, $sp, 0x24
/* AA1C04 8002AA64 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1C08 8002AA68 8FA50048 */   lw    $a1, 0x48($sp)
/* AA1C0C 8002AA6C 27A40030 */  addiu $a0, $sp, 0x30
/* AA1C10 8002AA70 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1C14 8002AA74 8FA5004C */   lw    $a1, 0x4c($sp)
/* AA1C18 8002AA78 87AE0052 */  lh    $t6, 0x52($sp)
/* AA1C1C 8002AA7C 8FA40040 */  lw    $a0, 0x40($sp)
/* AA1C20 8002AA80 24050024 */  li    $a1, 36
/* AA1C24 8002AA84 24060080 */  li    $a2, 128
/* AA1C28 8002AA88 27A70018 */  addiu $a3, $sp, 0x18
/* AA1C2C 8002AA8C 0C009DE6 */  jal   func_80027798
/* AA1C30 8002AA90 A7AE003C */   sh    $t6, 0x3c($sp)
/* AA1C34 8002AA94 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA1C38 8002AA98 27BD0040 */  addiu $sp, $sp, 0x40
/* AA1C3C 8002AA9C 03E00008 */  jr    $ra
/* AA1C40 8002AAA0 00000000 */   nop   
