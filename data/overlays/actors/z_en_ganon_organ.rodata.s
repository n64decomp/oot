.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A2EF70
    .asciz "ORGAN MOVE 1\n"
    .balign 4

glabel D_80A2EF80
    .asciz "ORGAN MOVE 2\n"
    .balign 4

glabel D_80A2EF90
    .asciz "../z_en_ganon_organ.c"
    .balign 4

glabel D_80A2EFA8
    .asciz "ORGAN DRAW  1\n"
    .balign 4

glabel D_80A2EFB8
    .asciz "../z_en_ganon_organ.c"
    .balign 4

glabel D_80A2EFD0
    .asciz "ORGAN DRAW  2\n"
    .balign 4

glabel D_80A2EFE0
 .word 0x2E2E2F7A, 0x5F656E5F, 0x67616E6F, 0x6E5F6F72, 0x67616E2E, 0x63000000, 0x00000000, 0x00000000


