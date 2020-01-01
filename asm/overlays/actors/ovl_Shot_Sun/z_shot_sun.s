.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

func_80BADCC0:
/* 000000 80BADCC0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 000004 80BADCC4 AFB00018 */  sw    $s0, 0x18($sp)
/* 000008 80BADCC8 00808025 */  move  $s0, $a0
/* 00000C 80BADCCC AFBF001C */  sw    $ra, 0x1c($sp)
/* 000010 80BADCD0 AFA50034 */  sw    $a1, 0x34($sp)
/* 000014 80BADCD4 3C0480BB */  lui   $a0, %hi(D_80BAE320) # $a0, 0x80bb
/* 000018 80BADCD8 2484E320 */  addiu $a0, %lo(D_80BAE320) # addiu $a0, $a0, -0x1ce0
/* 00001C 80BADCDC 0C00084C */  jal   osSyncPrintf
/* 000020 80BADCE0 8605001C */   lh    $a1, 0x1c($s0)
/* 000024 80BADCE4 8602001C */  lh    $v0, 0x1c($s0)
/* 000028 80BADCE8 24010040 */  li    $at, 64
/* 00002C 80BADCEC 3C0880BB */  lui   $t0, %hi(func_80BADF0C) # $t0, 0x80bb
/* 000030 80BADCF0 304200FF */  andi  $v0, $v0, 0xff
/* 000034 80BADCF4 10410004 */  beq   $v0, $at, .L80BADD08
/* 000038 80BADCF8 2508DF0C */   addiu $t0, %lo(func_80BADF0C) # addiu $t0, $t0, -0x20f4
/* 00003C 80BADCFC 24010041 */  li    $at, 65
/* 000040 80BADD00 1441000D */  bne   $v0, $at, .L80BADD38
/* 000044 80BADD04 8FA40034 */   lw    $a0, 0x34($sp)
.L80BADD08:
/* 000048 80BADD08 8E0E0004 */  lw    $t6, 4($s0)
/* 00004C 80BADD0C 3C010200 */  lui   $at, 0x200
/* 000050 80BADD10 A20001A4 */  sb    $zero, 0x1a4($s0)
/* 000054 80BADD14 35CF0010 */  ori   $t7, $t6, 0x10
/* 000058 80BADD18 01E1C825 */  or    $t9, $t7, $at
/* 00005C 80BADD1C AE0F0004 */  sw    $t7, 4($s0)
/* 000060 80BADD20 3C010800 */  lui   $at, 0x800
/* 000064 80BADD24 AE190004 */  sw    $t9, 4($s0)
/* 000068 80BADD28 03215025 */  or    $t2, $t9, $at
/* 00006C 80BADD2C AE080198 */  sw    $t0, 0x198($s0)
/* 000070 80BADD30 10000011 */  b     .L80BADD78
/* 000074 80BADD34 AE0A0004 */   sw    $t2, 4($s0)
.L80BADD38:
/* 000078 80BADD38 2605014C */  addiu $a1, $s0, 0x14c
/* 00007C 80BADD3C 0C0170D9 */  jal   ActorCollider_AllocCylinder
/* 000080 80BADD40 AFA50024 */   sw    $a1, 0x24($sp)
/* 000084 80BADD44 3C0780BB */  lui   $a3, %hi(D_80BAE2F0) # $a3, 0x80bb
/* 000088 80BADD48 8FA50024 */  lw    $a1, 0x24($sp)
/* 00008C 80BADD4C 24E7E2F0 */  addiu $a3, %lo(D_80BAE2F0) # addiu $a3, $a3, -0x1d10
/* 000090 80BADD50 8FA40034 */  lw    $a0, 0x34($sp)
/* 000094 80BADD54 0C01712B */  jal   ActorCollider_InitCylinder
/* 000098 80BADD58 02003025 */   move  $a2, $s0
/* 00009C 80BADD5C 8E0C0004 */  lw    $t4, 4($s0)
/* 0000A0 80BADD60 3C0B80BB */  lui   $t3, %hi(func_80BAE05C) # $t3, 0x80bb
/* 0000A4 80BADD64 2401FFFE */  li    $at, -2
/* 0000A8 80BADD68 256BE05C */  addiu $t3, %lo(func_80BAE05C) # addiu $t3, $t3, -0x1fa4
/* 0000AC 80BADD6C 01816824 */  and   $t5, $t4, $at
/* 0000B0 80BADD70 AE0B0198 */  sw    $t3, 0x198($s0)
/* 0000B4 80BADD74 AE0D0004 */  sw    $t5, 4($s0)
.L80BADD78:
/* 0000B8 80BADD78 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0000BC 80BADD7C 8FB00018 */  lw    $s0, 0x18($sp)
/* 0000C0 80BADD80 27BD0030 */  addiu $sp, $sp, 0x30
/* 0000C4 80BADD84 03E00008 */  jr    $ra
/* 0000C8 80BADD88 00000000 */   nop   

