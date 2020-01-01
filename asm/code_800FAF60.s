.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800FAF60
/* B72100 800FAF60 27BDFFF0 */  addiu $sp, $sp, -0x10
/* B72104 800FAF64 AFB1000C */  sw    $s1, 0xc($sp)
/* B72108 800FAF68 AFB00008 */  sw    $s0, 8($sp)
/* B7210C 800FAF6C 8C820004 */  lw    $v0, 4($a0)
/* B72110 800FAF70 3C06E700 */  lui   $a2, 0xe700
/* B72114 800FAF74 3C18EF00 */  lui   $t8, (0xEF00ECF0 >> 16) # lui $t8, 0xef00
/* B72118 800FAF78 244E0008 */  addiu $t6, $v0, 8
/* B7211C 800FAF7C AC8E0004 */  sw    $t6, 4($a0)
/* B72120 800FAF80 AC400004 */  sw    $zero, 4($v0)
/* B72124 800FAF84 AC460000 */  sw    $a2, ($v0)
/* B72128 800FAF88 8C820004 */  lw    $v0, 4($a0)
/* B7212C 800FAF8C 3C190050 */  lui   $t9, (0x00504244 >> 16) # lui $t9, 0x50
/* B72130 800FAF90 37394244 */  ori   $t9, (0x00504244 & 0xFFFF) # ori $t9, $t9, 0x4244
/* B72134 800FAF94 244F0008 */  addiu $t7, $v0, 8
/* B72138 800FAF98 AC8F0004 */  sw    $t7, 4($a0)
/* B7213C 800FAF9C 3718ECF0 */  ori   $t8, (0xEF00ECF0 & 0xFFFF) # ori $t8, $t8, 0xecf0
/* B72140 800FAFA0 AC580000 */  sw    $t8, ($v0)
/* B72144 800FAFA4 AC590004 */  sw    $t9, 4($v0)
/* B72148 800FAFA8 8C820004 */  lw    $v0, 4($a0)
/* B7214C 800FAFAC 3C18FFFC */  lui   $t8, (0xFFFCF279 >> 16) # lui $t8, 0xfffc
/* B72150 800FAFB0 3C0FFCFF */  lui   $t7, (0xFCFFFFFF >> 16) # lui $t7, 0xfcff
/* B72154 800FAFB4 244E0008 */  addiu $t6, $v0, 8
/* B72158 800FAFB8 AC8E0004 */  sw    $t6, 4($a0)
/* B7215C 800FAFBC 35EFFFFF */  ori   $t7, (0xFCFFFFFF & 0xFFFF) # ori $t7, $t7, 0xffff
/* B72160 800FAFC0 3718F279 */  ori   $t8, (0xFFFCF279 & 0xFFFF) # ori $t8, $t8, 0xf279
/* B72164 800FAFC4 AC580004 */  sw    $t8, 4($v0)
/* B72168 800FAFC8 AC4F0000 */  sw    $t7, ($v0)
/* B7216C 800FAFCC 8C820004 */  lw    $v0, 4($a0)
/* B72170 800FAFD0 3C0F8013 */  lui   $t7, %hi(D_80133C78) # $t7, 0x8013
/* B72174 800FAFD4 25EF3C78 */  addiu $t7, %lo(D_80133C78) # addiu $t7, $t7, 0x3c78
/* B72178 800FAFD8 24590008 */  addiu $t9, $v0, 8
/* B7217C 800FAFDC AC990004 */  sw    $t9, 4($a0)
/* B72180 800FAFE0 3C0EFD50 */  lui   $t6, 0xfd50
/* B72184 800FAFE4 AC4E0000 */  sw    $t6, ($v0)
/* B72188 800FAFE8 AC4F0004 */  sw    $t7, 4($v0)
/* B7218C 800FAFEC 8C820004 */  lw    $v0, 4($a0)
/* B72190 800FAFF0 3C19F550 */  lui   $t9, 0xf550
/* B72194 800FAFF4 24050001 */  li    $a1, 1
/* B72198 800FAFF8 24580008 */  addiu $t8, $v0, 8
/* B7219C 800FAFFC AC980004 */  sw    $t8, 4($a0)
/* B721A0 800FB000 AC590000 */  sw    $t9, ($v0)
/* B721A4 800FB004 24B907FF */  addiu $t9, $a1, 0x7ff
/* B721A8 800FB008 24090001 */  li    $t1, 1
/* B721AC 800FB00C 0329001A */  div   $zero, $t9, $t1
/* B721B0 800FB010 3C070700 */  lui   $a3, 0x700
/* B721B4 800FB014 AC470004 */  sw    $a3, 4($v0)
/* B721B8 800FB018 8C820004 */  lw    $v0, 4($a0)
/* B721BC 800FB01C 3C08E600 */  lui   $t0, 0xe600
/* B721C0 800FB020 3C18F300 */  lui   $t8, 0xf300
/* B721C4 800FB024 244E0008 */  addiu $t6, $v0, 8
/* B721C8 800FB028 AC8E0004 */  sw    $t6, 4($a0)
/* B721CC 800FB02C AC400004 */  sw    $zero, 4($v0)
/* B721D0 800FB030 AC480000 */  sw    $t0, ($v0)
/* B721D4 800FB034 8C820004 */  lw    $v0, 4($a0)
/* B721D8 800FB038 00007012 */  mflo  $t6
/* B721DC 800FB03C 3C05F540 */  lui   $a1, (0xF5400200 >> 16) # lui $a1, 0xf540
/* B721E0 800FB040 244F0008 */  addiu $t7, $v0, 8
/* B721E4 800FB044 AC8F0004 */  sw    $t7, 4($a0)
/* B721E8 800FB048 AC580000 */  sw    $t8, ($v0)
/* B721EC 800FB04C 00401825 */  move  $v1, $v0
/* B721F0 800FB050 240203FF */  li    $v0, 1023
/* B721F4 800FB054 15200002 */  bnez  $t1, .L800FB060
/* B721F8 800FB058 00000000 */   nop   
/* B721FC 800FB05C 0007000D */  break 7
.L800FB060:
/* B72200 800FB060 2401FFFF */  li    $at, -1
/* B72204 800FB064 15210004 */  bne   $t1, $at, .L800FB078
/* B72208 800FB068 3C018000 */   lui   $at, 0x8000
/* B7220C 800FB06C 17210002 */  bne   $t9, $at, .L800FB078
/* B72210 800FB070 00000000 */   nop   
/* B72214 800FB074 0006000D */  break 6
.L800FB078:
/* B72218 800FB078 31CF0FFF */  andi  $t7, $t6, 0xfff
/* B7221C 800FB07C 30590FFF */  andi  $t9, $v0, 0xfff
/* B72220 800FB080 00197300 */  sll   $t6, $t9, 0xc
/* B72224 800FB084 01E7C025 */  or    $t8, $t7, $a3
/* B72228 800FB088 030E7825 */  or    $t7, $t8, $t6
/* B7222C 800FB08C AC6F0004 */  sw    $t7, 4($v1)
/* B72230 800FB090 8C820004 */  lw    $v0, 4($a0)
/* B72234 800FB094 34A50200 */  ori   $a1, (0xF5400200 & 0xFFFF) # ori $a1, $a1, 0x200
/* B72238 800FB098 3C0F0003 */  lui   $t7, (0x0003C3FC >> 16) # lui $t7, 3
/* B7223C 800FB09C 24590008 */  addiu $t9, $v0, 8
/* B72240 800FB0A0 AC990004 */  sw    $t9, 4($a0)
/* B72244 800FB0A4 AC400004 */  sw    $zero, 4($v0)
/* B72248 800FB0A8 AC460000 */  sw    $a2, ($v0)
/* B7224C 800FB0AC 8C820004 */  lw    $v0, 4($a0)
/* B72250 800FB0B0 35EFC3FC */  ori   $t7, (0x0003C3FC & 0xFFFF) # ori $t7, $t7, 0xc3fc
/* B72254 800FB0B4 3C03F200 */  lui   $v1, 0xf200
/* B72258 800FB0B8 24580008 */  addiu $t8, $v0, 8
/* B7225C 800FB0BC AC980004 */  sw    $t8, 4($a0)
/* B72260 800FB0C0 AC400004 */  sw    $zero, 4($v0)
/* B72264 800FB0C4 AC450000 */  sw    $a1, ($v0)
/* B72268 800FB0C8 8C820004 */  lw    $v0, 4($a0)
/* B7226C 800FB0CC 3C188013 */  lui   $t8, %hi(D_80133BD0) # $t8, 0x8013
/* B72270 800FB0D0 27183BD0 */  addiu $t8, %lo(D_80133BD0) # addiu $t8, $t8, 0x3bd0
/* B72274 800FB0D4 244E0008 */  addiu $t6, $v0, 8
/* B72278 800FB0D8 AC8E0004 */  sw    $t6, 4($a0)
/* B7227C 800FB0DC AC4F0004 */  sw    $t7, 4($v0)
/* B72280 800FB0E0 AC430000 */  sw    $v1, ($v0)
/* B72284 800FB0E4 8C820004 */  lw    $v0, 4($a0)
/* B72288 800FB0E8 3C09FD10 */  lui   $t1, 0xfd10
/* B7228C 800FB0EC 3C0AE800 */  lui   $t2, 0xe800
/* B72290 800FB0F0 24590008 */  addiu $t9, $v0, 8
/* B72294 800FB0F4 AC990004 */  sw    $t9, 4($a0)
/* B72298 800FB0F8 AC580004 */  sw    $t8, 4($v0)
/* B7229C 800FB0FC AC490000 */  sw    $t1, ($v0)
/* B722A0 800FB100 8C820004 */  lw    $v0, 4($a0)
/* B722A4 800FB104 3C19F500 */  lui   $t9, (0xF5000100 >> 16) # lui $t9, 0xf500
/* B722A8 800FB108 37390100 */  ori   $t9, (0xF5000100 & 0xFFFF) # ori $t9, $t9, 0x100
/* B722AC 800FB10C 244E0008 */  addiu $t6, $v0, 8
/* B722B0 800FB110 AC8E0004 */  sw    $t6, 4($a0)
/* B722B4 800FB114 AC400004 */  sw    $zero, 4($v0)
/* B722B8 800FB118 AC4A0000 */  sw    $t2, ($v0)
/* B722BC 800FB11C 8C820004 */  lw    $v0, 4($a0)
/* B722C0 800FB120 3C0BF000 */  lui   $t3, 0xf000
/* B722C4 800FB124 24100002 */  li    $s0, 2
/* B722C8 800FB128 244F0008 */  addiu $t7, $v0, 8
/* B722CC 800FB12C AC8F0004 */  sw    $t7, 4($a0)
/* B722D0 800FB130 AC470004 */  sw    $a3, 4($v0)
/* B722D4 800FB134 AC590000 */  sw    $t9, ($v0)
/* B722D8 800FB138 8C820004 */  lw    $v0, 4($a0)
/* B722DC 800FB13C 3C0F070F */  lui   $t7, (0x070FC000 >> 16) # lui $t7, 0x70f
/* B722E0 800FB140 35EFC000 */  ori   $t7, (0x070FC000 & 0xFFFF) # ori $t7, $t7, 0xc000
/* B722E4 800FB144 24580008 */  addiu $t8, $v0, 8
/* B722E8 800FB148 AC980004 */  sw    $t8, 4($a0)
/* B722EC 800FB14C AC400004 */  sw    $zero, 4($v0)
/* B722F0 800FB150 AC480000 */  sw    $t0, ($v0)
/* B722F4 800FB154 8C820004 */  lw    $v0, 4($a0)
/* B722F8 800FB158 240C0001 */  li    $t4, 1
/* B722FC 800FB15C 244E0008 */  addiu $t6, $v0, 8
/* B72300 800FB160 AC8E0004 */  sw    $t6, 4($a0)
/* B72304 800FB164 AC4F0004 */  sw    $t7, 4($v0)
/* B72308 800FB168 AC4B0000 */  sw    $t3, ($v0)
/* B7230C 800FB16C 8C820004 */  lw    $v0, 4($a0)
/* B72310 800FB170 24590008 */  addiu $t9, $v0, 8
/* B72314 800FB174 AC990004 */  sw    $t9, 4($a0)
/* B72318 800FB178 AC400004 */  sw    $zero, 4($v0)
/* B7231C 800FB17C AC460000 */  sw    $a2, ($v0)
.L800FB180:
/* B72320 800FB180 8C820004 */  lw    $v0, 4($a0)
/* B72324 800FB184 32110007 */  andi  $s1, $s0, 7
/* B72328 800FB188 318E000F */  andi  $t6, $t4, 0xf
/* B7232C 800FB18C 24580008 */  addiu $t8, $v0, 8
/* B72330 800FB190 AC980004 */  sw    $t8, 4($a0)
/* B72334 800FB194 000E7D00 */  sll   $t7, $t6, 0x14
/* B72338 800FB198 00118E00 */  sll   $s1, $s1, 0x18
/* B7233C 800FB19C 022FC825 */  or    $t9, $s1, $t7
/* B72340 800FB1A0 AC590004 */  sw    $t9, 4($v0)
/* B72344 800FB1A4 AC450000 */  sw    $a1, ($v0)
/* B72348 800FB1A8 8C820004 */  lw    $v0, 4($a0)
/* B7234C 800FB1AC 3C010003 */  lui   $at, (0x0003C000 >> 16) # lui $at, 3
/* B72350 800FB1B0 3421C000 */  ori   $at, (0x0003C000 & 0xFFFF) # ori $at, $at, 0xc000
/* B72354 800FB1B4 02217025 */  or    $t6, $s1, $at
/* B72358 800FB1B8 258C0001 */  addiu $t4, $t4, 1
/* B7235C 800FB1BC 24580008 */  addiu $t8, $v0, 8
/* B72360 800FB1C0 29810004 */  slti  $at, $t4, 4
/* B72364 800FB1C4 AC980004 */  sw    $t8, 4($a0)
/* B72368 800FB1C8 35CF03FC */  ori   $t7, $t6, 0x3fc
/* B7236C 800FB1CC 26100002 */  addiu $s0, $s0, 2
/* B72370 800FB1D0 AC4F0004 */  sw    $t7, 4($v0)
/* B72374 800FB1D4 1420FFEA */  bnez  $at, .L800FB180
/* B72378 800FB1D8 AC430000 */   sw    $v1, ($v0)
/* B7237C 800FB1DC 8C820004 */  lw    $v0, 4($a0)
/* B72380 800FB1E0 3C18FA00 */  lui   $t8, 0xfa00
/* B72384 800FB1E4 24590008 */  addiu $t9, $v0, 8
/* B72388 800FB1E8 AC990004 */  sw    $t9, 4($a0)
/* B7238C 800FB1EC AC580000 */  sw    $t8, ($v0)
/* B72390 800FB1F0 8C8E0010 */  lw    $t6, 0x10($a0)
/* B72394 800FB1F4 3C188013 */  lui   $t8, %hi(D_80133C70) # $t8, 0x8013
/* B72398 800FB1F8 27183C70 */  addiu $t8, %lo(D_80133C70) # addiu $t8, $t8, 0x3c70
/* B7239C 800FB1FC AC4E0004 */  sw    $t6, 4($v0)
/* B723A0 800FB200 8C820004 */  lw    $v0, 4($a0)
/* B723A4 800FB204 3C19FD48 */  lui   $t9, 0xfd48
/* B723A8 800FB208 244F0008 */  addiu $t7, $v0, 8
/* B723AC 800FB20C AC8F0004 */  sw    $t7, 4($a0)
/* B723B0 800FB210 AC580004 */  sw    $t8, 4($v0)
/* B723B4 800FB214 AC590000 */  sw    $t9, ($v0)
/* B723B8 800FB218 8C820004 */  lw    $v0, 4($a0)
/* B723BC 800FB21C 3C190700 */  lui   $t9, (0x0700C010 >> 16) # lui $t9, 0x700
/* B723C0 800FB220 3C0FF548 */  lui   $t7, (0xF5480200 >> 16) # lui $t7, 0xf548
/* B723C4 800FB224 244E0008 */  addiu $t6, $v0, 8
/* B723C8 800FB228 AC8E0004 */  sw    $t6, 4($a0)
/* B723CC 800FB22C 35EF0200 */  ori   $t7, (0xF5480200 & 0xFFFF) # ori $t7, $t7, 0x200
/* B723D0 800FB230 3739C010 */  ori   $t9, (0x0700C010 & 0xFFFF) # ori $t9, $t9, 0xc010
/* B723D4 800FB234 AC590004 */  sw    $t9, 4($v0)
/* B723D8 800FB238 AC4F0000 */  sw    $t7, ($v0)
/* B723DC 800FB23C 8C820004 */  lw    $v0, 4($a0)
/* B723E0 800FB240 3C190700 */  lui   $t9, (0x0700201C >> 16) # lui $t9, 0x700
/* B723E4 800FB244 3739201C */  ori   $t9, (0x0700201C & 0xFFFF) # ori $t9, $t9, 0x201c
/* B723E8 800FB248 24580008 */  addiu $t8, $v0, 8
/* B723EC 800FB24C AC980004 */  sw    $t8, 4($a0)
/* B723F0 800FB250 AC400004 */  sw    $zero, 4($v0)
/* B723F4 800FB254 AC480000 */  sw    $t0, ($v0)
/* B723F8 800FB258 8C820004 */  lw    $v0, 4($a0)
/* B723FC 800FB25C 3C0FF400 */  lui   $t7, 0xf400
/* B72400 800FB260 244E0008 */  addiu $t6, $v0, 8
/* B72404 800FB264 AC8E0004 */  sw    $t6, 4($a0)
/* B72408 800FB268 AC590004 */  sw    $t9, 4($v0)
/* B7240C 800FB26C AC4F0000 */  sw    $t7, ($v0)
/* B72410 800FB270 8C820004 */  lw    $v0, 4($a0)
/* B72414 800FB274 3C0F0140 */  lui   $t7, (0x0140C010 >> 16) # lui $t7, 0x140
/* B72418 800FB278 35EFC010 */  ori   $t7, (0x0140C010 & 0xFFFF) # ori $t7, $t7, 0xc010
/* B7241C 800FB27C 24580008 */  addiu $t8, $v0, 8
/* B72420 800FB280 AC980004 */  sw    $t8, 4($a0)
/* B72424 800FB284 AC400004 */  sw    $zero, 4($v0)
/* B72428 800FB288 AC460000 */  sw    $a2, ($v0)
/* B7242C 800FB28C 8C820004 */  lw    $v0, 4($a0)
/* B72430 800FB290 3C180100 */  lui   $t8, (0x0100401C >> 16) # lui $t8, 0x100
/* B72434 800FB294 3718401C */  ori   $t8, (0x0100401C & 0xFFFF) # ori $t8, $t8, 0x401c
/* B72438 800FB298 244E0008 */  addiu $t6, $v0, 8
/* B7243C 800FB29C AC8E0004 */  sw    $t6, 4($a0)
/* B72440 800FB2A0 AC4F0004 */  sw    $t7, 4($v0)
/* B72444 800FB2A4 AC450000 */  sw    $a1, ($v0)
/* B72448 800FB2A8 8C820004 */  lw    $v0, 4($a0)
/* B7244C 800FB2AC 3C0F8013 */  lui   $t7, %hi(D_80133C50) # $t7, 0x8013
/* B72450 800FB2B0 25EF3C50 */  addiu $t7, %lo(D_80133C50) # addiu $t7, $t7, 0x3c50
/* B72454 800FB2B4 24590008 */  addiu $t9, $v0, 8
/* B72458 800FB2B8 AC990004 */  sw    $t9, 4($a0)
/* B7245C 800FB2BC AC580004 */  sw    $t8, 4($v0)
/* B72460 800FB2C0 AC430000 */  sw    $v1, ($v0)
/* B72464 800FB2C4 8C820004 */  lw    $v0, 4($a0)
/* B72468 800FB2C8 244E0008 */  addiu $t6, $v0, 8
/* B7246C 800FB2CC AC8E0004 */  sw    $t6, 4($a0)
/* B72470 800FB2D0 AC4F0004 */  sw    $t7, 4($v0)
/* B72474 800FB2D4 AC490000 */  sw    $t1, ($v0)
/* B72478 800FB2D8 8C820004 */  lw    $v0, 4($a0)
/* B7247C 800FB2DC 3C0EF500 */  lui   $t6, (0xF5000140 >> 16) # lui $t6, 0xf500
/* B72480 800FB2E0 35CE0140 */  ori   $t6, (0xF5000140 & 0xFFFF) # ori $t6, $t6, 0x140
/* B72484 800FB2E4 24590008 */  addiu $t9, $v0, 8
/* B72488 800FB2E8 AC990004 */  sw    $t9, 4($a0)
/* B7248C 800FB2EC AC400004 */  sw    $zero, 4($v0)
/* B72490 800FB2F0 AC4A0000 */  sw    $t2, ($v0)
/* B72494 800FB2F4 8C820004 */  lw    $v0, 4($a0)
/* B72498 800FB2F8 240A0009 */  li    $t2, 9
/* B7249C 800FB2FC 3C090040 */  lui   $t1, 0x40
/* B724A0 800FB300 24580008 */  addiu $t8, $v0, 8
/* B724A4 800FB304 AC980004 */  sw    $t8, 4($a0)
/* B724A8 800FB308 AC470004 */  sw    $a3, 4($v0)
/* B724AC 800FB30C AC4E0000 */  sw    $t6, ($v0)
/* B724B0 800FB310 8C820004 */  lw    $v0, 4($a0)
/* B724B4 800FB314 3C180703 */  lui   $t8, (0x0703C000 >> 16) # lui $t8, 0x703
/* B724B8 800FB318 3718C000 */  ori   $t8, (0x0703C000 & 0xFFFF) # ori $t8, $t8, 0xc000
/* B724BC 800FB31C 244F0008 */  addiu $t7, $v0, 8
/* B724C0 800FB320 AC8F0004 */  sw    $t7, 4($a0)
/* B724C4 800FB324 AC400004 */  sw    $zero, 4($v0)
/* B724C8 800FB328 AC480000 */  sw    $t0, ($v0)
/* B724CC 800FB32C 8C820004 */  lw    $v0, 4($a0)
/* B724D0 800FB330 24070003 */  li    $a3, 3
/* B724D4 800FB334 24590008 */  addiu $t9, $v0, 8
/* B724D8 800FB338 AC990004 */  sw    $t9, 4($a0)
/* B724DC 800FB33C AC580004 */  sw    $t8, 4($v0)
/* B724E0 800FB340 AC4B0000 */  sw    $t3, ($v0)
/* B724E4 800FB344 8C820004 */  lw    $v0, 4($a0)
/* B724E8 800FB348 244E0008 */  addiu $t6, $v0, 8
/* B724EC 800FB34C AC8E0004 */  sw    $t6, 4($a0)
/* B724F0 800FB350 AC400004 */  sw    $zero, 4($v0)
/* B724F4 800FB354 AC460000 */  sw    $a2, ($v0)
.L800FB358:
/* B724F8 800FB358 8C820004 */  lw    $v0, 4($a0)
/* B724FC 800FB35C 30E80007 */  andi  $t0, $a3, 7
/* B72500 800FB360 00084600 */  sll   $t0, $t0, 0x18
/* B72504 800FB364 244F0008 */  addiu $t7, $v0, 8
/* B72508 800FB368 AC8F0004 */  sw    $t7, 4($a0)
/* B7250C 800FB36C 0109C825 */  or    $t9, $t0, $t1
/* B72510 800FB370 372EC010 */  ori   $t6, $t9, 0xc010
/* B72514 800FB374 AC4E0004 */  sw    $t6, 4($v0)
/* B72518 800FB378 AC450000 */  sw    $a1, ($v0)
/* B7251C 800FB37C 8C820004 */  lw    $v0, 4($a0)
/* B72520 800FB380 24E70002 */  addiu $a3, $a3, 2
/* B72524 800FB384 3518401C */  ori   $t8, $t0, 0x401c
/* B72528 800FB388 244F0008 */  addiu $t7, $v0, 8
/* B7252C 800FB38C AC8F0004 */  sw    $t7, 4($a0)
/* B72530 800FB390 AC580004 */  sw    $t8, 4($v0)
/* B72534 800FB394 14EAFFF0 */  bne   $a3, $t2, .L800FB358
/* B72538 800FB398 AC430000 */   sw    $v1, ($v0)
/* B7253C 800FB39C 8FB00008 */  lw    $s0, 8($sp)
/* B72540 800FB3A0 8FB1000C */  lw    $s1, 0xc($sp)
/* B72544 800FB3A4 03E00008 */  jr    $ra
/* B72548 800FB3A8 27BD0010 */   addiu $sp, $sp, 0x10

