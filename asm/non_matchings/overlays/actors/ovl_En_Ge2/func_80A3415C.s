glabel func_80A3415C
/* 0158C 80A3415C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01590 80A34160 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 01594 80A34164 AFA60008 */  sw      $a2, 0x0008($sp)           
/* 01598 80A34168 14A1000B */  bne     $a1, $at, .L80A34198       
/* 0159C 80A3416C AFA7000C */  sw      $a3, 0x000C($sp)           
/* 015A0 80A34170 8FA20014 */  lw      $v0, 0x0014($sp)           
/* 015A4 80A34174 8FA30010 */  lw      $v1, 0x0010($sp)           
/* 015A8 80A34178 844F02EA */  lh      $t7, 0x02EA($v0)           ## 000002EA
/* 015AC 80A3417C 846E0000 */  lh      $t6, 0x0000($v1)           ## 00000000
/* 015B0 80A34180 84790004 */  lh      $t9, 0x0004($v1)           ## 00000004
/* 015B4 80A34184 01CFC021 */  addu    $t8, $t6, $t7              
/* 015B8 80A34188 A4780000 */  sh      $t8, 0x0000($v1)           ## 00000000
/* 015BC 80A3418C 844802E8 */  lh      $t0, 0x02E8($v0)           ## 000002E8
/* 015C0 80A34190 03284821 */  addu    $t1, $t9, $t0              
/* 015C4 80A34194 A4690004 */  sh      $t1, 0x0004($v1)           ## 00000004
.L80A34198:
/* 015C8 80A34198 03E00008 */  jr      $ra                        
/* 015CC 80A3419C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000


