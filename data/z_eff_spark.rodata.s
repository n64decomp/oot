.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_801354E0
    .asciz "spark():u_div,v_div \x30\xA4\xC7\xA4\xCF\xBA\xA4\xA4\xEB\xA1\xA3\n"
    # EUC-JP: 0では困る。| 0 is not good.
    .balign 4

glabel D_80135504
    .asciz "table_size\xA5\xAA\xA1\xBC\xA5\xD0\xA1\xBC\n"
    # EUC-JP: オーバー | over-
    .balign 4

glabel D_80135518
    .asciz "EffectSparkInfo_proc():Spark Pointer is NULL\n"
    .balign 4

glabel D_80135548
    .asciz "../z_eff_spark.c"
    .balign 4

glabel D_8013555C
    .asciz "EffectSparkInfo_disp():\xA5\xE1\xA5\xE2\xA5\xEA\xA1\xBC\xB3\xCE\xCA\xDD\xBC\xBA\xC7\xD4 graph_malloc\n"
    # EUC-JP: メモリー確保失敗 | Memory allocation failure
    .balign 4

glabel D_80135594
    .asciz "../z_eff_spark.c"
    .balign 4

glabel D_801355A8
    .float 0.008

glabel D_801355AC
    .float 65534

glabel D_801355B0
    .float 15000

glabel D_801355B4
    .float 30000