glabel SetTextRGBA
/* B7254C 800FB3AC 8C830004 */  lw    $v1, 4($a0)
/* B72550 800FB3B0 A0850010 */  sb    $a1, 0x10($a0)
/* B72554 800FB3B4 A0860011 */  sb    $a2, 0x11($a0)
/* B72558 800FB3B8 A0870012 */  sb    $a3, 0x12($a0)
/* B7255C 800FB3BC 8FAE0010 */  lw    $t6, 0x10($sp)
/* B72560 800FB3C0 246F0008 */  addiu $t7, $v1, 8
/* B72564 800FB3C4 AC8F0004 */  sw    $t7, 4($a0)
/* B72568 800FB3C8 A08E0013 */  sb    $t6, 0x13($a0)
/* B7256C 800FB3CC 3C18E700 */  lui   $t8, 0xe700
/* B72570 800FB3D0 AC780000 */  sw    $t8, ($v1)
/* B72574 800FB3D4 AC600004 */  sw    $zero, 4($v1)
/* B72578 800FB3D8 8C830004 */  lw    $v1, 4($a0)
/* B7257C 800FB3DC 3C08FA00 */  lui   $t0, 0xfa00
/* B72580 800FB3E0 24790008 */  addiu $t9, $v1, 8
/* B72584 800FB3E4 AC990004 */  sw    $t9, 4($a0)
/* B72588 800FB3E8 AC680000 */  sw    $t0, ($v1)
/* B7258C 800FB3EC 8C890010 */  lw    $t1, 0x10($a0)
/* B72590 800FB3F0 03E00008 */  jr    $ra
/* B72594 800FB3F4 AC690004 */   sw    $t1, 4($v1)

