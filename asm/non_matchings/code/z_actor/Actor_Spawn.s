.rdata
glabel D_80136614
    .asciz "profile < ACTOR_DLF_MAX"
    .balign 4

glabel D_8013662C
    .asciz "../z_actor.c"
    .balign 4

glabel D_8013663C
    .asciz ""
    .balign 4

glabel D_80136640
    .incbin "baserom.z64", 0xBAD7E0, 0x1C
    .balign 4

glabel D_8013665C
    .incbin "baserom.z64", 0xBAD7FC, 0x27
    .balign 4

glabel D_80136684
    .incbin "baserom.z64", 0xBAD824, 0x1C
    .balign 4

glabel D_801366A0
    .incbin "baserom.z64", 0xBAD840, 0x18
    .balign 4

glabel D_801366B8
    .asciz "actor_segsize <= AM_FIELD_SIZE"
    .balign 4

glabel D_801366D8
    .asciz "../z_actor.c"
    .balign 4

glabel D_801366E8
    .incbin "baserom.z64", 0xBAD888, 0x11
    .balign 4

glabel D_801366FC
    .incbin "baserom.z64", 0xBAD89C, 0x20
    .balign 4

glabel D_8013671C
    .incbin "baserom.z64", 0xBAD8BC, 0x37
    .balign 4

glabel D_80136754
    .incbin "baserom.z64", 0xBAD8F4, 0x6
    .balign 4

glabel D_8013675C
    .asciz "OVL(a):Seg:%08x-%08x Ram:%08x-%08x Off:%08x %s\n"
    .balign 4

glabel D_8013678C
    .incbin "baserom.z64", 0xBAD92C, 0x4
    .balign 4

glabel D_80136790
    .incbin "baserom.z64", 0xBAD930, 0x46
    .balign 4

glabel D_801367D8
    .incbin "baserom.z64", 0xBAD978, 0x40
    .balign 4

glabel D_80136818
    .incbin "baserom.z64", 0xBAD9B8, 0x4
    .balign 4

glabel D_8013681C
    .asciz "actor_dlftbl->clients < 255"
    .balign 4

glabel D_80136838
    .asciz "../z_actor.c"
    .balign 4

glabel D_80136848
    .incbin "baserom.z64", 0xBAD9E8, 0x24
    .balign 4

