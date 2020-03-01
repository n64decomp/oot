.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Obj_Elevator_InitVars
 .word 0x012B0100, 0x00000000, 0x011B0000, 0x00000174
.word ObjElevator_Init
.word ObjElevator_Destroy
.word ObjElevator_Update
.word ObjElevator_Draw
glabel D_80B92E50
 .word 0xB0F407D0, 0xB0F80258, 0x30FC07D0
glabel D_80B92E5C
 .word 0x3DCCCCCD, 0x3D4CCCCD, 0x00000000, 0x00000000, 0x00000000