glabel func_800FB3F8
/* B72598 800FB3F8 948E000C */  lhu   $t6, 0xc($a0)
/* B7259C 800FB3FC 9099000E */  lbu   $t9, 0xe($a0)
/* B725A0 800FB400 00057880 */  sll   $t7, $a1, 2
/* B725A4 800FB404 00064080 */  sll   $t0, $a2, 2
/* B725A8 800FB408 01CFC021 */  addu  $t8, $t6, $t7
/* B725AC 800FB40C 03284821 */  addu  $t1, $t9, $t0
/* B725B0 800FB410 A4980008 */  sh    $t8, 8($a0)
/* B725B4 800FB414 03E00008 */  jr    $ra
/* B725B8 800FB418 A489000A */   sh    $t1, 0xa($a0)

glabel SetTextXY
/* B725BC 800FB41C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B725C0 800FB420 AFBF0014 */  sw    $ra, 0x14($sp)
/* B725C4 800FB424 AFA60020 */  sw    $a2, 0x20($sp)
/* B725C8 800FB428 000630C0 */  sll   $a2, $a2, 3
/* B725CC 800FB42C 0C03ECFE */  jal   func_800FB3F8
/* B725D0 800FB430 000528C0 */   sll   $a1, $a1, 3
/* B725D4 800FB434 8FBF0014 */  lw    $ra, 0x14($sp)
/* B725D8 800FB438 27BD0018 */  addiu $sp, $sp, 0x18
/* B725DC 800FB43C 03E00008 */  jr    $ra
/* B725E0 800FB440 00000000 */   nop   

glabel func_800FB444
/* B725E4 800FB444 00057080 */  sll   $t6, $a1, 2
/* B725E8 800FB448 00067880 */  sll   $t7, $a2, 2
/* B725EC 800FB44C A48E000C */  sh    $t6, 0xc($a0)
/* B725F0 800FB450 03E00008 */  jr    $ra
/* B725F4 800FB454 A08F000E */   sb    $t7, 0xe($a0)

