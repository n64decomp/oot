.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80135C60
    .asciz "event_chk_inf[0]"
    .balign 4
    .asciz "event_chk_inf[1]"
    .balign 4
    .asciz "event_chk_inf[2]"
    .balign 4
    .asciz "event_chk_inf[3]"
    .balign 4
    .asciz "event_chk_inf[4]"
    .balign 4
    .asciz "event_chk_inf[5]"
    .balign 4
    .asciz "event_chk_inf[6]"
    .balign 4
    .asciz "event_chk_inf[7]"
    .balign 4
    .asciz "event_chk_inf[8]"
    .balign 4
    .asciz "event_chk_inf[9]"
    .balign 4
    .asciz "event_chk_inf[10]"
    .balign 4
    .asciz "event_chk_inf[11]"
    .balign 4
    .asciz "event_chk_inf[12]"
    .balign 4
    .asciz "event_chk_inf[13]"
    .balign 4
    .asciz "item_get_inf[0]"
    .balign 4
    .asciz "item_get_inf[1]"
    .balign 4
    .asciz "item_get_inf[2]"
    .balign 4
    .asciz "item_get_inf[3]"
    .balign 4
    .asciz "inf_table[0]"
    .balign 4
    .asciz "inf_table[1]"
    .balign 4
    .asciz "inf_table[2]"
    .balign 4
    .asciz "inf_table[3]"
    .balign 4
    .asciz "inf_table[4]"
    .balign 4
    .asciz "inf_table[5]"
    .balign 4
    .asciz "inf_table[6]"
    .balign 4
    .asciz "inf_table[7]"
    .balign 4
    .asciz "inf_table[8]"
    .balign 4
    .asciz "inf_table[9]"
    .balign 4
    .asciz "inf_table[10]"
    .balign 4
    .asciz "inf_table[11]"
    .balign 4
    .asciz "inf_table[12]"
    .balign 4
    .asciz "inf_table[13]"
    .balign 4
    .asciz "inf_table[14]"
    .balign 4
    .asciz "inf_table[15]"
    .balign 4
    .asciz "inf_table[16]"
    .balign 4
    .asciz "inf_table[17]"
    .balign 4
    .asciz "inf_table[18]"
    .balign 4
    .asciz "inf_table[19]"
    .balign 4
    .asciz "inf_table[20]"
    .balign 4
    .asciz "inf_table[21]"
    .balign 4
    .asciz "inf_table[22]"
    .balign 4
    .asciz "inf_table[23]"
    .balign 4
    .asciz "inf_table[24]"
    .balign 4
    .asciz "inf_table[25]"
    .balign 4
    .asciz "inf_table[26]"
    .balign 4
    .asciz "inf_table[27]"
    .balign 4
    .asciz "inf_table[28]"
    .balign 4
    .asciz "inf_table[29]"
    .balign 4
    .asciz "event_inf[0]"
    .balign 4
    .asciz "event_inf[1]"
    .balign 4
    .asciz "event_inf[2]"
    .balign 4
    .asciz "event_inf[3]"
    .balign 4

glabel D_80135FD8
    .asciz "../flg_set.c"
    .balign 4

glabel D_80135FE8
    .asciz "1"
    .balign 4

glabel D_80135FEC
    .asciz "0"
    .balign 4

glabel D_80135FF0
    .asciz " "  
    .balign 4

glabel D_80135FF4    
    .asciz "../flg_set.c"
    .balign 4