func_80BADD8C:
/* 0000CC 80BADD8C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0000D0 80BADD90 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0000D4 80BADD94 8482001C */  lh    $v0, 0x1c($a0)
/* 0000D8 80BADD98 24010040 */  li    $at, 64
/* 0000DC 80BADD9C 00803025 */  move  $a2, $a0
/* 0000E0 80BADDA0 304200FF */  andi  $v0, $v0, 0xff
/* 0000E4 80BADDA4 10410005 */  beq   $v0, $at, .L80BADDBC
/* 0000E8 80BADDA8 24010041 */   li    $at, 65
/* 0000EC 80BADDAC 10410003 */  beq   $v0, $at, .L80BADDBC
/* 0000F0 80BADDB0 00A02025 */   move  $a0, $a1
/* 0000F4 80BADDB4 0C0170EB */  jal   ActorCollider_FreeCylinder
/* 0000F8 80BADDB8 24C5014C */   addiu $a1, $a2, 0x14c
.L80BADDBC:
/* 0000FC 80BADDBC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000100 80BADDC0 27BD0018 */  addiu $sp, $sp, 0x18
/* 000104 80BADDC4 03E00008 */  jr    $ra
/* 000108 80BADDC8 00000000 */   nop   

func_80BADDCC:
/* 00010C 80BADDCC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 000110 80BADDD0 AFBF0034 */  sw    $ra, 0x34($sp)
/* 000114 80BADDD4 AFB00030 */  sw    $s0, 0x30($sp)
/* 000118 80BADDD8 848301A2 */  lh    $v1, 0x1a2($a0)
/* 00011C 80BADDDC 8482001C */  lh    $v0, 0x1c($a0)
/* 000120 80BADDE0 00808025 */  move  $s0, $a0
/* 000124 80BADDE4 18600004 */  blez  $v1, .L80BADDF8
/* 000128 80BADDE8 304200FF */   andi  $v0, $v0, 0xff
/* 00012C 80BADDEC 246EFFFF */  addiu $t6, $v1, -1
/* 000130 80BADDF0 1000001B */  b     .L80BADE60
/* 000134 80BADDF4 A48E01A2 */   sh    $t6, 0x1a2($a0)
.L80BADDF8:
/* 000138 80BADDF8 24010040 */  li    $at, 64
/* 00013C 80BADDFC 10410006 */  beq   $v0, $at, .L80BADE18
/* 000140 80BADE00 24A41C24 */   addiu $a0, $a1, 0x1c24
/* 000144 80BADE04 24010041 */  li    $at, 65
/* 000148 80BADE08 10410006 */  beq   $v0, $at, .L80BADE24
/* 00014C 80BADE0C 24180007 */   li    $t8, 7
/* 000150 80BADE10 10000006 */  b     .L80BADE2C
/* 000154 80BADE14 C604000C */   lwc1  $f4, 0xc($s0)
.L80BADE18:
/* 000158 80BADE18 240F0007 */  li    $t7, 7
/* 00015C 80BADE1C 10000002 */  b     .L80BADE28
/* 000160 80BADE20 AFAF0038 */   sw    $t7, 0x38($sp)
.L80BADE24:
/* 000164 80BADE24 AFB80038 */  sw    $t8, 0x38($sp)
.L80BADE28:
/* 000168 80BADE28 C604000C */  lwc1  $f4, 0xc($s0)
.L80BADE2C:
/* 00016C 80BADE2C 8E070008 */  lw    $a3, 8($s0)
/* 000170 80BADE30 8FB90038 */  lw    $t9, 0x38($sp)
/* 000174 80BADE34 E7A40010 */  swc1  $f4, 0x10($sp)
/* 000178 80BADE38 C6060010 */  lwc1  $f6, 0x10($s0)
/* 00017C 80BADE3C AFA00020 */  sw    $zero, 0x20($sp)
/* 000180 80BADE40 AFA0001C */  sw    $zero, 0x1c($sp)
/* 000184 80BADE44 AFA00018 */  sw    $zero, 0x18($sp)
/* 000188 80BADE48 24060018 */  li    $a2, 24
/* 00018C 80BADE4C AFB90024 */  sw    $t9, 0x24($sp)
/* 000190 80BADE50 0C00C7D4 */  jal   Actor_Spawn
/* 000194 80BADE54 E7A60014 */   swc1  $f6, 0x14($sp)
/* 000198 80BADE58 0C00B55C */  jal   Actor_Kill
/* 00019C 80BADE5C 02002025 */   move  $a0, $s0
.L80BADE60:
/* 0001A0 80BADE60 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0001A4 80BADE64 8FB00030 */  lw    $s0, 0x30($sp)
/* 0001A8 80BADE68 27BD0040 */  addiu $sp, $sp, 0x40
/* 0001AC 80BADE6C 03E00008 */  jr    $ra
/* 0001B0 80BADE70 00000000 */   nop   

