glabel func_80ABE7E8
/* 00088 80ABE7E8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0008C 80ABE7EC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00090 80ABE7F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00094 80ABE7F4 3C0480AC */  lui     $a0, %hi(D_80ABEBF0)       ## $a0 = 80AC0000
/* 00098 80ABE7F8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0009C 80ABE7FC 0C00084C */  jal     osSyncPrintf
              
/* 000A0 80ABE800 2484EBF0 */  addiu   $a0, $a0, %lo(D_80ABEBF0)  ## $a0 = 80ABEBF0
/* 000A4 80ABE804 3C0480AC */  lui     $a0, %hi(D_80ABEBF4)       ## $a0 = 80AC0000
/* 000A8 80ABE808 0C00084C */  jal     osSyncPrintf
              
/* 000AC 80ABE80C 2484EBF4 */  addiu   $a0, $a0, %lo(D_80ABEBF4)  ## $a0 = 80ABEBF4
/* 000B0 80ABE810 3C0480AC */  lui     $a0, %hi(D_80ABEC38)       ## $a0 = 80AC0000
/* 000B4 80ABE814 0C00084C */  jal     osSyncPrintf
              
/* 000B8 80ABE818 2484EC38 */  addiu   $a0, $a0, %lo(D_80ABEC38)  ## $a0 = 80ABEC38
/* 000BC 80ABE81C 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 000C0 80ABE820 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 000C4 80ABE824 01EE7821 */  addu    $t7, $t7, $t6              
/* 000C8 80ABE828 91EF0B13 */  lbu     $t7, 0x0B13($t7)           ## 00010B13
/* 000CC 80ABE82C 11E00003 */  beq     $t7, $zero, .L80ABE83C     
/* 000D0 80ABE830 00000000 */  nop
/* 000D4 80ABE834 0C00B55C */  jal     Actor_Kill
              
/* 000D8 80ABE838 8FA40018 */  lw      $a0, 0x0018($sp)           
.L80ABE83C:
/* 000DC 80ABE83C 3C0580AC */  lui     $a1, %hi(func_80ABE85C)    ## $a1 = 80AC0000
/* 000E0 80ABE840 24A5E85C */  addiu   $a1, $a1, %lo(func_80ABE85C) ## $a1 = 80ABE85C
/* 000E4 80ABE844 0C2AF9D8 */  jal     func_80ABE760              
/* 000E8 80ABE848 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 000EC 80ABE84C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000F0 80ABE850 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000F4 80ABE854 03E00008 */  jr      $ra                        
/* 000F8 80ABE858 00000000 */  nop


