.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80141910
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141920
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_80141948
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141958
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141968
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141978
    .asciz "vr_box->vr_box_staticSegment[1] != NULL"
    .balign 4

glabel D_801419A0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801419B0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801419C0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801419D0
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_801419F8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141A08
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141A18
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141A28
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141A38
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_80141A60
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141A70
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141A80
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141A90
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141AA0
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_80141AC8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141AD8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141AE8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141AF8
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_80141B20
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141B30
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141B40
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141B50
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_80141B78
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141B88
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141B98
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141BA8
    .asciz "vr_box->vr_box_staticSegment[1] != NULL"
    .balign 4

glabel D_80141BD0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141BE0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141BF0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141C00
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_80141C28
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141C38
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141C48
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141C58
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141C68
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_80141C90
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141CA0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141CB0
    .asciz "\xA3\xD3\xA3\xC9\xA3\xDA\xA3\xC5 = %d\n"
    # EUC-JP: ＳＩＺＥ = %d 
    .balign 4

glabel D_80141CC0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141CD0
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_80141CF8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141D08
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141D18
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141D28
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_80141D50
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141D60
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141D70
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141D80
    .asciz "vr_box->vr_box_staticSegment[1] != NULL"
    .balign 4

glabel D_80141DA8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141DB8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141DC8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141DD8
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_80141E00
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141E10
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141E20
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141E30
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141E40
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_80141E68
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141E78
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141E88
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141E98
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_80141EC0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141ED0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141EE0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141EF0
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_80141F18
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141F28
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141F38
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141F48
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_80141F70
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141F80
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141F90
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141FA0
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_80141FC8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141FD8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80141FE8
    .asciz "\xA3\xD3\xA3\xC9\xA3\xDA\xA3\xC5 = %d\n"
    # EUC-JP: ＳＩＺＥ = %d 
    .balign 4

glabel D_80141FF8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142008
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_80142030
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142040
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142050
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142060
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_80142088
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142098
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801420A8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801420B8
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_801420E0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801420F0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142100
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142110
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_80142138
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142148
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142158
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142168
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_80142190
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801421A0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801421B0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801421C0
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_801421E8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801421F8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142208
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142218
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_80142240
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_80142250
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_80142260
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_80142270
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_80142298
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_801422A8
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_801422B8
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_801422C8
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_801422F0
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_80142300
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_80142310
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_80142320
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_80142348
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_80142358
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_80142368
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_80142378
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_801423A0
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_801423B0
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_801423C0
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_801423D0
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_801423F8
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_80142408
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_80142418
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142428
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_80142450
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_80142460
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_80142470
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_80142480
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_801424A8
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_801424B8
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_801424C8
    .asciz "../z_vr_box.c" 
    .balign 4

glabel D_801424D8
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_80142500
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142510
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142520
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142530
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_80142558
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142568
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142578
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142588
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_801425B0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801425C0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801425D0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801425E0
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_80142608
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142618
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142628
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142638
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_80142660
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142670
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142680
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142690
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_801426B8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801426C8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801426D8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801426E8
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_80142710
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142720
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142730
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142740
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_80142768
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142778
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142788
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142798
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_801427C0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801427D0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801427E0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801427F0
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_80142818
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142828
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142838
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142848
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_80142870
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142880
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142890
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801428A0
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_801428C8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801428D8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801428E8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801428F8
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_80142920
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142930
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142940
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142950
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_80142978
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142988
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142998
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801429A8
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_801429D0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801429E0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_801429F0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142A00
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_80142A28
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142A38
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142A48
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142A58
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_80142A80
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142A90
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142AA0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142AB0
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_80142AD8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142AE8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142AF8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142B08
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_80142B30
    .asciz "../z_vr_box.c"
    .balign 4
glabel D_80142B40
    .asciz "../z_vr_box.c"
    .balign 4
glabel D_80142B50
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142B60
    .asciz "vr_box->vr_box_staticSegment[0] != NULL"
    .balign 4

glabel D_80142B88
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142B98
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142BA8
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142BB8
    .asciz "vr_box->vr_box_staticSegment[2] != NULL"
    .balign 4

glabel D_80142BE0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142BF0
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142C00
    .incbin "baserom.z64", 0xBB9DA0, 0x6C
    # EUC-JP

glabel D_80142C6C
    .asciz "\x1b[32m"
    .balign 4

glabel D_80142C74
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142C84
    .asciz "vr_box->dpList != NULL"
    .balign 4

glabel D_80142C9C
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142CAC
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142CBC
    .asciz "vr_box->roomVtx != NULL"
    .balign 4

glabel D_80142CD4
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142CE4
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142CF4
    .asciz "vr_box->dpList != NULL"
    .balign 4

glabel D_80142D0C
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142D1C
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142D2C
    .asciz "vr_box->roomVtx != NULL"
    .balign 4

glabel D_80142D44
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142D54
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142D64
    .asciz "vr_box->roomVtx != NULL"
    .balign 4

glabel D_80142D7C
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142D8C
    .asciz "\x1b[m"
    .balign 4

glabel jtbl_80142D90
    .word L800ADC10
    .word L800ADD10
    .word L800ADC10
    .word L800ADD10
    .word L800ADE10
    .word L800ADE10

glabel jtbl_80142DA8
    .word L800AE320
    .word L800AE320
    .word L800AE420
    .word L800AE420
    .word L800AE520
    .word L800AE520

glabel jtbl_80142DC0
    .word L800AF25C
    .word L800AF658
    .word L800AF750
    .word L800AF8B8
    .word L800AF9B8
    .word L800B0E3C
    .word L800AFB3C
    .word L800B0E3C
    .word L800AFC2C
    .word L800AFD1C
    .word L800AFE1C
    .word L800AFF14
    .word L800B0E3C
    .word L800B0004
    .word L800B00F4
    .word L800B01E4
    .word L800B02D4
    .word L800B0E3C
    .word L800B03CC
    .word L800B04C4
    .word L800B0E3C
    .word L800B05BC
    .word L800B06B4
    .word L800B07AC
    .word L800B0E3C
    .word L800B08A4
    .word L800B0994
    .word L800B0A84
    .word L800B0E3C
    .word L800B0E3C
    .word L800B0E3C
    .word L800B0B74
    .word L800B0C64
    .word L800B0D54
    .word L800B0E3C
    .word L800B0E3C
    .word L800B0E3C
    .word L800B0E3C
    .word L800B0E3C

glabel D_80142E5C
    .float 0.8

glabel D_80142E60
    .float 0.8

glabel D_80142E64
    .float 0.8

glabel D_80142E68
    .float 0.8

glabel D_80142E6C
    .float 0.8

glabel D_80142E70
    .float 0.8

glabel D_80142E74
    .float 0.8

glabel D_80142E78
    .float 0.8
