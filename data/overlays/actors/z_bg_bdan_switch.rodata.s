.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8086E0F0
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_8086E130
    .asciz "../z_bg_bdan_switch.c"
    .balign 4

glabel D_8086E148
    .asciz "不正な ARG_DATA(arg_data 0x%04x)(%s %d)\n"
    .balign 4

glabel D_8086E174
    .asciz "../z_bg_bdan_switch.c"
    .balign 4

glabel D_8086E18C
    .asciz "(巨大魚ダンジョン 専用スイッチ)(arg_data 0x%04x)\n"
    .balign 4

glabel jtbl_8086E1C0
.word L8086D140
.word L8086D140
.word L8086D140
.word L8086D1BC
.word L8086D1BC
glabel D_8086E1D4
 .word 0x410D5556
glabel D_8086E1D8
 .word 0x3C449BA6
glabel D_8086E1DC
 .word 0x3BA3D70B
glabel D_8086E1E0
 .word 0x3DCCCCCD
glabel D_8086E1E4
 .word 0x40E55555
glabel D_8086E1E8
 .word 0x3BF5C290
glabel D_8086E1EC
 .word 0x3BA3D70B
glabel D_8086E1F0
 .word 0x3DCCCCCD
glabel D_8086E1F4
 .word 0x3F99999A
glabel D_8086E1F8
 .word 0x3D4CCCCD
glabel D_8086E1FC
 .word 0x3DCCCCCD
glabel jtbl_8086E200
.word L8086D308
.word L8086D308
.word L8086D308
.word L8086D328
.word L8086D328
glabel jtbl_8086E214
.word L8086D380
.word L8086D3A8
.word L8086D380
.word L8086D3D0
.word L8086D3D0
glabel jtbl_8086E228
.word L8086D480
.word L8086D480
.word L8086D480
.word L8086D498
.word L8086D498
glabel D_8086E23C
 .word 0x3E4CCCCD
glabel D_8086E240
 .word 0x3DCCCCCD
glabel D_8086E244
 .word 0x3DCCCCCD
glabel D_8086E248
 .word 0x3E4CCCCD
glabel D_8086E24C
 .word 0x3E4CCCCD
glabel D_8086E250
 .word 0x3F19999A
glabel D_8086E254
 .word 0x3E4CCCCD
glabel D_8086E258
 .word 0x3DCCCCCD
glabel D_8086E25C
 .word 0x3F19999A
glabel D_8086E260
 .word 0x3E4CCCCD
glabel D_8086E264
 .word 0x3DCCCCCD
glabel D_8086E268
 .word 0x3E99999A
glabel D_8086E26C
 .word 0x3E99999A
glabel jtbl_8086E270
.word L8086E054
.word L8086DFFC
.word L8086DFFC
.word L8086E014
.word L8086E014
.word 0x00000000, 0x00000000, 0x00000000


