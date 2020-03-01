glabel EnPubox_Init
/* 00000 80AE20C0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 80AE20C4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00008 80AE20C8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0000C 80AE20CC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00010 80AE20D0 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 00014 80AE20D4 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00018 80AE20D8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 80AE20DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00020 80AE20E0 1040000C */  beq     $v0, $zero, .L80AE2114     
/* 00024 80AE20E4 3C053B23 */  lui     $a1, 0x3B23                ## $a1 = 3B230000
/* 00028 80AE20E8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0002C 80AE20EC 1041000D */  beq     $v0, $at, .L80AE2124       
/* 00030 80AE20F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00034 80AE20F4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00038 80AE20F8 1041000F */  beq     $v0, $at, .L80AE2138       
/* 0003C 80AE20FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00040 80AE2100 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00044 80AE2104 10410011 */  beq     $v0, $at, .L80AE214C       
/* 00048 80AE2108 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0004C 80AE210C 10000013 */  beq     $zero, $zero, .L80AE215C   
/* 00050 80AE2110 3C014496 */  lui     $at, 0x4496                ## $at = 44960000
.L80AE2114:
/* 00054 80AE2114 0C00B58B */  jal     Actor_SetScale
              
/* 00058 80AE2118 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3B23D70A
/* 0005C 80AE211C 1000000F */  beq     $zero, $zero, .L80AE215C   
/* 00060 80AE2120 3C014496 */  lui     $at, 0x4496                ## $at = 44960000
.L80AE2124:
/* 00064 80AE2124 3C053BA3 */  lui     $a1, 0x3BA3                ## $a1 = 3BA30000
/* 00068 80AE2128 0C00B58B */  jal     Actor_SetScale
              
/* 0006C 80AE212C 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3BA3D70A
/* 00070 80AE2130 1000000A */  beq     $zero, $zero, .L80AE215C   
/* 00074 80AE2134 3C014496 */  lui     $at, 0x4496                ## $at = 44960000
.L80AE2138:
/* 00078 80AE2138 3C053BF5 */  lui     $a1, 0x3BF5                ## $a1 = 3BF50000
/* 0007C 80AE213C 0C00B58B */  jal     Actor_SetScale
              
/* 00080 80AE2140 34A5C28F */  ori     $a1, $a1, 0xC28F           ## $a1 = 3BF5C28F
/* 00084 80AE2144 10000005 */  beq     $zero, $zero, .L80AE215C   
/* 00088 80AE2148 3C014496 */  lui     $at, 0x4496                ## $at = 44960000
.L80AE214C:
/* 0008C 80AE214C 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00090 80AE2150 0C00B58B */  jal     Actor_SetScale
              
/* 00094 80AE2154 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00098 80AE2158 3C014496 */  lui     $at, 0x4496                ## $at = 44960000
.L80AE215C:
/* 0009C 80AE215C 44812000 */  mtc1    $at, $f4                   ## $f4 = 1200.00
/* 000A0 80AE2160 3C014434 */  lui     $at, 0x4434                ## $at = 44340000
/* 000A4 80AE2164 44813000 */  mtc1    $at, $f6                   ## $f6 = 720.00
/* 000A8 80AE2168 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 000AC 80AE216C 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 000B0 80AE2170 24180032 */  addiu   $t8, $zero, 0x0032         ## $t8 = 00000032
/* 000B4 80AE2174 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 000B8 80AE2178 AE0E0164 */  sw      $t6, 0x0164($s0)           ## 00000164
/* 000BC 80AE217C A60F00A8 */  sh      $t7, 0x00A8($s0)           ## 000000A8
/* 000C0 80AE2180 A61800AA */  sh      $t8, 0x00AA($s0)           ## 000000AA
/* 000C4 80AE2184 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 000C8 80AE2188 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 000CC 80AE218C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 000D0 80AE2190 3C0740C0 */  lui     $a3, 0x40C0                ## $a3 = 40C00000
/* 000D4 80AE2194 E60400FC */  swc1    $f4, 0x00FC($s0)           ## 000000FC
/* 000D8 80AE2198 0C00AC78 */  jal     ActorShape_Init
              
/* 000DC 80AE219C E60600F8 */  swc1    $f6, 0x00F8($s0)           ## 000000F8
/* 000E0 80AE21A0 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 000E4 80AE21A4 44814000 */  mtc1    $at, $f8                   ## $f8 = -2.00
/* 000E8 80AE21A8 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 000EC 80AE21AC 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 000F0 80AE21B0 A2000160 */  sb      $zero, 0x0160($s0)         ## 00000160
/* 000F4 80AE21B4 AE00015C */  sw      $zero, 0x015C($s0)         ## 0000015C
/* 000F8 80AE21B8 A219001F */  sb      $t9, 0x001F($s0)           ## 0000001F
/* 000FC 80AE21BC 248406D0 */  addiu   $a0, $a0, 0x06D0           ## $a0 = 060006D0
/* 00100 80AE21C0 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFFC
/* 00104 80AE21C4 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00108 80AE21C8 E608006C */  swc1    $f8, 0x006C($s0)           ## 0000006C
/* 0010C 80AE21CC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00110 80AE21D0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00114 80AE21D4 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 00118 80AE21D8 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 0011C 80AE21DC 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00120 80AE21E0 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00124 80AE21E4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00128 80AE21E8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0012C 80AE21EC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00130 80AE21F0 03E00008 */  jr      $ra                        
/* 00134 80AE21F4 00000000 */  nop