glabel func_800FB458
/* B725F8 800FB458 AFA50004 */  sw    $a1, 4($sp)
/* B725FC 800FB45C 9083000F */  lbu   $v1, 0xf($a0)
/* B72600 800FB460 30A500FF */  andi  $a1, $a1, 0xff
/* B72604 800FB464 306E0008 */  andi  $t6, $v1, 8
/* B72608 800FB468 11C0004F */  beqz  $t6, .L800FB5A8
/* B7260C 800FB46C 306FFFF7 */   andi  $t7, $v1, 0xfff7
/* B72610 800FB470 8C820004 */  lw    $v0, 4($a0)
/* B72614 800FB474 A08F000F */  sb    $t7, 0xf($a0)
/* B72618 800FB478 3C19E700 */  lui   $t9, 0xe700
/* B7261C 800FB47C 24580008 */  addiu $t8, $v0, 8
/* B72620 800FB480 AC980004 */  sw    $t8, 4($a0)
/* B72624 800FB484 AC400004 */  sw    $zero, 4($v0)
/* B72628 800FB488 AC590000 */  sw    $t9, ($v0)
/* B7262C 800FB48C 908B000F */  lbu   $t3, 0xf($a0)
/* B72630 800FB490 3C0FE300 */  lui   $t7, (0xE3000A01 >> 16) # lui $t7, 0xe300
/* B72634 800FB494 340DC000 */  li    $t5, 49152
/* B72638 800FB498 316C0002 */  andi  $t4, $t3, 2
/* B7263C 800FB49C 11800024 */  beqz  $t4, .L800FB530
/* B72640 800FB4A0 35EF0A01 */   ori   $t7, (0xE3000A01 & 0xFFFF) # ori $t7, $t7, 0xa01
/* B72644 800FB4A4 8C820004 */  lw    $v0, 4($a0)
/* B72648 800FB4A8 3C0EE300 */  lui   $t6, (0xE3001001 >> 16) # lui $t6, 0xe300
/* B7264C 800FB4AC 35CE1001 */  ori   $t6, (0xE3001001 & 0xFFFF) # ori $t6, $t6, 0x1001
/* B72650 800FB4B0 244D0008 */  addiu $t5, $v0, 8
/* B72654 800FB4B4 AC8D0004 */  sw    $t5, 4($a0)
/* B72658 800FB4B8 340F8000 */  li    $t7, 32768
/* B7265C 800FB4BC AC4F0004 */  sw    $t7, 4($v0)
/* B72660 800FB4C0 AC4E0000 */  sw    $t6, ($v0)
/* B72664 800FB4C4 8C820004 */  lw    $v0, 4($a0)
/* B72668 800FB4C8 3C19E300 */  lui   $t9, (0xE3000A01 >> 16) # lui $t9, 0xe300
/* B7266C 800FB4CC 37390A01 */  ori   $t9, (0xE3000A01 & 0xFFFF) # ori $t9, $t9, 0xa01
/* B72670 800FB4D0 24580008 */  addiu $t8, $v0, 8
/* B72674 800FB4D4 AC980004 */  sw    $t8, 4($a0)
/* B72678 800FB4D8 3C0B0010 */  lui   $t3, 0x10
/* B7267C 800FB4DC AC4B0004 */  sw    $t3, 4($v0)
/* B72680 800FB4E0 AC590000 */  sw    $t9, ($v0)
/* B72684 800FB4E4 8C820004 */  lw    $v0, 4($a0)
/* B72688 800FB4E8 3C0E0C18 */  lui   $t6, (0x0C184240 >> 16) # lui $t6, 0xc18
/* B7268C 800FB4EC 3C0DE200 */  lui   $t5, (0xE200001C >> 16) # lui $t5, 0xe200
/* B72690 800FB4F0 244C0008 */  addiu $t4, $v0, 8
/* B72694 800FB4F4 AC8C0004 */  sw    $t4, 4($a0)
/* B72698 800FB4F8 35AD001C */  ori   $t5, (0xE200001C & 0xFFFF) # ori $t5, $t5, 0x1c
/* B7269C 800FB4FC 35CE4240 */  ori   $t6, (0x0C184240 & 0xFFFF) # ori $t6, $t6, 0x4240
/* B726A0 800FB500 AC4E0004 */  sw    $t6, 4($v0)
/* B726A4 800FB504 AC4D0000 */  sw    $t5, ($v0)
/* B726A8 800FB508 8C820004 */  lw    $v0, 4($a0)
/* B726AC 800FB50C 3C18FC11 */  lui   $t8, (0xFC1115FF >> 16) # lui $t8, 0xfc11
/* B726B0 800FB510 371815FF */  ori   $t8, (0xFC1115FF & 0xFFFF) # ori $t8, $t8, 0x15ff
/* B726B4 800FB514 244F0008 */  addiu $t7, $v0, 8
/* B726B8 800FB518 AC8F0004 */  sw    $t7, 4($a0)
/* B726BC 800FB51C 2419FE38 */  li    $t9, -456
/* B726C0 800FB520 AC590004 */  sw    $t9, 4($v0)
/* B726C4 800FB524 AC580000 */  sw    $t8, ($v0)
/* B726C8 800FB528 1000001F */  b     .L800FB5A8
/* B726CC 800FB52C 9083000F */   lbu   $v1, 0xf($a0)
.L800FB530:
/* B726D0 800FB530 8C820004 */  lw    $v0, 4($a0)
/* B726D4 800FB534 3C0CE300 */  lui   $t4, (0xE3001001 >> 16) # lui $t4, 0xe300
/* B726D8 800FB538 358C1001 */  ori   $t4, (0xE3001001 & 0xFFFF) # ori $t4, $t4, 0x1001
/* B726DC 800FB53C 244B0008 */  addiu $t3, $v0, 8
/* B726E0 800FB540 AC8B0004 */  sw    $t3, 4($a0)
/* B726E4 800FB544 AC4D0004 */  sw    $t5, 4($v0)
/* B726E8 800FB548 AC4C0000 */  sw    $t4, ($v0)
/* B726EC 800FB54C 8C820004 */  lw    $v0, 4($a0)
/* B726F0 800FB550 3C0B0050 */  lui   $t3, (0x00504240 >> 16) # lui $t3, 0x50
/* B726F4 800FB554 3C19E200 */  lui   $t9, (0xE200001C >> 16) # lui $t9, 0xe200
/* B726F8 800FB558 244E0008 */  addiu $t6, $v0, 8
/* B726FC 800FB55C AC8E0004 */  sw    $t6, 4($a0)
/* B72700 800FB560 AC400004 */  sw    $zero, 4($v0)
/* B72704 800FB564 AC4F0000 */  sw    $t7, ($v0)
/* B72708 800FB568 8C820004 */  lw    $v0, 4($a0)
/* B7270C 800FB56C 3739001C */  ori   $t9, (0xE200001C & 0xFFFF) # ori $t9, $t9, 0x1c
/* B72710 800FB570 356B4240 */  ori   $t3, (0x00504240 & 0xFFFF) # ori $t3, $t3, 0x4240
/* B72714 800FB574 24580008 */  addiu $t8, $v0, 8
/* B72718 800FB578 AC980004 */  sw    $t8, 4($a0)
/* B7271C 800FB57C AC4B0004 */  sw    $t3, 4($v0)
/* B72720 800FB580 AC590000 */  sw    $t9, ($v0)
/* B72724 800FB584 8C820004 */  lw    $v0, 4($a0)
/* B72728 800FB588 3C0DFC11 */  lui   $t5, (0xFC11FE23 >> 16) # lui $t5, 0xfc11
/* B7272C 800FB58C 35ADFE23 */  ori   $t5, (0xFC11FE23 & 0xFFFF) # ori $t5, $t5, 0xfe23
/* B72730 800FB590 244C0008 */  addiu $t4, $v0, 8
/* B72734 800FB594 AC8C0004 */  sw    $t4, 4($a0)
/* B72738 800FB598 240EF3F9 */  li    $t6, -3079
/* B7273C 800FB59C AC4E0004 */  sw    $t6, 4($v0)
/* B72740 800FB5A0 AC4D0000 */  sw    $t5, ($v0)
/* B72744 800FB5A4 9083000F */  lbu   $v1, 0xf($a0)
.L800FB5A8:
/* B72748 800FB5A8 306F0004 */  andi  $t7, $v1, 4
/* B7274C 800FB5AC 51E00076 */  beql  $t7, $zero, .L800FB788
/* B72750 800FB5B0 000578C3 */   sra   $t7, $a1, 3
/* B72754 800FB5B4 8C820004 */  lw    $v0, 4($a0)
/* B72758 800FB5B8 3C07FA00 */  lui   $a3, 0xfa00
/* B7275C 800FB5BC 3C08E400 */  lui   $t0, 0xe400
/* B72760 800FB5C0 24580008 */  addiu $t8, $v0, 8
/* B72764 800FB5C4 AC980004 */  sw    $t8, 4($a0)
/* B72768 800FB5C8 AC400004 */  sw    $zero, 4($v0)
/* B7276C 800FB5CC AC470000 */  sw    $a3, ($v0)
/* B72770 800FB5D0 9099000F */  lbu   $t9, 0xf($a0)
/* B72774 800FB5D4 3C09E100 */  lui   $t1, 0xe100
/* B72778 800FB5D8 3C0AF100 */  lui   $t2, 0xf100
/* B7277C 800FB5DC 332B0040 */  andi  $t3, $t9, 0x40
/* B72780 800FB5E0 51600036 */  beql  $t3, $zero, .L800FB6BC
/* B72784 800FB5E4 8C820004 */   lw    $v0, 4($a0)
/* B72788 800FB5E8 8C820004 */  lw    $v0, 4($a0)
/* B7278C 800FB5EC 948D0008 */  lhu   $t5, 8($a0)
/* B72790 800FB5F0 3C08E400 */  lui   $t0, 0xe400
/* B72794 800FB5F4 244C0008 */  addiu $t4, $v0, 8
/* B72798 800FB5F8 AC8C0004 */  sw    $t4, 4($a0)
/* B7279C 800FB5FC 948C000A */  lhu   $t4, 0xa($a0)
/* B727A0 800FB600 25AE0024 */  addiu $t6, $t5, 0x24
/* B727A4 800FB604 000E7840 */  sll   $t7, $t6, 1
/* B727A8 800FB608 31F80FFF */  andi  $t8, $t7, 0xfff
/* B727AC 800FB60C 258D0024 */  addiu $t5, $t4, 0x24
/* B727B0 800FB610 000D7040 */  sll   $t6, $t5, 1
/* B727B4 800FB614 0018CB00 */  sll   $t9, $t8, 0xc
/* B727B8 800FB618 03285825 */  or    $t3, $t9, $t0
/* B727BC 800FB61C 31CF0FFF */  andi  $t7, $t6, 0xfff
/* B727C0 800FB620 016FC025 */  or    $t8, $t3, $t7
/* B727C4 800FB624 AC580000 */  sw    $t8, ($v0)
/* B727C8 800FB628 948B0008 */  lhu   $t3, 8($a0)
/* B727CC 800FB62C 00056040 */  sll   $t4, $a1, 1
/* B727D0 800FB630 318D0007 */  andi  $t5, $t4, 7
/* B727D4 800FB634 256F0004 */  addiu $t7, $t3, 4
/* B727D8 800FB638 948B000A */  lhu   $t3, 0xa($a0)
/* B727DC 800FB63C 000FC040 */  sll   $t8, $t7, 1
/* B727E0 800FB640 33190FFF */  andi  $t9, $t8, 0xfff
/* B727E4 800FB644 00196300 */  sll   $t4, $t9, 0xc
/* B727E8 800FB648 256F0004 */  addiu $t7, $t3, 4
/* B727EC 800FB64C 000FC040 */  sll   $t8, $t7, 1
/* B727F0 800FB650 000D7600 */  sll   $t6, $t5, 0x18
/* B727F4 800FB654 01CC6825 */  or    $t5, $t6, $t4
/* B727F8 800FB658 33190FFF */  andi  $t9, $t8, 0xfff
/* B727FC 800FB65C 01B97025 */  or    $t6, $t5, $t9
/* B72800 800FB660 AC4E0004 */  sw    $t6, 4($v0)
/* B72804 800FB664 8C820004 */  lw    $v0, 4($a0)
/* B72808 800FB668 30AD0004 */  andi  $t5, $a1, 4
/* B7280C 800FB66C 000DCD80 */  sll   $t9, $t5, 0x16
/* B72810 800FB670 244C0008 */  addiu $t4, $v0, 8
/* B72814 800FB674 AC8C0004 */  sw    $t4, 4($a0)
/* B72818 800FB678 000560C3 */  sra   $t4, $a1, 3
/* B7281C 800FB67C 000C5A00 */  sll   $t3, $t4, 8
/* B72820 800FB680 316FFFFF */  andi  $t7, $t3, 0xffff
/* B72824 800FB684 032FC025 */  or    $t8, $t9, $t7
/* B72828 800FB688 3C09E100 */  lui   $t1, 0xe100
/* B7282C 800FB68C AC490000 */  sw    $t1, ($v0)
/* B72830 800FB690 AC580004 */  sw    $t8, 4($v0)
/* B72834 800FB694 8C820004 */  lw    $v0, 4($a0)
/* B72838 800FB698 3C0E0200 */  lui   $t6, (0x02000200 >> 16) # lui $t6, 0x200
/* B7283C 800FB69C 35CE0200 */  ori   $t6, (0x02000200 & 0xFFFF) # ori $t6, $t6, 0x200
/* B72840 800FB6A0 244D0008 */  addiu $t5, $v0, 8
/* B72844 800FB6A4 AC8D0004 */  sw    $t5, 4($a0)
/* B72848 800FB6A8 3C0AF100 */  lui   $t2, 0xf100
/* B7284C 800FB6AC AC4A0000 */  sw    $t2, ($v0)
/* B72850 800FB6B0 1000002D */  b     .L800FB768
/* B72854 800FB6B4 AC4E0004 */   sw    $t6, 4($v0)
/* B72858 800FB6B8 8C820004 */  lw    $v0, 4($a0)
.L800FB6BC:
/* B7285C 800FB6BC 948B0008 */  lhu   $t3, 8($a0)
/* B72860 800FB6C0 948E000A */  lhu   $t6, 0xa($a0)
/* B72864 800FB6C4 244C0008 */  addiu $t4, $v0, 8
/* B72868 800FB6C8 25790024 */  addiu $t9, $t3, 0x24
/* B7286C 800FB6CC 332F0FFF */  andi  $t7, $t9, 0xfff
/* B72870 800FB6D0 AC8C0004 */  sw    $t4, 4($a0)
/* B72874 800FB6D4 000FC300 */  sll   $t8, $t7, 0xc
/* B72878 800FB6D8 25CC0024 */  addiu $t4, $t6, 0x24
/* B7287C 800FB6DC 318B0FFF */  andi  $t3, $t4, 0xfff
/* B72880 800FB6E0 03086825 */  or    $t5, $t8, $t0
/* B72884 800FB6E4 01ABC825 */  or    $t9, $t5, $t3
/* B72888 800FB6E8 0005C040 */  sll   $t8, $a1, 1
/* B7288C 800FB6EC AC590000 */  sw    $t9, ($v0)
/* B72890 800FB6F0 948D0008 */  lhu   $t5, 8($a0)
/* B72894 800FB6F4 330E0007 */  andi  $t6, $t8, 7
/* B72898 800FB6F8 000E6600 */  sll   $t4, $t6, 0x18
/* B7289C 800FB6FC 948E000A */  lhu   $t6, 0xa($a0)
/* B728A0 800FB700 25AB0004 */  addiu $t3, $t5, 4
/* B728A4 800FB704 31790FFF */  andi  $t9, $t3, 0xfff
/* B728A8 800FB708 00197B00 */  sll   $t7, $t9, 0xc
/* B728AC 800FB70C 25CD0004 */  addiu $t5, $t6, 4
/* B728B0 800FB710 31AB0FFF */  andi  $t3, $t5, 0xfff
/* B728B4 800FB714 018FC025 */  or    $t8, $t4, $t7
/* B728B8 800FB718 030BC825 */  or    $t9, $t8, $t3
/* B728BC 800FB71C AC590004 */  sw    $t9, 4($v0)
/* B728C0 800FB720 8C820004 */  lw    $v0, 4($a0)
/* B728C4 800FB724 30B80004 */  andi  $t8, $a1, 4
/* B728C8 800FB728 00185D80 */  sll   $t3, $t8, 0x16
/* B728CC 800FB72C 244C0008 */  addiu $t4, $v0, 8
/* B728D0 800FB730 AC8C0004 */  sw    $t4, 4($a0)
/* B728D4 800FB734 000560C3 */  sra   $t4, $a1, 3
/* B728D8 800FB738 000C7A00 */  sll   $t7, $t4, 8
/* B728DC 800FB73C 31EEFFFF */  andi  $t6, $t7, 0xffff
/* B728E0 800FB740 016E6825 */  or    $t5, $t3, $t6
/* B728E4 800FB744 AC4D0004 */  sw    $t5, 4($v0)
/* B728E8 800FB748 AC490000 */  sw    $t1, ($v0)
/* B728EC 800FB74C 8C820004 */  lw    $v0, 4($a0)
/* B728F0 800FB750 3C190400 */  lui   $t9, (0x04000400 >> 16) # lui $t9, 0x400
/* B728F4 800FB754 37390400 */  ori   $t9, (0x04000400 & 0xFFFF) # ori $t9, $t9, 0x400
/* B728F8 800FB758 24580008 */  addiu $t8, $v0, 8
/* B728FC 800FB75C AC980004 */  sw    $t8, 4($a0)
/* B72900 800FB760 AC590004 */  sw    $t9, 4($v0)
/* B72904 800FB764 AC4A0000 */  sw    $t2, ($v0)
.L800FB768:
/* B72908 800FB768 8C820004 */  lw    $v0, 4($a0)
/* B7290C 800FB76C 244C0008 */  addiu $t4, $v0, 8
/* B72910 800FB770 AC8C0004 */  sw    $t4, 4($a0)
/* B72914 800FB774 AC470000 */  sw    $a3, ($v0)
/* B72918 800FB778 8C8F0010 */  lw    $t7, 0x10($a0)
/* B7291C 800FB77C AC4F0004 */  sw    $t7, 4($v0)
/* B72920 800FB780 9083000F */  lbu   $v1, 0xf($a0)
/* B72924 800FB784 000578C3 */  sra   $t7, $a1, 3
.L800FB788:
/* B72928 800FB788 00A03825 */  move  $a3, $a1
/* B7292C 800FB78C 00073840 */  sll   $a3, $a3, 1
/* B72930 800FB790 000F5A00 */  sll   $t3, $t7, 8
/* B72934 800FB794 30B80004 */  andi  $t8, $a1, 4
/* B72938 800FB798 0018CD80 */  sll   $t9, $t8, 0x16
/* B7293C 800FB79C 316EFFFF */  andi  $t6, $t3, 0xffff
/* B72940 800FB7A0 30E70007 */  andi  $a3, $a3, 7
/* B72944 800FB7A4 306D0040 */  andi  $t5, $v1, 0x40
/* B72948 800FB7A8 3C08E400 */  lui   $t0, 0xe400
/* B7294C 800FB7AC 3C09E100 */  lui   $t1, 0xe100
/* B72950 800FB7B0 3C0AF100 */  lui   $t2, 0xf100
/* B72954 800FB7B4 00073E00 */  sll   $a3, $a3, 0x18
/* B72958 800FB7B8 11A00027 */  beqz  $t5, .L800FB858
/* B7295C 800FB7BC 032E3025 */   or    $a2, $t9, $t6
/* B72960 800FB7C0 8C820004 */  lw    $v0, 4($a0)
/* B72964 800FB7C4 948C0008 */  lhu   $t4, 8($a0)
/* B72968 800FB7C8 24580008 */  addiu $t8, $v0, 8
/* B7296C 800FB7CC AC980004 */  sw    $t8, 4($a0)
/* B72970 800FB7D0 9498000A */  lhu   $t8, 0xa($a0)
/* B72974 800FB7D4 258F0020 */  addiu $t7, $t4, 0x20
/* B72978 800FB7D8 000F5840 */  sll   $t3, $t7, 1
/* B7297C 800FB7DC 31790FFF */  andi  $t9, $t3, 0xfff
/* B72980 800FB7E0 270C0020 */  addiu $t4, $t8, 0x20
/* B72984 800FB7E4 000C7840 */  sll   $t7, $t4, 1
/* B72988 800FB7E8 00197300 */  sll   $t6, $t9, 0xc
/* B7298C 800FB7EC 01C86825 */  or    $t5, $t6, $t0
/* B72990 800FB7F0 31EB0FFF */  andi  $t3, $t7, 0xfff
/* B72994 800FB7F4 01ABC825 */  or    $t9, $t5, $t3
/* B72998 800FB7F8 AC590000 */  sw    $t9, ($v0)
/* B7299C 800FB7FC 948E0008 */  lhu   $t6, 8($a0)
/* B729A0 800FB800 948B000A */  lhu   $t3, 0xa($a0)
/* B729A4 800FB804 000EC040 */  sll   $t8, $t6, 1
/* B729A8 800FB808 330C0FFF */  andi  $t4, $t8, 0xfff
/* B729AC 800FB80C 000C7B00 */  sll   $t7, $t4, 0xc
/* B729B0 800FB810 000BC840 */  sll   $t9, $t3, 1
/* B729B4 800FB814 332E0FFF */  andi  $t6, $t9, 0xfff
/* B729B8 800FB818 00EF6825 */  or    $t5, $a3, $t7
/* B729BC 800FB81C 01AEC025 */  or    $t8, $t5, $t6
/* B729C0 800FB820 AC580004 */  sw    $t8, 4($v0)
/* B729C4 800FB824 8C820004 */  lw    $v0, 4($a0)
/* B729C8 800FB828 3C0B0200 */  lui   $t3, (0x02000200 >> 16) # lui $t3, 0x200
/* B729CC 800FB82C 356B0200 */  ori   $t3, (0x02000200 & 0xFFFF) # ori $t3, $t3, 0x200
/* B729D0 800FB830 244C0008 */  addiu $t4, $v0, 8
/* B729D4 800FB834 AC8C0004 */  sw    $t4, 4($a0)
/* B729D8 800FB838 AC460004 */  sw    $a2, 4($v0)
/* B729DC 800FB83C AC490000 */  sw    $t1, ($v0)
/* B729E0 800FB840 8C820004 */  lw    $v0, 4($a0)
/* B729E4 800FB844 244F0008 */  addiu $t7, $v0, 8
/* B729E8 800FB848 AC8F0004 */  sw    $t7, 4($a0)
/* B729EC 800FB84C AC4B0004 */  sw    $t3, 4($v0)
/* B729F0 800FB850 10000022 */  b     .L800FB8DC
/* B729F4 800FB854 AC4A0000 */   sw    $t2, ($v0)
.L800FB858:
/* B729F8 800FB858 8C820004 */  lw    $v0, 4($a0)
/* B729FC 800FB85C 948D0008 */  lhu   $t5, 8($a0)
/* B72A00 800FB860 948B000A */  lhu   $t3, 0xa($a0)
/* B72A04 800FB864 24590008 */  addiu $t9, $v0, 8
/* B72A08 800FB868 25AE0020 */  addiu $t6, $t5, 0x20
/* B72A0C 800FB86C 31D80FFF */  andi  $t8, $t6, 0xfff
/* B72A10 800FB870 AC990004 */  sw    $t9, 4($a0)
/* B72A14 800FB874 00186300 */  sll   $t4, $t8, 0xc
/* B72A18 800FB878 25790020 */  addiu $t9, $t3, 0x20
/* B72A1C 800FB87C 332D0FFF */  andi  $t5, $t9, 0xfff
/* B72A20 800FB880 01887825 */  or    $t7, $t4, $t0
/* B72A24 800FB884 01ED7025 */  or    $t6, $t7, $t5
/* B72A28 800FB888 AC4E0000 */  sw    $t6, ($v0)
/* B72A2C 800FB88C 94980008 */  lhu   $t8, 8($a0)
/* B72A30 800FB890 948F000A */  lhu   $t7, 0xa($a0)
/* B72A34 800FB894 330C0FFF */  andi  $t4, $t8, 0xfff
/* B72A38 800FB898 000C5B00 */  sll   $t3, $t4, 0xc
/* B72A3C 800FB89C 00EBC825 */  or    $t9, $a3, $t3
/* B72A40 800FB8A0 31ED0FFF */  andi  $t5, $t7, 0xfff
/* B72A44 800FB8A4 032D7025 */  or    $t6, $t9, $t5
/* B72A48 800FB8A8 AC4E0004 */  sw    $t6, 4($v0)
/* B72A4C 800FB8AC 8C820004 */  lw    $v0, 4($a0)
/* B72A50 800FB8B0 3C0B0400 */  lui   $t3, (0x04000400 >> 16) # lui $t3, 0x400
/* B72A54 800FB8B4 356B0400 */  ori   $t3, (0x04000400 & 0xFFFF) # ori $t3, $t3, 0x400
/* B72A58 800FB8B8 24580008 */  addiu $t8, $v0, 8
/* B72A5C 800FB8BC AC980004 */  sw    $t8, 4($a0)
/* B72A60 800FB8C0 AC460004 */  sw    $a2, 4($v0)
/* B72A64 800FB8C4 AC490000 */  sw    $t1, ($v0)
/* B72A68 800FB8C8 8C820004 */  lw    $v0, 4($a0)
/* B72A6C 800FB8CC 244C0008 */  addiu $t4, $v0, 8
/* B72A70 800FB8D0 AC8C0004 */  sw    $t4, 4($a0)
/* B72A74 800FB8D4 AC4B0004 */  sw    $t3, 4($v0)
/* B72A78 800FB8D8 AC4A0000 */  sw    $t2, ($v0)
.L800FB8DC:
/* B72A7C 800FB8DC 948F0008 */  lhu   $t7, 8($a0)
/* B72A80 800FB8E0 25F90020 */  addiu $t9, $t7, 0x20
/* B72A84 800FB8E4 03E00008 */  jr    $ra
/* B72A88 800FB8E8 A4990008 */   sh    $t9, 8($a0)

