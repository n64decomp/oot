glabel func_8086DAC4
/* 00AB4 8086DAC4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AB8 8086DAC8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00ABC 8086DACC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00AC0 8086DAD0 3C018087 */  lui     $at, %hi(D_8086E260)       ## $at = 80870000
/* 00AC4 8086DAD4 C426E260 */  lwc1    $f6, %lo(D_8086E260)($at)  
/* 00AC8 8086DAD8 C48401C8 */  lwc1    $f4, 0x01C8($a0)           ## 000001C8
/* 00ACC 8086DADC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00AD0 8086DAE0 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 00AD4 8086DAE4 46062200 */  add.s   $f8, $f4, $f6              
/* 00AD8 8086DAE8 E48801C8 */  swc1    $f8, 0x01C8($a0)           ## 000001C8
/* 00ADC 8086DAEC C48A01C8 */  lwc1    $f10, 0x01C8($a0)          ## 000001C8
/* 00AE0 8086DAF0 460A803E */  c.le.s  $f16, $f10                 
/* 00AE4 8086DAF4 00000000 */  nop
/* 00AE8 8086DAF8 45020007 */  bc1fl   .L8086DB18                 
/* 00AEC 8086DAFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AF0 8086DB00 0C21B61B */  jal     func_8086D86C              
/* 00AF4 8086DB04 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00AF8 8086DB08 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00AFC 8086DB0C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00B00 8086DB10 24052815 */  addiu   $a1, $zero, 0x2815         ## $a1 = 00002815
/* 00B04 8086DB14 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086DB18:
/* 00B08 8086DB18 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B0C 8086DB1C 03E00008 */  jr      $ra                        
/* 00B10 8086DB20 00000000 */  nop


