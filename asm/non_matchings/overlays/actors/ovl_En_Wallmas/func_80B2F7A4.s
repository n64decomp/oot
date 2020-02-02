glabel func_80B2F7A4
/* 00284 80B2F7A4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00288 80B2F7A8 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 0028C 80B2F7AC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00290 80B2F7B0 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00294 80B2F7B4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00298 80B2F7B8 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 0029C 80B2F7BC 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 002A0 80B2F7C0 248419CC */  addiu   $a0, $a0, 0x19CC           ## $a0 = 060019CC
/* 002A4 80B2F7C4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 002A8 80B2F7C8 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 002AC 80B2F7CC 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.00
/* 002B0 80B2F7D0 468021A0 */  cvt.s.w $f6, $f4                   
/* 002B4 80B2F7D4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 002B8 80B2F7D8 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 002BC 80B2F7DC AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 002C0 80B2F7E0 24A519CC */  addiu   $a1, $a1, 0x19CC           ## $a1 = 060019CC
/* 002C4 80B2F7E4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 002C8 80B2F7E8 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 002CC 80B2F7EC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 002D0 80B2F7F0 3C074224 */  lui     $a3, 0x4224                ## $a3 = 42240000
/* 002D4 80B2F7F4 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 002D8 80B2F7F8 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 002DC 80B2F7FC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 002E0 80B2F800 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 002E4 80B2F804 240F0006 */  addiu   $t7, $zero, 0x0006         ## $t7 = 00000006
/* 002E8 80B2F808 2418012C */  addiu   $t8, $zero, 0x012C         ## $t8 = 0000012C
/* 002EC 80B2F80C 24190064 */  addiu   $t9, $zero, 0x0064         ## $t9 = 00000064
/* 002F0 80B2F810 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 002F4 80B2F814 AFA80020 */  sw      $t0, 0x0020($sp)           
/* 002F8 80B2F818 AFB9001C */  sw      $t9, 0x001C($sp)           
/* 002FC 80B2F81C AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00300 80B2F820 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00304 80B2F824 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00308 80B2F828 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0030C 80B2F82C 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 00310 80B2F830 3C074170 */  lui     $a3, 0x4170                ## $a3 = 41700000
/* 00314 80B2F834 0C00CC98 */  jal     func_80033260              
/* 00318 80B2F838 E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 0031C 80B2F83C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00320 80B2F840 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00324 80B2F844 24053893 */  addiu   $a1, $zero, 0x3893         ## $a1 = 00003893
/* 00328 80B2F848 3C0980B3 */  lui     $t1, %hi(func_80B2FF0C)    ## $t1 = 80B30000
/* 0032C 80B2F84C 2529FF0C */  addiu   $t1, $t1, %lo(func_80B2FF0C) ## $t1 = 80B2FF0C
/* 00330 80B2F850 AE090190 */  sw      $t1, 0x0190($s0)           ## 00000190
/* 00334 80B2F854 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00338 80B2F858 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 0033C 80B2F85C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00340 80B2F860 03E00008 */  jr      $ra                        
/* 00344 80B2F864 00000000 */  nop


