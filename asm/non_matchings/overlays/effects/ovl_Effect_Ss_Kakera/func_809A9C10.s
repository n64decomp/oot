glabel func_809A9C10
/* 00590 809A9C10 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00594 809A9C14 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00598 809A9C18 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 0059C 809A9C1C F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 005A0 809A9C20 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 005A4 809A9C24 848E004A */  lh      $t6, 0x004A($a0)           ## 0000004A
/* 005A8 809A9C28 848F004C */  lh      $t7, 0x004C($a0)           ## 0000004C
/* 005AC 809A9C2C 84980052 */  lh      $t8, 0x0052($a0)           ## 00000052
/* 005B0 809A9C30 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 005B4 809A9C34 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 005B8 809A9C38 3C013A80 */  lui     $at, 0x3A80                ## $at = 3A800000
/* 005BC 809A9C3C 468021A0 */  cvt.s.w $f6, $f4                   
/* 005C0 809A9C40 44810000 */  mtc1    $at, $f0                   ## $f0 = 0.00
/* 005C4 809A9C44 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 005C8 809A9C48 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 005CC 809A9C4C 4480B000 */  mtc1    $zero, $f22                ## $f22 = 0.00
/* 005D0 809A9C50 468042A0 */  cvt.s.w $f10, $f8                  
/* 005D4 809A9C54 46003482 */  mul.s   $f18, $f6, $f0             
/* 005D8 809A9C58 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005DC 809A9C5C 4600B306 */  mov.s   $f12, $f22                 
/* 005E0 809A9C60 46005502 */  mul.s   $f20, $f10, $f0            
/* 005E4 809A9C64 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 005E8 809A9C68 E7B20034 */  swc1    $f18, 0x0034($sp)          
/* 005EC 809A9C6C 468021A0 */  cvt.s.w $f6, $f4                   
/* 005F0 809A9C70 46003202 */  mul.s   $f8, $f6, $f0              
/* 005F4 809A9C74 00000000 */  nop
/* 005F8 809A9C78 460A4382 */  mul.s   $f14, $f8, $f10            
/* 005FC 809A9C7C 0C26A606 */  jal     func_809A9818              
/* 00600 809A9C80 E7AE0044 */  swc1    $f14, 0x0044($sp)          
/* 00604 809A9C84 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 00608 809A9C88 4600B306 */  mov.s   $f12, $f22                 
/* 0060C 809A9C8C C7AE0044 */  lwc1    $f14, 0x0044($sp)          
/* 00610 809A9C90 46002081 */  sub.s   $f2, $f4, $f0              
/* 00614 809A9C94 0C26A606 */  jal     func_809A9818              
/* 00618 809A9C98 E7A20038 */  swc1    $f2, 0x0038($sp)           
/* 0061C 809A9C9C C6060010 */  lwc1    $f6, 0x0010($s0)           ## 00000010
/* 00620 809A9CA0 4600B306 */  mov.s   $f12, $f22                 
/* 00624 809A9CA4 C7AE0044 */  lwc1    $f14, 0x0044($sp)          
/* 00628 809A9CA8 46003401 */  sub.s   $f16, $f6, $f0             
/* 0062C 809A9CAC 0C26A606 */  jal     func_809A9818              
/* 00630 809A9CB0 E7B0003C */  swc1    $f16, 0x003C($sp)          
/* 00634 809A9CB4 C7A20038 */  lwc1    $f2, 0x0038($sp)           
/* 00638 809A9CB8 C6080014 */  lwc1    $f8, 0x0014($s0)           ## 00000014
/* 0063C 809A9CBC C7B0003C */  lwc1    $f16, 0x003C($sp)          
/* 00640 809A9CC0 4602B03C */  c.lt.s  $f22, $f2                  
/* 00644 809A9CC4 C7B20034 */  lwc1    $f18, 0x0034($sp)          
/* 00648 809A9CC8 46004301 */  sub.s   $f12, $f8, $f0             
/* 0064C 809A9CCC 4500000B */  bc1f    .L809A9CFC                 
/* 00650 809A9CD0 00000000 */  nop
/* 00654 809A9CD4 46121282 */  mul.s   $f10, $f2, $f18            
/* 00658 809A9CD8 00000000 */  nop
/* 0065C 809A9CDC 46021102 */  mul.s   $f4, $f2, $f2              
/* 00660 809A9CE0 00000000 */  nop
/* 00664 809A9CE4 46142182 */  mul.s   $f6, $f4, $f20             
/* 00668 809A9CE8 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 0066C 809A9CEC 46065200 */  add.s   $f8, $f10, $f6             
/* 00670 809A9CF0 46082281 */  sub.s   $f10, $f4, $f8             
/* 00674 809A9CF4 1000000A */  beq     $zero, $zero, .L809A9D20   
/* 00678 809A9CF8 E60A000C */  swc1    $f10, 0x000C($s0)          ## 0000000C
.L809A9CFC:
/* 0067C 809A9CFC 46121182 */  mul.s   $f6, $f2, $f18             
/* 00680 809A9D00 00000000 */  nop
/* 00684 809A9D04 46021102 */  mul.s   $f4, $f2, $f2              
/* 00688 809A9D08 00000000 */  nop
/* 0068C 809A9D0C 46142202 */  mul.s   $f8, $f4, $f20             
/* 00690 809A9D10 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 00694 809A9D14 46083281 */  sub.s   $f10, $f6, $f8             
/* 00698 809A9D18 460A2181 */  sub.s   $f6, $f4, $f10             
/* 0069C 809A9D1C E606000C */  swc1    $f6, 0x000C($s0)           ## 0000000C
.L809A9D20:
/* 006A0 809A9D20 4610B03C */  c.lt.s  $f22, $f16                 
/* 006A4 809A9D24 00000000 */  nop
/* 006A8 809A9D28 4500000A */  bc1f    .L809A9D54                 
/* 006AC 809A9D2C 00000000 */  nop
/* 006B0 809A9D30 46128002 */  mul.s   $f0, $f16, $f18            
/* 006B4 809A9D34 C6040010 */  lwc1    $f4, 0x0010($s0)           ## 00000010
/* 006B8 809A9D38 46108202 */  mul.s   $f8, $f16, $f16            
/* 006BC 809A9D3C 00000000 */  nop
/* 006C0 809A9D40 46144082 */  mul.s   $f2, $f8, $f20             
/* 006C4 809A9D44 46020280 */  add.s   $f10, $f0, $f2             
/* 006C8 809A9D48 460A2181 */  sub.s   $f6, $f4, $f10             
/* 006CC 809A9D4C 10000009 */  beq     $zero, $zero, .L809A9D74   
/* 006D0 809A9D50 E6060010 */  swc1    $f6, 0x0010($s0)           ## 00000010
.L809A9D54:
/* 006D4 809A9D54 46128002 */  mul.s   $f0, $f16, $f18            
/* 006D8 809A9D58 C6040010 */  lwc1    $f4, 0x0010($s0)           ## 00000010
/* 006DC 809A9D5C 46108202 */  mul.s   $f8, $f16, $f16            
/* 006E0 809A9D60 00000000 */  nop
/* 006E4 809A9D64 46144082 */  mul.s   $f2, $f8, $f20             
/* 006E8 809A9D68 46020281 */  sub.s   $f10, $f0, $f2             
/* 006EC 809A9D6C 460A2181 */  sub.s   $f6, $f4, $f10             
/* 006F0 809A9D70 E6060010 */  swc1    $f6, 0x0010($s0)           ## 00000010
.L809A9D74:
/* 006F4 809A9D74 460CB03C */  c.lt.s  $f22, $f12                 
/* 006F8 809A9D78 00000000 */  nop
/* 006FC 809A9D7C 45020007 */  bc1fl   .L809A9D9C                 
/* 00700 809A9D80 46020201 */  sub.s   $f8, $f0, $f2              
/* 00704 809A9D84 46020100 */  add.s   $f4, $f0, $f2              
/* 00708 809A9D88 C6080014 */  lwc1    $f8, 0x0014($s0)           ## 00000014
/* 0070C 809A9D8C 46044281 */  sub.s   $f10, $f8, $f4             
/* 00710 809A9D90 10000005 */  beq     $zero, $zero, .L809A9DA8   
/* 00714 809A9D94 E60A0014 */  swc1    $f10, 0x0014($s0)          ## 00000014
/* 00718 809A9D98 46020201 */  sub.s   $f8, $f0, $f2              
.L809A9D9C:
/* 0071C 809A9D9C C6060014 */  lwc1    $f6, 0x0014($s0)           ## 00000014
/* 00720 809A9DA0 46083101 */  sub.s   $f4, $f6, $f8              
/* 00724 809A9DA4 E6040014 */  swc1    $f4, 0x0014($s0)           ## 00000014
.L809A9DA8:
/* 00728 809A9DA8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0072C 809A9DAC D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 00730 809A9DB0 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 00734 809A9DB4 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00738 809A9DB8 03E00008 */  jr      $ra                        
/* 0073C 809A9DBC 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000