.text
glabel Actor_Spawn
/* AA90F0 80031F50 27BDFFA0 */  addiu $sp, $sp, -0x60
/* AA90F4 80031F54 AFA60068 */  sw    $a2, 0x68($sp)
/* AA90F8 80031F58 AFA7006C */  sw    $a3, 0x6c($sp)
/* AA90FC 80031F5C 87A7006A */  lh    $a3, 0x6a($sp)
/* AA9100 80031F60 AFBF002C */  sw    $ra, 0x2c($sp)
/* AA9104 80031F64 AFB00028 */  sw    $s0, 0x28($sp)
/* AA9108 80031F68 28E101D7 */  slti  $at, $a3, 0x1d7
/* AA910C 80031F6C AFA40060 */  sw    $a0, 0x60($sp)
/* AA9110 80031F70 14200009 */  bnez  $at, .L80031F98
/* AA9114 80031F74 AFA50064 */   sw    $a1, 0x64($sp)
/* AA9118 80031F78 3C048013 */  lui   $a0, %hi(D_80136614) # $a0, 0x8013
/* AA911C 80031F7C 3C058013 */  lui   $a1, %hi(D_8013662C) # $a1, 0x8013
/* AA9120 80031F80 24A5662C */  addiu $a1, %lo(D_8013662C) # addiu $a1, $a1, 0x662c
/* AA9124 80031F84 24846614 */  addiu $a0, %lo(D_80136614) # addiu $a0, $a0, 0x6614
/* AA9128 80031F88 24061AE3 */  li    $a2, 6883
/* AA912C 80031F8C 0C0007FC */  jal   __assert
/* AA9130 80031F90 A7A7006A */   sh    $a3, 0x6a($sp)
/* AA9134 80031F94 87A7006A */  lh    $a3, 0x6a($sp)
.L80031F98:
/* AA9138 80031F98 3C0F8011 */  lui   $t7, %hi(gActorOverlayTable) # $t7, 0x8011
/* AA913C 80031F9C 25EF62A0 */  addiu $t7, %lo(gActorOverlayTable) # addiu $t7, $t7, 0x62a0
/* AA9140 80031FA0 00077140 */  sll   $t6, $a3, 5
/* AA9144 80031FA4 01CF8021 */  addu  $s0, $t6, $t7
/* AA9148 80031FA8 8E020018 */  lw    $v0, 0x18($s0)
/* AA914C 80031FAC 3C188013 */  lui   $t8, %hi(D_8013663C) # $t8, 0x8013
/* AA9150 80031FB0 2718663C */  addiu $t8, %lo(D_8013663C) # addiu $t8, $t8, 0x663c
/* AA9154 80031FB4 10400003 */  beqz  $v0, .L80031FC4
/* AA9158 80031FB8 3C048013 */   lui   $a0, %hi(D_80136640) # $a0, 0x8013
/* AA915C 80031FBC 10000002 */  b     .L80031FC8
/* AA9160 80031FC0 AFA20044 */   sw    $v0, 0x44($sp)
.L80031FC4:
/* AA9164 80031FC4 AFB80044 */  sw    $t8, 0x44($sp)
.L80031FC8:
/* AA9168 80031FC8 8E19000C */  lw    $t9, 0xc($s0)
/* AA916C 80031FCC 8E080008 */  lw    $t0, 8($s0)
/* AA9170 80031FD0 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* AA9174 80031FD4 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* AA9178 80031FD8 03284823 */  subu  $t1, $t9, $t0
/* AA917C 80031FDC AFA90040 */  sw    $t1, 0x40($sp)
/* AA9180 80031FE0 854B0FFC */  lh    $t3, 0xffc($t2)
/* AA9184 80031FE4 24846640 */  addiu $a0, %lo(D_80136640) # addiu $a0, $a0, 0x6640
/* AA9188 80031FE8 00E02825 */  move  $a1, $a3
/* AA918C 80031FEC 51600004 */  beql  $t3, $zero, .L80032000
/* AA9190 80031FF0 8FAC0060 */   lw    $t4, 0x60($sp)
/* AA9194 80031FF4 0C00084C */  jal   osSyncPrintf
/* AA9198 80031FF8 8FA60044 */   lw    $a2, 0x44($sp)
/* AA919C 80031FFC 8FAC0060 */  lw    $t4, 0x60($sp)
.L80032000:
/* AA91A0 80032000 3C048013 */  lui   $a0, %hi(D_8013665C) # $a0, 0x8013
/* AA91A4 80032004 918D0008 */  lbu   $t5, 8($t4)
/* AA91A8 80032008 29A100C9 */  slti  $at, $t5, 0xc9
/* AA91AC 8003200C 54200006 */  bnezl $at, .L80032028
/* AA91B0 80032010 8E0E0008 */   lw    $t6, 8($s0)
/* AA91B4 80032014 0C00084C */  jal   osSyncPrintf
/* AA91B8 80032018 2484665C */   addiu $a0, %lo(D_8013665C) # addiu $a0, $a0, 0x665c
/* AA91BC 8003201C 10000109 */  b     .L80032444
/* AA91C0 80032020 00001025 */   move  $v0, $zero
/* AA91C4 80032024 8E0E0008 */  lw    $t6, 8($s0)
.L80032028:
/* AA91C8 80032028 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* AA91CC 8003202C 55C0000B */  bnezl $t6, .L8003205C
/* AA91D0 80032030 8E190010 */   lw    $t9, 0x10($s0)
/* AA91D4 80032034 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* AA91D8 80032038 3C048013 */  lui   $a0, %hi(D_80136684) # $a0, 0x8013
/* AA91DC 8003203C 85F80FFC */  lh    $t8, 0xffc($t7)
/* AA91E0 80032040 13000003 */  beqz  $t8, .L80032050
/* AA91E4 80032044 00000000 */   nop   
/* AA91E8 80032048 0C00084C */  jal   osSyncPrintf
/* AA91EC 8003204C 24846684 */   addiu $a0, %lo(D_80136684) # addiu $a0, $a0, 0x6684
.L80032050:
/* AA91F0 80032050 1000006D */  b     .L80032208
/* AA91F4 80032054 8E030014 */   lw    $v1, 0x14($s0)
/* AA91F8 80032058 8E190010 */  lw    $t9, 0x10($s0)
.L8003205C:
/* AA91FC 8003205C 3C088016 */  lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* AA9200 80032060 5320000B */  beql  $t9, $zero, .L80032090
/* AA9204 80032064 9602001C */   lhu   $v0, 0x1c($s0)
/* AA9208 80032068 8D08FA90 */  lw    $t0, %lo(gGameInfo)($t0)
/* AA920C 8003206C 3C048013 */  lui   $a0, %hi(D_801366A0) # $a0, 0x8013
/* AA9210 80032070 85090FFC */  lh    $t1, 0xffc($t0)
/* AA9214 80032074 5120005B */  beql  $t1, $zero, .L800321E4
/* AA9218 80032078 8E030014 */   lw    $v1, 0x14($s0)
/* AA921C 8003207C 0C00084C */  jal   osSyncPrintf
/* AA9220 80032080 248466A0 */   addiu $a0, %lo(D_801366A0) # addiu $a0, $a0, 0x66a0
/* AA9224 80032084 10000057 */  b     .L800321E4
/* AA9228 80032088 8E030014 */   lw    $v1, 0x14($s0)
/* AA922C 8003208C 9602001C */  lhu   $v0, 0x1c($s0)
.L80032090:
/* AA9230 80032090 8FAB0040 */  lw    $t3, 0x40($sp)
/* AA9234 80032094 304A0001 */  andi  $t2, $v0, 1
/* AA9238 80032098 11400021 */  beqz  $t2, .L80032120
/* AA923C 8003209C 30490002 */   andi  $t1, $v0, 2
/* AA9240 800320A0 2D6127A1 */  sltiu $at, $t3, 0x27a1
/* AA9244 800320A4 14200006 */  bnez  $at, .L800320C0
/* AA9248 800320A8 3C048013 */   lui   $a0, %hi(D_801366B8) # $a0, 0x8013
/* AA924C 800320AC 3C058013 */  lui   $a1, %hi(D_801366D8) # $a1, 0x8013
/* AA9250 800320B0 24A566D8 */  addiu $a1, %lo(D_801366D8) # addiu $a1, $a1, 0x66d8
/* AA9254 800320B4 248466B8 */  addiu $a0, %lo(D_801366B8) # addiu $a0, $a0, 0x66b8
/* AA9258 800320B8 0C0007FC */  jal   __assert
/* AA925C 800320BC 24061B16 */   li    $a2, 6934
.L800320C0:
/* AA9260 800320C0 8FAC0060 */  lw    $t4, 0x60($sp)
/* AA9264 800320C4 3C058013 */  lui   $a1, %hi(D_801366E8) # $a1, 0x8013
/* AA9268 800320C8 24A566E8 */  addiu $a1, %lo(D_801366E8) # addiu $a1, $a1, 0x66e8
/* AA926C 800320CC 8D8D013C */  lw    $t5, 0x13c($t4)
/* AA9270 800320D0 240427A0 */  li    $a0, 10144
/* AA9274 800320D4 55A0000F */  bnezl $t5, .L80032114
/* AA9278 800320D8 8FB90060 */   lw    $t9, 0x60($sp)
/* AA927C 800320DC 0C01EBE3 */  jal   func_8007AF8C
/* AA9280 800320E0 00003025 */   move  $a2, $zero
/* AA9284 800320E4 8FAE0060 */  lw    $t6, 0x60($sp)
/* AA9288 800320E8 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* AA928C 800320EC 3C048013 */  lui   $a0, %hi(D_801366FC) # $a0, 0x8013
/* AA9290 800320F0 ADC2013C */  sw    $v0, 0x13c($t6)
/* AA9294 800320F4 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* AA9298 800320F8 248466FC */  addiu $a0, %lo(D_801366FC) # addiu $a0, $a0, 0x66fc
/* AA929C 800320FC 85F80FFC */  lh    $t8, 0xffc($t7)
/* AA92A0 80032100 53000004 */  beql  $t8, $zero, .L80032114
/* AA92A4 80032104 8FB90060 */   lw    $t9, 0x60($sp)
/* AA92A8 80032108 0C00084C */  jal   osSyncPrintf
/* AA92AC 8003210C 240527A0 */   li    $a1, 10144
/* AA92B0 80032110 8FB90060 */  lw    $t9, 0x60($sp)
.L80032114:
/* AA92B4 80032114 8F28013C */  lw    $t0, 0x13c($t9)
/* AA92B8 80032118 1000000D */  b     .L80032150
/* AA92BC 8003211C AE080010 */   sw    $t0, 0x10($s0)
.L80032120:
/* AA92C0 80032120 11200007 */  beqz  $t1, .L80032140
/* AA92C4 80032124 8FA40040 */   lw    $a0, 0x40($sp)
/* AA92C8 80032128 8FA40040 */  lw    $a0, 0x40($sp)
/* AA92CC 8003212C 8FA50044 */  lw    $a1, 0x44($sp)
/* AA92D0 80032130 0C01EBE3 */  jal   func_8007AF8C
/* AA92D4 80032134 00003025 */   move  $a2, $zero
/* AA92D8 80032138 10000005 */  b     .L80032150
/* AA92DC 8003213C AE020010 */   sw    $v0, 0x10($s0)
.L80032140:
/* AA92E0 80032140 8FA50044 */  lw    $a1, 0x44($sp)
/* AA92E4 80032144 0C01EBB8 */  jal   func_8007AEE0
/* AA92E8 80032148 00003025 */   move  $a2, $zero
/* AA92EC 8003214C AE020010 */  sw    $v0, 0x10($s0)
.L80032150:
/* AA92F0 80032150 8E020010 */  lw    $v0, 0x10($s0)
/* AA92F4 80032154 3C048013 */  lui   $a0, %hi(D_8013671C)
/* AA92F8 80032158 54400006 */  bnezl $v0, .L80032174
/* AA92FC 8003215C 8E040000 */   lw    $a0, ($s0)
/* AA9300 80032160 0C00084C */  jal   osSyncPrintf
/* AA9304 80032164 2484671C */   addiu $a0, %lo(D_8013671C)
/* AA9308 80032168 100000B6 */  b     .L80032444
/* AA930C 8003216C 00001025 */   move  $v0, $zero
/* AA9310 80032170 8E040000 */  lw    $a0, ($s0)
.L80032174:
/* AA9314 80032174 8E050004 */  lw    $a1, 4($s0)
/* AA9318 80032178 8E060008 */  lw    $a2, 8($s0)
/* AA931C 8003217C 8E07000C */  lw    $a3, 0xc($s0)
/* AA9320 80032180 0C03F188 */  jal   func_800FC620
/* AA9324 80032184 AFA20010 */   sw    $v0, 0x10($sp)
/* AA9328 80032188 3C048013 */  lui   $a0, %hi(D_80136754) # $a0, 0x8013
/* AA932C 8003218C 0C00084C */  jal   osSyncPrintf
/* AA9330 80032190 24846754 */   addiu $a0, %lo(D_80136754) # addiu $a0, $a0, 0x6754
/* AA9334 80032194 8E050008 */  lw    $a1, 8($s0)
/* AA9338 80032198 8E06000C */  lw    $a2, 0xc($s0)
/* AA933C 8003219C 8E070010 */  lw    $a3, 0x10($s0)
/* AA9340 800321A0 8FAD0044 */  lw    $t5, 0x44($sp)
/* AA9344 800321A4 3C048013 */  lui   $a0, %hi(D_8013675C) # $a0, 0x8013
/* AA9348 800321A8 00E65021 */  addu  $t2, $a3, $a2
/* AA934C 800321AC 01455823 */  subu  $t3, $t2, $a1
/* AA9350 800321B0 00A76023 */  subu  $t4, $a1, $a3
/* AA9354 800321B4 AFAC0014 */  sw    $t4, 0x14($sp)
/* AA9358 800321B8 AFAB0010 */  sw    $t3, 0x10($sp)
/* AA935C 800321BC 2484675C */  addiu $a0, %lo(D_8013675C) # addiu $a0, $a0, 0x675c
/* AA9360 800321C0 00A01825 */  move  $v1, $a1
/* AA9364 800321C4 00E01025 */  move  $v0, $a3
/* AA9368 800321C8 0C00084C */  jal   osSyncPrintf
/* AA936C 800321CC AFAD0018 */   sw    $t5, 0x18($sp)
/* AA9370 800321D0 3C048013 */  lui   $a0, %hi(D_8013678C) # $a0, 0x8013
/* AA9374 800321D4 0C00084C */  jal   osSyncPrintf
/* AA9378 800321D8 2484678C */   addiu $a0, %lo(D_8013678C) # addiu $a0, $a0, 0x678c
/* AA937C 800321DC A200001E */  sb    $zero, 0x1e($s0)
/* AA9380 800321E0 8E030014 */  lw    $v1, 0x14($s0)
.L800321E4:
/* AA9384 800321E4 00001025 */  move  $v0, $zero
/* AA9388 800321E8 10600006 */  beqz  $v1, .L80032204
/* AA938C 800321EC 00000000 */   nop   
/* AA9390 800321F0 8E0E0008 */  lw    $t6, 8($s0)
/* AA9394 800321F4 8E0F0010 */  lw    $t7, 0x10($s0)
/* AA9398 800321F8 01CFC023 */  subu  $t8, $t6, $t7
/* AA939C 800321FC 10000001 */  b     .L80032204
/* AA93A0 80032200 00781023 */   subu  $v0, $v1, $t8
.L80032204:
/* AA93A4 80032204 00401825 */  move  $v1, $v0
.L80032208:
/* AA93A8 80032208 8FA40064 */  lw    $a0, 0x64($sp)
/* AA93AC 8003220C 3C010001 */  lui   $at, (0x000117A4 >> 16) # lui $at, 1
/* AA93B0 80032210 342117A4 */  ori   $at, (0x000117A4 & 0xFFFF) # ori $at, $at, 0x17a4
/* AA93B4 80032214 84650008 */  lh    $a1, 8($v1)
/* AA93B8 80032218 AFA30054 */  sw    $v1, 0x54($sp)
/* AA93BC 8003221C 0C02604B */  jal   Object_GetIndex
/* AA93C0 80032220 00812021 */   addu  $a0, $a0, $at
/* AA93C4 80032224 8FA30054 */  lw    $v1, 0x54($sp)
/* AA93C8 80032228 0440000C */  bltz  $v0, .L8003225C
/* AA93CC 8003222C AFA20050 */   sw    $v0, 0x50($sp)
/* AA93D0 80032230 90790002 */  lbu   $t9, 2($v1)
/* AA93D4 80032234 24010005 */  li    $at, 5
/* AA93D8 80032238 8FA40064 */  lw    $a0, 0x64($sp)
/* AA93DC 8003223C 17210010 */  bne   $t9, $at, .L80032280
/* AA93E0 80032240 3C050001 */   lui   $a1, 1
/* AA93E4 80032244 00A42821 */  addu  $a1, $a1, $a0
/* AA93E8 80032248 80A51CBC */  lb    $a1, 0x1cbc($a1)
/* AA93EC 8003224C 0C00B337 */  jal   Flags_GetClear
/* AA93F0 80032250 AFA30054 */   sw    $v1, 0x54($sp)
/* AA93F4 80032254 1040000A */  beqz  $v0, .L80032280
/* AA93F8 80032258 8FA30054 */   lw    $v1, 0x54($sp)
.L8003225C:
/* AA93FC 8003225C 3C048013 */  lui   $a0, %hi(D_80136790) # $a0, 0x8013
/* AA9400 80032260 24846790 */  addiu $a0, %lo(D_80136790) # addiu $a0, $a0, 0x6790
/* AA9404 80032264 8FA50050 */  lw    $a1, 0x50($sp)
/* AA9408 80032268 0C00084C */  jal   osSyncPrintf
/* AA940C 8003226C 84660008 */   lh    $a2, 8($v1)
/* AA9410 80032270 0C00C78B */  jal   Actor_FreeOverlay
/* AA9414 80032274 02002025 */   move  $a0, $s0
/* AA9418 80032278 10000072 */  b     .L80032444
/* AA941C 8003227C 00001025 */   move  $v0, $zero
.L80032280:
/* AA9420 80032280 8C64000C */  lw    $a0, 0xc($v1)
/* AA9424 80032284 AFA30054 */  sw    $v1, 0x54($sp)
/* AA9428 80032288 8FA50044 */  lw    $a1, 0x44($sp)
/* AA942C 8003228C 0C01EBB8 */  jal   func_8007AEE0
/* AA9430 80032290 24060001 */   li    $a2, 1
/* AA9434 80032294 8FA30054 */  lw    $v1, 0x54($sp)
/* AA9438 80032298 1440000C */  bnez  $v0, .L800322CC
/* AA943C 8003229C 00403825 */   move  $a3, $v0
/* AA9440 800322A0 3C048013 */  lui   $a0, %hi(D_801367D8) # $a0, 0x8013
/* AA9444 800322A4 3C058013 */  lui   $a1, %hi(D_80136818) # $a1, 0x8013
/* AA9448 800322A8 24A56818 */  addiu $a1, %lo(D_80136818) # addiu $a1, $a1, 0x6818
/* AA944C 800322AC 248467D8 */  addiu $a0, %lo(D_801367D8) # addiu $a0, $a0, 0x67d8
/* AA9450 800322B0 8FA60044 */  lw    $a2, 0x44($sp)
/* AA9454 800322B4 0C00084C */  jal   osSyncPrintf
/* AA9458 800322B8 8C67000C */   lw    $a3, 0xc($v1)
/* AA945C 800322BC 0C00C78B */  jal   Actor_FreeOverlay
/* AA9460 800322C0 02002025 */   move  $a0, $s0
/* AA9464 800322C4 1000005F */  b     .L80032444
/* AA9468 800322C8 00001025 */   move  $v0, $zero
.L800322CC:
/* AA946C 800322CC 8FA90064 */  lw    $t1, 0x64($sp)
/* AA9470 800322D0 8202001E */  lb    $v0, 0x1e($s0)
/* AA9474 800322D4 3C010001 */  lui   $at, 1
/* AA9478 800322D8 01215021 */  addu  $t2, $t1, $at
/* AA947C 800322DC 284100FF */  slti  $at, $v0, 0xff
/* AA9480 800322E0 1420000C */  bnez  $at, .L80032314
/* AA9484 800322E4 AFAA0034 */   sw    $t2, 0x34($sp)
/* AA9488 800322E8 3C048013 */  lui   $a0, %hi(D_8013681C) # $a0, 0x8013
/* AA948C 800322EC 3C058013 */  lui   $a1, %hi(D_80136838) # $a1, 0x8013
/* AA9490 800322F0 24A56838 */  addiu $a1, %lo(D_80136838) # addiu $a1, $a1, 0x6838
/* AA9494 800322F4 2484681C */  addiu $a0, %lo(D_8013681C) # addiu $a0, $a0, 0x681c
/* AA9498 800322F8 24061B77 */  li    $a2, 7031
/* AA949C 800322FC AFA30054 */  sw    $v1, 0x54($sp)
/* AA94A0 80032300 0C0007FC */  jal   __assert
/* AA94A4 80032304 AFA70058 */   sw    $a3, 0x58($sp)
/* AA94A8 80032308 8FA30054 */  lw    $v1, 0x54($sp)
/* AA94AC 8003230C 8FA70058 */  lw    $a3, 0x58($sp)
/* AA94B0 80032310 8202001E */  lb    $v0, 0x1e($s0)
.L80032314:
/* AA94B4 80032314 244B0001 */  addiu $t3, $v0, 1
/* AA94B8 80032318 A20B001E */  sb    $t3, 0x1e($s0)
/* AA94BC 8003231C 3C0C8016 */  lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* AA94C0 80032320 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* AA94C4 80032324 3C048013 */  lui   $a0, %hi(D_80136848) # $a0, 0x8013
/* AA94C8 80032328 24846848 */  addiu $a0, %lo(D_80136848) # addiu $a0, $a0, 0x6848
/* AA94CC 8003232C 858D0FFC */  lh    $t5, 0xffc($t4)
/* AA94D0 80032330 51A00008 */  beql  $t5, $zero, .L80032354
/* AA94D4 80032334 8C65000C */   lw    $a1, 0xc($v1)
/* AA94D8 80032338 8205001E */  lb    $a1, 0x1e($s0)
/* AA94DC 8003233C AFA70058 */  sw    $a3, 0x58($sp)
/* AA94E0 80032340 0C00084C */  jal   osSyncPrintf
/* AA94E4 80032344 AFA30054 */   sw    $v1, 0x54($sp)
/* AA94E8 80032348 8FA30054 */  lw    $v1, 0x54($sp)
/* AA94EC 8003234C 8FA70058 */  lw    $a3, 0x58($sp)
/* AA94F0 80032350 8C65000C */  lw    $a1, 0xc($v1)
.L80032354:
/* AA94F4 80032354 AFA70058 */  sw    $a3, 0x58($sp)
/* AA94F8 80032358 AFA30054 */  sw    $v1, 0x54($sp)
/* AA94FC 8003235C 00E02025 */  move  $a0, $a3
/* AA9500 80032360 0C01DDF8 */  jal   Lib_MemSet
/* AA9504 80032364 00003025 */   move  $a2, $zero
/* AA9508 80032368 8FA70058 */  lw    $a3, 0x58($sp)
/* AA950C 8003236C 8FA30054 */  lw    $v1, 0x54($sp)
/* AA9510 80032370 24010007 */  li    $at, 7
/* AA9514 80032374 ACF00138 */  sw    $s0, 0x138($a3)
/* AA9518 80032378 846E0000 */  lh    $t6, ($v1)
/* AA951C 8003237C A4EE0000 */  sh    $t6, ($a3)
/* AA9520 80032380 8C6F0004 */  lw    $t7, 4($v1)
/* AA9524 80032384 ACEF0004 */  sw    $t7, 4($a3)
/* AA9528 80032388 84780000 */  lh    $t8, ($v1)
/* AA952C 8003238C 87B90082 */  lh    $t9, 0x82($sp)
/* AA9530 80032390 8FA80050 */  lw    $t0, 0x50($sp)
/* AA9534 80032394 57010005 */  bnel  $t8, $at, .L800323AC
/* AA9538 80032398 A0E8001E */   sb    $t0, 0x1e($a3)
/* AA953C 8003239C A0F9001E */  sb    $t9, 0x1e($a3)
/* AA9540 800323A0 10000002 */  b     .L800323AC
/* AA9544 800323A4 A7A00082 */   sh    $zero, 0x82($sp)
/* AA9548 800323A8 A0E8001E */  sb    $t0, 0x1e($a3)
.L800323AC:
/* AA954C 800323AC 8C690010 */  lw    $t1, 0x10($v1)
/* AA9550 800323B0 00E02825 */  move  $a1, $a3
/* AA9554 800323B4 ACE90128 */  sw    $t1, 0x128($a3)
/* AA9558 800323B8 8C6A0014 */  lw    $t2, 0x14($v1)
/* AA955C 800323BC ACEA012C */  sw    $t2, 0x12c($a3)
/* AA9560 800323C0 8C6B0018 */  lw    $t3, 0x18($v1)
/* AA9564 800323C4 ACEB0130 */  sw    $t3, 0x130($a3)
/* AA9568 800323C8 8C6C001C */  lw    $t4, 0x1c($v1)
/* AA956C 800323CC ACEC0134 */  sw    $t4, 0x134($a3)
/* AA9570 800323D0 8FAD0034 */  lw    $t5, 0x34($sp)
/* AA9574 800323D4 81AE1CBC */  lb    $t6, 0x1cbc($t5)
/* AA9578 800323D8 A0EE0003 */  sb    $t6, 3($a3)
/* AA957C 800323DC C7A4006C */  lwc1  $f4, 0x6c($sp)
/* AA9580 800323E0 E4E40008 */  swc1  $f4, 8($a3)
/* AA9584 800323E4 C7A60070 */  lwc1  $f6, 0x70($sp)
/* AA9588 800323E8 E4E6000C */  swc1  $f6, 0xc($a3)
/* AA958C 800323EC C7A80074 */  lwc1  $f8, 0x74($sp)
/* AA9590 800323F0 E4E80010 */  swc1  $f8, 0x10($a3)
/* AA9594 800323F4 87AF007A */  lh    $t7, 0x7a($sp)
/* AA9598 800323F8 A4EF0014 */  sh    $t7, 0x14($a3)
/* AA959C 800323FC 87B8007E */  lh    $t8, 0x7e($sp)
/* AA95A0 80032400 A4F80016 */  sh    $t8, 0x16($a3)
/* AA95A4 80032404 87B90082 */  lh    $t9, 0x82($sp)
/* AA95A8 80032408 A4F90018 */  sh    $t9, 0x18($a3)
/* AA95AC 8003240C 87A80086 */  lh    $t0, 0x86($sp)
/* AA95B0 80032410 A4E8001C */  sh    $t0, 0x1c($a3)
/* AA95B4 80032414 90660002 */  lbu   $a2, 2($v1)
/* AA95B8 80032418 AFA70058 */  sw    $a3, 0x58($sp)
/* AA95BC 8003241C 0C00C747 */  jal   Actor_AddToTypeList
/* AA95C0 80032420 8FA40060 */   lw    $a0, 0x60($sp)
/* AA95C4 80032424 3C108016 */  lui   $s0, %hi(D_80166FC0) # $s0, 0x8016
/* AA95C8 80032428 8FA40058 */  lw    $a0, 0x58($sp)
/* AA95CC 8003242C 8E106FC0 */  lw    $s0, %lo(D_80166FC0)($s0)
/* AA95D0 80032430 0C00B59E */  jal   Actor_Init
/* AA95D4 80032434 8FA50064 */   lw    $a1, 0x64($sp)
/* AA95D8 80032438 3C018016 */  lui   $at, %hi(D_80166FC0) # $at, 0x8016
/* AA95DC 8003243C 8FA20058 */  lw    $v0, 0x58($sp)
/* AA95E0 80032440 AC306FC0 */  sw    $s0, %lo(D_80166FC0)($at)
.L80032444:
/* AA95E4 80032444 8FBF002C */  lw    $ra, 0x2c($sp)
/* AA95E8 80032448 8FB00028 */  lw    $s0, 0x28($sp)
/* AA95EC 8003244C 27BD0060 */  addiu $sp, $sp, 0x60
/* AA95F0 80032450 03E00008 */  jr    $ra
/* AA95F4 80032454 00000000 */   nop   

