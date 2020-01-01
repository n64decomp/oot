.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_8007AE10
/* AF1FB0 8007AE10 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AF1FB4 8007AE14 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF1FB8 8007AE18 AFA5001C */  sw    $a1, 0x1c($sp)
/* AF1FBC 8007AE1C 1480000F */  bnez  $a0, .L8007AE5C
/* AF1FC0 8007AE20 AFA60020 */   sw    $a2, 0x20($sp)
/* AF1FC4 8007AE24 3C0E8012 */  lui   $t6, %hi(D_80120040) # $t6, 0x8012
/* AF1FC8 8007AE28 8DCE0040 */  lw    $t6, %lo(D_80120040)($t6)
/* AF1FCC 8007AE2C 3C048014 */  lui   $a0, %hi(D_8013C900) # $a0, 0x8014
/* AF1FD0 8007AE30 2484C900 */  addiu $a0, %lo(D_8013C900) # addiu $a0, $a0, -0x3700
/* AF1FD4 8007AE34 29C10002 */  slti  $at, $t6, 2
/* AF1FD8 8007AE38 14200011 */  bnez  $at, .L8007AE80
/* AF1FDC 8007AE3C 00C02825 */   move  $a1, $a2
/* AF1FE0 8007AE40 0C00084C */  jal   osSyncPrintf
/* AF1FE4 8007AE44 8FA6001C */   lw    $a2, 0x1c($sp)
/* AF1FE8 8007AE48 3C048016 */  lui   $a0, %hi(D_8015FF80) # $a0, 0x8016
/* AF1FEC 8007AE4C 0C03FBA0 */  jal   func_800FEE80
/* AF1FF0 8007AE50 2484FF80 */   addiu $a0, %lo(D_8015FF80) # addiu $a0, $a0, -0x80
/* AF1FF4 8007AE54 1000000B */  b     .L8007AE84
/* AF1FF8 8007AE58 8FBF0014 */   lw    $ra, 0x14($sp)
.L8007AE5C:
/* AF1FFC 8007AE5C 3C0F8012 */  lui   $t7, %hi(D_80120040) # $t7, 0x8012
/* AF2000 8007AE60 8DEF0040 */  lw    $t7, %lo(D_80120040)($t7)
/* AF2004 8007AE64 3C048014 */  lui   $a0, %hi(D_8013C924) # $a0, 0x8014
/* AF2008 8007AE68 2484C924 */  addiu $a0, %lo(D_8013C924) # addiu $a0, $a0, -0x36dc
/* AF200C 8007AE6C 29E10003 */  slti  $at, $t7, 3
/* AF2010 8007AE70 14200003 */  bnez  $at, .L8007AE80
/* AF2014 8007AE74 8FA50020 */   lw    $a1, 0x20($sp)
/* AF2018 8007AE78 0C00084C */  jal   osSyncPrintf
/* AF201C 8007AE7C 8FA6001C */   lw    $a2, 0x1c($sp)
.L8007AE80:
/* AF2020 8007AE80 8FBF0014 */  lw    $ra, 0x14($sp)
.L8007AE84:
/* AF2024 8007AE84 27BD0018 */  addiu $sp, $sp, 0x18
/* AF2028 8007AE88 03E00008 */  jr    $ra
/* AF202C 8007AE8C 00000000 */   nop   

glabel func_8007AE90
/* AF2030 8007AE90 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AF2034 8007AE94 AFA40020 */  sw    $a0, 0x20($sp)
/* AF2038 8007AE98 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF203C 8007AE9C 3C048016 */  lui   $a0, %hi(D_8015FF80) # $a0, 0x8016
/* AF2040 8007AEA0 2484FF80 */  addiu $a0, %lo(D_8015FF80) # addiu $a0, $a0, -0x80
/* AF2044 8007AEA4 0C03F911 */  jal   func_800FE444
/* AF2048 8007AEA8 8FA50020 */   lw    $a1, 0x20($sp)
/* AF204C 8007AEAC 3C068014 */  lui   $a2, %hi(D_8013C948) # $a2, 0x8014
/* AF2050 8007AEB0 3C078014 */  lui   $a3, %hi(D_8013C958) # $a3, 0x8014
/* AF2054 8007AEB4 AFA2001C */  sw    $v0, 0x1c($sp)
/* AF2058 8007AEB8 24E7C958 */  addiu $a3, %lo(D_8013C958) # addiu $a3, $a3, -0x36a8
/* AF205C 8007AEBC 24C6C948 */  addiu $a2, %lo(D_8013C948) # addiu $a2, $a2, -0x36b8
/* AF2060 8007AEC0 00402025 */  move  $a0, $v0
/* AF2064 8007AEC4 0C01EB84 */  jal   func_8007AE10
/* AF2068 8007AEC8 8FA50020 */   lw    $a1, 0x20($sp)
/* AF206C 8007AECC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF2070 8007AED0 8FA2001C */  lw    $v0, 0x1c($sp)
/* AF2074 8007AED4 27BD0020 */  addiu $sp, $sp, 0x20
/* AF2078 8007AED8 03E00008 */  jr    $ra
/* AF207C 8007AEDC 00000000 */   nop   

