glabel ActorCollider_AllocCylinder
/* AD3504 8005C364 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD3508 8005C368 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD350C 8005C36C AFA40018 */  sw    $a0, 0x18($sp)
/* AD3510 8005C370 0C016D97 */  jal   func_8005B65C
/* AD3514 8005C374 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD3518 8005C378 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD351C 8005C37C 8FA40018 */  lw    $a0, 0x18($sp)
/* AD3520 8005C380 0C016E21 */  jal   func_8005B884
/* AD3524 8005C384 24A50018 */   addiu $a1, $a1, 0x18
/* AD3528 8005C388 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD352C 8005C38C 8FA40018 */  lw    $a0, 0x18($sp)
/* AD3530 8005C390 0C0170AF */  jal   func_8005C2BC
/* AD3534 8005C394 24A50040 */   addiu $a1, $a1, 0x40
/* AD3538 8005C398 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD353C 8005C39C 27BD0018 */  addiu $sp, $sp, 0x18
/* AD3540 8005C3A0 24020001 */  li    $v0, 1
/* AD3544 8005C3A4 03E00008 */  jr    $ra
/* AD3548 8005C3A8 00000000 */   nop   