func_80BADE74:
/* 0001B4 80BADE74 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0001B8 80BADE78 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0001BC 80BADE7C AFB00030 */  sw    $s0, 0x30($sp)
/* 0001C0 80BADE80 00808025 */  move  $s0, $a0
/* 0001C4 80BADE84 0C016C66 */  jal   func_8005B198
/* 0001C8 80BADE88 AFA5003C */   sw    $a1, 0x3c($sp)
/* 0001CC 80BADE8C 920E0002 */  lbu   $t6, 2($s0)
/* 0001D0 80BADE90 3C1880BB */  lui   $t8, %hi(func_80BADDCC) # $t8, 0x80bb
/* 0001D4 80BADE94 8FA5003C */  lw    $a1, 0x3c($sp)
/* 0001D8 80BADE98 104E0004 */  beq   $v0, $t6, .L80BADEAC
/* 0001DC 80BADE9C 2718DDCC */   addiu $t8, %lo(func_80BADDCC) # addiu $t8, $t8, -0x2234
/* 0001E0 80BADEA0 860F01A2 */  lh    $t7, 0x1a2($s0)
/* 0001E4 80BADEA4 51E00015 */  beql  $t7, $zero, .L80BADEFC
/* 0001E8 80BADEA8 8FBF0034 */   lw    $ra, 0x34($sp)
.L80BADEAC:
/* 0001EC 80BADEAC C604000C */  lwc1  $f4, 0xc($s0)
/* 0001F0 80BADEB0 24190032 */  li    $t9, 50
/* 0001F4 80BADEB4 AE180198 */  sw    $t8, 0x198($s0)
/* 0001F8 80BADEB8 A61901A2 */  sh    $t9, 0x1a2($s0)
/* 0001FC 80BADEBC 8E070008 */  lw    $a3, 8($s0)
/* 000200 80BADEC0 E7A40010 */  swc1  $f4, 0x10($sp)
/* 000204 80BADEC4 C6060010 */  lwc1  $f6, 0x10($s0)
/* 000208 80BADEC8 24080011 */  li    $t0, 17
/* 00020C 80BADECC AFA80024 */  sw    $t0, 0x24($sp)
/* 000210 80BADED0 AFA00020 */  sw    $zero, 0x20($sp)
/* 000214 80BADED4 AFA0001C */  sw    $zero, 0x1c($sp)
/* 000218 80BADED8 AFA00018 */  sw    $zero, 0x18($sp)
/* 00021C 80BADEDC 24A41C24 */  addiu $a0, $a1, 0x1c24
/* 000220 80BADEE0 2406008C */  li    $a2, 140
/* 000224 80BADEE4 0C00C7D4 */  jal   Actor_Spawn
/* 000228 80BADEE8 E7A60014 */   swc1  $f6, 0x14($sp)
/* 00022C 80BADEEC 260400E4 */  addiu $a0, $s0, 0xe4
/* 000230 80BADEF0 0C01E245 */  jal   func_80078914
/* 000234 80BADEF4 2405287B */   li    $a1, 10363
/* 000238 80BADEF8 8FBF0034 */  lw    $ra, 0x34($sp)
.L80BADEFC:
/* 00023C 80BADEFC 8FB00030 */  lw    $s0, 0x30($sp)
/* 000240 80BADF00 27BD0038 */  addiu $sp, $sp, 0x38
/* 000244 80BADF04 03E00008 */  jr    $ra
/* 000248 80BADF08 00000000 */   nop   

