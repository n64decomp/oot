glabel func_8088E90C
/* 0053C 8088E90C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00540 8088E910 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00544 8088E914 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00548 8088E918 84840032 */  lh      $a0, 0x0032($a0)           ## 00000032
/* 0054C 8088E91C 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00550 8088E920 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 00554 8088E924 00812021 */  addu    $a0, $a0, $at              
/* 00558 8088E928 00042400 */  sll     $a0, $a0, 16               
/* 0055C 8088E92C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00560 8088E930 00042403 */  sra     $a0, $a0, 16               
/* 00564 8088E934 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00568 8088E938 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 0056C 8088E93C 84A40032 */  lh      $a0, 0x0032($a1)           ## 00000032
/* 00570 8088E940 E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 00574 8088E944 00812021 */  addu    $a0, $a0, $at              
/* 00578 8088E948 00042400 */  sll     $a0, $a0, 16               
/* 0057C 8088E94C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00580 8088E950 00042403 */  sra     $a0, $a0, 16               
/* 00584 8088E954 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00588 8088E958 C7AC001C */  lwc1    $f12, 0x001C($sp)          
/* 0058C 8088E95C 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00590 8088E960 24040080 */  addiu   $a0, $zero, 0x0080         ## $a0 = 00000080
/* 00594 8088E964 8CAE0188 */  lw      $t6, 0x0188($a1)           ## 00000188
/* 00598 8088E968 2484FFC0 */  addiu   $a0, $a0, 0xFFC0           ## $a0 = 00000040
/* 0059C 8088E96C C4B00024 */  lwc1    $f16, 0x0024($a1)          ## 00000024
/* 005A0 8088E970 01C31021 */  addu    $v0, $t6, $v1              
/* 005A4 8088E974 844F002C */  lh      $t7, 0x002C($v0)           ## 0000002C
/* 005A8 8088E978 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 005AC 8088E97C 00000000 */  nop
/* 005B0 8088E980 468054A0 */  cvt.s.w $f18, $f10                 
/* 005B4 8088E984 46120382 */  mul.s   $f14, $f0, $f18            
/* 005B8 8088E988 50640020 */  beql    $v1, $a0, .L8088EA0C       
/* 005BC 8088E98C 460E8200 */  add.s   $f8, $f16, $f14            
.L8088E990:
/* 005C0 8088E990 46126282 */  mul.s   $f10, $f12, $f18           
/* 005C4 8088E994 460E8200 */  add.s   $f8, $f16, $f14            
/* 005C8 8088E998 844C002A */  lh      $t4, 0x002A($v0)           ## 0000002A
/* 005CC 8088E99C 24630040 */  addiu   $v1, $v1, 0x0040           ## $v1 = 00000040
/* 005D0 8088E9A0 4600420D */  trunc.w.s $f8, $f8                   
/* 005D4 8088E9A4 44194000 */  mfc1    $t9, $f8                   
/* 005D8 8088E9A8 00000000 */  nop
/* 005DC 8088E9AC A4590030 */  sh      $t9, 0x0030($v0)           ## 00000030
/* 005E0 8088E9B0 C4A80028 */  lwc1    $f8, 0x0028($a1)           ## 00000028
/* 005E4 8088E9B4 4600420D */  trunc.w.s $f8, $f8                   
/* 005E8 8088E9B8 440B4000 */  mfc1    $t3, $f8                   
/* 005EC 8088E9BC 00000000 */  nop
/* 005F0 8088E9C0 016C6821 */  addu    $t5, $t3, $t4              
/* 005F4 8088E9C4 A44D0032 */  sh      $t5, 0x0032($v0)           ## 00000032
/* 005F8 8088E9C8 C4A8002C */  lwc1    $f8, 0x002C($a1)           ## 0000002C
/* 005FC 8088E9CC 460A4280 */  add.s   $f10, $f8, $f10            
/* 00600 8088E9D0 4600528D */  trunc.w.s $f10, $f10                 
/* 00604 8088E9D4 440F5000 */  mfc1    $t7, $f10                  
/* 00608 8088E9D8 00000000 */  nop
/* 0060C 8088E9DC A44F0034 */  sh      $t7, 0x0034($v0)           ## 00000034
/* 00610 8088E9E0 8CAE0188 */  lw      $t6, 0x0188($a1)           ## 00000188
/* 00614 8088E9E4 C4B00024 */  lwc1    $f16, 0x0024($a1)          ## 00000024
/* 00618 8088E9E8 01C31021 */  addu    $v0, $t6, $v1              
/* 0061C 8088E9EC 844F002C */  lh      $t7, 0x002C($v0)           ## 0000002C
/* 00620 8088E9F0 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 00624 8088E9F4 00000000 */  nop
/* 00628 8088E9F8 468054A0 */  cvt.s.w $f18, $f10                 
/* 0062C 8088E9FC 46120382 */  mul.s   $f14, $f0, $f18            
/* 00630 8088EA00 1464FFE3 */  bne     $v1, $a0, .L8088E990       
/* 00634 8088EA04 00000000 */  nop
/* 00638 8088EA08 460E8200 */  add.s   $f8, $f16, $f14            
.L8088EA0C:
/* 0063C 8088EA0C 844C002A */  lh      $t4, 0x002A($v0)           ## 0000002A
/* 00640 8088EA10 46126282 */  mul.s   $f10, $f12, $f18           
/* 00644 8088EA14 24840040 */  addiu   $a0, $a0, 0x0040           ## $a0 = 00000080
/* 00648 8088EA18 24630040 */  addiu   $v1, $v1, 0x0040           ## $v1 = 00000080
/* 0064C 8088EA1C 4600420D */  trunc.w.s $f8, $f8                   
/* 00650 8088EA20 44194000 */  mfc1    $t9, $f8                   
/* 00654 8088EA24 00000000 */  nop
/* 00658 8088EA28 A4590030 */  sh      $t9, 0x0030($v0)           ## 00000030
/* 0065C 8088EA2C C4A80028 */  lwc1    $f8, 0x0028($a1)           ## 00000028
/* 00660 8088EA30 4600420D */  trunc.w.s $f8, $f8                   
/* 00664 8088EA34 440B4000 */  mfc1    $t3, $f8                   
/* 00668 8088EA38 00000000 */  nop
/* 0066C 8088EA3C 016C6821 */  addu    $t5, $t3, $t4              
/* 00670 8088EA40 A44D0032 */  sh      $t5, 0x0032($v0)           ## 00000032
/* 00674 8088EA44 C4A8002C */  lwc1    $f8, 0x002C($a1)           ## 0000002C
/* 00678 8088EA48 460A4280 */  add.s   $f10, $f8, $f10            
/* 0067C 8088EA4C 4600528D */  trunc.w.s $f10, $f10                 
/* 00680 8088EA50 440F5000 */  mfc1    $t7, $f10                  
/* 00684 8088EA54 00000000 */  nop
/* 00688 8088EA58 A44F0034 */  sh      $t7, 0x0034($v0)           ## 00000034
/* 0068C 8088EA5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00690 8088EA60 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00694 8088EA64 03E00008 */  jr      $ra                        
/* 00698 8088EA68 00000000 */  nop