glabel func_800FB8EC
/* B72A8C 800FB8EC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B72A90 800FB8F0 AFA50024 */  sw    $a1, 0x24($sp)
/* B72A94 800FB8F4 30A500FF */  andi  $a1, $a1, 0xff
/* B72A98 800FB8F8 AFB00018 */  sw    $s0, 0x18($sp)
/* B72A9C 800FB8FC 24010020 */  li    $at, 32
/* B72AA0 800FB900 00808025 */  move  $s0, $a0
/* B72AA4 800FB904 AFBF001C */  sw    $ra, 0x1c($sp)
/* B72AA8 800FB908 30A600FF */  andi  $a2, $a1, 0xff
/* B72AAC 800FB90C 14A10005 */  bne   $a1, $at, .L800FB924
/* B72AB0 800FB910 00A01025 */   move  $v0, $a1
/* B72AB4 800FB914 948E0008 */  lhu   $t6, 8($a0)
/* B72AB8 800FB918 25CF0020 */  addiu $t7, $t6, 0x20
/* B72ABC 800FB91C 1000005E */  b     .L800FBA98
/* B72AC0 800FB920 A48F0008 */   sh    $t7, 8($a0)
.L800FB924:
/* B72AC4 800FB924 28410021 */  slti  $at, $v0, 0x21
/* B72AC8 800FB928 14200007 */  bnez  $at, .L800FB948
/* B72ACC 800FB92C 2841007F */   slti  $at, $v0, 0x7f
/* B72AD0 800FB930 50200006 */  beql  $at, $zero, .L800FB94C
/* B72AD4 800FB934 284100A0 */   slti  $at, $v0, 0xa0
/* B72AD8 800FB938 0C03ED16 */  jal   func_800FB458
/* B72ADC 800FB93C 02002025 */   move  $a0, $s0
/* B72AE0 800FB940 10000056 */  b     .L800FBA9C
/* B72AE4 800FB944 8FBF001C */   lw    $ra, 0x1c($sp)
.L800FB948:
/* B72AE8 800FB948 284100A0 */  slti  $at, $v0, 0xa0
.L800FB94C:
/* B72AEC 800FB94C 14200012 */  bnez  $at, .L800FB998
/* B72AF0 800FB950 284100E0 */   slti  $at, $v0, 0xe0
/* B72AF4 800FB954 10200010 */  beqz  $at, .L800FB998
/* B72AF8 800FB958 02002025 */   move  $a0, $s0
/* B72AFC 800FB95C 9218000F */  lbu   $t8, 0xf($s0)
/* B72B00 800FB960 284100C0 */  slti  $at, $v0, 0xc0
/* B72B04 800FB964 33190001 */  andi  $t9, $t8, 1
/* B72B08 800FB968 13200007 */  beqz  $t9, .L800FB988
/* B72B0C 800FB96C 00000000 */   nop   
/* B72B10 800FB970 10200004 */  beqz  $at, .L800FB984
/* B72B14 800FB974 24460020 */   addiu $a2, $v0, 0x20
/* B72B18 800FB978 2446FFE0 */  addiu $a2, $v0, -0x20
/* B72B1C 800FB97C 10000002 */  b     .L800FB988
/* B72B20 800FB980 30C600FF */   andi  $a2, $a2, 0xff
.L800FB984:
/* B72B24 800FB984 30C600FF */  andi  $a2, $a2, 0xff
.L800FB988:
/* B72B28 800FB988 0C03ED16 */  jal   func_800FB458
/* B72B2C 800FB98C 30C500FF */   andi  $a1, $a2, 0xff
/* B72B30 800FB990 10000042 */  b     .L800FBA9C
/* B72B34 800FB994 8FBF001C */   lw    $ra, 0x1c($sp)
.L800FB998:
/* B72B38 800FB998 2841000B */  slti  $at, $v0, 0xb
/* B72B3C 800FB99C 14200010 */  bnez  $at, .L800FB9E0
/* B72B40 800FB9A0 2841000E */   slti  $at, $v0, 0xe
/* B72B44 800FB9A4 14200009 */  bnez  $at, .L800FB9CC
/* B72B48 800FB9A8 2448FF76 */   addiu $t0, $v0, -0x8a
/* B72B4C 800FB9AC 2D010005 */  sltiu $at, $t0, 5
/* B72B50 800FB9B0 10200039 */  beqz  $at, .L800FBA98
/* B72B54 800FB9B4 00084080 */   sll   $t0, $t0, 2
/* B72B58 800FB9B8 3C018015 */  lui   $at, %hi(jtbl_8014A6F0)
/* B72B5C 800FB9BC 00280821 */  addu  $at, $at, $t0
/* B72B60 800FB9C0 8C28A6F0 */  lw    $t0, %lo(jtbl_8014A6F0)($at)
/* B72B64 800FB9C4 01000008 */  jr    $t0
/* B72B68 800FB9C8 00000000 */   nop   
.L800FB9CC:
/* B72B6C 800FB9CC 2401000D */  li    $at, 13
/* B72B70 800FB9D0 5041000D */  beql  $v0, $at, .L800FBA08
/* B72B74 800FB9D4 960B000C */   lhu   $t3, 0xc($s0)
/* B72B78 800FB9D8 10000030 */  b     .L800FBA9C
/* B72B7C 800FB9DC 8FBF001C */   lw    $ra, 0x1c($sp)
.L800FB9E0:
/* B72B80 800FB9E0 1040002D */  beqz  $v0, .L800FBA98
/* B72B84 800FB9E4 24010009 */   li    $at, 9
/* B72B88 800FB9E8 10410009 */  beq   $v0, $at, .L800FBA10
/* B72B8C 800FB9EC 2401000A */   li    $at, 10
/* B72B90 800FB9F0 5441002A */  bnel  $v0, $at, .L800FBA9C
/* B72B94 800FB9F4 8FBF001C */   lw    $ra, 0x1c($sp)
/* B72B98 800FB9F8 9609000A */  lhu   $t1, 0xa($s0)
/* B72B9C 800FB9FC 252A0020 */  addiu $t2, $t1, 0x20
/* B72BA0 800FBA00 A60A000A */  sh    $t2, 0xa($s0)
/* B72BA4 800FBA04 960B000C */  lhu   $t3, 0xc($s0)
.L800FBA08:
/* B72BA8 800FBA08 10000023 */  b     .L800FBA98
/* B72BAC 800FBA0C A60B0008 */   sh    $t3, 8($s0)
.L800FBA10:
/* B72BB0 800FBA10 02002025 */  move  $a0, $s0
.L800FBA14:
/* B72BB4 800FBA14 0C03ED16 */  jal   func_800FB458
/* B72BB8 800FBA18 24050020 */   li    $a1, 32
/* B72BBC 800FBA1C 960C0008 */  lhu   $t4, 8($s0)
/* B72BC0 800FBA20 960D000C */  lhu   $t5, 0xc($s0)
/* B72BC4 800FBA24 018D7023 */  subu  $t6, $t4, $t5
/* B72BC8 800FBA28 05C10004 */  bgez  $t6, .L800FBA3C
/* B72BCC 800FBA2C 31CF00FF */   andi  $t7, $t6, 0xff
/* B72BD0 800FBA30 11E00002 */  beqz  $t7, .L800FBA3C
/* B72BD4 800FBA34 00000000 */   nop   
/* B72BD8 800FBA38 25EFFF00 */  addiu $t7, $t7, -0x100
.L800FBA3C:
/* B72BDC 800FBA3C 55E0FFF5 */  bnezl $t7, .L800FBA14
/* B72BE0 800FBA40 02002025 */   move  $a0, $s0
/* B72BE4 800FBA44 10000015 */  b     .L800FBA9C
/* B72BE8 800FBA48 8FBF001C */   lw    $ra, 0x1c($sp)
/* B72BEC 800FBA4C 9218000F */  lbu   $t8, 0xf($s0)
/* B72BF0 800FBA50 37190001 */  ori   $t9, $t8, 1
/* B72BF4 800FBA54 10000010 */  b     .L800FBA98
/* B72BF8 800FBA58 A219000F */   sb    $t9, 0xf($s0)
/* B72BFC 800FBA5C 9208000F */  lbu   $t0, 0xf($s0)
/* B72C00 800FBA60 3109FFFE */  andi  $t1, $t0, 0xfffe
/* B72C04 800FBA64 1000000C */  b     .L800FBA98
/* B72C08 800FBA68 A209000F */   sb    $t1, 0xf($s0)
/* B72C0C 800FBA6C 920A000F */  lbu   $t2, 0xf($s0)
/* B72C10 800FBA70 354C0002 */  ori   $t4, $t2, 2
/* B72C14 800FBA74 A20C000F */  sb    $t4, 0xf($s0)
/* B72C18 800FBA78 358D0008 */  ori   $t5, $t4, 8
/* B72C1C 800FBA7C 10000006 */  b     .L800FBA98
/* B72C20 800FBA80 A20D000F */   sb    $t5, 0xf($s0)
/* B72C24 800FBA84 920E000F */  lbu   $t6, 0xf($s0)
/* B72C28 800FBA88 31D8FFFD */  andi  $t8, $t6, 0xfffd
/* B72C2C 800FBA8C A218000F */  sb    $t8, 0xf($s0)
/* B72C30 800FBA90 37190008 */  ori   $t9, $t8, 8
/* B72C34 800FBA94 A219000F */  sb    $t9, 0xf($s0)
.L800FBA98:
/* B72C38 800FBA98 8FBF001C */  lw    $ra, 0x1c($sp)
.L800FBA9C:
/* B72C3C 800FBA9C 8FB00018 */  lw    $s0, 0x18($sp)
/* B72C40 800FBAA0 27BD0020 */  addiu $sp, $sp, 0x20
/* B72C44 800FBAA4 03E00008 */  jr    $ra
/* B72C48 800FBAA8 00000000 */   nop   