func_80BADF0C:
/* 00024C 80BADF0C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 000250 80BADF10 AFBF0014 */  sw    $ra, 0x14($sp)
/* 000254 80BADF14 8CA31C44 */  lw    $v1, 0x1c44($a1)
/* 000258 80BADF18 8488001C */  lh    $t0, 0x1c($a0)
/* 00025C 80BADF1C 00803025 */  move  $a2, $a0
/* 000260 80BADF20 00A03825 */  move  $a3, $a1
/* 000264 80BADF24 310800FF */  andi  $t0, $t0, 0xff
/* 000268 80BADF28 AFA8001C */  sw    $t0, 0x1c($sp)
/* 00026C 80BADF2C AFA7002C */  sw    $a3, 0x2c($sp)
/* 000270 80BADF30 AFA60028 */  sw    $a2, 0x28($sp)
/* 000274 80BADF34 24840024 */  addiu $a0, $a0, 0x24
/* 000278 80BADF38 24650024 */  addiu $a1, $v1, 0x24
/* 00027C 80BADF3C 0C032D94 */  jal   func_800CB650
/* 000280 80BADF40 AFA30024 */   sw    $v1, 0x24($sp)
/* 000284 80BADF44 3C0180BB */  lui   $at, %hi(D_80BAE36C) # $at, 0x80bb
/* 000288 80BADF48 C424E36C */  lwc1  $f4, %lo(D_80BAE36C)($at)
/* 00028C 80BADF4C 8FA30024 */  lw    $v1, 0x24($sp)
/* 000290 80BADF50 8FA60028 */  lw    $a2, 0x28($sp)
/* 000294 80BADF54 4600203C */  c.lt.s $f4, $f0
/* 000298 80BADF58 8FA7002C */  lw    $a3, 0x2c($sp)
/* 00029C 80BADF5C 8FA8001C */  lw    $t0, 0x1c($sp)
/* 0002A0 80BADF60 45020004 */  .byte 0x45,0x02,0x00,0x04 /* Because of invalid n64 opcode bc1fl */
/* 0002A4 80BADF64 90C201A4 */ .word 0x90C201A4
/* 0002A8 80BADF68 10000038 */  b     .L80BAE04C
/* 0002AC 80BADF6C A0C001A4 */   sb    $zero, 0x1a4($a2)
/* 0002B0 80BADF70 90C201A4 */  lbu   $v0, 0x1a4($a2)
.L80BADF74:
/* 0002B4 80BADF74 24010001 */  li    $at, 1
/* 0002B8 80BADF78 1440000C */  bnez  $v0, .L80BADFAC
/* 0002BC 80BADF7C 00000000 */   nop   
/* 0002C0 80BADF80 8C620680 */  lw    $v0, 0x680($v1)
/* 0002C4 80BADF84 24180001 */  li    $t8, 1
/* 0002C8 80BADF88 000271C0 */  sll   $t6, $v0, 7
/* 0002CC 80BADF8C 05C20006 */  bltzl $t6, .L80BADFA8
/* 0002D0 80BADF90 A0D801A4 */   sb    $t8, 0x1a4($a2)
/* 0002D4 80BADF94 3C010080 */  lui   $at, 0x80
/* 0002D8 80BADF98 00417825 */  or    $t7, $v0, $at
/* 0002DC 80BADF9C 1000002B */  b     .L80BAE04C
/* 0002E0 80BADFA0 AC6F0680 */   sw    $t7, 0x680($v1)
/* 0002E4 80BADFA4 A0D801A4 */  sb    $t8, 0x1a4($a2)
.L80BADFA8:
/* 0002E8 80BADFA8 330200FF */  andi  $v0, $t8, 0xff
.L80BADFAC:
/* 0002EC 80BADFAC 14410008 */  bne   $v0, $at, .L80BADFD0
/* 0002F0 80BADFB0 00E02025 */   move  $a0, $a3
/* 0002F4 80BADFB4 24050001 */  li    $a1, 1
/* 0002F8 80BADFB8 0C042F56 */  jal   func_8010BD58
/* 0002FC 80BADFBC AFA60028 */   sw    $a2, 0x28($sp)
/* 000300 80BADFC0 8FA60028 */  lw    $a2, 0x28($sp)
/* 000304 80BADFC4 24190002 */  li    $t9, 2
/* 000308 80BADFC8 10000020 */  b     .L80BAE04C
/* 00030C 80BADFCC A0D901A4 */   sb    $t9, 0x1a4($a2)
.L80BADFD0:
/* 000310 80BADFD0 24010002 */  li    $at, 2
/* 000314 80BADFD4 1441001D */  bne   $v0, $at, .L80BAE04C
/* 000318 80BADFD8 3C010001 */   lui   $at, 1
/* 00031C 80BADFDC 00E11021 */  addu  $v0, $a3, $at
/* 000320 80BADFE0 944904C6 */  lhu   $t1, 0x4c6($v0)
/* 000324 80BADFE4 24010004 */  li    $at, 4
/* 000328 80BADFE8 15210018 */  bne   $t1, $at, .L80BAE04C
/* 00032C 80BADFEC 24010040 */   li    $at, 64
/* 000330 80BADFF0 55010005 */  bnel  $t0, $at, .L80BAE008
/* 000334 80BADFF4 24010041 */   li    $at, 65
/* 000338 80BADFF8 944A04C4 */  lhu   $t2, 0x4c4($v0)
/* 00033C 80BADFFC 24010009 */  li    $at, 9
/* 000340 80BAE000 11410006 */  beq   $t2, $at, .L80BAE01C
/* 000344 80BAE004 24010041 */   li    $at, 65
.L80BAE008:
/* 000348 80BAE008 55010010 */  bnel  $t0, $at, .L80BAE04C
/* 00034C 80BAE00C A0C001A4 */   sb    $zero, 0x1a4($a2)
/* 000350 80BAE010 944B04C4 */  lhu   $t3, 0x4c4($v0)
/* 000354 80BAE014 2401000B */  li    $at, 11
/* 000358 80BAE018 1561000B */  bne   $t3, $at, .L80BAE048
.L80BAE01C:
/* 00035C 80BAE01C 3C0C80BB */   lui   $t4, %hi(func_80BADE74) # $t4, 0x80bb
/* 000360 80BAE020 258CDE74 */  addiu $t4, %lo(func_80BADE74) # addiu $t4, $t4, -0x218c
/* 000364 80BAE024 ACCC0198 */  sw    $t4, 0x198($a2)
/* 000368 80BAE028 AFA60028 */  sw    $a2, 0x28($sp)
/* 00036C 80BAE02C 00E02025 */  move  $a0, $a3
/* 000370 80BAE030 0C020120 */  jal   func_80080480
/* 000374 80BAE034 00C02825 */   move  $a1, $a2
/* 000378 80BAE038 8FA60028 */  lw    $a2, 0x28($sp)
/* 00037C 80BAE03C A4C001A2 */  sh    $zero, 0x1a2($a2)
/* 000380 80BAE040 10000002 */  b     .L80BAE04C
/* 000384 80BAE044 A0C001A4 */   sb    $zero, 0x1a4($a2)
.L80BAE048:
/* 000388 80BAE048 A0C001A4 */  sb    $zero, 0x1a4($a2)
.L80BAE04C:
/* 00038C 80BAE04C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000390 80BAE050 27BD0028 */  addiu $sp, $sp, 0x28
/* 000394 80BAE054 03E00008 */  jr    $ra
/* 000398 80BAE058 00000000 */   nop   

