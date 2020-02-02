glabel ActorCollider_InitCylinder
/* AD364C 8005C4AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD3650 8005C4B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD3654 8005C4B4 AFA40018 */  sw    $a0, 0x18($sp)
/* AD3658 8005C4B8 AFA5001C */  sw    $a1, 0x1c($sp)
/* AD365C 8005C4BC 0C016DCB */  jal   func_8005B72C
/* AD3660 8005C4C0 AFA70024 */   sw    $a3, 0x24($sp)
/* AD3664 8005C4C4 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD3668 8005C4C8 8FA60024 */  lw    $a2, 0x24($sp)
/* AD366C 8005C4CC 8FA40018 */  lw    $a0, 0x18($sp)
/* AD3670 8005C4D0 24A50018 */  addiu $a1, $a1, 0x18
/* AD3674 8005C4D4 0C016E4F */  jal   func_8005B93C
/* AD3678 8005C4D8 24C60008 */   addiu $a2, $a2, 8
/* AD367C 8005C4DC 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD3680 8005C4E0 8FA60024 */  lw    $a2, 0x24($sp)
/* AD3684 8005C4E4 8FA40018 */  lw    $a0, 0x18($sp)
/* AD3688 8005C4E8 24A50040 */  addiu $a1, $a1, 0x40
/* AD368C 8005C4EC 0C0170CA */  jal   func_8005C328
/* AD3690 8005C4F0 24C60020 */   addiu $a2, $a2, 0x20
/* AD3694 8005C4F4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD3698 8005C4F8 27BD0018 */  addiu $sp, $sp, 0x18
/* AD369C 8005C4FC 24020001 */  li    $v0, 1
/* AD36A0 8005C500 03E00008 */  jr    $ra
/* AD36A4 8005C504 00000000 */   nop   

/* AD36A8 8005C508 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD36AC 8005C50C AFBF0014 */  sw    $ra, 0x14($sp)
/* AD36B0 8005C510 AFA40018 */  sw    $a0, 0x18($sp)
/* AD36B4 8005C514 0C016DDB */  jal   func_8005B76C
/* AD36B8 8005C518 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD36BC 8005C51C 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD36C0 8005C520 8FA40018 */  lw    $a0, 0x18($sp)
/* AD36C4 8005C524 0C016E6C */  jal   func_8005B9B0
/* AD36C8 8005C528 24A50018 */   addiu $a1, $a1, 0x18
/* AD36CC 8005C52C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD36D0 8005C530 27BD0018 */  addiu $sp, $sp, 0x18
/* AD36D4 8005C534 24020001 */  li    $v0, 1
/* AD36D8 8005C538 03E00008 */  jr    $ra
/* AD36DC 8005C53C 00000000 */   nop   

