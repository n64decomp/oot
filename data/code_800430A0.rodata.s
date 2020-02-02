.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80138FD0
    .asciz "\x1b[31m"
    .balign 4

glabel D_80138FD8
    .asciz "BGCheckCollection_typicalActorPos():\xB0\xCC\xC3\xD6\xA4\xAC\xC2\xC5\xC5\xF6\xA4\xC7\xA4\xCF\xA4\xA2\xA4\xEA\xA4\xDE\xA4\xBB\xA4\xF3\xA1\xA3\npos (%f,%f,%f) file:%s line:%d\n"
    # EUC-JP: 位置が妥当ではありません。 | Position is not valid
    .balign 4

glabel D_80139038
    .asciz "\x1b[m"
    .balign 4

glabel D_8013903C
    .float 32760

glabel D_80139040
    .float -32760
