.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_801413A0
    .asciz "../z_vimode.c"
    .balign 4

glabel D_801413B0
    .asciz "osvimodep = %08x\n"
    .balign 4

glabel D_801413C4
    .asciz "../z_vimode.c"
    .balign 4

glabel D_801413D4
    .asciz "osvimodep->comRegs.ctrl = %08x\n"
    .balign 4

glabel D_801413F4
    .asciz "../z_vimode.c"
    .balign 4

glabel D_80141404
    .asciz "osvimodep->comRegs.width = %08x\n"
    .balign 4

glabel D_80141428
    .asciz "../z_vimode.c"
    .balign 4

glabel D_80141438
    .asciz "osvimodep->comRegs.burst = %08x\n"
    .balign 4

glabel D_8014145C
    .asciz "../z_vimode.c"
    .balign 4

glabel D_8014146C
    .asciz "osvimodep->comRegs.vSync = %08x\n"
    .balign 4

glabel D_80141490
    .asciz "../z_vimode.c"
    .balign 4

glabel D_801414A0
    .asciz "osvimodep->comRegs.hSync = %08x\n"
    .balign 4

glabel D_801414C4
    .asciz "../z_vimode.c"
    .balign 4

glabel D_801414D4
    .asciz "osvimodep->comRegs.leap = %08x\n"
    .balign 4

glabel D_801414F4
    .asciz "../z_vimode.c"
    .balign 4

glabel D_80141504
    .asciz "osvimodep->comRegs.hStart = %08x\n"
    .balign 4

glabel D_80141528
    .asciz "../z_vimode.c"
    .balign 4

glabel D_80141538
    .asciz "osvimodep->comRegs.xScale = %08x\n"
    .balign 4

glabel D_8014155C
    .asciz "../z_vimode.c"
    .balign 4

glabel D_8014156C
    .asciz "osvimodep->fldRegs[0].vStart = %08x\n"
    .balign 4

glabel D_80141594
    .asciz "../z_vimode.c"
    .balign 4

glabel D_801415A4
    .asciz "osvimodep->fldRegs[0].vBurst = %08x\n"
    .balign 4

glabel D_801415CC
    .asciz "../z_vimode.c"
    .balign 4

glabel D_801415DC
    .asciz "osvimodep->fldRegs[0].origin = %08x\n"
    .balign 4

glabel D_80141604
    .asciz "../z_vimode.c"
    .balign 4

glabel D_80141614
    .asciz "osvimodep->fldRegs[0].yScale = %08x\n"
    .balign 4

glabel D_8014163C
    .asciz "../z_vimode.c"
    .balign 4

glabel D_8014164C
    .asciz "osvimodep->fldRegs[0].vIntr = %08x\n"
    .balign 4

glabel D_80141670
    .asciz "../z_vimode.c"
    .balign 4

glabel D_80141680
    .asciz "osvimodep->fldRegs[1].vStart = %08x\n"
    .balign 4

glabel D_801416A8
    .asciz "../z_vimode.c"
    .balign 4

glabel D_801416B8
    .asciz "osvimodep->fldRegs[1].vBurst = %08x\n"
    .balign 4

glabel D_801416E0
    .asciz "../z_vimode.c"
    .balign 4

glabel D_801416F0
    .asciz "osvimodep->fldRegs[1].origin = %08x\n"
    .balign 4

glabel D_80141718
    .asciz "../z_vimode.c"
    .balign 4

glabel D_80141728
    .asciz "osvimodep->fldRegs[1].yScale = %08x\n"
    .balign 4

glabel D_80141750
    .asciz "../z_vimode.c"
    .balign 4

glabel D_80141760
    .asciz "osvimodep->fldRegs[1].vIntr = %08x\n"
    .balign 4

glabel D_80141784
    .asciz "osViModePalLan1\n"
    .balign 4

glabel D_80141798
    .asciz "osViModeFpalLan1\n"
    .balign 4

glabel D_801417AC
    .asciz "Custom\n"
    .balign 4
