glabel func_80ABEB20
/* 003C0 80ABEB20 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 003C4 80ABEB24 AFBF0044 */  sw      $ra, 0x0044($sp)           
/* 003C8 80ABEB28 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 003CC 80ABEB2C AFA40048 */  sw      $a0, 0x0048($sp)           
/* 003D0 80ABEB30 8C990150 */  lw      $t9, 0x0150($a0)           ## 00000150
/* 003D4 80ABEB34 0320F809 */  jalr    $ra, $t9                   
/* 003D8 80ABEB38 00000000 */  nop
/* 003DC 80ABEB3C 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 003E0 80ABEB40 8DCEFA90 */  lw      $t6, -0x0570($t6)          ## 8015FA90
/* 003E4 80ABEB44 8FA40048 */  lw      $a0, 0x0048($sp)           
/* 003E8 80ABEB48 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 003EC 80ABEB4C 85CF12D4 */  lh      $t7, 0x12D4($t6)           ## 801612D4
/* 003F0 80ABEB50 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 003F4 80ABEB54 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 003F8 80ABEB58 11E00017 */  beq     $t7, $zero, .L80ABEBB8     
/* 003FC 80ABEB5C 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 00400 80ABEB60 84980032 */  lh      $t8, 0x0032($a0)           ## 00000032
/* 00404 80ABEB64 C48C0024 */  lwc1    $f12, 0x0024($a0)          ## 00000024
/* 00408 80ABEB68 C48E0028 */  lwc1    $f14, 0x0028($a0)          ## 00000028
/* 0040C 80ABEB6C 8C86002C */  lw      $a2, 0x002C($a0)           ## 0000002C
/* 00410 80ABEB70 84870030 */  lh      $a3, 0x0030($a0)           ## 00000030
/* 00414 80ABEB74 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00418 80ABEB78 84880034 */  lh      $t0, 0x0034($a0)           ## 00000034
/* 0041C 80ABEB7C 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00420 80ABEB80 8FAD004C */  lw      $t5, 0x004C($sp)           
/* 00424 80ABEB84 240C0004 */  addiu   $t4, $zero, 0x0004         ## $t4 = 00000004
/* 00428 80ABEB88 AFAC0034 */  sw      $t4, 0x0034($sp)           
/* 0042C 80ABEB8C AFAB0030 */  sw      $t3, 0x0030($sp)           
/* 00430 80ABEB90 AFAA002C */  sw      $t2, 0x002C($sp)           
/* 00434 80ABEB94 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00438 80ABEB98 AFA90024 */  sw      $t1, 0x0024($sp)           
/* 0043C 80ABEB9C AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00440 80ABEBA0 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 00444 80ABEBA4 E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 00448 80ABEBA8 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 0044C 80ABEBAC 8DB90000 */  lw      $t9, 0x0000($t5)           ## 00000000
/* 00450 80ABEBB0 0C018FA7 */  jal     DebugDisplay_AddObject
              
/* 00454 80ABEBB4 AFB90038 */  sw      $t9, 0x0038($sp)           
.L80ABEBB8:
/* 00458 80ABEBB8 8FBF0044 */  lw      $ra, 0x0044($sp)           
/* 0045C 80ABEBBC 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00460 80ABEBC0 03E00008 */  jr      $ra                        
/* 00464 80ABEBC4 00000000 */  nop
/* 00468 80ABEBC8 00000000 */  nop
/* 0046C 80ABEBCC 00000000 */  nop

