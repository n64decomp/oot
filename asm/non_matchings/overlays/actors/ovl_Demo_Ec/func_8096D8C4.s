glabel func_8096D8C4
/* 00414 8096D8C4 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 00418 8096D8C8 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0041C 8096D8CC AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00420 8096D8D0 AFA40070 */  sw      $a0, 0x0070($sp)           
/* 00424 8096D8D4 AFA50074 */  sw      $a1, 0x0074($sp)           
/* 00428 8096D8D8 AFA60078 */  sw      $a2, 0x0078($sp)           
/* 0042C 8096D8DC AFA7007C */  sw      $a3, 0x007C($sp)           
/* 00430 8096D8E0 8CB00000 */  lw      $s0, 0x0000($a1)           ## 00000000
/* 00434 8096D8E4 3C068097 */  lui     $a2, %hi(D_8097066C)       ## $a2 = 80970000
/* 00438 8096D8E8 24C6066C */  addiu   $a2, $a2, %lo(D_8097066C)  ## $a2 = 8097066C
/* 0043C 8096D8EC 24070235 */  addiu   $a3, $zero, 0x0235         ## $a3 = 00000235
/* 00440 8096D8F0 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFE0
/* 00444 8096D8F4 0C031AB1 */  jal     func_800C6AC4              
/* 00448 8096D8F8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0044C 8096D8FC 0C024F46 */  jal     func_80093D18              
/* 00450 8096D900 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00454 8096D904 8FA60078 */  lw      $a2, 0x0078($sp)           
/* 00458 8096D908 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 0045C 8096D90C 37180020 */  ori     $t8, $t8, 0x0020           ## $t8 = DB060020
/* 00460 8096D910 10C0001C */  beq     $a2, $zero, .L8096D984     
/* 00464 8096D914 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 00468 8096D918 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0046C 8096D91C 0006C900 */  sll     $t9, $a2,  4               
/* 00470 8096D920 00194702 */  srl     $t0, $t9, 28               
/* 00474 8096D924 3C0A8016 */  lui     $t2, 0x8016                ## $t2 = 80160000
/* 00478 8096D928 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 0047C 8096D92C AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 00480 8096D930 254A6FA8 */  addiu   $t2, $t2, 0x6FA8           ## $t2 = 80166FA8
/* 00484 8096D934 00084880 */  sll     $t1, $t0,  2               
/* 00488 8096D938 012A2021 */  addu    $a0, $t1, $t2              
/* 0048C 8096D93C AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00490 8096D940 8C8B0000 */  lw      $t3, 0x0000($a0)           ## 00000000
/* 00494 8096D944 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00498 8096D948 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0049C 8096D94C 00C12824 */  and     $a1, $a2, $at              
/* 004A0 8096D950 01656021 */  addu    $t4, $t3, $a1              
/* 004A4 8096D954 01876821 */  addu    $t5, $t4, $a3              
/* 004A8 8096D958 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 004AC 8096D95C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 004B0 8096D960 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 004B4 8096D964 35EF0024 */  ori     $t7, $t7, 0x0024           ## $t7 = DB060024
/* 004B8 8096D968 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 004BC 8096D96C AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 004C0 8096D970 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 004C4 8096D974 8C980000 */  lw      $t8, 0x0000($a0)           ## 00000000
/* 004C8 8096D978 0305C821 */  addu    $t9, $t8, $a1              
/* 004CC 8096D97C 03274021 */  addu    $t0, $t9, $a3              
/* 004D0 8096D980 AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
.L8096D984:
/* 004D4 8096D984 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 004D8 8096D988 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 004DC 8096D98C 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 004E0 8096D990 10800011 */  beq     $a0, $zero, .L8096D9D8     
/* 004E4 8096D994 354A0024 */  ori     $t2, $t2, 0x0024           ## $t2 = DB060024
/* 004E8 8096D998 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 004EC 8096D99C 00045900 */  sll     $t3, $a0,  4               
/* 004F0 8096D9A0 000B6702 */  srl     $t4, $t3, 28               
/* 004F4 8096D9A4 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 004F8 8096D9A8 AE0902C0 */  sw      $t1, 0x02C0($s0)           ## 000002C0
/* 004FC 8096D9AC 000C6880 */  sll     $t5, $t4,  2               
/* 00500 8096D9B0 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00504 8096D9B4 01CD7021 */  addu    $t6, $t6, $t5              
/* 00508 8096D9B8 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 0050C 8096D9BC 8DCE6FA8 */  lw      $t6, 0x6FA8($t6)           ## 80166FA8
/* 00510 8096D9C0 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00514 8096D9C4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00518 8096D9C8 00817824 */  and     $t7, $a0, $at              
/* 0051C 8096D9CC 01CFC021 */  addu    $t8, $t6, $t7              
/* 00520 8096D9D0 0307C821 */  addu    $t9, $t8, $a3              
/* 00524 8096D9D4 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
.L8096D9D8:
/* 00528 8096D9D8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0052C 8096D9DC 3C09FB00 */  lui     $t1, 0xFB00                ## $t1 = FB000000
/* 00530 8096D9E0 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 00534 8096D9E4 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 00538 8096D9E8 AE0802C0 */  sw      $t0, 0x02C0($s0)           ## 000002C0
/* 0053C 8096D9EC AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 00540 8096D9F0 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 00544 8096D9F4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00548 8096D9F8 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 0054C 8096D9FC 3C0D8011 */  lui     $t5, 0x8011                ## $t5 = 80110000
/* 00550 8096DA00 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00554 8096DA04 AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 00558 8096DA08 25AD6290 */  addiu   $t5, $t5, 0x6290           ## $t5 = 80116290
/* 0055C 8096DA0C 358C0030 */  ori     $t4, $t4, 0x0030           ## $t4 = DB060030
/* 00560 8096DA10 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00564 8096DA14 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 00568 8096DA18 8FA30070 */  lw      $v1, 0x0070($sp)           
/* 0056C 8096DA1C 8FAF0084 */  lw      $t7, 0x0084($sp)           
/* 00570 8096DA20 8FAE0080 */  lw      $t6, 0x0080($sp)           
/* 00574 8096DA24 2462014C */  addiu   $v0, $v1, 0x014C           ## $v0 = 0000014C
/* 00578 8096DA28 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000150
/* 0057C 8096DA2C 8C460020 */  lw      $a2, 0x0020($v0)           ## 0000016C
/* 00580 8096DA30 90470002 */  lbu     $a3, 0x0002($v0)           ## 0000014E
/* 00584 8096DA34 AFA30018 */  sw      $v1, 0x0018($sp)           
/* 00588 8096DA38 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 0058C 8096DA3C AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00590 8096DA40 8E1802C0 */  lw      $t8, 0x02C0($s0)           ## 000002C0
/* 00594 8096DA44 8FA40074 */  lw      $a0, 0x0074($sp)           
/* 00598 8096DA48 0C0289CF */  jal     func_800A273C              
/* 0059C 8096DA4C AFB8001C */  sw      $t8, 0x001C($sp)           
/* 005A0 8096DA50 3C068097 */  lui     $a2, %hi(D_8097067C)       ## $a2 = 80970000
/* 005A4 8096DA54 AE0202C0 */  sw      $v0, 0x02C0($s0)           ## 000002C0
/* 005A8 8096DA58 24C6067C */  addiu   $a2, $a2, %lo(D_8097067C)  ## $a2 = 8097067C
/* 005AC 8096DA5C 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFE0
/* 005B0 8096DA60 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 005B4 8096DA64 0C031AD5 */  jal     func_800C6B54              
/* 005B8 8096DA68 24070253 */  addiu   $a3, $zero, 0x0253         ## $a3 = 00000253
/* 005BC 8096DA6C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 005C0 8096DA70 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 005C4 8096DA74 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
/* 005C8 8096DA78 03E00008 */  jr      $ra                        
/* 005CC 8096DA7C 00000000 */  nop