glabel func_8007AEE0
/* AF2080 8007AEE0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AF2084 8007AEE4 AFA40020 */  sw    $a0, 0x20($sp)
/* AF2088 8007AEE8 00C03825 */  move  $a3, $a2
/* AF208C 8007AEEC 00A03025 */  move  $a2, $a1
/* AF2090 8007AEF0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF2094 8007AEF4 AFA50024 */  sw    $a1, 0x24($sp)
/* AF2098 8007AEF8 3C048016 */  lui   $a0, %hi(D_8015FF80) # $a0, 0x8016
/* AF209C 8007AEFC 2484FF80 */  addiu $a0, %lo(D_8015FF80) # addiu $a0, $a0, -0x80
/* AF20A0 8007AF00 0C03F851 */  jal   func_800FE144
/* AF20A4 8007AF04 8FA50020 */   lw    $a1, 0x20($sp)
/* AF20A8 8007AF08 3C068014 */  lui   $a2, %hi(D_8013C960) # $a2, 0x8014
/* AF20AC 8007AF0C 3C078014 */  lui   $a3, %hi(D_8013C974) # $a3, 0x8014
/* AF20B0 8007AF10 AFA2001C */  sw    $v0, 0x1c($sp)
/* AF20B4 8007AF14 24E7C974 */  addiu $a3, %lo(D_8013C974) # addiu $a3, $a3, -0x368c
/* AF20B8 8007AF18 24C6C960 */  addiu $a2, %lo(D_8013C960) # addiu $a2, $a2, -0x36a0
/* AF20BC 8007AF1C 00402025 */  move  $a0, $v0
/* AF20C0 8007AF20 0C01EB84 */  jal   func_8007AE10
/* AF20C4 8007AF24 8FA50020 */   lw    $a1, 0x20($sp)
/* AF20C8 8007AF28 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF20CC 8007AF2C 8FA2001C */  lw    $v0, 0x1c($sp)
/* AF20D0 8007AF30 27BD0020 */  addiu $sp, $sp, 0x20
/* AF20D4 8007AF34 03E00008 */  jr    $ra
/* AF20D8 8007AF38 00000000 */   nop   

glabel func_8007AF3C
/* AF20DC 8007AF3C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AF20E0 8007AF40 AFA40020 */  sw    $a0, 0x20($sp)
/* AF20E4 8007AF44 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF20E8 8007AF48 3C048016 */  lui   $a0, %hi(D_8015FF80) # $a0, 0x8016
/* AF20EC 8007AF4C 2484FF80 */  addiu $a0, %lo(D_8015FF80) # addiu $a0, $a0, -0x80
/* AF20F0 8007AF50 0C03F921 */  jal   func_800FE484
/* AF20F4 8007AF54 8FA50020 */   lw    $a1, 0x20($sp)
/* AF20F8 8007AF58 3C068014 */  lui   $a2, %hi(D_8013C97C) # $a2, 0x8014
/* AF20FC 8007AF5C 3C078014 */  lui   $a3, %hi(D_8013C98C) # $a3, 0x8014
/* AF2100 8007AF60 AFA2001C */  sw    $v0, 0x1c($sp)
/* AF2104 8007AF64 24E7C98C */  addiu $a3, %lo(D_8013C98C) # addiu $a3, $a3, -0x3674
/* AF2108 8007AF68 24C6C97C */  addiu $a2, %lo(D_8013C97C) # addiu $a2, $a2, -0x3684
/* AF210C 8007AF6C 00402025 */  move  $a0, $v0
/* AF2110 8007AF70 0C01EB84 */  jal   func_8007AE10
/* AF2114 8007AF74 8FA50020 */   lw    $a1, 0x20($sp)
/* AF2118 8007AF78 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF211C 8007AF7C 8FA2001C */  lw    $v0, 0x1c($sp)
/* AF2120 8007AF80 27BD0020 */  addiu $sp, $sp, 0x20
/* AF2124 8007AF84 03E00008 */  jr    $ra
/* AF2128 8007AF88 00000000 */   nop   

