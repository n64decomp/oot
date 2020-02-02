glabel func_80B92D44
/* 00244 80B92D44 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00248 80B92D48 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0024C 80B92D4C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00250 80B92D50 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00254 80B92D54 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00258 80B92D58 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0025C 80B92D5C 8E07016C */  lw      $a3, 0x016C($s0)           ## 0000016C
/* 00260 80B92D60 8E050168 */  lw      $a1, 0x0168($s0)           ## 00000168
/* 00264 80B92D64 24840028 */  addiu   $a0, $a0, 0x0028           ## $a0 = 00000028
/* 00268 80B92D68 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0026C 80B92D6C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00270 80B92D70 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00274 80B92D74 3C0180B9 */  lui     $at, %hi(D_80B92EF0)       ## $at = 80B90000
/* 00278 80B92D78 C4262EF0 */  lwc1    $f6, %lo(D_80B92EF0)($at)  
/* 0027C 80B92D7C 46000005 */  abs.s   $f0, $f0                   
/* 00280 80B92D80 24052815 */  addiu   $a1, $zero, 0x2815         ## $a1 = 00002815
/* 00284 80B92D84 4606003C */  c.lt.s  $f0, $f6                   
/* 00288 80B92D88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0028C 80B92D8C 45000007 */  bc1f    .L80B92DAC                 
/* 00290 80B92D90 00000000 */  nop
/* 00294 80B92D94 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00298 80B92D98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0029C 80B92D9C 0C2E4B17 */  jal     func_80B92C5C              
/* 002A0 80B92DA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002A4 80B92DA4 10000004 */  beq     $zero, $zero, .L80B92DB8   
/* 002A8 80B92DA8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B92DAC:
/* 002AC 80B92DAC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 002B0 80B92DB0 2405201E */  addiu   $a1, $zero, 0x201E         ## $a1 = 0000201E
/* 002B4 80B92DB4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B92DB8:
/* 002B8 80B92DB8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 002BC 80B92DBC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 002C0 80B92DC0 03E00008 */  jr      $ra                        
/* 002C4 80B92DC4 00000000 */  nop


