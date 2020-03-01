.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8097D440
 .word 0x0600CE80, 0x0600D280, 0x0600D680
glabel D_8097D44C
 .word func_8097CFDC
.word func_8097CFFC
.word func_8097D01C
.word func_8097D058
.word func_8097D088
.word func_8097D0D0
.word func_8097D130
glabel D_8097D468
 .word func_8097D290
.word func_8097D29C
glabel Demo_Go_InitVars
 .word 0x00CA0400, 0x00000010, 0x00C90000, 0x000001A0
.word DemoGo_Init
.word DemoGo_Destroy
.word DemoGo_Update
.word DemoGo_Draw