glabel func_8007AF8C
/* AF212C 8007AF8C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AF2130 8007AF90 AFA40020 */  sw    $a0, 0x20($sp)
/* AF2134 8007AF94 00C03825 */  move  $a3, $a2
/* AF2138 8007AF98 00A03025 */  move  $a2, $a1
/* AF213C 8007AF9C AFBF0014 */  sw    $ra, 0x14($sp)
/* AF2140 8007AFA0 AFA50024 */  sw    $a1, 0x24($sp)
/* AF2144 8007AFA4 3C048016 */  lui   $a0, %hi(D_8015FF80) # $a0, 0x8016
/* AF2148 8007AFA8 2484FF80 */  addiu $a0, %lo(D_8015FF80) # addiu $a0, $a0, -0x80
/* AF214C 8007AFAC 0C03F865 */  jal   func_800FE194
/* AF2150 8007AFB0 8FA50020 */   lw    $a1, 0x20($sp)
/* AF2154 8007AFB4 3C068014 */  lui   $a2, %hi(D_8013C994) # $a2, 0x8014
/* AF2158 8007AFB8 3C078014 */  lui   $a3, %hi(D_8013C9AC) # $a3, 0x8014
/* AF215C 8007AFBC AFA2001C */  sw    $v0, 0x1c($sp)
/* AF2160 8007AFC0 24E7C9AC */  addiu $a3, %lo(D_8013C9AC) # addiu $a3, $a3, -0x3654
/* AF2164 8007AFC4 24C6C994 */  addiu $a2, %lo(D_8013C994) # addiu $a2, $a2, -0x366c
/* AF2168 8007AFC8 00402025 */  move  $a0, $v0
/* AF216C 8007AFCC 0C01EB84 */  jal   func_8007AE10
/* AF2170 8007AFD0 8FA50020 */   lw    $a1, 0x20($sp)
/* AF2174 8007AFD4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF2178 8007AFD8 8FA2001C */  lw    $v0, 0x1c($sp)
/* AF217C 8007AFDC 27BD0020 */  addiu $sp, $sp, 0x20
/* AF2180 8007AFE0 03E00008 */  jr    $ra
/* AF2184 8007AFE4 00000000 */   nop   

glabel func_8007AFE8
/* AF2188 8007AFE8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AF218C 8007AFEC AFA5001C */  sw    $a1, 0x1c($sp)
/* AF2190 8007AFF0 00802825 */  move  $a1, $a0
/* AF2194 8007AFF4 AFA40018 */  sw    $a0, 0x18($sp)
/* AF2198 8007AFF8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF219C 8007AFFC 3C048016 */  lui   $a0, %hi(D_8015FF80) # $a0, 0x8016
/* AF21A0 8007B000 2484FF80 */  addiu $a0, %lo(D_8015FF80) # addiu $a0, $a0, -0x80
/* AF21A4 8007B004 0C03FA9C */  jal   func_800FEA70
/* AF21A8 8007B008 8FA6001C */   lw    $a2, 0x1c($sp)
/* AF21AC 8007B00C 3C068014 */  lui   $a2, %hi(D_8013C9B4) # $a2, 0x8014
/* AF21B0 8007B010 3C078014 */  lui   $a3, %hi(D_8013C9C4) # $a3, 0x8014
/* AF21B4 8007B014 AFA20018 */  sw    $v0, 0x18($sp)
/* AF21B8 8007B018 24E7C9C4 */  addiu $a3, %lo(D_8013C9C4) # addiu $a3, $a3, -0x363c
/* AF21BC 8007B01C 24C6C9B4 */  addiu $a2, %lo(D_8013C9B4) # addiu $a2, $a2, -0x364c
/* AF21C0 8007B020 00402025 */  move  $a0, $v0
/* AF21C4 8007B024 0C01EB84 */  jal   func_8007AE10
/* AF21C8 8007B028 8FA5001C */   lw    $a1, 0x1c($sp)
/* AF21CC 8007B02C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF21D0 8007B030 8FA20018 */  lw    $v0, 0x18($sp)
/* AF21D4 8007B034 27BD0018 */  addiu $sp, $sp, 0x18
/* AF21D8 8007B038 03E00008 */  jr    $ra
/* AF21DC 8007B03C 00000000 */   nop   

