glabel func_80095068
/* B0C208 80095068 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0C20C 8009506C AFBF0014 */  sw    $ra, 0x14($sp)
/* B0C210 80095070 AFA5001C */  sw    $a1, 0x1c($sp)
/* B0C214 80095074 24050030 */  li    $a1, 48
/* B0C218 80095078 AFA60020 */  sw    $a2, 0x20($sp)
/* B0C21C 8009507C 0C031A73 */  jal   Graph_Alloc
/* B0C220 80095080 AFA70024 */   sw    $a3, 0x24($sp)
/* B0C224 80095084 8FA60020 */  lw    $a2, 0x20($sp)
/* B0C228 80095088 8FA70024 */  lw    $a3, 0x24($sp)
/* B0C22C 8009508C 8FA30034 */  lw    $v1, 0x34($sp)
/* B0C230 80095090 30C607FF */  andi  $a2, $a2, 0x7ff
/* B0C234 80095094 30CE0FFF */  andi  $t6, $a2, 0xfff
/* B0C238 80095098 8FA40038 */  lw    $a0, 0x38($sp)
/* B0C23C 8009509C 000E7B00 */  sll   $t7, $t6, 0xc
/* B0C240 800950A0 3C09F200 */  lui   $t1, 0xf200
/* B0C244 800950A4 30E707FF */  andi  $a3, $a3, 0x7ff
/* B0C248 800950A8 30F90FFF */  andi  $t9, $a3, 0xfff
/* B0C24C 800950AC 01E9C025 */  or    $t8, $t7, $t1
/* B0C250 800950B0 3C08E800 */  lui   $t0, 0xe800
/* B0C254 800950B4 03195025 */  or    $t2, $t8, $t9
/* B0C258 800950B8 AC480000 */  sw    $t0, ($v0)
/* B0C25C 800950BC AC400004 */  sw    $zero, 4($v0)
/* B0C260 800950C0 AC4A0008 */  sw    $t2, 8($v0)
/* B0C264 800950C4 8FAE0028 */  lw    $t6, 0x28($sp)
/* B0C268 800950C8 8FAB001C */  lw    $t3, 0x1c($sp)
/* B0C26C 800950CC 306307FF */  andi  $v1, $v1, 0x7ff
/* B0C270 800950D0 25CFFFFF */  addiu $t7, $t6, -1
/* B0C274 800950D4 8FAE002C */  lw    $t6, 0x2c($sp)
/* B0C278 800950D8 000FC080 */  sll   $t8, $t7, 2
/* B0C27C 800950DC 00D8C821 */  addu  $t9, $a2, $t8
/* B0C280 800950E0 316C0007 */  andi  $t4, $t3, 7
/* B0C284 800950E4 332A0FFF */  andi  $t2, $t9, 0xfff
/* B0C288 800950E8 000A5B00 */  sll   $t3, $t2, 0xc
/* B0C28C 800950EC 000C6E00 */  sll   $t5, $t4, 0x18
/* B0C290 800950F0 25CFFFFF */  addiu $t7, $t6, -1
/* B0C294 800950F4 000FC080 */  sll   $t8, $t7, 2
/* B0C298 800950F8 01AB6025 */  or    $t4, $t5, $t3
/* B0C29C 800950FC 00F8C821 */  addu  $t9, $a3, $t8
/* B0C2A0 80095100 306B0FFF */  andi  $t3, $v1, 0xfff
/* B0C2A4 80095104 332A0FFF */  andi  $t2, $t9, 0xfff
/* B0C2A8 80095108 000B7300 */  sll   $t6, $t3, 0xc
/* B0C2AC 8009510C 308407FF */  andi  $a0, $a0, 0x7ff
/* B0C2B0 80095110 30980FFF */  andi  $t8, $a0, 0xfff
/* B0C2B4 80095114 01C97825 */  or    $t7, $t6, $t1
/* B0C2B8 80095118 018A6825 */  or    $t5, $t4, $t2
/* B0C2BC 8009511C 01F8C825 */  or    $t9, $t7, $t8
/* B0C2C0 80095120 AC4D000C */  sw    $t5, 0xc($v0)
/* B0C2C4 80095124 AC400014 */  sw    $zero, 0x14($v0)
/* B0C2C8 80095128 AC480010 */  sw    $t0, 0x10($v0)
/* B0C2CC 8009512C AC590018 */  sw    $t9, 0x18($v0)
/* B0C2D0 80095130 8FAB003C */  lw    $t3, 0x3c($sp)
/* B0C2D4 80095134 8FAC0030 */  lw    $t4, 0x30($sp)
/* B0C2D8 80095138 256EFFFF */  addiu $t6, $t3, -1
/* B0C2DC 8009513C 8FAB0040 */  lw    $t3, 0x40($sp)
/* B0C2E0 80095140 000E7880 */  sll   $t7, $t6, 2
/* B0C2E4 80095144 006FC021 */  addu  $t8, $v1, $t7
/* B0C2E8 80095148 318A0007 */  andi  $t2, $t4, 7
/* B0C2EC 8009514C 33190FFF */  andi  $t9, $t8, 0xfff
/* B0C2F0 80095150 256EFFFF */  addiu $t6, $t3, -1
/* B0C2F4 80095154 000E7880 */  sll   $t7, $t6, 2
/* B0C2F8 80095158 00196300 */  sll   $t4, $t9, 0xc
/* B0C2FC 8009515C 000A6E00 */  sll   $t5, $t2, 0x18
/* B0C300 80095160 01AC5025 */  or    $t2, $t5, $t4
/* B0C304 80095164 008FC021 */  addu  $t8, $a0, $t7
/* B0C308 80095168 33190FFF */  andi  $t9, $t8, 0xfff
/* B0C30C 8009516C 01596825 */  or    $t5, $t2, $t9
/* B0C310 80095170 3C0CFB00 */  lui   $t4, 0xfb00
/* B0C314 80095174 AC4D001C */  sw    $t5, 0x1c($v0)
/* B0C318 80095178 AC4C0020 */  sw    $t4, 0x20($v0)
/* B0C31C 8009517C 8FB80048 */  lw    $t8, 0x48($sp)
/* B0C320 80095180 8FAE0044 */  lw    $t6, 0x44($sp)
/* B0C324 80095184 8FAC004C */  lw    $t4, 0x4c($sp)
/* B0C328 80095188 330A00FF */  andi  $t2, $t8, 0xff
/* B0C32C 8009518C 000ACC00 */  sll   $t9, $t2, 0x10
/* B0C330 80095190 8FAA0050 */  lw    $t2, 0x50($sp)
/* B0C334 80095194 000E7E00 */  sll   $t7, $t6, 0x18
/* B0C338 80095198 01F96825 */  or    $t5, $t7, $t9
/* B0C33C 8009519C 318B00FF */  andi  $t3, $t4, 0xff
/* B0C340 800951A0 000B7200 */  sll   $t6, $t3, 8
/* B0C344 800951A4 01AEC025 */  or    $t8, $t5, $t6
/* B0C348 800951A8 314F00FF */  andi  $t7, $t2, 0xff
/* B0C34C 800951AC 030FC825 */  or    $t9, $t8, $t7
/* B0C350 800951B0 3C0CDF00 */  lui   $t4, 0xdf00
/* B0C354 800951B4 AC590024 */  sw    $t9, 0x24($v0)
/* B0C358 800951B8 AC4C0028 */  sw    $t4, 0x28($v0)
/* B0C35C 800951BC AC40002C */  sw    $zero, 0x2c($v0)
/* B0C360 800951C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0C364 800951C4 27BD0018 */  addiu $sp, $sp, 0x18
/* B0C368 800951C8 03E00008 */  jr    $ra
/* B0C36C 800951CC 00000000 */   nop   

