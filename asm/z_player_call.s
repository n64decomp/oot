.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800B1750
/* B288F0 800B1750 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B288F4 800B1754 AFBF0014 */  sw    $ra, 0x14($sp)
/* B288F8 800B1758 3C048084 */  lui   $a0, %hi(func_80846CD8) # $a0, 0x8084
/* B288FC 800B175C 0C02EFBB */  jal   func_800BBEEC
/* B28900 800B1760 24846CD8 */   addiu $a0, %lo(func_80846CD8) # addiu $a0, $a0, 0x6cd8
/* B28904 800B1764 3C018016 */  lui   $at, %hi(D_801610F0) # $at, 0x8016
/* B28908 800B1768 3C048085 */  lui   $a0, %hi(func_8084AB54) # $a0, 0x8085
/* B2890C 800B176C AC2210F0 */  sw    $v0, %lo(D_801610F0)($at)
/* B28910 800B1770 0C02EFBB */  jal   func_800BBEEC
/* B28914 800B1774 2484AB54 */   addiu $a0, %lo(func_8084AB54) # addiu $a0, $a0, -0x54ac
/* B28918 800B1778 3C018016 */  lui   $at, %hi(D_801610F4) # $at, 0x8016
/* B2891C 800B177C 3C048085 */  lui   $a0, %hi(func_80849EA8) # $a0, 0x8085
/* B28920 800B1780 AC2210F4 */  sw    $v0, %lo(D_801610F4)($at)
/* B28924 800B1784 0C02EFBB */  jal   func_800BBEEC
/* B28928 800B1788 24849EA8 */   addiu $a0, %lo(func_80849EA8) # addiu $a0, $a0, -0x6158
/* B2892C 800B178C 3C018016 */  lui   $at, %hi(D_801610F8) # $at, 0x8016
/* B28930 800B1790 3C048085 */  lui   $a0, %hi(func_8084A5C4) # $a0, 0x8085
/* B28934 800B1794 AC2210F8 */  sw    $v0, %lo(D_801610F8)($at)
/* B28938 800B1798 0C02EFBB */  jal   func_800BBEEC
/* B2893C 800B179C 2484A5C4 */   addiu $a0, %lo(func_8084A5C4) # addiu $a0, $a0, -0x5a3c
/* B28940 800B17A0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B28944 800B17A4 3C018016 */  lui   $at, %hi(D_801610FC) # $at, 0x8016
/* B28948 800B17A8 AC2210FC */  sw    $v0, %lo(D_801610FC)($at)
/* B2894C 800B17AC 03E00008 */  jr    $ra
/* B28950 800B17B0 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_800B17B4
/* B28954 800B17B4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B28958 800B17B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B2895C 800B17BC AFA40018 */  sw    $a0, 0x18($sp)
/* B28960 800B17C0 0C02EFF0 */  jal   func_800BBFC0
/* B28964 800B17C4 AFA5001C */   sw    $a1, 0x1c($sp)
/* B28968 800B17C8 0C02C5D4 */  jal   func_800B1750
/* B2896C 800B17CC 00000000 */   nop   
/* B28970 800B17D0 3C198016 */  lui   $t9, %hi(D_801610F0) # $t9, 0x8016
/* B28974 800B17D4 8F3910F0 */  lw    $t9, %lo(D_801610F0)($t9)
/* B28978 800B17D8 8FA40018 */  lw    $a0, 0x18($sp)
/* B2897C 800B17DC 8FA5001C */  lw    $a1, 0x1c($sp)
/* B28980 800B17E0 0320F809 */  jalr  $t9
/* B28984 800B17E4 00000000 */  nop   
/* B28988 800B17E8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B2898C 800B17EC 27BD0018 */  addiu $sp, $sp, 0x18
/* B28990 800B17F0 03E00008 */  jr    $ra
/* B28994 800B17F4 00000000 */   nop   

glabel func_800B17F8
/* B28998 800B17F8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B2899C 800B17FC AFBF0014 */  sw    $ra, 0x14($sp)
/* B289A0 800B1800 AFA40018 */  sw    $a0, 0x18($sp)
/* B289A4 800B1804 0C02EFF0 */  jal   func_800BBFC0
/* B289A8 800B1808 AFA5001C */   sw    $a1, 0x1c($sp)
/* B289AC 800B180C 3C198016 */  lui   $t9, %hi(D_801610F4) # $t9, 0x8016
/* B289B0 800B1810 8F3910F4 */  lw    $t9, %lo(D_801610F4)($t9)
/* B289B4 800B1814 8FA40018 */  lw    $a0, 0x18($sp)
/* B289B8 800B1818 8FA5001C */  lw    $a1, 0x1c($sp)
/* B289BC 800B181C 0320F809 */  jalr  $t9
/* B289C0 800B1820 00000000 */  nop   
/* B289C4 800B1824 8FBF0014 */  lw    $ra, 0x14($sp)
/* B289C8 800B1828 27BD0018 */  addiu $sp, $sp, 0x18
/* B289CC 800B182C 03E00008 */  jr    $ra
/* B289D0 800B1830 00000000 */   nop   

glabel func_800B1834
/* B289D4 800B1834 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B289D8 800B1838 AFBF0014 */  sw    $ra, 0x14($sp)
/* B289DC 800B183C AFA40018 */  sw    $a0, 0x18($sp)
/* B289E0 800B1840 0C02EFF0 */  jal   func_800BBFC0
/* B289E4 800B1844 AFA5001C */   sw    $a1, 0x1c($sp)
/* B289E8 800B1848 3C198016 */  lui   $t9, %hi(D_801610F8) # $t9, 0x8016
/* B289EC 800B184C 8F3910F8 */  lw    $t9, %lo(D_801610F8)($t9)
/* B289F0 800B1850 8FA40018 */  lw    $a0, 0x18($sp)
/* B289F4 800B1854 8FA5001C */  lw    $a1, 0x1c($sp)
/* B289F8 800B1858 0320F809 */  jalr  $t9
/* B289FC 800B185C 00000000 */  nop   
/* B28A00 800B1860 8FBF0014 */  lw    $ra, 0x14($sp)
/* B28A04 800B1864 27BD0018 */  addiu $sp, $sp, 0x18
/* B28A08 800B1868 03E00008 */  jr    $ra
/* B28A0C 800B186C 00000000 */   nop   

glabel func_800B1870
/* B28A10 800B1870 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B28A14 800B1874 AFBF0014 */  sw    $ra, 0x14($sp)
/* B28A18 800B1878 AFA40018 */  sw    $a0, 0x18($sp)
/* B28A1C 800B187C 0C02EFF0 */  jal   func_800BBFC0
/* B28A20 800B1880 AFA5001C */   sw    $a1, 0x1c($sp)
/* B28A24 800B1884 3C198016 */  lui   $t9, %hi(D_801610FC) # $t9, 0x8016
/* B28A28 800B1888 8F3910FC */  lw    $t9, %lo(D_801610FC)($t9)
/* B28A2C 800B188C 8FA40018 */  lw    $a0, 0x18($sp)
/* B28A30 800B1890 8FA5001C */  lw    $a1, 0x1c($sp)
/* B28A34 800B1894 0320F809 */  jalr  $t9
/* B28A38 800B1898 00000000 */  nop   
/* B28A3C 800B189C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B28A40 800B18A0 27BD0018 */  addiu $sp, $sp, 0x18
/* B28A44 800B18A4 03E00008 */  jr    $ra
/* B28A48 800B18A8 00000000 */   nop   