func_80BAE05C:
/* 00039C 80BAE05C 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0003A0 80BAE060 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0003A4 80BAE064 AFB00030 */  sw    $s0, 0x30($sp)
/* 0003A8 80BAE068 908E015D */  lbu   $t6, 0x15d($a0)
/* 0003AC 80BAE06C 00A08025 */  move  $s0, $a1
/* 0003B0 80BAE070 00803825 */  move  $a3, $a0
/* 0003B4 80BAE074 31CF0002 */  andi  $t7, $t6, 2
/* 0003B8 80BAE078 11E00048 */  beqz  $t7, .L80BAE19C
/* 0003BC 80BAE07C 8CA31C44 */   lw    $v1, 0x1c44($a1)
/* 0003C0 80BAE080 24044802 */  li    $a0, 18434
/* 0003C4 80BAE084 0C01E221 */  jal   func_80078884
/* 0003C8 80BAE088 AFA70060 */   sw    $a3, 0x60($sp)
/* 0003CC 80BAE08C 3C0480BB */  lui   $a0, %hi(D_80BAE34C) # $a0, 0x80bb
/* 0003D0 80BAE090 0C00084C */  jal   osSyncPrintf
/* 0003D4 80BAE094 2484E34C */   addiu $a0, %lo(D_80BAE34C) # addiu $a0, $a0, -0x1cb4
/* 0003D8 80BAE098 3C188012 */  lui   $t8, %hi(D_80127464+4) # $t8, 0x8012
/* 0003DC 80BAE09C 93187468 */  lbu   $t8, %lo(D_80127464+4)($t8)
/* 0003E0 80BAE0A0 3C198016 */  lui   $t9, 0x8016
/* 0003E4 80BAE0A4 240100FF */  li    $at, 255
/* 0003E8 80BAE0A8 0338C821 */  addu  $t9, $t9, $t8
/* 0003EC 80BAE0AC 9339E6D4 */  lbu   $t9, -0x192c($t9)
/* 0003F0 80BAE0B0 02002025 */  move  $a0, $s0
/* 0003F4 80BAE0B4 27A50040 */  addiu $a1, $sp, 0x40
/* 0003F8 80BAE0B8 17210024 */  bne   $t9, $at, .L80BAE14C
/* 0003FC 80BAE0BC 2406000E */   li    $a2, 14
/* 000400 80BAE0C0 3C01C448 */  li    $at, 0xC4480000 # -800.000000
/* 000404 80BAE0C4 44812000 */  mtc1  $at, $f4
/* 000408 80BAE0C8 3C0180BB */  lui   $at, %hi(D_80BAE370) # $at, 0x80bb
/* 00040C 80BAE0CC C426E370 */  lwc1  $f6, %lo(D_80BAE370)($at)
/* 000410 80BAE0D0 24080007 */  li    $t0, 7
/* 000414 80BAE0D4 AFA80024 */  sw    $t0, 0x24($sp)
/* 000418 80BAE0D8 26041C24 */  addiu $a0, $s0, 0x1c24
/* 00041C 80BAE0DC 02002825 */  move  $a1, $s0
/* 000420 80BAE0E0 2406010F */  li    $a2, 271
/* 000424 80BAE0E4 3C07442F */  lui   $a3, 0x442f
/* 000428 80BAE0E8 AFA00018 */  sw    $zero, 0x18($sp)
/* 00042C 80BAE0EC AFA0001C */  sw    $zero, 0x1c($sp)
/* 000430 80BAE0F0 AFA00020 */  sw    $zero, 0x20($sp)
/* 000434 80BAE0F4 E7A40010 */  swc1  $f4, 0x10($sp)
/* 000438 80BAE0F8 0C00C7D4 */  jal   Actor_Spawn
/* 00043C 80BAE0FC E7A60014 */   swc1  $f6, 0x14($sp)
/* 000440 80BAE100 3C030200 */  lui   $v1, %hi(D_02007020) # $v1, 0x200
/* 000444 80BAE104 24637020 */  addiu $v1, %lo(D_02007020) # addiu $v1, $v1, 0x7020
/* 000448 80BAE108 00034900 */  sll   $t1, $v1, 4
/* 00044C 80BAE10C 00095702 */  srl   $t2, $t1, 0x1c
/* 000450 80BAE110 000A5880 */  sll   $t3, $t2, 2
/* 000454 80BAE114 3C0C8016 */  lui   $t4, 0x8016
/* 000458 80BAE118 018B6021 */  addu  $t4, $t4, $t3
/* 00045C 80BAE11C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 000460 80BAE120 8D8C6FA8 */  lw    $t4, 0x6fa8($t4)
/* 000464 80BAE124 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 000468 80BAE128 00616824 */  and   $t5, $v1, $at
/* 00046C 80BAE12C 3C018000 */  lui   $at, 0x8000
/* 000470 80BAE130 018D7021 */  addu  $t6, $t4, $t5
/* 000474 80BAE134 01C17821 */  addu  $t7, $t6, $at
/* 000478 80BAE138 AE0F1D68 */  sw    $t7, 0x1d68($s0)
/* 00047C 80BAE13C 3C018016 */  lui   $at, %hi(gSaveContext+0x1414) # $at, 0x8016
/* 000480 80BAE140 24180001 */  li    $t8, 1
/* 000484 80BAE144 10000011 */  b     .L80BAE18C
/* 000488 80BAE148 A038FA74 */   sb    $t8, %lo(gSaveContext+0x1414)($at)
.L80BAE14C:
/* 00048C 80BAE14C 3C01442F */  li    $at, 0x442F0000 # 700.000000
/* 000490 80BAE150 44814000 */  mtc1  $at, $f8
/* 000494 80BAE154 3C01C448 */  li    $at, 0xC4480000 # -800.000000
/* 000498 80BAE158 44815000 */  mtc1  $at, $f10
/* 00049C 80BAE15C 3C0180BB */  lui   $at, %hi(D_80BAE374) # $at, 0x80bb
/* 0004A0 80BAE160 C430E374 */  lwc1  $f16, %lo(D_80BAE374)($at)
/* 0004A4 80BAE164 E7A80040 */  swc1  $f8, 0x40($sp)
/* 0004A8 80BAE168 E7AA0044 */  swc1  $f10, 0x44($sp)
/* 0004AC 80BAE16C 0C007D52 */  jal   Item_DropCollectible
/* 0004B0 80BAE170 E7B00048 */   swc1  $f16, 0x48($sp)
/* 0004B4 80BAE174 10400005 */  beqz  $v0, .L80BAE18C
/* 0004B8 80BAE178 00000000 */   nop   
/* 0004BC 80BAE17C 44809000 */  mtc1  $zero, $f18
/* 0004C0 80BAE180 24191770 */  li    $t9, 6000
/* 0004C4 80BAE184 A459015A */  sh    $t9, 0x15a($v0)
/* 0004C8 80BAE188 E4520068 */  swc1  $f18, 0x68($v0)
.L80BAE18C:
/* 0004CC 80BAE18C 0C00B55C */  jal   Actor_Kill
/* 0004D0 80BAE190 8FA40060 */   lw    $a0, 0x60($sp)
/* 0004D4 80BAE194 1000003E */  b     .L80BAE290
/* 0004D8 80BAE198 8FBF0034 */   lw    $ra, 0x34($sp)
.L80BAE19C:
/* 0004DC 80BAE19C 3C0142F0 */  li    $at, 0x42F00000 # 120.000000
/* 0004E0 80BAE1A0 44812000 */  mtc1  $at, $f4
/* 0004E4 80BAE1A4 C4E60090 */  lwc1  $f6, 0x90($a3)
/* 0004E8 80BAE1A8 3C028016 */  lui   $v0, %hi(gSaveContext+0x0C) # $v0, 0x8016
/* 0004EC 80BAE1AC 4606203C */  c.lt.s $f4, $f6
/* 0004F0 80BAE1B0 00000000 */  nop   
/* 0004F4 80BAE1B4 45030036 */  .byte 0x45,0x03,0x00,0x36 /* Because of invalid n64 opcode bc1tl */
/* 0004F8 80BAE1B8 8FBF0034 */ .word 0x8FBF0034
/* 0004FC 80BAE1BC 9442E66C */  lhu   $v0, %lo(gSaveContext+0x0C)($v0)
/* 000500 80BAE1C0 28414555 */  slti  $at, $v0, 0x4555
/* 000504 80BAE1C4 14200031 */  bnez  $at, .L80BAE28C
/* 000508 80BAE1C8 28415000 */   slti  $at, $v0, 0x5000
/* 00050C 80BAE1CC 1020002F */  beqz  $at, .L80BAE28C
/* 000510 80BAE1D0 3C0180BB */   lui   $at, %hi(D_80BAE378) # $at, 0x80bb
/* 000514 80BAE1D4 C420E378 */  lwc1  $f0, %lo(D_80BAE378)($at)
/* 000518 80BAE1D8 3C010001 */  lui   $at, 1
/* 00051C 80BAE1DC 02011021 */  addu  $v0, $s0, $at
/* 000520 80BAE1E0 C44A0A28 */  lwc1  $f10, 0xa28($v0)
/* 000524 80BAE1E4 C468095C */  lwc1  $f8, 0x95c($v1)
/* 000528 80BAE1E8 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 00052C 80BAE1EC 46005402 */  mul.s $f16, $f10, $f0
/* 000530 80BAE1F0 44815000 */  mtc1  $at, $f10
/* 000534 80BAE1F4 27A50058 */  addiu $a1, $sp, 0x58
/* 000538 80BAE1F8 24E6014C */  addiu $a2, $a3, 0x14c
/* 00053C 80BAE1FC 00C02025 */  move  $a0, $a2
/* 000540 80BAE200 46104480 */  add.s $f18, $f8, $f16
/* 000544 80BAE204 4600910D */  trunc.w.s $f4, $f18
/* 000548 80BAE208 44092000 */  mfc1  $t1, $f4
/* 00054C 80BAE20C 00000000 */  nop   
/* 000550 80BAE210 A7A90058 */  sh    $t1, 0x58($sp)
/* 000554 80BAE214 C4500A2C */  lwc1  $f16, 0xa2c($v0)
/* 000558 80BAE218 C4660960 */  lwc1  $f6, 0x960($v1)
/* 00055C 80BAE21C 46008482 */  mul.s $f18, $f16, $f0
/* 000560 80BAE220 460A3201 */  sub.s $f8, $f6, $f10
/* 000564 80BAE224 46124100 */  add.s $f4, $f8, $f18
/* 000568 80BAE228 4600218D */  trunc.w.s $f6, $f4
/* 00056C 80BAE22C 440B3000 */  mfc1  $t3, $f6
/* 000570 80BAE230 00000000 */  nop   
/* 000574 80BAE234 A7AB005A */  sh    $t3, 0x5a($sp)
/* 000578 80BAE238 C4500A30 */  lwc1  $f16, 0xa30($v0)
/* 00057C 80BAE23C C46A0964 */  lwc1  $f10, 0x964($v1)
/* 000580 80BAE240 46008202 */  mul.s $f8, $f16, $f0
/* 000584 80BAE244 46085480 */  add.s $f18, $f10, $f8
/* 000588 80BAE248 4600910D */  trunc.w.s $f4, $f18
/* 00058C 80BAE24C 440D2000 */  mfc1  $t5, $f4
/* 000590 80BAE250 00000000 */  nop   
/* 000594 80BAE254 A7AD005C */  sh    $t5, 0x5c($sp)
/* 000598 80BAE258 8CAF0000 */  lw    $t7, ($a1)
/* 00059C 80BAE25C A8EF019C */  swl   $t7, 0x19c($a3)
/* 0005A0 80BAE260 B8EF019F */  swr   $t7, 0x19f($a3)
/* 0005A4 80BAE264 94AF0004 */  lhu   $t7, 4($a1)
/* 0005A8 80BAE268 A4EF01A0 */  sh    $t7, 0x1a0($a3)
/* 0005AC 80BAE26C 0C0189C6 */  jal   func_80062718
/* 0005B0 80BAE270 AFA6003C */   sw    $a2, 0x3c($sp)
/* 0005B4 80BAE274 3C010001 */  lui   $at, (0x00011E60 >> 16) # lui $at, 1
/* 0005B8 80BAE278 34211E60 */  ori   $at, (0x00011E60 & 0xFFFF) # ori $at, $at, 0x1e60
/* 0005BC 80BAE27C 8FA6003C */  lw    $a2, 0x3c($sp)
/* 0005C0 80BAE280 02012821 */  addu  $a1, $s0, $at
/* 0005C4 80BAE284 0C01767D */  jal   Actor_CollisionCheck_SetAC
/* 0005C8 80BAE288 02002025 */   move  $a0, $s0
.L80BAE28C:
/* 0005CC 80BAE28C 8FBF0034 */  lw    $ra, 0x34($sp)
.L80BAE290:
/* 0005D0 80BAE290 8FB00030 */  lw    $s0, 0x30($sp)
/* 0005D4 80BAE294 27BD0060 */  addiu $sp, $sp, 0x60
/* 0005D8 80BAE298 03E00008 */  jr    $ra
/* 0005DC 80BAE29C 00000000 */   nop   