glabel func_8007B040
/* AF21E0 8007B040 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AF21E4 8007B044 AFA50024 */  sw    $a1, 0x24($sp)
/* AF21E8 8007B048 AFA7002C */  sw    $a3, 0x2c($sp)
/* AF21EC 8007B04C 8FAE002C */  lw    $t6, 0x2c($sp)
/* AF21F0 8007B050 00802825 */  move  $a1, $a0
/* AF21F4 8007B054 AFA40020 */  sw    $a0, 0x20($sp)
/* AF21F8 8007B058 00C03825 */  move  $a3, $a2
/* AF21FC 8007B05C AFBF001C */  sw    $ra, 0x1c($sp)
/* AF2200 8007B060 AFA60028 */  sw    $a2, 0x28($sp)
/* AF2204 8007B064 3C048016 */  lui   $a0, %hi(D_8015FF80) # $a0, 0x8016
/* AF2208 8007B068 2484FF80 */  addiu $a0, %lo(D_8015FF80) # addiu $a0, $a0, -0x80
/* AF220C 8007B06C 8FA60024 */  lw    $a2, 0x24($sp)
/* AF2210 8007B070 0C03FB67 */  jal   func_800FED9C
/* AF2214 8007B074 AFAE0010 */   sw    $t6, 0x10($sp)
/* AF2218 8007B078 3C068014 */  lui   $a2, %hi(D_8013C9CC) # $a2, 0x8014
/* AF221C 8007B07C 3C078014 */  lui   $a3, %hi(D_8013C9E0) # $a3, 0x8014
/* AF2220 8007B080 AFA20020 */  sw    $v0, 0x20($sp)
/* AF2224 8007B084 24E7C9E0 */  addiu $a3, %lo(D_8013C9E0) # addiu $a3, $a3, -0x3620
/* AF2228 8007B088 24C6C9CC */  addiu $a2, %lo(D_8013C9CC) # addiu $a2, $a2, -0x3634
/* AF222C 8007B08C 00402025 */  move  $a0, $v0
/* AF2230 8007B090 0C01EB84 */  jal   func_8007AE10
/* AF2234 8007B094 8FA50024 */   lw    $a1, 0x24($sp)
/* AF2238 8007B098 8FBF001C */  lw    $ra, 0x1c($sp)
/* AF223C 8007B09C 8FA20020 */  lw    $v0, 0x20($sp)
/* AF2240 8007B0A0 27BD0020 */  addiu $sp, $sp, 0x20
/* AF2244 8007B0A4 03E00008 */  jr    $ra
/* AF2248 8007B0A8 00000000 */   nop   

glabel func_8007B0AC
/* AF224C 8007B0AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AF2250 8007B0B0 00802825 */  move  $a1, $a0
/* AF2254 8007B0B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF2258 8007B0B8 3C048016 */  lui   $a0, %hi(D_8015FF80) # $a0, 0x8016
/* AF225C 8007B0BC 0C03F9F9 */  jal   func_800FE7E4
/* AF2260 8007B0C0 2484FF80 */   addiu $a0, %lo(D_8015FF80) # addiu $a0, $a0, -0x80
/* AF2264 8007B0C4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF2268 8007B0C8 27BD0018 */  addiu $sp, $sp, 0x18
/* AF226C 8007B0CC 03E00008 */  jr    $ra
/* AF2270 8007B0D0 00000000 */   nop   

