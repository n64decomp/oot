.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800FC010
/* B731B0 800FC010 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B731B4 800FC014 AFB10020 */  sw    $s1, 0x20($sp)
/* B731B8 800FC018 AFA40028 */  sw    $a0, 0x28($sp)
/* B731BC 800FC01C AFA5002C */  sw    $a1, 0x2c($sp)
/* B731C0 800FC020 00C08825 */  move  $s1, $a2
/* B731C4 800FC024 AFBF0024 */  sw    $ra, 0x24($sp)
/* B731C8 800FC028 3C058015 */  lui   $a1, %hi(D_8014A860) # $a1, 0x8015
/* B731CC 800FC02C 00E62023 */  subu  $a0, $a3, $a2
/* B731D0 800FC030 AFB0001C */  sw    $s0, 0x1c($sp)
/* B731D4 800FC034 AFA70034 */  sw    $a3, 0x34($sp)
/* B731D8 800FC038 2406001F */  li    $a2, 31
/* B731DC 800FC03C 0C03F59B */  jal   SystemArena_MallocRDebug
/* B731E0 800FC040 24A5A860 */   addiu $a1, %lo(D_8014A860) # addiu $a1, $a1, -0x57a0
/* B731E4 800FC044 3C0F8013 */  lui   $t7, %hi(D_80133BC0) # $t7, 0x8013
/* B731E8 800FC048 8DEF3BC0 */  lw    $t7, %lo(D_80133BC0)($t7)
/* B731EC 800FC04C 00408025 */  move  $s0, $v0
/* B731F0 800FC050 8FA60034 */  lw    $a2, 0x34($sp)
/* B731F4 800FC054 29E10003 */  slti  $at, $t7, 3
/* B731F8 800FC058 1420000A */  bnez  $at, .L800FC084
/* B731FC 800FC05C 3C048015 */   lui   $a0, %hi(D_8014A874) # $a0, 0x8015
/* B73200 800FC060 00D1C023 */  subu  $t8, $a2, $s1
/* B73204 800FC064 0302C821 */  addu  $t9, $t8, $v0
/* B73208 800FC068 02224023 */  subu  $t0, $s1, $v0
/* B7320C 800FC06C AFA80014 */  sw    $t0, 0x14($sp)
/* B73210 800FC070 AFB90010 */  sw    $t9, 0x10($sp)
/* B73214 800FC074 2484A874 */  addiu $a0, %lo(D_8014A874) # addiu $a0, $a0, -0x578c
/* B73218 800FC078 02202825 */  move  $a1, $s1
/* B7321C 800FC07C 0C00084C */  jal   osSyncPrintf
/* B73220 800FC080 00403825 */   move  $a3, $v0
.L800FC084:
/* B73224 800FC084 12000006 */  beqz  $s0, .L800FC0A0
/* B73228 800FC088 8FA40028 */   lw    $a0, 0x28($sp)
/* B7322C 800FC08C 8FA5002C */  lw    $a1, 0x2c($sp)
/* B73230 800FC090 02203025 */  move  $a2, $s1
/* B73234 800FC094 8FA70034 */  lw    $a3, 0x34($sp)
/* B73238 800FC098 0C03F188 */  jal   func_800FC620
/* B7323C 800FC09C AFB00010 */   sw    $s0, 0x10($sp)
.L800FC0A0:
/* B73240 800FC0A0 8FBF0024 */  lw    $ra, 0x24($sp)
/* B73244 800FC0A4 02001025 */  move  $v0, $s0
/* B73248 800FC0A8 8FB0001C */  lw    $s0, 0x1c($sp)
/* B7324C 800FC0AC 8FB10020 */  lw    $s1, 0x20($sp)
/* B73250 800FC0B0 03E00008 */  jr    $ra
/* B73254 800FC0B4 27BD0028 */   addiu $sp, $sp, 0x28