func_80BAE2A0:
/* 0005E0 80BAE2A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0005E4 80BAE2A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0005E8 80BAE2A8 8C990198 */  lw    $t9, 0x198($a0)
/* 0005EC 80BAE2AC 0320F809 */  jalr  $t9
/* 0005F0 80BAE2B0 00000000 */  nop   
/* 0005F4 80BAE2B4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0005F8 80BAE2B8 27BD0018 */  addiu $sp, $sp, 0x18
/* 0005FC 80BAE2BC 03E00008 */  jr    $ra
/* 000600 80BAE2C0 00000000 */   nop   

.section .data

D_80BAE2D0:
.incbin "baserom/ovl_Shot_Sun", 0x610, 0x20
D_80BAE2F0:
.incbin "baserom/ovl_Shot_Sun", 0x630, 0x30
D_80BAE320:
.incbin "baserom/ovl_Shot_Sun", 0x660, 0x2C
D_80BAE34C:
.incbin "baserom/ovl_Shot_Sun", 0x68C, 0x20
D_80BAE36C:
.incbin "baserom/ovl_Shot_Sun", 0x6AC, 0x4
D_80BAE370:
.incbin "baserom/ovl_Shot_Sun", 0x6B0, 0x4
D_80BAE374:
.incbin "baserom/ovl_Shot_Sun", 0x6B4, 0x4
D_80BAE378:
.incbin "baserom/ovl_Shot_Sun", 0x6B8, 0x88
