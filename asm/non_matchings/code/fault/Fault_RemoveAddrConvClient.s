.rdata

glabel D_80146E1C
    .asciz "\x1b[41;37mfault_AddressConverterRemoveClient: %08x \xA4\xCF\xB4\xFB\xA4\xCB\xA5\xEA\xA5\xB9\xA5\xC8\xC3\xE6\xA4\xCB\xA4\xA2\xA4\xEB\n\x1b[m"
    .balign 4

.text    
glabel Fault_RemoveAddrConvClient
/* B4B630 800D4490 3C0BFFFA */  lui   $t3, (0xFFFA5A5A >> 16) # lui $t3, 0xfffa
/* B4B634 800D4494 03A06025 */  move  $t4, $sp
/* B4B638 800D4498 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B4B63C 800D449C 356B5A5A */  ori   $t3, (0xFFFA5A5A & 0xFFFF) # ori $t3, $t3, 0x5a5a
.L800D44A0:
/* B4B640 800D44A0 258CFFF8 */  addiu $t4, $t4, -8
/* B4B644 800D44A4 AD8B0000 */  sw    $t3, ($t4)
/* B4B648 800D44A8 159DFFFD */  bne   $t4, $sp, .L800D44A0
/* B4B64C 800D44AC AD8B0004 */   sw    $t3, 4($t4)
/* B4B650 800D44B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4B654 800D44B4 00803025 */  move  $a2, $a0
/* B4B658 800D44B8 3C0E8017 */  lui   $t6, %hi(sFaultStructPtr) # $t6, 0x8017
/* B4B65C 800D44BC 8DCEA800 */  lw    $t6, %lo(sFaultStructPtr)($t6)
/* B4B660 800D44C0 24040001 */  li    $a0, 1
/* B4B664 800D44C4 8DC307DC */  lw    $v1, 0x7dc($t6)
/* B4B668 800D44C8 AFA00018 */  sw    $zero, 0x18($sp)
/* B4B66C 800D44CC AFA60028 */  sw    $a2, 0x28($sp)
/* B4B670 800D44D0 AFA00020 */  sw    $zero, 0x20($sp)
/* B4B674 800D44D4 0C0013D0 */  jal   osSetIntMask
/* B4B678 800D44D8 AFA30024 */   sw    $v1, 0x24($sp)
/* B4B67C 800D44DC 8FA30024 */  lw    $v1, 0x24($sp)
/* B4B680 800D44E0 3C078017 */  lui   $a3, %hi(sFaultStructPtr) # $a3, 0x8017
/* B4B684 800D44E4 24E7A800 */  addiu $a3, %lo(sFaultStructPtr) # addiu $a3, $a3, -0x5800
/* B4B688 800D44E8 8FA50020 */  lw    $a1, 0x20($sp)
/* B4B68C 800D44EC 8FA60028 */  lw    $a2, 0x28($sp)
/* B4B690 800D44F0 10600018 */  beqz  $v1, .L800D4554
/* B4B694 800D44F4 00402025 */   move  $a0, $v0
.L800D44F8:
/* B4B698 800D44F8 54660013 */  bnel  $v1, $a2, .L800D4548
/* B4B69C 800D44FC 00602825 */   move  $a1, $v1
/* B4B6A0 800D4500 50A00005 */  beql  $a1, $zero, .L800D4518
/* B4B6A4 800D4504 8CF80000 */   lw    $t8, ($a3)
/* B4B6A8 800D4508 8CCF0000 */  lw    $t7, ($a2)
/* B4B6AC 800D450C 10000011 */  b     .L800D4554
/* B4B6B0 800D4510 ACAF0000 */   sw    $t7, ($a1)
/* B4B6B4 800D4514 8CF80000 */  lw    $t8, ($a3)
.L800D4518:
/* B4B6B8 800D4518 24090001 */  li    $t1, 1
/* B4B6BC 800D451C AF0607DC */  sw    $a2, 0x7dc($t8)
/* B4B6C0 800D4520 8CE20000 */  lw    $v0, ($a3)
/* B4B6C4 800D4524 8C5907DC */  lw    $t9, 0x7dc($v0)
/* B4B6C8 800D4528 13200004 */  beqz  $t9, .L800D453C
/* B4B6CC 800D452C 00000000 */   nop   
/* B4B6D0 800D4530 8CC80000 */  lw    $t0, ($a2)
/* B4B6D4 800D4534 10000007 */  b     .L800D4554
/* B4B6D8 800D4538 AC4807DC */   sw    $t0, 0x7dc($v0)
.L800D453C:
/* B4B6DC 800D453C 10000005 */  b     .L800D4554
/* B4B6E0 800D4540 AFA90018 */   sw    $t1, 0x18($sp)
/* B4B6E4 800D4544 00602825 */  move  $a1, $v1
.L800D4548:
/* B4B6E8 800D4548 8C630000 */  lw    $v1, ($v1)
/* B4B6EC 800D454C 1460FFEA */  bnez  $v1, .L800D44F8
/* B4B6F0 800D4550 00000000 */   nop   
.L800D4554:
/* B4B6F4 800D4554 0C0013D0 */  jal   osSetIntMask
/* B4B6F8 800D4558 AFA60028 */   sw    $a2, 0x28($sp)
/* B4B6FC 800D455C 8FAA0018 */  lw    $t2, 0x18($sp)
/* B4B700 800D4560 3C048014 */  lui   $a0, %hi(D_80146E1C) # $a0, 0x8014
/* B4B704 800D4564 8FA60028 */  lw    $a2, 0x28($sp)
/* B4B708 800D4568 11400003 */  beqz  $t2, .L800D4578
/* B4B70C 800D456C 24846E1C */   addiu $a0, %lo(D_80146E1C) # addiu $a0, $a0, 0x6e1c
/* B4B710 800D4570 0C00084C */  jal   osSyncPrintf
/* B4B714 800D4574 00C02825 */   move  $a1, $a2
.L800D4578:
/* B4B718 800D4578 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4B71C 800D457C 27BD0028 */  addiu $sp, $sp, 0x28
/* B4B720 800D4580 03E00008 */  jr    $ra
/* B4B724 800D4584 00000000 */   nop   