glabel func_800FBAAC
/* B72C4C 800FBAAC 00C70019 */  multu $a2, $a3
/* B72C50 800FBAB0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B72C54 800FBAB4 AFB1001C */  sw    $s1, 0x1c($sp)
/* B72C58 800FBAB8 AFB20020 */  sw    $s2, 0x20($sp)
/* B72C5C 800FBABC AFB00018 */  sw    $s0, 0x18($sp)
/* B72C60 800FBAC0 00809025 */  move  $s2, $a0
/* B72C64 800FBAC4 AFBF0024 */  sw    $ra, 0x24($sp)
/* B72C68 800FBAC8 00A08025 */  move  $s0, $a1
/* B72C6C 800FBACC 00008812 */  mflo  $s1
/* B72C70 800FBAD0 12200007 */  beqz  $s1, .L800FBAF0
/* B72C74 800FBAD4 02402025 */   move  $a0, $s2
.L800FBAD8:
/* B72C78 800FBAD8 92050000 */  lbu   $a1, ($s0)
/* B72C7C 800FBADC 0C03EE3B */  jal   func_800FB8EC
/* B72C80 800FBAE0 26100001 */   addiu $s0, $s0, 1
/* B72C84 800FBAE4 2631FFFF */  addiu $s1, $s1, -1
/* B72C88 800FBAE8 5620FFFB */  bnezl $s1, .L800FBAD8
/* B72C8C 800FBAEC 02402025 */   move  $a0, $s2
.L800FBAF0:
/* B72C90 800FBAF0 8FBF0024 */  lw    $ra, 0x24($sp)
/* B72C94 800FBAF4 8FB00018 */  lw    $s0, 0x18($sp)
/* B72C98 800FBAF8 8FB1001C */  lw    $s1, 0x1c($sp)
/* B72C9C 800FBAFC 8FB20020 */  lw    $s2, 0x20($sp)
/* B72CA0 800FBB00 03E00008 */  jr    $ra
/* B72CA4 800FBB04 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800FBB08
/* B72CA8 800FBB08 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B72CAC 800FBB0C AFBF0024 */  sw    $ra, 0x24($sp)
/* B72CB0 800FBB10 AFB20020 */  sw    $s2, 0x20($sp)
/* B72CB4 800FBB14 AFB1001C */  sw    $s1, 0x1c($sp)
/* B72CB8 800FBB18 AFB00018 */  sw    $s0, 0x18($sp)
/* B72CBC 800FBB1C 90B00000 */  lbu   $s0, ($a1)
/* B72CC0 800FBB20 00A08825 */  move  $s1, $a1
/* B72CC4 800FBB24 00809025 */  move  $s2, $a0
/* B72CC8 800FBB28 12000007 */  beqz  $s0, .L800FBB48
/* B72CCC 800FBB2C 02402025 */   move  $a0, $s2
.L800FBB30:
/* B72CD0 800FBB30 320500FF */  andi  $a1, $s0, 0xff
/* B72CD4 800FBB34 0C03EE3B */  jal   func_800FB8EC
/* B72CD8 800FBB38 26310001 */   addiu $s1, $s1, 1
/* B72CDC 800FBB3C 92300000 */  lbu   $s0, ($s1)
/* B72CE0 800FBB40 5600FFFB */  bnezl $s0, .L800FBB30
/* B72CE4 800FBB44 02402025 */   move  $a0, $s2
.L800FBB48:
/* B72CE8 800FBB48 8FBF0024 */  lw    $ra, 0x24($sp)
/* B72CEC 800FBB4C 8FB00018 */  lw    $s0, 0x18($sp)
/* B72CF0 800FBB50 8FB1001C */  lw    $s1, 0x1c($sp)
/* B72CF4 800FBB54 8FB20020 */  lw    $s2, 0x20($sp)
/* B72CF8 800FBB58 03E00008 */  jr    $ra
/* B72CFC 800FBB5C 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800FBB60
/* B72D00 800FBB60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B72D04 800FBB64 AFBF0014 */  sw    $ra, 0x14($sp)
/* B72D08 800FBB68 00C03825 */  move  $a3, $a2
/* B72D0C 800FBB6C AFA40018 */  sw    $a0, 0x18($sp)
/* B72D10 800FBB70 0C03EEAB */  jal   func_800FBAAC
/* B72D14 800FBB74 24060001 */   li    $a2, 1
/* B72D18 800FBB78 8FBF0014 */  lw    $ra, 0x14($sp)
/* B72D1C 800FBB7C 8FA20018 */  lw    $v0, 0x18($sp)
/* B72D20 800FBB80 27BD0018 */  addiu $sp, $sp, 0x18
/* B72D24 800FBB84 03E00008 */  jr    $ra
/* B72D28 800FBB88 00000000 */   nop   

