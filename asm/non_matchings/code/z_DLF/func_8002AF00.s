.rdata
glabel D_80136010
    .incbin "baserom.z64", 0xBAD1B0, 0x18

glabel D_80136028
    .incbin "baserom.z64", 0xBAD1C8, 0x18

glabel D_80136040
    .incbin "baserom.z64", 0xBAD1E0, 0x8

glabel D_80136048
    .incbin "baserom.z64", 0xBAD1E8, 0x30

glabel D_80136078
    .incbin "baserom.z64", 0xBAD218, 0x4

glabel D_8013607C
    .incbin "baserom.z64", 0xBAD21C, 0x4

.text
glabel func_8002AF00
/* AA20A0 8002AF00 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA20A4 8002AF04 AFBF002C */  sw    $ra, 0x2c($sp)
/* AA20A8 8002AF08 AFB00028 */  sw    $s0, 0x28($sp)
/* AA20AC 8002AF0C 8C8E0000 */  lw    $t6, ($a0)
/* AA20B0 8002AF10 00808025 */  move  $s0, $a0
/* AA20B4 8002AF14 3C048013 */  lui   $a0, %hi(D_80136010) # $a0, 0x8013
/* AA20B8 8002AF18 51C00006 */  beql  $t6, $zero, .L8002AF34
/* AA20BC 8002AF1C 8E06000C */   lw    $a2, 0xc($s0)
/* AA20C0 8002AF20 0C00084C */  jal   osSyncPrintf
/* AA20C4 8002AF24 24846010 */   addiu $a0, %lo(D_80136010) # addiu $a0, $a0, 0x6010
/* AA20C8 8002AF28 1000005B */  b     .L8002B098
/* AA20CC 8002AF2C 8FBF002C */   lw    $ra, 0x2c($sp)
/* AA20D0 8002AF30 8E06000C */  lw    $a2, 0xc($s0)
.L8002AF34:
/* AA20D4 8002AF34 54C00004 */  bnezl $a2, .L8002AF48
/* AA20D8 8002AF38 8E040004 */   lw    $a0, 4($s0)
/* AA20DC 8002AF3C 10000055 */  b     .L8002B094
/* AA20E0 8002AF40 AE000028 */   sw    $zero, 0x28($s0)
/* AA20E4 8002AF44 8E040004 */  lw    $a0, 4($s0)
.L8002AF48:
/* AA20E8 8002AF48 8E050008 */  lw    $a1, 8($s0)
/* AA20EC 8002AF4C 0C03F004 */  jal   func_800FC010
/* AA20F0 8002AF50 8E070010 */   lw    $a3, 0x10($s0)
/* AA20F4 8002AF54 14400006 */  bnez  $v0, .L8002AF70
/* AA20F8 8002AF58 AE020000 */   sw    $v0, ($s0)
/* AA20FC 8002AF5C 3C048013 */  lui   $a0, %hi(D_80136028) # $a0, 0x8013
/* AA2100 8002AF60 0C00084C */  jal   osSyncPrintf
/* AA2104 8002AF64 24846028 */   addiu $a0, %lo(D_80136028) # addiu $a0, $a0, 0x6028
/* AA2108 8002AF68 1000004B */  b     .L8002B098
/* AA210C 8002AF6C 8FBF002C */   lw    $ra, 0x2c($sp)
.L8002AF70:
/* AA2110 8002AF70 3C048013 */  lui   $a0, %hi(D_80136040) # $a0, 0x8013
/* AA2114 8002AF74 0C00084C */  jal   osSyncPrintf
/* AA2118 8002AF78 24846040 */   addiu $a0, %lo(D_80136040) # addiu $a0, $a0, 0x6040
/* AA211C 8002AF7C 8E05000C */  lw    $a1, 0xc($s0)
/* AA2120 8002AF80 8E060010 */  lw    $a2, 0x10($s0)
/* AA2124 8002AF84 8E070000 */  lw    $a3, ($s0)
/* AA2128 8002AF88 3C088013 */  lui   $t0, %hi(D_80136078) # $t0, 0x8013
/* AA212C 8002AF8C 25086078 */  addiu $t0, %lo(D_80136078) # addiu $t0, $t0, 0x6078
/* AA2130 8002AF90 00E67821 */  addu  $t7, $a3, $a2
/* AA2134 8002AF94 3C048013 */  lui   $a0, %hi(D_80136048) # $a0, 0x8013
/* AA2138 8002AF98 01E5C023 */  subu  $t8, $t7, $a1
/* AA213C 8002AF9C 00A7C823 */  subu  $t9, $a1, $a3
/* AA2140 8002AFA0 AFB90014 */  sw    $t9, 0x14($sp)
/* AA2144 8002AFA4 AFB80010 */  sw    $t8, 0x10($sp)
/* AA2148 8002AFA8 24846048 */  addiu $a0, %lo(D_80136048) # addiu $a0, $a0, 0x6048
/* AA214C 8002AFAC AFA80018 */  sw    $t0, 0x18($sp)
/* AA2150 8002AFB0 00A01825 */  move  $v1, $a1
/* AA2154 8002AFB4 0C00084C */  jal   osSyncPrintf
/* AA2158 8002AFB8 00E01025 */   move  $v0, $a3
/* AA215C 8002AFBC 3C048013 */  lui   $a0, %hi(D_8013607C) # $a0, 0x8013
/* AA2160 8002AFC0 0C00084C */  jal   osSyncPrintf
/* AA2164 8002AFC4 2484607C */   addiu $a0, %lo(D_8013607C) # addiu $a0, $a0, 0x607c
/* AA2168 8002AFC8 8E020014 */  lw    $v0, 0x14($s0)
/* AA216C 8002AFCC 50400008 */  beql  $v0, $zero, .L8002AFF0
/* AA2170 8002AFD0 AE000014 */   sw    $zero, 0x14($s0)
/* AA2174 8002AFD4 8E09000C */  lw    $t1, 0xc($s0)
/* AA2178 8002AFD8 8E0A0000 */  lw    $t2, ($s0)
/* AA217C 8002AFDC 012A5823 */  subu  $t3, $t1, $t2
/* AA2180 8002AFE0 004B6023 */  subu  $t4, $v0, $t3
/* AA2184 8002AFE4 10000002 */  b     .L8002AFF0
/* AA2188 8002AFE8 AE0C0014 */   sw    $t4, 0x14($s0)
/* AA218C 8002AFEC AE000014 */  sw    $zero, 0x14($s0)
.L8002AFF0:
/* AA2190 8002AFF0 8E020018 */  lw    $v0, 0x18($s0)
/* AA2194 8002AFF4 50400008 */  beql  $v0, $zero, .L8002B018
/* AA2198 8002AFF8 AE000018 */   sw    $zero, 0x18($s0)
/* AA219C 8002AFFC 8E0D000C */  lw    $t5, 0xc($s0)
/* AA21A0 8002B000 8E0E0000 */  lw    $t6, ($s0)
/* AA21A4 8002B004 01AE7823 */  subu  $t7, $t5, $t6
/* AA21A8 8002B008 004FC023 */  subu  $t8, $v0, $t7
/* AA21AC 8002B00C 10000002 */  b     .L8002B018
/* AA21B0 8002B010 AE180018 */   sw    $t8, 0x18($s0)
/* AA21B4 8002B014 AE000018 */  sw    $zero, 0x18($s0)
.L8002B018:
/* AA21B8 8002B018 8E02001C */  lw    $v0, 0x1c($s0)
/* AA21BC 8002B01C 50400008 */  beql  $v0, $zero, .L8002B040
/* AA21C0 8002B020 AE00001C */   sw    $zero, 0x1c($s0)
/* AA21C4 8002B024 8E19000C */  lw    $t9, 0xc($s0)
/* AA21C8 8002B028 8E080000 */  lw    $t0, ($s0)
/* AA21CC 8002B02C 03284823 */  subu  $t1, $t9, $t0
/* AA21D0 8002B030 00495023 */  subu  $t2, $v0, $t1
/* AA21D4 8002B034 10000002 */  b     .L8002B040
/* AA21D8 8002B038 AE0A001C */   sw    $t2, 0x1c($s0)
/* AA21DC 8002B03C AE00001C */  sw    $zero, 0x1c($s0)
.L8002B040:
/* AA21E0 8002B040 8E020020 */  lw    $v0, 0x20($s0)
/* AA21E4 8002B044 50400008 */  beql  $v0, $zero, .L8002B068
/* AA21E8 8002B048 AE000020 */   sw    $zero, 0x20($s0)
/* AA21EC 8002B04C 8E0B000C */  lw    $t3, 0xc($s0)
/* AA21F0 8002B050 8E0C0000 */  lw    $t4, ($s0)
/* AA21F4 8002B054 016C6823 */  subu  $t5, $t3, $t4
/* AA21F8 8002B058 004D7023 */  subu  $t6, $v0, $t5
/* AA21FC 8002B05C 10000002 */  b     .L8002B068
/* AA2200 8002B060 AE0E0020 */   sw    $t6, 0x20($s0)
/* AA2204 8002B064 AE000020 */  sw    $zero, 0x20($s0)
.L8002B068:
/* AA2208 8002B068 8E020024 */  lw    $v0, 0x24($s0)
/* AA220C 8002B06C 50400008 */  beql  $v0, $zero, .L8002B090
/* AA2210 8002B070 AE000024 */   sw    $zero, 0x24($s0)
/* AA2214 8002B074 8E0F000C */  lw    $t7, 0xc($s0)
/* AA2218 8002B078 8E180000 */  lw    $t8, ($s0)
/* AA221C 8002B07C 01F8C823 */  subu  $t9, $t7, $t8
/* AA2220 8002B080 00594023 */  subu  $t0, $v0, $t9
/* AA2224 8002B084 10000002 */  b     .L8002B090
/* AA2228 8002B088 AE080024 */   sw    $t0, 0x24($s0)
/* AA222C 8002B08C AE000024 */  sw    $zero, 0x24($s0)
.L8002B090:
/* AA2230 8002B090 AE000028 */  sw    $zero, 0x28($s0)
.L8002B094:
/* AA2234 8002B094 8FBF002C */  lw    $ra, 0x2c($sp)
.L8002B098:
/* AA2238 8002B098 8FB00028 */  lw    $s0, 0x28($sp)
/* AA223C 8002B09C 27BD0030 */  addiu $sp, $sp, 0x30
/* AA2240 8002B0A0 03E00008 */  jr    $ra
/* AA2244 8002B0A4 00000000 */   nop   

