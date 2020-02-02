.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80ABEBF0
 .word 0x0A0A0000
glabel D_80ABEBF4
    .asciz "[33m☆☆☆☆☆ オカリナあらし効果ビカビカビカ〜 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80ABEC38
 .word 0x0A0A0000
glabel D_80ABEC3C
    .asciz "\nthis->timer=[%d]"
    .balign 4

glabel D_80ABEC50
 .word 0x0A0A0AC6, 0xA6A4E820, 0xA4CEA4D3, 0xA4ED20BB, 0xD8C4EA0A, 0x0A0A0000
glabel D_80ABEC68
    .asciz "\n\n\nE_wether_flg=[%d]"
    .balign 4

glabel D_80ABEC80
 .word 0x0A726169, 0x6E5F6576, 0x745F7472, 0x673D5B25, 0x645D0A0A, 0x00000000, 0x00000000, 0x00000000


