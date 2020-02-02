glabel func_80AAFF8C
/* 0026C 80AAFF8C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00270 80AAFF90 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00274 80AAFF94 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00278 80AAFF98 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 0027C 80AAFF9C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00280 80AAFFA0 0C042F6F */  jal     func_8010BDBC              
/* 00284 80AAFFA4 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00288 80AAFFA8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0028C 80AAFFAC 1041000B */  beq     $v0, $at, .L80AAFFDC       
/* 00290 80AAFFB0 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00294 80AAFFB4 54410038 */  bnel    $v0, $at, .L80AB0098       
/* 00298 80AAFFB8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0029C 80AAFFBC 0C041AF2 */  jal     func_80106BC8              
/* 002A0 80AAFFC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002A4 80AAFFC4 10400033 */  beq     $v0, $zero, .L80AB0094     
/* 002A8 80AAFFC8 3C0E80AB */  lui     $t6, %hi(func_80AAFEE4)    ## $t6 = 80AB0000
/* 002AC 80AAFFCC 8FAF0028 */  lw      $t7, 0x0028($sp)           
/* 002B0 80AAFFD0 25CEFEE4 */  addiu   $t6, $t6, %lo(func_80AAFEE4) ## $t6 = 80AAFEE4
/* 002B4 80AAFFD4 1000002F */  beq     $zero, $zero, .L80AB0094   
/* 002B8 80AAFFD8 ADEE01FC */  sw      $t6, 0x01FC($t7)           ## 000001FC
.L80AAFFDC:
/* 002BC 80AAFFDC 0C041AF2 */  jal     func_80106BC8              
/* 002C0 80AAFFE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002C4 80AAFFE4 1040002B */  beq     $v0, $zero, .L80AB0094     
/* 002C8 80AAFFE8 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 002CC 80AAFFEC 00501021 */  addu    $v0, $v0, $s0              
/* 002D0 80AAFFF0 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 002D4 80AAFFF4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 002D8 80AAFFF8 3C198012 */  lui     $t9, 0x8012                ## $t9 = 80120000
/* 002DC 80AAFFFC 10400005 */  beq     $v0, $zero, .L80AB0014     
/* 002E0 80AB0000 00000000 */  nop
/* 002E4 80AB0004 10410021 */  beq     $v0, $at, .L80AB008C       
/* 002E8 80AB0008 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002EC 80AB000C 10000022 */  beq     $zero, $zero, .L80AB0098   
/* 002F0 80AB0010 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AB0014:
/* 002F4 80AB0014 93397475 */  lbu     $t9, 0x7475($t9)           ## 80127475
/* 002F8 80AB0018 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 002FC 80AB001C 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00300 80AB0020 00594021 */  addu    $t0, $v0, $t9              
/* 00304 80AB0024 8109008C */  lb      $t1, 0x008C($t0)           ## 0000008C
/* 00308 80AB0028 3C0B80AB */  lui     $t3, %hi(D_80AB034C)       ## $t3 = 80AB0000
/* 0030C 80AB002C 84580034 */  lh      $t8, 0x0034($v0)           ## 8015E694
/* 00310 80AB0030 00095040 */  sll     $t2, $t1,  1               
/* 00314 80AB0034 016A5821 */  addu    $t3, $t3, $t2              
/* 00318 80AB0038 856B034C */  lh      $t3, %lo(D_80AB034C)($t3)  
/* 0031C 80AB003C 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00320 80AB0040 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00324 80AB0044 030B082A */  slt     $at, $t8, $t3              
/* 00328 80AB0048 10200006 */  beq     $at, $zero, .L80AB0064     
/* 0032C 80AB004C 24060016 */  addiu   $a2, $zero, 0x0016         ## $a2 = 00000016
/* 00330 80AB0050 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00334 80AB0054 0C042DC8 */  jal     func_8010B720              
/* 00338 80AB0058 24054069 */  addiu   $a1, $zero, 0x4069         ## $a1 = 00004069
/* 0033C 80AB005C 1000000E */  beq     $zero, $zero, .L80AB0098   
/* 00340 80AB0060 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AB0064:
/* 00344 80AB0064 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00348 80AB0068 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 0034C 80AB006C 3C0742B4 */  lui     $a3, 0x42B4                ## $a3 = 42B40000
/* 00350 80AB0070 0C00BD0D */  jal     func_8002F434              
/* 00354 80AB0074 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00358 80AB0078 8FAD0028 */  lw      $t5, 0x0028($sp)           
/* 0035C 80AB007C 3C0C80AB */  lui     $t4, %hi(func_80AB00A8)    ## $t4 = 80AB0000
/* 00360 80AB0080 258C00A8 */  addiu   $t4, $t4, %lo(func_80AB00A8) ## $t4 = 80AB00A8
/* 00364 80AB0084 10000003 */  beq     $zero, $zero, .L80AB0094   
/* 00368 80AB0088 ADAC01FC */  sw      $t4, 0x01FC($t5)           ## 000001FC
.L80AB008C:
/* 0036C 80AB008C 0C042DC8 */  jal     func_8010B720              
/* 00370 80AB0090 24054068 */  addiu   $a1, $zero, 0x4068         ## $a1 = 00004068
.L80AB0094:
/* 00374 80AB0094 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AB0098:
/* 00378 80AB0098 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0037C 80AB009C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00380 80AB00A0 03E00008 */  jr      $ra                        
/* 00384 80AB00A4 00000000 */  nop