glabel func_8007B0D4
/* AF2274 8007B0D4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AF2278 8007B0D8 AFA5001C */  sw    $a1, 0x1c($sp)
/* AF227C 8007B0DC 00802825 */  move  $a1, $a0
/* AF2280 8007B0E0 AFA40018 */  sw    $a0, 0x18($sp)
/* AF2284 8007B0E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF2288 8007B0E8 00C03825 */  move  $a3, $a2
/* AF228C 8007B0EC 3C048016 */  lui   $a0, %hi(D_8015FF80) # $a0, 0x8016
/* AF2290 8007B0F0 8FA6001C */  lw    $a2, 0x1c($sp)
/* AF2294 8007B0F4 0C03FA8A */  jal   func_800FEA28
/* AF2298 8007B0F8 2484FF80 */   addiu $a0, %lo(D_8015FF80) # addiu $a0, $a0, -0x80
/* AF229C 8007B0FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF22A0 8007B100 27BD0018 */  addiu $sp, $sp, 0x18
/* AF22A4 8007B104 03E00008 */  jr    $ra
/* AF22A8 8007B108 00000000 */   nop   

glabel func_8007B10C
/* AF22AC 8007B10C 00803025 */  move  $a2, $a0
/* AF22B0 8007B110 00C50019 */  multu $a2, $a1
/* AF22B4 8007B114 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AF22B8 8007B118 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF22BC 8007B11C 3C048016 */  lui   $a0, %hi(D_8015FF80) # $a0, 0x8016
/* AF22C0 8007B120 2484FF80 */  addiu $a0, %lo(D_8015FF80) # addiu $a0, $a0, -0x80
/* AF22C4 8007B124 00002812 */  mflo  $a1
/* AF22C8 8007B128 AFA5001C */  sw    $a1, 0x1c($sp)
/* AF22CC 8007B12C 0C03F911 */  jal   func_800FE444
/* AF22D0 8007B130 00000000 */   nop   
/* AF22D4 8007B134 10400004 */  beqz  $v0, .L8007B148
/* AF22D8 8007B138 AFA20024 */   sw    $v0, 0x24($sp)
/* AF22DC 8007B13C 00402025 */  move  $a0, $v0
/* AF22E0 8007B140 0C001114 */  jal   bzero
/* AF22E4 8007B144 8FA5001C */   lw    $a1, 0x1c($sp)
.L8007B148:
/* AF22E8 8007B148 3C068014 */  lui   $a2, %hi(D_8013C9E8) # $a2, 0x8014
/* AF22EC 8007B14C 3C078014 */  lui   $a3, %hi(D_8013C9F8) # $a3, 0x8014
/* AF22F0 8007B150 24E7C9F8 */  addiu $a3, %lo(D_8013C9F8) # addiu $a3, $a3, -0x3608
/* AF22F4 8007B154 24C6C9E8 */  addiu $a2, %lo(D_8013C9E8) # addiu $a2, $a2, -0x3618
/* AF22F8 8007B158 8FA40024 */  lw    $a0, 0x24($sp)
/* AF22FC 8007B15C 0C01EB84 */  jal   func_8007AE10
/* AF2300 8007B160 8FA5001C */   lw    $a1, 0x1c($sp)
/* AF2304 8007B164 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF2308 8007B168 8FA20024 */  lw    $v0, 0x24($sp)
/* AF230C 8007B16C 27BD0028 */  addiu $sp, $sp, 0x28
/* AF2310 8007B170 03E00008 */  jr    $ra
/* AF2314 8007B174 00000000 */   nop   

glabel func_8007B178
/* AF2318 8007B178 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AF231C 8007B17C AFBF0014 */  sw    $ra, 0x14($sp)
/* AF2320 8007B180 3C048014 */  lui   $a0, %hi(D_8013CA00) # $a0, 0x8014
/* AF2324 8007B184 0C00084C */  jal   osSyncPrintf
/* AF2328 8007B188 2484CA00 */   addiu $a0, %lo(D_8013CA00) # addiu $a0, $a0, -0x3600
/* AF232C 8007B18C 3C048016 */  lui   $a0, %hi(D_8015FF80) # $a0, 0x8016
/* AF2330 8007B190 0C03FBA0 */  jal   func_800FEE80
/* AF2334 8007B194 2484FF80 */   addiu $a0, %lo(D_8015FF80) # addiu $a0, $a0, -0x80
/* AF2338 8007B198 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF233C 8007B19C 27BD0018 */  addiu $sp, $sp, 0x18
/* AF2340 8007B1A0 03E00008 */  jr    $ra
/* AF2344 8007B1A4 00000000 */   nop   

