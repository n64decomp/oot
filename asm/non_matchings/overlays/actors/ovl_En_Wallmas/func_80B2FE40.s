glabel func_80B2FE40
/* 00920 80B2FE40 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00924 80B2FE44 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00928 80B2FE48 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 0092C 80B2FE4C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00930 80B2FE50 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00934 80B2FE54 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00938 80B2FE58 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0093C 80B2FE5C 0C023A62 */  jal     func_8008E988              
/* 00940 80B2FE60 AFA3001C */  sw      $v1, 0x001C($sp)           
/* 00944 80B2FE64 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 00948 80B2FE68 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0094C 80B2FE6C 14400023 */  bne     $v0, $zero, .L80B2FEFC     
/* 00950 80B2FE70 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00954 80B2FE74 8C6E0680 */  lw      $t6, 0x0680($v1)           ## 00000680
/* 00958 80B2FE78 31CF0010 */  andi    $t7, $t6, 0x0010           ## $t7 = 00000000
/* 0095C 80B2FE7C 55E00020 */  bnel    $t7, $zero, .L80B2FF00     
/* 00960 80B2FE80 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00964 80B2FE84 80780A78 */  lb      $t8, 0x0A78($v1)           ## 00000A78
/* 00968 80B2FE88 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 0096C 80B2FE8C 0702001C */  bltzl   $t8, .L80B2FF00            
/* 00970 80B2FE90 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00974 80B2FE94 C4C40090 */  lwc1    $f4, 0x0090($a2)           ## 00000090
/* 00978 80B2FE98 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 0097C 80B2FE9C 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 00980 80B2FEA0 4606203C */  c.lt.s  $f4, $f6                   
/* 00984 80B2FEA4 00000000 */  nop
/* 00988 80B2FEA8 45020015 */  bc1fl   .L80B2FF00                 
/* 0098C 80B2FEAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00990 80B2FEB0 C4C00094 */  lwc1    $f0, 0x0094($a2)           ## 00000094
/* 00994 80B2FEB4 44814000 */  mtc1    $at, $f8                   ## $f8 = -5.00
/* 00998 80B2FEB8 00000000 */  nop
/* 0099C 80B2FEBC 4608003C */  c.lt.s  $f0, $f8                   
/* 009A0 80B2FEC0 00000000 */  nop
/* 009A4 80B2FEC4 4502000E */  bc1fl   .L80B2FF00                 
/* 009A8 80B2FEC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 009AC 80B2FECC 847904DA */  lh      $t9, 0x04DA($v1)           ## 000004DA
/* 009B0 80B2FED0 2728000A */  addiu   $t0, $t9, 0x000A           ## $t0 = 0000000A
/* 009B4 80B2FED4 44885000 */  mtc1    $t0, $f10                  ## $f10 = 0.00
/* 009B8 80B2FED8 00000000 */  nop
/* 009BC 80B2FEDC 46805420 */  cvt.s.w $f16, $f10                 
/* 009C0 80B2FEE0 46008487 */  neg.s   $f18, $f16                 
/* 009C4 80B2FEE4 4600903C */  c.lt.s  $f18, $f0                  
/* 009C8 80B2FEE8 00000000 */  nop
/* 009CC 80B2FEEC 45020004 */  bc1fl   .L80B2FF00                 
/* 009D0 80B2FEF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 009D4 80B2FEF4 0C2CBEE6 */  jal     func_80B2FB98              
/* 009D8 80B2FEF8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
.L80B2FEFC:
/* 009DC 80B2FEFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B2FF00:
/* 009E0 80B2FF00 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 009E4 80B2FF04 03E00008 */  jr      $ra                        
/* 009E8 80B2FF08 00000000 */  nop


