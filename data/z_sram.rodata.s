.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80140850
    .incbin "baserom.z64", 0xBB79F0, 0x14

glabel D_80140864
    .incbin "baserom.z64", 0xBB7A04, 0x14

glabel D_80140878
    .incbin "baserom.z64", 0xBB7A18, 0x8

glabel D_80140880
    .incbin "baserom.z64", 0xBB7A20, 0x24

glabel D_801408A4
    .incbin "baserom.z64", 0xBB7A44, 0x10

glabel D_801408B4
    .incbin "baserom.z64", 0xBB7A54, 0x4

glabel D_801408B8
    .incbin "baserom.z64", 0xBB7A58, 0x8

glabel D_801408C0
    .incbin "baserom.z64", 0xBB7A60, 0x48

glabel D_80140908
    .incbin "baserom.z64", 0xBB7AA8, 0x8

glabel D_80140910
    .incbin "baserom.z64", 0xBB7AB0, 0x48

glabel D_80140958
    .incbin "baserom.z64", 0xBB7AF8, 0x4

glabel D_8014095C
    .incbin "baserom.z64", 0xBB7AFC, 0x8

glabel D_80140964
    .incbin "baserom.z64", 0xBB7B04, 0x48

glabel D_801409AC
    .incbin "baserom.z64", 0xBB7B4C, 0x8

glabel D_801409B4
    .incbin "baserom.z64", 0xBB7B54, 0x48

glabel D_801409FC
    .incbin "baserom.z64", 0xBB7B9C, 0x4

glabel D_80140A00
    .incbin "baserom.z64", 0xBB7BA0, 0x20

glabel D_80140A20
    .incbin "baserom.z64", 0xBB7BC0, 0x24

glabel D_80140A44
    .incbin "baserom.z64", 0xBB7BE4, 0x44

glabel D_80140A88
    .incbin "baserom.z64", 0xBB7C28, 0x2C

glabel D_80140AB4
    .incbin "baserom.z64", 0xBB7C54, 0x1C

glabel D_80140AD0
    .incbin "baserom.z64", 0xBB7C70, 0x3C

glabel D_80140B0C
    .incbin "baserom.z64", 0xBB7CAC, 0x30

glabel D_80140B3C
    .incbin "baserom.z64", 0xBB7CDC, 0x20

glabel D_80140B5C
    .incbin "baserom.z64", 0xBB7CFC, 0x18

glabel D_80140B74
    .incbin "baserom.z64", 0xBB7D14, 0x44

glabel D_80140BB8
    .incbin "baserom.z64", 0xBB7D58, 0x4

glabel D_80140BBC
    .incbin "baserom.z64", 0xBB7D5C, 0x4

glabel D_80140BC0
    .incbin "baserom.z64", 0xBB7D60, 0x14

glabel D_80140BD4
    .incbin "baserom.z64", 0xBB7D74, 0x18

glabel D_80140BEC
    .incbin "baserom.z64", 0xBB7D8C, 0x28

glabel D_80140C14
    .incbin "baserom.z64", 0xBB7DB4, 0x24

glabel D_80140C38
    .incbin "baserom.z64", 0xBB7DD8, 0x20

glabel D_80140C58
    .incbin "baserom.z64", 0xBB7DF8, 0x3C

glabel D_80140C94
    .incbin "baserom.z64", 0xBB7E34, 0x14

glabel D_80140CA8
    .incbin "baserom.z64", 0xBB7E48, 0x1C

glabel D_80140CC4
    .incbin "baserom.z64", 0xBB7E64, 0x18

glabel D_80140CDC
    .incbin "baserom.z64", 0xBB7E7C, 0x14

glabel D_80140CF0
    .incbin "baserom.z64", 0xBB7E90, 0x18

glabel D_80140D08
    .incbin "baserom.z64", 0xBB7EA8, 0x50

glabel D_80140D58
    .incbin "baserom.z64", 0xBB7EF8, 0x4

glabel D_80140D5C
    .incbin "baserom.z64", 0xBB7EFC, 0x4

glabel D_80140D60
    .incbin "baserom.z64", 0xBB7F00, 0x14

glabel D_80140D74
    .incbin "baserom.z64", 0xBB7F14, 0xC

glabel D_80140D80
    .incbin "baserom.z64", 0xBB7F20, 0xC

glabel D_80140D8C
    .incbin "baserom.z64", 0xBB7F2C, 0x10

glabel D_80140D9C
    .incbin "baserom.z64", 0xBB7F3C, 0x1C

glabel D_80140DB8
    .incbin "baserom.z64", 0xBB7F58, 0x38

glabel D_80140DF0
    .incbin "baserom.z64", 0xBB7F90, 0x10

glabel D_80140E00
    .incbin "baserom.z64", 0xBB7FA0, 0x18

glabel D_80140E18
    .incbin "baserom.z64", 0xBB7FB8, 0x14

glabel D_80140E2C
    .incbin "baserom.z64", 0xBB7FCC, 0x10

glabel D_80140E3C
    .incbin "baserom.z64", 0xBB7FDC, 0x24

glabel D_80140E60
    .incbin "baserom.z64", 0xBB8000, 0x10

glabel D_80140E70
    .incbin "baserom.z64", 0xBB8010, 0x18

glabel D_80140E88
    .incbin "baserom.z64", 0xBB8028, 0x10

glabel D_80140E98
    .incbin "baserom.z64", 0xBB8038, 0x2C

glabel D_80140EC4
    .incbin "baserom.z64", 0xBB8064, 0x1C

glabel D_80140EE0
    .incbin "baserom.z64", 0xBB8080, 0x1C

glabel D_80140EFC
    .incbin "baserom.z64", 0xBB809C, 0x2C

glabel D_80140F28
    .incbin "baserom.z64", 0xBB80C8, 0x8

glabel D_80140F30
    .incbin "baserom.z64", 0xBB80D0, 0x1C

glabel D_80140F4C
    .incbin "baserom.z64", 0xBB80EC, 0x1C

glabel D_80140F68
    .incbin "baserom.z64", 0xBB8108, 0x1C

glabel D_80140F84
    .incbin "baserom.z64", 0xBB8124, 0x4

glabel D_80140F88
    .incbin "baserom.z64", 0xBB8128, 0xC

glabel D_80140F94
    .incbin "baserom.z64", 0xBB8134, 0x18

glabel D_80140FAC
    .incbin "baserom.z64", 0xBB814C, 0xC

glabel jtbl_80140FB8
    .incbin "baserom.z64", 0xBB8158, 0x78