glabel func_8007B1A8
/* AF2348 8007B1A8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AF234C 8007B1AC AFA5001C */  sw    $a1, 0x1c($sp)
/* AF2350 8007B1B0 00802825 */  move  $a1, $a0
/* AF2354 8007B1B4 AFA40018 */  sw    $a0, 0x18($sp)
/* AF2358 8007B1B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF235C 8007B1BC 00C03825 */  move  $a3, $a2
/* AF2360 8007B1C0 3C048016 */  lui   $a0, %hi(D_8015FF80) # $a0, 0x8016
/* AF2364 8007B1C4 8FA6001C */  lw    $a2, 0x1c($sp)
/* AF2368 8007B1C8 0C03FB6F */  jal   func_800FEDBC
/* AF236C 8007B1CC 2484FF80 */   addiu $a0, %lo(D_8015FF80) # addiu $a0, $a0, -0x80
/* AF2370 8007B1D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF2374 8007B1D4 27BD0018 */  addiu $sp, $sp, 0x18
/* AF2378 8007B1D8 03E00008 */  jr    $ra
/* AF237C 8007B1DC 00000000 */   nop   

glabel func_8007B1E0
/* AF2380 8007B1E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AF2384 8007B1E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF2388 8007B1E8 3C048016 */  lui   $a0, %hi(D_8015FF80) # $a0, 0x8016
/* AF238C 8007B1EC 0C03FCA0 */  jal   func_800FF280
/* AF2390 8007B1F0 2484FF80 */   addiu $a0, %lo(D_8015FF80) # addiu $a0, $a0, -0x80
/* AF2394 8007B1F4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF2398 8007B1F8 27BD0018 */  addiu $sp, $sp, 0x18
/* AF239C 8007B1FC 03E00008 */  jr    $ra
/* AF23A0 8007B200 00000000 */   nop   

glabel func_8007B204
/* AF23A4 8007B204 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AF23A8 8007B208 00A03025 */  move  $a2, $a1
/* AF23AC 8007B20C 00802825 */  move  $a1, $a0
/* AF23B0 8007B210 AFA40018 */  sw    $a0, 0x18($sp)
/* AF23B4 8007B214 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF23B8 8007B218 3C018012 */  lui   $at, %hi(D_80120040) # $at, 0x8012
/* AF23BC 8007B21C 3C048016 */  lui   $a0, %hi(D_8015FF80) # $a0, 0x8016
/* AF23C0 8007B220 AC200040 */  sw    $zero, %lo(D_80120040)($at)
/* AF23C4 8007B224 0C03F769 */  jal   func_800FDDA4
/* AF23C8 8007B228 2484FF80 */   addiu $a0, %lo(D_8015FF80) # addiu $a0, $a0, -0x80
/* AF23CC 8007B22C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF23D0 8007B230 27BD0018 */  addiu $sp, $sp, 0x18
/* AF23D4 8007B234 03E00008 */  jr    $ra
/* AF23D8 8007B238 00000000 */   nop   

glabel func_8007B23C
/* AF23DC 8007B23C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AF23E0 8007B240 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF23E4 8007B244 3C018012 */  lui   $at, %hi(D_80120040) # $at, 0x8012
/* AF23E8 8007B248 3C048016 */  lui   $a0, %hi(D_8015FF80) # $a0, 0x8016
/* AF23EC 8007B24C AC200040 */  sw    $zero, %lo(D_80120040)($at)
/* AF23F0 8007B250 0C03F7C8 */  jal   func_800FDF20
/* AF23F4 8007B254 2484FF80 */   addiu $a0, %lo(D_8015FF80) # addiu $a0, $a0, -0x80
/* AF23F8 8007B258 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF23FC 8007B25C 27BD0018 */  addiu $sp, $sp, 0x18
/* AF2400 8007B260 03E00008 */  jr    $ra
/* AF2404 8007B264 00000000 */   nop   

glabel func_8007B268
/* AF2408 8007B268 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AF240C 8007B26C AFBF0014 */  sw    $ra, 0x14($sp)
/* AF2410 8007B270 3C048016 */  lui   $a0, %hi(D_8015FF80) # $a0, 0x8016
/* AF2414 8007B274 0C03F7D3 */  jal   func_800FDF4C
/* AF2418 8007B278 2484FF80 */   addiu $a0, %lo(D_8015FF80) # addiu $a0, $a0, -0x80
/* AF241C 8007B27C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF2420 8007B280 27BD0018 */  addiu $sp, $sp, 0x18
/* AF2424 8007B284 03E00008 */  jr    $ra
/* AF2428 8007B288 00000000 */   nop   
