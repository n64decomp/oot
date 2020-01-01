.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800FBCE0
/* B72E80 800FBCE0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B72E84 800FBCE4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B72E88 800FBCE8 0C04191C */  jal   __osSpGetStatus
/* B72E8C 800FBCEC 00000000 */   nop   
/* B72E90 800FBCF0 0C041070 */  jal   osDpGetStatus
/* B72E94 800FBCF4 AFA2001C */   sw    $v0, 0x1c($sp)
/* B72E98 800FBCF8 3C048015 */  lui   $a0, %hi(D_8014A710) # $a0, 0x8015
/* B72E9C 800FBCFC AFA20018 */  sw    $v0, 0x18($sp)
/* B72EA0 800FBD00 2484A710 */  addiu $a0, %lo(D_8014A710) # addiu $a0, $a0, -0x58f0
/* B72EA4 800FBD04 0C00084C */  jal   osSyncPrintf
/* B72EA8 800FBD08 8FA5001C */   lw    $a1, 0x1c($sp)
/* B72EAC 800FBD0C 8FAE001C */  lw    $t6, 0x1c($sp)
/* B72EB0 800FBD10 31CF0001 */  andi  $t7, $t6, 1
/* B72EB4 800FBD14 11E00003 */  beqz  $t7, .L800FBD24
/* B72EB8 800FBD18 3C048015 */   lui   $a0, %hi(D_8014A728) # $a0, 0x8015
/* B72EBC 800FBD1C 0C00084C */  jal   osSyncPrintf
/* B72EC0 800FBD20 2484A728 */   addiu $a0, %lo(D_8014A728) # addiu $a0, $a0, -0x58d8
.L800FBD24:
/* B72EC4 800FBD24 8FB8001C */  lw    $t8, 0x1c($sp)
/* B72EC8 800FBD28 33190002 */  andi  $t9, $t8, 2
/* B72ECC 800FBD2C 13200003 */  beqz  $t9, .L800FBD3C
/* B72ED0 800FBD30 3C048015 */   lui   $a0, %hi(D_8014A730) # $a0, 0x8015
/* B72ED4 800FBD34 0C00084C */  jal   osSyncPrintf
/* B72ED8 800FBD38 2484A730 */   addiu $a0, %lo(D_8014A730) # addiu $a0, $a0, -0x58d0
.L800FBD3C:
/* B72EDC 800FBD3C 8FA8001C */  lw    $t0, 0x1c($sp)
/* B72EE0 800FBD40 31090004 */  andi  $t1, $t0, 4
/* B72EE4 800FBD44 11200003 */  beqz  $t1, .L800FBD54
/* B72EE8 800FBD48 3C048015 */   lui   $a0, %hi(D_8014A738) # $a0, 0x8015
/* B72EEC 800FBD4C 0C00084C */  jal   osSyncPrintf
/* B72EF0 800FBD50 2484A738 */   addiu $a0, %lo(D_8014A738) # addiu $a0, $a0, -0x58c8
.L800FBD54:
/* B72EF4 800FBD54 8FAA001C */  lw    $t2, 0x1c($sp)
/* B72EF8 800FBD58 314B0008 */  andi  $t3, $t2, 8
/* B72EFC 800FBD5C 11600003 */  beqz  $t3, .L800FBD6C
/* B72F00 800FBD60 3C048015 */   lui   $a0, %hi(D_8014A744) # $a0, 0x8015
/* B72F04 800FBD64 0C00084C */  jal   osSyncPrintf
/* B72F08 800FBD68 2484A744 */   addiu $a0, %lo(D_8014A744) # addiu $a0, $a0, -0x58bc
.L800FBD6C:
/* B72F0C 800FBD6C 8FAC001C */  lw    $t4, 0x1c($sp)
/* B72F10 800FBD70 318D0010 */  andi  $t5, $t4, 0x10
/* B72F14 800FBD74 11A00003 */  beqz  $t5, .L800FBD84
/* B72F18 800FBD78 3C048015 */   lui   $a0, %hi(D_8014A750) # $a0, 0x8015
/* B72F1C 800FBD7C 0C00084C */  jal   osSyncPrintf
/* B72F20 800FBD80 2484A750 */   addiu $a0, %lo(D_8014A750) # addiu $a0, $a0, -0x58b0
.L800FBD84:
/* B72F24 800FBD84 8FAE001C */  lw    $t6, 0x1c($sp)
/* B72F28 800FBD88 31CF0020 */  andi  $t7, $t6, 0x20
/* B72F2C 800FBD8C 11E00003 */  beqz  $t7, .L800FBD9C
/* B72F30 800FBD90 3C048015 */   lui   $a0, %hi(D_8014A75C) # $a0, 0x8015
/* B72F34 800FBD94 0C00084C */  jal   osSyncPrintf
/* B72F38 800FBD98 2484A75C */   addiu $a0, %lo(D_8014A75C) # addiu $a0, $a0, -0x58a4
.L800FBD9C:
/* B72F3C 800FBD9C 8FB8001C */  lw    $t8, 0x1c($sp)
/* B72F40 800FBDA0 33190040 */  andi  $t9, $t8, 0x40
/* B72F44 800FBDA4 13200003 */  beqz  $t9, .L800FBDB4
/* B72F48 800FBDA8 3C048015 */   lui   $a0, %hi(D_8014A764) # $a0, 0x8015
/* B72F4C 800FBDAC 0C00084C */  jal   osSyncPrintf
/* B72F50 800FBDB0 2484A764 */   addiu $a0, %lo(D_8014A764) # addiu $a0, $a0, -0x589c
.L800FBDB4:
/* B72F54 800FBDB4 8FA8001C */  lw    $t0, 0x1c($sp)
/* B72F58 800FBDB8 31090080 */  andi  $t1, $t0, 0x80
/* B72F5C 800FBDBC 11200003 */  beqz  $t1, .L800FBDCC
/* B72F60 800FBDC0 3C048015 */   lui   $a0, %hi(D_8014A770) # $a0, 0x8015
/* B72F64 800FBDC4 0C00084C */  jal   osSyncPrintf
/* B72F68 800FBDC8 2484A770 */   addiu $a0, %lo(D_8014A770) # addiu $a0, $a0, -0x5890
.L800FBDCC:
/* B72F6C 800FBDCC 8FAA001C */  lw    $t2, 0x1c($sp)
/* B72F70 800FBDD0 314B0100 */  andi  $t3, $t2, 0x100
/* B72F74 800FBDD4 11600003 */  beqz  $t3, .L800FBDE4
/* B72F78 800FBDD8 3C048015 */   lui   $a0, %hi(D_8014A778) # $a0, 0x8015
/* B72F7C 800FBDDC 0C00084C */  jal   osSyncPrintf
/* B72F80 800FBDE0 2484A778 */   addiu $a0, %lo(D_8014A778) # addiu $a0, $a0, -0x5888
.L800FBDE4:
/* B72F84 800FBDE4 8FAC001C */  lw    $t4, 0x1c($sp)
/* B72F88 800FBDE8 318D0200 */  andi  $t5, $t4, 0x200
/* B72F8C 800FBDEC 11A00003 */  beqz  $t5, .L800FBDFC
/* B72F90 800FBDF0 3C048015 */   lui   $a0, %hi(D_8014A784) # $a0, 0x8015
/* B72F94 800FBDF4 0C00084C */  jal   osSyncPrintf
/* B72F98 800FBDF8 2484A784 */   addiu $a0, %lo(D_8014A784) # addiu $a0, $a0, -0x587c
.L800FBDFC:
/* B72F9C 800FBDFC 8FAE001C */  lw    $t6, 0x1c($sp)
/* B72FA0 800FBE00 31CF0400 */  andi  $t7, $t6, 0x400
/* B72FA4 800FBE04 11E00003 */  beqz  $t7, .L800FBE14
/* B72FA8 800FBE08 3C048015 */   lui   $a0, %hi(D_8014A790) # $a0, 0x8015
/* B72FAC 800FBE0C 0C00084C */  jal   osSyncPrintf
/* B72FB0 800FBE10 2484A790 */   addiu $a0, %lo(D_8014A790) # addiu $a0, $a0, -0x5870
.L800FBE14:
/* B72FB4 800FBE14 8FB8001C */  lw    $t8, 0x1c($sp)
/* B72FB8 800FBE18 33190800 */  andi  $t9, $t8, 0x800
/* B72FBC 800FBE1C 13200003 */  beqz  $t9, .L800FBE2C
/* B72FC0 800FBE20 3C048015 */   lui   $a0, %hi(D_8014A798) # $a0, 0x8015
/* B72FC4 800FBE24 0C00084C */  jal   osSyncPrintf
/* B72FC8 800FBE28 2484A798 */   addiu $a0, %lo(D_8014A798) # addiu $a0, $a0, -0x5868
.L800FBE2C:
/* B72FCC 800FBE2C 8FA8001C */  lw    $t0, 0x1c($sp)
/* B72FD0 800FBE30 31091000 */  andi  $t1, $t0, 0x1000
/* B72FD4 800FBE34 11200003 */  beqz  $t1, .L800FBE44
/* B72FD8 800FBE38 3C048015 */   lui   $a0, %hi(D_8014A7A0) # $a0, 0x8015
/* B72FDC 800FBE3C 0C00084C */  jal   osSyncPrintf
/* B72FE0 800FBE40 2484A7A0 */   addiu $a0, %lo(D_8014A7A0) # addiu $a0, $a0, -0x5860
.L800FBE44:
/* B72FE4 800FBE44 8FAA001C */  lw    $t2, 0x1c($sp)
/* B72FE8 800FBE48 314B2000 */  andi  $t3, $t2, 0x2000
/* B72FEC 800FBE4C 11600003 */  beqz  $t3, .L800FBE5C
/* B72FF0 800FBE50 3C048015 */   lui   $a0, %hi(D_8014A7A8) # $a0, 0x8015
/* B72FF4 800FBE54 0C00084C */  jal   osSyncPrintf
/* B72FF8 800FBE58 2484A7A8 */   addiu $a0, %lo(D_8014A7A8) # addiu $a0, $a0, -0x5858
.L800FBE5C:
/* B72FFC 800FBE5C 8FAC001C */  lw    $t4, 0x1c($sp)
/* B73000 800FBE60 318D4000 */  andi  $t5, $t4, 0x4000
/* B73004 800FBE64 11A00003 */  beqz  $t5, .L800FBE74
/* B73008 800FBE68 3C048015 */   lui   $a0, %hi(D_8014A7B0) # $a0, 0x8015
/* B7300C 800FBE6C 0C00084C */  jal   osSyncPrintf
/* B73010 800FBE70 2484A7B0 */   addiu $a0, %lo(D_8014A7B0) # addiu $a0, $a0, -0x5850
.L800FBE74:
/* B73014 800FBE74 3C048015 */  lui   $a0, %hi(D_8014A7B8) # $a0, 0x8015
/* B73018 800FBE78 0C00084C */  jal   osSyncPrintf
/* B7301C 800FBE7C 2484A7B8 */   addiu $a0, %lo(D_8014A7B8) # addiu $a0, $a0, -0x5848
/* B73020 800FBE80 3C048015 */  lui   $a0, %hi(D_8014A7BC) # $a0, 0x8015
/* B73024 800FBE84 2484A7BC */  addiu $a0, %lo(D_8014A7BC) # addiu $a0, $a0, -0x5844
/* B73028 800FBE88 0C00084C */  jal   osSyncPrintf
/* B7302C 800FBE8C 8FA50018 */   lw    $a1, 0x18($sp)
/* B73030 800FBE90 8FAE0018 */  lw    $t6, 0x18($sp)
/* B73034 800FBE94 31CF0001 */  andi  $t7, $t6, 1
/* B73038 800FBE98 11E00003 */  beqz  $t7, .L800FBEA8
/* B7303C 800FBE9C 3C048015 */   lui   $a0, %hi(D_8014A7D0) # $a0, 0x8015
/* B73040 800FBEA0 0C00084C */  jal   osSyncPrintf
/* B73044 800FBEA4 2484A7D0 */   addiu $a0, %lo(D_8014A7D0) # addiu $a0, $a0, -0x5830
.L800FBEA8:
/* B73048 800FBEA8 8FB80018 */  lw    $t8, 0x18($sp)
/* B7304C 800FBEAC 33190002 */  andi  $t9, $t8, 2
/* B73050 800FBEB0 13200003 */  beqz  $t9, .L800FBEC0
/* B73054 800FBEB4 3C048015 */   lui   $a0, %hi(D_8014A7E0) # $a0, 0x8015
/* B73058 800FBEB8 0C00084C */  jal   osSyncPrintf
/* B7305C 800FBEBC 2484A7E0 */   addiu $a0, %lo(D_8014A7E0) # addiu $a0, $a0, -0x5820
.L800FBEC0:
/* B73060 800FBEC0 8FA80018 */  lw    $t0, 0x18($sp)
/* B73064 800FBEC4 3C048015 */  lui   $a0, %hi(D_8014A7E8) # $a0, 0x8015
/* B73068 800FBEC8 31090004 */  andi  $t1, $t0, 4
/* B7306C 800FBECC 51200004 */  beql  $t1, $zero, .L800FBEE0
/* B73070 800FBED0 8FAA0018 */   lw    $t2, 0x18($sp)
/* B73074 800FBED4 0C00084C */  jal   osSyncPrintf
/* B73078 800FBED8 2484A7E8 */   addiu $a0, %lo(D_8014A7E8) # addiu $a0, $a0, -0x5818
/* B7307C 800FBEDC 8FAA0018 */  lw    $t2, 0x18($sp)
.L800FBEE0:
/* B73080 800FBEE0 3C048015 */  lui   $a0, %hi(D_8014A7F0) # $a0, 0x8015
/* B73084 800FBEE4 314B0008 */  andi  $t3, $t2, 8
/* B73088 800FBEE8 51600004 */  beql  $t3, $zero, .L800FBEFC
/* B7308C 800FBEEC 8FAC0018 */   lw    $t4, 0x18($sp)
/* B73090 800FBEF0 0C00084C */  jal   osSyncPrintf
/* B73094 800FBEF4 2484A7F0 */   addiu $a0, %lo(D_8014A7F0) # addiu $a0, $a0, -0x5810
/* B73098 800FBEF8 8FAC0018 */  lw    $t4, 0x18($sp)
.L800FBEFC:
/* B7309C 800FBEFC 3C048015 */  lui   $a0, %hi(D_8014A7FC) # $a0, 0x8015
/* B730A0 800FBF00 318D0010 */  andi  $t5, $t4, 0x10
/* B730A4 800FBF04 51A00004 */  beql  $t5, $zero, .L800FBF18
/* B730A8 800FBF08 8FAE0018 */   lw    $t6, 0x18($sp)
/* B730AC 800FBF0C 0C00084C */  jal   osSyncPrintf
/* B730B0 800FBF10 2484A7FC */   addiu $a0, %lo(D_8014A7FC) # addiu $a0, $a0, -0x5804
/* B730B4 800FBF14 8FAE0018 */  lw    $t6, 0x18($sp)
.L800FBF18:
/* B730B8 800FBF18 3C048015 */  lui   $a0, %hi(D_8014A808) # $a0, 0x8015
/* B730BC 800FBF1C 31CF0020 */  andi  $t7, $t6, 0x20
/* B730C0 800FBF20 51E00004 */  beql  $t7, $zero, .L800FBF34
/* B730C4 800FBF24 8FB80018 */   lw    $t8, 0x18($sp)
/* B730C8 800FBF28 0C00084C */  jal   osSyncPrintf
/* B730CC 800FBF2C 2484A808 */   addiu $a0, %lo(D_8014A808) # addiu $a0, $a0, -0x57f8
/* B730D0 800FBF30 8FB80018 */  lw    $t8, 0x18($sp)
.L800FBF34:
/* B730D4 800FBF34 3C048015 */  lui   $a0, %hi(D_8014A814) # $a0, 0x8015
/* B730D8 800FBF38 33190040 */  andi  $t9, $t8, 0x40
/* B730DC 800FBF3C 53200004 */  beql  $t9, $zero, .L800FBF50
/* B730E0 800FBF40 8FA80018 */   lw    $t0, 0x18($sp)
/* B730E4 800FBF44 0C00084C */  jal   osSyncPrintf
/* B730E8 800FBF48 2484A814 */   addiu $a0, %lo(D_8014A814) # addiu $a0, $a0, -0x57ec
/* B730EC 800FBF4C 8FA80018 */  lw    $t0, 0x18($sp)
.L800FBF50:
/* B730F0 800FBF50 3C048015 */  lui   $a0, %hi(D_8014A820) # $a0, 0x8015
/* B730F4 800FBF54 31090080 */  andi  $t1, $t0, 0x80
/* B730F8 800FBF58 51200004 */  beql  $t1, $zero, .L800FBF6C
/* B730FC 800FBF5C 8FAA0018 */   lw    $t2, 0x18($sp)
/* B73100 800FBF60 0C00084C */  jal   osSyncPrintf
/* B73104 800FBF64 2484A820 */   addiu $a0, %lo(D_8014A820) # addiu $a0, $a0, -0x57e0
/* B73108 800FBF68 8FAA0018 */  lw    $t2, 0x18($sp)
.L800FBF6C:
/* B7310C 800FBF6C 3C048015 */  lui   $a0, %hi(D_8014A82C) # $a0, 0x8015
/* B73110 800FBF70 314B0100 */  andi  $t3, $t2, 0x100
/* B73114 800FBF74 51600004 */  beql  $t3, $zero, .L800FBF88
/* B73118 800FBF78 8FAC0018 */   lw    $t4, 0x18($sp)
/* B7311C 800FBF7C 0C00084C */  jal   osSyncPrintf
/* B73120 800FBF80 2484A82C */   addiu $a0, %lo(D_8014A82C) # addiu $a0, $a0, -0x57d4
/* B73124 800FBF84 8FAC0018 */  lw    $t4, 0x18($sp)
.L800FBF88:
/* B73128 800FBF88 3C048015 */  lui   $a0, %hi(D_8014A838) # $a0, 0x8015
/* B7312C 800FBF8C 318D0200 */  andi  $t5, $t4, 0x200
/* B73130 800FBF90 51A00004 */  beql  $t5, $zero, .L800FBFA4
/* B73134 800FBF94 8FAE0018 */   lw    $t6, 0x18($sp)
/* B73138 800FBF98 0C00084C */  jal   osSyncPrintf
/* B7313C 800FBF9C 2484A838 */   addiu $a0, %lo(D_8014A838) # addiu $a0, $a0, -0x57c8
/* B73140 800FBFA0 8FAE0018 */  lw    $t6, 0x18($sp)
.L800FBFA4:
/* B73144 800FBFA4 3C048015 */  lui   $a0, %hi(D_8014A844) # $a0, 0x8015
/* B73148 800FBFA8 31CF0400 */  andi  $t7, $t6, 0x400
/* B7314C 800FBFAC 11E00003 */  beqz  $t7, .L800FBFBC
/* B73150 800FBFB0 00000000 */   nop   
/* B73154 800FBFB4 0C00084C */  jal   osSyncPrintf
/* B73158 800FBFB8 2484A844 */   addiu $a0, %lo(D_8014A844) # addiu $a0, $a0, -0x57bc
.L800FBFBC:
/* B7315C 800FBFBC 3C048015 */  lui   $a0, %hi(D_8014A854) # $a0, 0x8015
/* B73160 800FBFC0 0C00084C */  jal   osSyncPrintf
/* B73164 800FBFC4 2484A854 */   addiu $a0, %lo(D_8014A854) # addiu $a0, $a0, -0x57ac
/* B73168 800FBFC8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B7316C 800FBFCC 27BD0020 */  addiu $sp, $sp, 0x20
/* B73170 800FBFD0 03E00008 */  jr    $ra
/* B73174 800FBFD4 00000000 */   nop   

glabel func_800FBFD8
/* B73178 800FBFD8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B7317C 800FBFDC AFBF0014 */  sw    $ra, 0x14($sp)
/* B73180 800FBFE0 0C03EF38 */  jal   func_800FBCE0
/* B73184 800FBFE4 00000000 */   nop   
/* B73188 800FBFE8 0C041074 */  jal   osDpSetStatus
/* B7318C 800FBFEC 24040028 */   li    $a0, 40
/* B73190 800FBFF0 0C041920 */  jal   __osSpSetStatus
/* B73194 800FBFF4 24044082 */   li    $a0, 16514
/* B73198 800FBFF8 0C03EF38 */  jal   func_800FBCE0
/* B7319C 800FBFFC 00000000 */   nop   
/* B731A0 800FC000 8FBF0014 */  lw    $ra, 0x14($sp)
/* B731A4 800FC004 27BD0018 */  addiu $sp, $sp, 0x18
/* B731A8 800FC008 03E00008 */  jr    $ra
/* B731AC 800FC00C 00000000 */   nop   
