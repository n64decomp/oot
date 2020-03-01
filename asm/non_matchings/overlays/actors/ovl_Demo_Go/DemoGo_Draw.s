glabel DemoGo_Draw
/* 00B6C 8097D3DC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B70 8097D3E0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B74 8097D3E4 8C820198 */  lw      $v0, 0x0198($a0)           ## 00000198
/* 00B78 8097D3E8 04400008 */  bltz    $v0, .L8097D40C            
/* 00B7C 8097D3EC 28410002 */  slti    $at, $v0, 0x0002           
/* 00B80 8097D3F0 10200006 */  beq     $at, $zero, .L8097D40C     
/* 00B84 8097D3F4 00027080 */  sll     $t6, $v0,  2               
/* 00B88 8097D3F8 3C038098 */  lui     $v1, %hi(D_8097D468)       ## $v1 = 80980000
/* 00B8C 8097D3FC 006E1821 */  addu    $v1, $v1, $t6              
/* 00B90 8097D400 8C63D468 */  lw      $v1, %lo(D_8097D468)($v1)  
/* 00B94 8097D404 14600006 */  bne     $v1, $zero, .L8097D420     
/* 00B98 8097D408 00000000 */  nop
.L8097D40C:
/* 00B9C 8097D40C 3C048098 */  lui     $a0, %hi(D_8097D4EC)       ## $a0 = 80980000
/* 00BA0 8097D410 0C00084C */  jal     osSyncPrintf
              
/* 00BA4 8097D414 2484D4EC */  addiu   $a0, $a0, %lo(D_8097D4EC)  ## $a0 = 8097D4EC
/* 00BA8 8097D418 10000004 */  beq     $zero, $zero, .L8097D42C   
/* 00BAC 8097D41C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8097D420:
/* 00BB0 8097D420 0060F809 */  jalr    $ra, $v1                   
/* 00BB4 8097D424 00000000 */  nop
/* 00BB8 8097D428 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8097D42C:
/* 00BBC 8097D42C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BC0 8097D430 03E00008 */  jr      $ra                        
/* 00BC4 8097D434 00000000 */  nop
/* 00BC8 8097D438 00000000 */  nop
/* 00BCC 8097D43C 00000000 */  nop

