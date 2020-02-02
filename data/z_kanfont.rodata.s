.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8013C190
    .asciz "../z_kanfont.c"
    .balign 4

glabel D_8013C1A0
    .asciz "../z_kanfont.c"
    .balign 4

glabel D_8013C1B0
    .asciz "../z_kanfont.c"
    .balign 4

glabel D_8013C1C0
    .asciz "msg_data=%x,  msg_data0=%x   jj=%x\n"
    .balign 4

glabel D_8013C1E4
    .asciz "\xA3\xC5\xA3\xD2\xA3\xD2\xA3\xCF\xA3\xD2\xA1\xAA\xA1\xAA  \xA5\xA8\xA5\xE9\xA1\xBC\xA1\xAA\xA1\xAA\xA1\xAA  error\xA8\xA1\xA8\xA1\xA8\xA1\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\n"
    # EUC-JP: ＥＲＲＯＲ！！ エラー！！！ error───！！！！ | ERROR! ! error! ! ! error───! ! ! !|
    .balign 4

glabel D_8013C218
    .asciz "nes_mes_buf[%d]=%d\n"   
    .balign 4

glabel D_8013C22C
    .asciz "../z_kanfont.c"
    .balign 4
