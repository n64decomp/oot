glabel func_8099FCCC
/* 0067C 8099FCCC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00680 8099FCD0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00684 8099FCD4 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00688 8099FCD8 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 0068C 8099FCDC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00690 8099FCE0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00694 8099FCE4 84CE005C */  lh      $t6, 0x005C($a2)           ## 0000005C
/* 00698 8099FCE8 240F0017 */  addiu   $t7, $zero, 0x0017         ## $t7 = 00000017
/* 0069C 8099FCEC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 006A0 8099FCF0 01EEC023 */  subu    $t8, $t7, $t6              
/* 006A4 8099FCF4 0301001A */  div     $zero, $t8, $at            
/* 006A8 8099FCF8 84C80040 */  lh      $t0, 0x0040($a2)           ## 00000040
/* 006AC 8099FCFC 84C20052 */  lh      $v0, 0x0052($a2)           ## 00000052
/* 006B0 8099FD00 0000C812 */  mflo    $t9                        
/* 006B4 8099FD04 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 006B8 8099FD08 01024821 */  addu    $t1, $t0, $v0              
/* 006BC 8099FD0C 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 006C0 8099FD10 A4D90042 */  sh      $t9, 0x0042($a2)           ## 00000042
/* 006C4 8099FD14 1441000C */  bne     $v0, $at, .L8099FD48       
/* 006C8 8099FD18 A4C90040 */  sh      $t1, 0x0040($a2)           ## 00000040
/* 006CC 8099FD1C 84CA0054 */  lh      $t2, 0x0054($a2)           ## 00000054
/* 006D0 8099FD20 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 006D4 8099FD24 44814000 */  mtc1    $at, $f8                   ## $f8 = 4.00
/* 006D8 8099FD28 448A2000 */  mtc1    $t2, $f4                   ## $f4 = 0.00
/* 006DC 8099FD2C 00000000 */  nop
/* 006E0 8099FD30 468021A0 */  cvt.s.w $f6, $f4                   
/* 006E4 8099FD34 46083280 */  add.s   $f10, $f6, $f8             
/* 006E8 8099FD38 4600540D */  trunc.w.s $f16, $f10                 
/* 006EC 8099FD3C 440C8000 */  mfc1    $t4, $f16                  
/* 006F0 8099FD40 1000000C */  beq     $zero, $zero, .L8099FD74   
/* 006F4 8099FD44 A4CC0054 */  sh      $t4, 0x0054($a2)           ## 00000054
.L8099FD48:
/* 006F8 8099FD48 860D0054 */  lh      $t5, 0x0054($s0)           ## 00000054
/* 006FC 8099FD4C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00700 8099FD50 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.00
/* 00704 8099FD54 448D9000 */  mtc1    $t5, $f18                  ## $f18 = 0.00
/* 00708 8099FD58 00000000 */  nop
/* 0070C 8099FD5C 46809120 */  cvt.s.w $f4, $f18                  
/* 00710 8099FD60 46062200 */  add.s   $f8, $f4, $f6              
/* 00714 8099FD64 4600428D */  trunc.w.s $f10, $f8                  
/* 00718 8099FD68 440E5000 */  mfc1    $t6, $f10                  
/* 0071C 8099FD6C 00000000 */  nop
/* 00720 8099FD70 A60E0054 */  sh      $t6, 0x0054($s0)           ## 00000054
.L8099FD74:
/* 00724 8099FD74 8602005C */  lh      $v0, 0x005C($s0)           ## 0000005C
/* 00728 8099FD78 28410017 */  slti    $at, $v0, 0x0017           
/* 0072C 8099FD7C 10200027 */  beq     $at, $zero, .L8099FE1C     
/* 00730 8099FD80 2841000E */  slti    $at, $v0, 0x000E           
/* 00734 8099FD84 14200025 */  bne     $at, $zero, .L8099FE1C     
/* 00738 8099FD88 2451FFF3 */  addiu   $s1, $v0, 0xFFF3           ## $s1 = FFFFFFF3
/* 0073C 8099FD8C 86040044 */  lh      $a0, 0x0044($s0)           ## 00000044
/* 00740 8099FD90 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 00744 8099FD94 0C009F75 */  jal     func_80027DD4              
/* 00748 8099FD98 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFFF3
/* 0074C 8099FD9C A6020044 */  sh      $v0, 0x0044($s0)           ## 00000044
/* 00750 8099FDA0 86040046 */  lh      $a0, 0x0046($s0)           ## 00000046
/* 00754 8099FDA4 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 00758 8099FDA8 0C009F75 */  jal     func_80027DD4              
/* 0075C 8099FDAC 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFFF3
/* 00760 8099FDB0 A6020046 */  sh      $v0, 0x0046($s0)           ## 00000046
/* 00764 8099FDB4 86040048 */  lh      $a0, 0x0048($s0)           ## 00000048
/* 00768 8099FDB8 24050096 */  addiu   $a1, $zero, 0x0096         ## $a1 = 00000096
/* 0076C 8099FDBC 0C009F75 */  jal     func_80027DD4              
/* 00770 8099FDC0 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFFF3
/* 00774 8099FDC4 A6020048 */  sh      $v0, 0x0048($s0)           ## 00000048
/* 00778 8099FDC8 8604004A */  lh      $a0, 0x004A($s0)           ## 0000004A
/* 0077C 8099FDCC 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 00780 8099FDD0 0C009F75 */  jal     func_80027DD4              
/* 00784 8099FDD4 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFFF3
/* 00788 8099FDD8 A602004A */  sh      $v0, 0x004A($s0)           ## 0000004A
/* 0078C 8099FDDC 8604004C */  lh      $a0, 0x004C($s0)           ## 0000004C
/* 00790 8099FDE0 24050096 */  addiu   $a1, $zero, 0x0096         ## $a1 = 00000096
/* 00794 8099FDE4 0C009F75 */  jal     func_80027DD4              
/* 00798 8099FDE8 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFFF3
/* 0079C 8099FDEC A602004C */  sh      $v0, 0x004C($s0)           ## 0000004C
/* 007A0 8099FDF0 8604004E */  lh      $a0, 0x004E($s0)           ## 0000004E
/* 007A4 8099FDF4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 007A8 8099FDF8 0C009F75 */  jal     func_80027DD4              
/* 007AC 8099FDFC 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFFF3
/* 007B0 8099FE00 A602004E */  sh      $v0, 0x004E($s0)           ## 0000004E
/* 007B4 8099FE04 86040050 */  lh      $a0, 0x0050($s0)           ## 00000050
/* 007B8 8099FE08 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 007BC 8099FE0C 0C009F75 */  jal     func_80027DD4              
/* 007C0 8099FE10 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFFF3
/* 007C4 8099FE14 10000029 */  beq     $zero, $zero, .L8099FEBC   
/* 007C8 8099FE18 A6020050 */  sh      $v0, 0x0050($s0)           ## 00000050
.L8099FE1C:
/* 007CC 8099FE1C 2841000E */  slti    $at, $v0, 0x000E           
/* 007D0 8099FE20 50200027 */  beql    $at, $zero, .L8099FEC0     
/* 007D4 8099FE24 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 007D8 8099FE28 04400024 */  bltz    $v0, .L8099FEBC            
/* 007DC 8099FE2C 24510001 */  addiu   $s1, $v0, 0x0001           ## $s1 = 00000001
/* 007E0 8099FE30 86040044 */  lh      $a0, 0x0044($s0)           ## 00000044
/* 007E4 8099FE34 24050032 */  addiu   $a1, $zero, 0x0032         ## $a1 = 00000032
/* 007E8 8099FE38 0C009F75 */  jal     func_80027DD4              
/* 007EC 8099FE3C 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000001
/* 007F0 8099FE40 A6020044 */  sh      $v0, 0x0044($s0)           ## 00000044
/* 007F4 8099FE44 86040046 */  lh      $a0, 0x0046($s0)           ## 00000046
/* 007F8 8099FE48 24050032 */  addiu   $a1, $zero, 0x0032         ## $a1 = 00000032
/* 007FC 8099FE4C 0C009F75 */  jal     func_80027DD4              
/* 00800 8099FE50 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000001
/* 00804 8099FE54 A6020046 */  sh      $v0, 0x0046($s0)           ## 00000046
/* 00808 8099FE58 86040048 */  lh      $a0, 0x0048($s0)           ## 00000048
/* 0080C 8099FE5C 24050032 */  addiu   $a1, $zero, 0x0032         ## $a1 = 00000032
/* 00810 8099FE60 0C009F75 */  jal     func_80027DD4              
/* 00814 8099FE64 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000001
/* 00818 8099FE68 A6020048 */  sh      $v0, 0x0048($s0)           ## 00000048
/* 0081C 8099FE6C 8604004A */  lh      $a0, 0x004A($s0)           ## 0000004A
/* 00820 8099FE70 24050096 */  addiu   $a1, $zero, 0x0096         ## $a1 = 00000096
/* 00824 8099FE74 0C009F75 */  jal     func_80027DD4              
/* 00828 8099FE78 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000001
/* 0082C 8099FE7C A602004A */  sh      $v0, 0x004A($s0)           ## 0000004A
/* 00830 8099FE80 8604004C */  lh      $a0, 0x004C($s0)           ## 0000004C
/* 00834 8099FE84 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
/* 00838 8099FE88 0C009F75 */  jal     func_80027DD4              
/* 0083C 8099FE8C 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000001
/* 00840 8099FE90 A602004C */  sh      $v0, 0x004C($s0)           ## 0000004C
/* 00844 8099FE94 8604004E */  lh      $a0, 0x004E($s0)           ## 0000004E
/* 00848 8099FE98 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
/* 0084C 8099FE9C 0C009F75 */  jal     func_80027DD4              
/* 00850 8099FEA0 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000001
/* 00854 8099FEA4 A602004E */  sh      $v0, 0x004E($s0)           ## 0000004E
/* 00858 8099FEA8 86040050 */  lh      $a0, 0x0050($s0)           ## 00000050
/* 0085C 8099FEAC 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
/* 00860 8099FEB0 0C009F75 */  jal     func_80027DD4              
/* 00864 8099FEB4 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000001
/* 00868 8099FEB8 A6020050 */  sh      $v0, 0x0050($s0)           ## 00000050
.L8099FEBC:
/* 0086C 8099FEBC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8099FEC0:
/* 00870 8099FEC0 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00874 8099FEC4 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00878 8099FEC8 03E00008 */  jr      $ra                        
/* 0087C 8099FECC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000

