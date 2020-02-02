glabel func_8086D098
/* 00088 8086D098 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0008C 8086D09C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00090 8086D0A0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00094 8086D0A4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00098 8086D0A8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0009C 8086D0AC 24C50168 */  addiu   $a1, $a2, 0x0168           ## $a1 = 00000168
/* 000A0 8086D0B0 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 000A4 8086D0B4 0C016EFE */  jal     func_8005BBF8              
/* 000A8 8086D0B8 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 000AC 8086D0BC 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 000B0 8086D0C0 3C078087 */  lui     $a3, %hi(D_8086E0C4)       ## $a3 = 80870000
/* 000B4 8086D0C4 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 000B8 8086D0C8 24CE0188 */  addiu   $t6, $a2, 0x0188           ## $t6 = 00000188
/* 000BC 8086D0CC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 000C0 8086D0D0 24E7E0C4 */  addiu   $a3, $a3, %lo(D_8086E0C4)  ## $a3 = 8086E0C4
/* 000C4 8086D0D4 0C017014 */  jal     func_8005C050              
/* 000C8 8086D0D8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 000CC 8086D0DC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 000D0 8086D0E0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 000D4 8086D0E4 03E00008 */  jr      $ra                        
/* 000D8 8086D0E8 00000000 */  nop


