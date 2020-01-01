.rdata

glabel D_80146D9C
    .asciz "\x1b[41;37mfault_RemoveClient: %08x \xA5\xEA\xA5\xB9\xA5\xC8\xC9\xD4\xC0\xB0\xB9\xE7\xA4\xC7\xA4\xB9\n\x1b[m"
    .balign 4

.text
glabel Fault_RemoveClient
/* B4B460 800D42C0 3C0BFFFA */  lui   $t3, (0xFFFA5A5A >> 16) # lui $t3, 0xfffa
/* B4B464 800D42C4 03A06025 */  move  $t4, $sp
/* B4B468 800D42C8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B4B46C 800D42CC 356B5A5A */  ori   $t3, (0xFFFA5A5A & 0xFFFF) # ori $t3, $t3, 0x5a5a
.L800D42D0:
/* B4B470 800D42D0 258CFFF8 */  addiu $t4, $t4, -8
/* B4B474 800D42D4 AD8B0000 */  sw    $t3, ($t4)
/* B4B478 800D42D8 159DFFFD */  bne   $t4, $sp, .L800D42D0
/* B4B47C 800D42DC AD8B0004 */   sw    $t3, 4($t4)
/* B4B480 800D42E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4B484 800D42E4 00803025 */  move  $a2, $a0
/* B4B488 800D42E8 3C0E8017 */  lui   $t6, %hi(sFaultStructPtr) # $t6, 0x8017
/* B4B48C 800D42EC 8DCEA800 */  lw    $t6, %lo(sFaultStructPtr)($t6)
/* B4B490 800D42F0 24040001 */  li    $a0, 1
/* B4B494 800D42F4 8DC307D8 */  lw    $v1, 0x7d8($t6)
/* B4B498 800D42F8 AFA00018 */  sw    $zero, 0x18($sp)
/* B4B49C 800D42FC AFA60028 */  sw    $a2, 0x28($sp)
/* B4B4A0 800D4300 AFA00020 */  sw    $zero, 0x20($sp)
/* B4B4A4 800D4304 0C0013D0 */  jal   osSetIntMask
/* B4B4A8 800D4308 AFA30024 */   sw    $v1, 0x24($sp)
/* B4B4AC 800D430C 8FA30024 */  lw    $v1, 0x24($sp)
/* B4B4B0 800D4310 3C078017 */  lui   $a3, %hi(sFaultStructPtr) # $a3, 0x8017
/* B4B4B4 800D4314 24E7A800 */  addiu $a3, %lo(sFaultStructPtr) # addiu $a3, $a3, -0x5800
/* B4B4B8 800D4318 8FA50020 */  lw    $a1, 0x20($sp)
/* B4B4BC 800D431C 8FA60028 */  lw    $a2, 0x28($sp)
/* B4B4C0 800D4320 10600018 */  beqz  $v1, .L800D4384
/* B4B4C4 800D4324 00402025 */   move  $a0, $v0
.L800D4328:
/* B4B4C8 800D4328 54660013 */  bnel  $v1, $a2, .L800D4378
/* B4B4CC 800D432C 00602825 */   move  $a1, $v1
/* B4B4D0 800D4330 50A00005 */  beql  $a1, $zero, .L800D4348
/* B4B4D4 800D4334 8CF80000 */   lw    $t8, ($a3)
/* B4B4D8 800D4338 8CCF0000 */  lw    $t7, ($a2)
/* B4B4DC 800D433C 10000011 */  b     .L800D4384
/* B4B4E0 800D4340 ACAF0000 */   sw    $t7, ($a1)
/* B4B4E4 800D4344 8CF80000 */  lw    $t8, ($a3)
.L800D4348:
/* B4B4E8 800D4348 24090001 */  li    $t1, 1
/* B4B4EC 800D434C AF0607D8 */  sw    $a2, 0x7d8($t8)
/* B4B4F0 800D4350 8CE20000 */  lw    $v0, ($a3)
/* B4B4F4 800D4354 8C5907D8 */  lw    $t9, 0x7d8($v0)
/* B4B4F8 800D4358 13200004 */  beqz  $t9, .L800D436C
/* B4B4FC 800D435C 00000000 */   nop   
/* B4B500 800D4360 8CC80000 */  lw    $t0, ($a2)
/* B4B504 800D4364 10000007 */  b     .L800D4384
/* B4B508 800D4368 AC4807D8 */   sw    $t0, 0x7d8($v0)
.L800D436C:
/* B4B50C 800D436C 10000005 */  b     .L800D4384
/* B4B510 800D4370 AFA90018 */   sw    $t1, 0x18($sp)
/* B4B514 800D4374 00602825 */  move  $a1, $v1
.L800D4378:
/* B4B518 800D4378 8C630000 */  lw    $v1, ($v1)
/* B4B51C 800D437C 1460FFEA */  bnez  $v1, .L800D4328
/* B4B520 800D4380 00000000 */   nop   
.L800D4384:
/* B4B524 800D4384 0C0013D0 */  jal   osSetIntMask
/* B4B528 800D4388 AFA60028 */   sw    $a2, 0x28($sp)
/* B4B52C 800D438C 8FAA0018 */  lw    $t2, 0x18($sp)
/* B4B530 800D4390 3C048014 */  lui   $a0, %hi(D_80146D9C) # $a0, 0x8014
/* B4B534 800D4394 8FA60028 */  lw    $a2, 0x28($sp)
/* B4B538 800D4398 11400003 */  beqz  $t2, .L800D43A8
/* B4B53C 800D439C 24846D9C */   addiu $a0, %lo(D_80146D9C) # addiu $a0, $a0, 0x6d9c
/* B4B540 800D43A0 0C00084C */  jal   osSyncPrintf
/* B4B544 800D43A4 00C02825 */   move  $a1, $a2
.L800D43A8:
/* B4B548 800D43A8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4B54C 800D43AC 27BD0028 */  addiu $sp, $sp, 0x28
/* B4B550 800D43B0 03E00008 */  jr    $ra
/* B4B554 800D43B4 00000000 */   nop   