glabel func_800FBB8C
/* B72D2C 800FBB8C 908E000F */  lbu   $t6, 0xf($a0)
/* B72D30 800FBB90 3C188010 */  lui   $t8, %hi(func_800FBB60) # $t8, 0x8010
/* B72D34 800FBB94 2718BB60 */  addiu $t8, %lo(func_800FBB60) # addiu $t8, $t8, -0x44a0
/* B72D38 800FBB98 31D9FF7F */  andi  $t9, $t6, 0xff7f
/* B72D3C 800FBB9C 3329FFFE */  andi  $t1, $t9, 0xfffe
/* B72D40 800FBBA0 A099000F */  sb    $t9, 0xf($a0)
/* B72D44 800FBBA4 312BFFFD */  andi  $t3, $t1, 0xfffd
/* B72D48 800FBBA8 A089000F */  sb    $t1, 0xf($a0)
/* B72D4C 800FBBAC 356C0004 */  ori   $t4, $t3, 4
/* B72D50 800FBBB0 A08B000F */  sb    $t3, 0xf($a0)
/* B72D54 800FBBB4 318D00FF */  andi  $t5, $t4, 0xff
/* B72D58 800FBBB8 A08C000F */  sb    $t4, 0xf($a0)
/* B72D5C 800FBBBC 35AE0008 */  ori   $t6, $t5, 8
/* B72D60 800FBBC0 AC980000 */  sw    $t8, ($a0)
/* B72D64 800FBBC4 AC800004 */  sw    $zero, 4($a0)
/* B72D68 800FBBC8 A4800008 */  sh    $zero, 8($a0)
/* B72D6C 800FBBCC A480000A */  sh    $zero, 0xa($a0)
/* B72D70 800FBBD0 A480000C */  sh    $zero, 0xc($a0)
/* B72D74 800FBBD4 A080000E */  sb    $zero, 0xe($a0)
/* B72D78 800FBBD8 AC800010 */  sw    $zero, 0x10($a0)
/* B72D7C 800FBBDC A08E000F */  sb    $t6, 0xf($a0)
/* B72D80 800FBBE0 3C0F8017 */  lui   $t7, %hi(D_801755F0) # $t7, 0x8017
/* B72D84 800FBBE4 91EF55F0 */  lbu   $t7, %lo(D_801755F0)($t7)
/* B72D88 800FBBE8 35C80040 */  ori   $t0, $t6, 0x40
/* B72D8C 800FBBEC 31F80040 */  andi  $t8, $t7, 0x40
/* B72D90 800FBBF0 53000004 */  beql  $t8, $zero, .L800FBC04
/* B72D94 800FBBF4 9089000F */   lbu   $t1, 0xf($a0)
/* B72D98 800FBBF8 03E00008 */  jr    $ra
/* B72D9C 800FBBFC A088000F */   sb    $t0, 0xf($a0)
/* B72DA0 800FBC00 9089000F */  lbu   $t1, 0xf($a0)
.L800FBC04:
/* B72DA4 800FBC04 312AFFBF */  andi  $t2, $t1, 0xffbf
/* B72DA8 800FBC08 A08A000F */  sb    $t2, 0xf($a0)
/* B72DAC 800FBC0C 03E00008 */  jr    $ra
/* B72DB0 800FBC10 00000000 */   nop   

