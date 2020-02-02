.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B92E70

    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B92EB0

    .asciz "../z_obj_elevator.c"
    .balign 4

glabel D_80B92EC4

    .asciz "(Dungeon Elevator)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B92EEC
 .word 0x3DCCCCCD
glabel D_80B92EF0
 .word 0x3A83126F, 0x00000000, 0x00000000, 0x00000000


