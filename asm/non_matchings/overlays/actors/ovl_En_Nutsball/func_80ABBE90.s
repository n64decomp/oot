.rdata

glabel D_80ABC010
    .asciz "../z_en_nutsball.c"
    .balign 4

glabel D_80ABC024
    .asciz "../z_en_nutsball.c"
    .balign 4

glabel D_80ABC038
    .asciz "../z_en_nutsball.c"
    .balign 4

.late_rodata

glabel D_80ABC04C
 .word 0x38C90FDB

.text

glabel func_80ABBE90
/* 00440 80ABBE90 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00444 80ABBE94 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00448 80ABBE98 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0044C 80ABBE9C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00450 80ABBEA0 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00454 80ABBEA4 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00458 80ABBEA8 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 0045C 80ABBEAC 3C0680AC */  lui     $a2, %hi(D_80ABC010)       ## $a2 = 80AC0000
/* 00460 80ABBEB0 24C6C010 */  addiu   $a2, $a2, %lo(D_80ABC010)  ## $a2 = 80ABC010
/* 00464 80ABBEB4 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 00468 80ABBEB8 24070147 */  addiu   $a3, $zero, 0x0147         ## $a3 = 00000147
/* 0046C 80ABBEBC 0C031AB1 */  jal     func_800C6AC4              
/* 00470 80ABBEC0 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00474 80ABBEC4 0C024F46 */  jal     func_80093D18              
/* 00478 80ABBEC8 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 0047C 80ABBECC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00480 80ABBED0 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 00484 80ABBED4 02212021 */  addu    $a0, $s1, $at              
/* 00488 80ABBED8 0C03424C */  jal     Matrix_Mult              
/* 0048C 80ABBEDC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00490 80ABBEE0 8FAE0048 */  lw      $t6, 0x0048($sp)           
/* 00494 80ABBEE4 3C0180AC */  lui     $at, %hi(D_80ABC04C)       ## $at = 80AC0000
/* 00498 80ABBEE8 C428C04C */  lwc1    $f8, %lo(D_80ABC04C)($at)  
/* 0049C 80ABBEEC 85CF0018 */  lh      $t7, 0x0018($t6)           ## 00000018
/* 004A0 80ABBEF0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 004A4 80ABBEF4 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 004A8 80ABBEF8 00000000 */  nop
/* 004AC 80ABBEFC 468021A0 */  cvt.s.w $f6, $f4                   
/* 004B0 80ABBF00 46083302 */  mul.s   $f12, $f6, $f8             
/* 004B4 80ABBF04 0C0343B5 */  jal     Matrix_RotateZ              
/* 004B8 80ABBF08 00000000 */  nop
/* 004BC 80ABBF0C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 004C0 80ABBF10 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 004C4 80ABBF14 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 004C8 80ABBF18 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 004CC 80ABBF1C AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 004D0 80ABBF20 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 004D4 80ABBF24 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 004D8 80ABBF28 3C0580AC */  lui     $a1, %hi(D_80ABC024)       ## $a1 = 80AC0000
/* 004DC 80ABBF2C 24A5C024 */  addiu   $a1, $a1, %lo(D_80ABC024)  ## $a1 = 80ABC024
/* 004E0 80ABBF30 2406014D */  addiu   $a2, $zero, 0x014D         ## $a2 = 0000014D
/* 004E4 80ABBF34 0C0346A2 */  jal     Matrix_NewMtx              
/* 004E8 80ABBF38 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 004EC 80ABBF3C 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 004F0 80ABBF40 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 004F4 80ABBF44 3C0D80AC */  lui     $t5, %hi(dListTbl)       ## $t5 = 80AC0000
/* 004F8 80ABBF48 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 004FC 80ABBF4C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00500 80ABBF50 3C0680AC */  lui     $a2, %hi(D_80ABC038)       ## $a2 = 80AC0000
/* 00504 80ABBF54 24C6C038 */  addiu   $a2, $a2, %lo(D_80ABC038)  ## $a2 = 80ABC038
/* 00508 80ABBF58 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 0050C 80ABBF5C AE0802C0 */  sw      $t0, 0x02C0($s0)           ## 000002C0
/* 00510 80ABBF60 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 00514 80ABBF64 8FAA0048 */  lw      $t2, 0x0048($sp)           
/* 00518 80ABBF68 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 0051C 80ABBF6C 24070151 */  addiu   $a3, $zero, 0x0151         ## $a3 = 00000151
/* 00520 80ABBF70 854B001C */  lh      $t3, 0x001C($t2)           ## 0000001C
/* 00524 80ABBF74 000B6080 */  sll     $t4, $t3,  2               
/* 00528 80ABBF78 01AC6821 */  addu    $t5, $t5, $t4              
/* 0052C 80ABBF7C 8DADBFF8 */  lw      $t5, %lo(dListTbl)($t5)  
/* 00530 80ABBF80 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 00534 80ABBF84 0C031AD5 */  jal     func_800C6B54              
/* 00538 80ABBF88 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 0053C 80ABBF8C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00540 80ABBF90 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00544 80ABBF94 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00548 80ABBF98 03E00008 */  jr      $ra                        
/* 0054C 80ABBF9C 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000