glabel func_800FBC14
/* B72DB4 800FBC14 03E00008 */  jr    $ra
/* B72DB8 800FBC18 AFA40000 */   sw    $a0, ($sp)

glabel func_800FBC1C
/* B72DBC 800FBC1C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B72DC0 800FBC20 AFBF0014 */  sw    $ra, 0x14($sp)
/* B72DC4 800FBC24 9082000F */  lbu   $v0, 0xf($a0)
/* B72DC8 800FBC28 304E0080 */  andi  $t6, $v0, 0x80
/* B72DCC 800FBC2C 15C00006 */  bnez  $t6, .L800FBC48
/* B72DD0 800FBC30 344F0080 */   ori   $t7, $v0, 0x80
/* B72DD4 800FBC34 A08F000F */  sb    $t7, 0xf($a0)
/* B72DD8 800FBC38 0C03EBD8 */  jal   func_800FAF60
/* B72DDC 800FBC3C AC850004 */   sw    $a1, 4($a0)
/* B72DE0 800FBC40 10000005 */  b     .L800FBC58
/* B72DE4 800FBC44 8FBF0014 */   lw    $ra, 0x14($sp)
.L800FBC48:
/* B72DE8 800FBC48 3C048015 */  lui   $a0, %hi(D_8014A6D0) # $a0, 0x8015
/* B72DEC 800FBC4C 0C00084C */  jal   osSyncPrintf
/* B72DF0 800FBC50 2484A6D0 */   addiu $a0, %lo(D_8014A6D0) # addiu $a0, $a0, -0x5930
/* B72DF4 800FBC54 8FBF0014 */  lw    $ra, 0x14($sp)
.L800FBC58:
/* B72DF8 800FBC58 27BD0018 */  addiu $sp, $sp, 0x18
/* B72DFC 800FBC5C 03E00008 */  jr    $ra
/* B72E00 800FBC60 00000000 */   nop   

glabel func_800FBC64
/* B72E04 800FBC64 908E000F */  lbu   $t6, 0xf($a0)
/* B72E08 800FBC68 8C830004 */  lw    $v1, 4($a0)
/* B72E0C 800FBC6C 3C19E700 */  lui   $t9, 0xe700
/* B72E10 800FBC70 31CFFF7F */  andi  $t7, $t6, 0xff7f
/* B72E14 800FBC74 24780008 */  addiu $t8, $v1, 8
/* B72E18 800FBC78 A08F000F */  sb    $t7, 0xf($a0)
/* B72E1C 800FBC7C AC980004 */  sw    $t8, 4($a0)
/* B72E20 800FBC80 AC600004 */  sw    $zero, 4($v1)
/* B72E24 800FBC84 AC790000 */  sw    $t9, ($v1)
/* B72E28 800FBC88 8C820004 */  lw    $v0, 4($a0)
/* B72E2C 800FBC8C 03E00008 */  jr    $ra
/* B72E30 800FBC90 AC800004 */   sw    $zero, 4($a0)

glabel func_800FBC94
/* B72E34 800FBC94 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B72E38 800FBC98 AFBF0014 */  sw    $ra, 0x14($sp)
/* B72E3C 800FBC9C 0C03FCD0 */  jal   func_800FF340
/* B72E40 800FBCA0 00000000 */   nop   
/* B72E44 800FBCA4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B72E48 800FBCA8 27BD0018 */  addiu $sp, $sp, 0x18
/* B72E4C 800FBCAC 03E00008 */  jr    $ra
/* B72E50 800FBCB0 00000000 */   nop   

glabel SetTextString
/* B72E54 800FBCB4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B72E58 800FBCB8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B72E5C 800FBCBC AFA60028 */  sw    $a2, 0x28($sp)
/* B72E60 800FBCC0 AFA50024 */  sw    $a1, 0x24($sp)
/* B72E64 800FBCC4 AFA7002C */  sw    $a3, 0x2c($sp)
/* B72E68 800FBCC8 0C03EF25 */  jal   func_800FBC94
/* B72E6C 800FBCCC 27A60028 */   addiu $a2, $sp, 0x28
/* B72E70 800FBCD0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B72E74 800FBCD4 27BD0020 */  addiu $sp, $sp, 0x20
/* B72E78 800FBCD8 03E00008 */  jr    $ra
/* B72E7C 800FBCDC 00000000 */   nop   
