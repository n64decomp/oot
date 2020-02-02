glabel func_80AB0198
/* 00478 80AB0198 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0047C 80AB019C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00480 80AB01A0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00484 80AB01A4 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00488 80AB01A8 848E024C */  lh      $t6, 0x024C($a0)           ## 0000024C
/* 0048C 80AB01AC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00490 80AB01B0 3C0541A0 */  lui     $a1, 0x41A0                ## $a1 = 41A00000
/* 00494 80AB01B4 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00498 80AB01B8 0C00B56E */  jal     Actor_SetHeight
              
/* 0049C 80AB01BC A48F024C */  sh      $t7, 0x024C($a0)           ## 0000024C
/* 004A0 80AB01C0 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 004A4 80AB01C4 44812000 */  mtc1    $at, $f4                   ## $f4 = 500.00
/* 004A8 80AB01C8 3C053C75 */  lui     $a1, 0x3C75                ## $a1 = 3C750000
/* 004AC 80AB01CC 34A5C28F */  ori     $a1, $a1, 0xC28F           ## $a1 = 3C75C28F
/* 004B0 80AB01D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004B4 80AB01D4 0C00B58B */  jal     Actor_SetScale
              
/* 004B8 80AB01D8 E604004C */  swc1    $f4, 0x004C($s0)           ## 0000004C
/* 004BC 80AB01DC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 004C0 80AB01E0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 004C4 80AB01E4 8E1901FC */  lw      $t9, 0x01FC($s0)           ## 000001FC
/* 004C8 80AB01E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004CC 80AB01EC 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 004D0 80AB01F0 0320F809 */  jalr    $ra, $t9                   
/* 004D4 80AB01F4 00000000 */  nop
/* 004D8 80AB01F8 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 004DC 80AB01FC 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 004E0 80AB0200 8C580000 */  lw      $t8, 0x0000($v0)           ## 8015E660
/* 004E4 80AB0204 24010157 */  addiu   $at, $zero, 0x0157         ## $at = 00000157
/* 004E8 80AB0208 57010019 */  bnel    $t8, $at, .L80AB0270       
/* 004EC 80AB020C 26060200 */  addiu   $a2, $s0, 0x0200           ## $a2 = 00000200
/* 004F0 80AB0210 8C481360 */  lw      $t0, 0x1360($v0)           ## 8015F9C0
/* 004F4 80AB0214 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 004F8 80AB0218 55010015 */  bnel    $t0, $at, .L80AB0270       
/* 004FC 80AB021C 26060200 */  addiu   $a2, $s0, 0x0200           ## $a2 = 00000200
/* 00500 80AB0220 0C00B638 */  jal     Actor_MoveForward
              
/* 00504 80AB0224 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00508 80AB0228 C6060060 */  lwc1    $f6, 0x0060($s0)           ## 00000060
/* 0050C 80AB022C 3C0480AB */  lui     $a0, %hi(D_80AB0380)       ## $a0 = 80AB0000
/* 00510 80AB0230 24840380 */  addiu   $a0, $a0, %lo(D_80AB0380)  ## $a0 = 80AB0380
/* 00514 80AB0234 46003221 */  cvt.d.s $f8, $f6                   
/* 00518 80AB0238 44074000 */  mfc1    $a3, $f8                   
/* 0051C 80AB023C 44064800 */  mfc1    $a2, $f9                   
/* 00520 80AB0240 0C00084C */  jal     osSyncPrintf
              
/* 00524 80AB0244 00000000 */  nop
/* 00528 80AB0248 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0052C 80AB024C 24090004 */  addiu   $t1, $zero, 0x0004         ## $t1 = 00000004
/* 00530 80AB0250 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00534 80AB0254 44060000 */  mfc1    $a2, $f0                   
/* 00538 80AB0258 44070000 */  mfc1    $a3, $f0                   
/* 0053C 80AB025C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00540 80AB0260 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00544 80AB0264 0C00B92D */  jal     func_8002E4B4              
/* 00548 80AB0268 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 0054C 80AB026C 26060200 */  addiu   $a2, $s0, 0x0200           ## $a2 = 00000200
.L80AB0270:
/* 00550 80AB0270 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000200
/* 00554 80AB0274 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 00558 80AB0278 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 0055C 80AB027C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00560 80AB0280 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00564 80AB0284 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00568 80AB0288 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 0056C 80AB028C 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 00570 80AB0290 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00574 80AB0294 00812821 */  addu    $a1, $a0, $at              
/* 00578 80AB0298 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0057C 80AB029C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00580 80AB02A0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00584 80AB02A4 03E00008 */  jr      $ra                        
/* 00588 80AB02A8 00000000 */  nop


