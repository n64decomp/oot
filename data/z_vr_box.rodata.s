.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80141900
    .incbin "baserom.z64", 0xBB8AA0, 0x10

glabel D_80141910
    .incbin "baserom.z64", 0xBB8AB0, 0x10

glabel D_80141920
    .incbin "baserom.z64", 0xBB8AC0, 0x28

glabel D_80141948
    .incbin "baserom.z64", 0xBB8AE8, 0x10

glabel D_80141958
    .incbin "baserom.z64", 0xBB8AF8, 0x10

glabel D_80141968
    .incbin "baserom.z64", 0xBB8B08, 0x10

glabel D_80141978
    .incbin "baserom.z64", 0xBB8B18, 0x28

glabel D_801419A0
    .incbin "baserom.z64", 0xBB8B40, 0x10

glabel D_801419B0
    .incbin "baserom.z64", 0xBB8B50, 0x10

glabel D_801419C0
    .incbin "baserom.z64", 0xBB8B60, 0x10

glabel D_801419D0
    .incbin "baserom.z64", 0xBB8B70, 0x28

glabel D_801419F8
    .incbin "baserom.z64", 0xBB8B98, 0x10

glabel D_80141A08
    .incbin "baserom.z64", 0xBB8BA8, 0x10

glabel D_80141A18
    .incbin "baserom.z64", 0xBB8BB8, 0x10

glabel D_80141A28
    .incbin "baserom.z64", 0xBB8BC8, 0x10

glabel D_80141A38
    .incbin "baserom.z64", 0xBB8BD8, 0x28

glabel D_80141A60
    .incbin "baserom.z64", 0xBB8C00, 0x10

glabel D_80141A70
    .incbin "baserom.z64", 0xBB8C10, 0x10

glabel D_80141A80
    .incbin "baserom.z64", 0xBB8C20, 0x10

glabel D_80141A90
    .incbin "baserom.z64", 0xBB8C30, 0x10

glabel D_80141AA0
    .incbin "baserom.z64", 0xBB8C40, 0x28

glabel D_80141AC8
    .incbin "baserom.z64", 0xBB8C68, 0x10

glabel D_80141AD8
    .incbin "baserom.z64", 0xBB8C78, 0x10

glabel D_80141AE8
    .incbin "baserom.z64", 0xBB8C88, 0x10

glabel D_80141AF8
    .incbin "baserom.z64", 0xBB8C98, 0x28

glabel D_80141B20
    .incbin "baserom.z64", 0xBB8CC0, 0x10

glabel D_80141B30
    .incbin "baserom.z64", 0xBB8CD0, 0x10

glabel D_80141B40
    .incbin "baserom.z64", 0xBB8CE0, 0x10

glabel D_80141B50
    .incbin "baserom.z64", 0xBB8CF0, 0x28

glabel D_80141B78
    .incbin "baserom.z64", 0xBB8D18, 0x10

glabel D_80141B88
    .incbin "baserom.z64", 0xBB8D28, 0x10

glabel D_80141B98
    .incbin "baserom.z64", 0xBB8D38, 0x10

glabel D_80141BA8
    .incbin "baserom.z64", 0xBB8D48, 0x28

glabel D_80141BD0
    .incbin "baserom.z64", 0xBB8D70, 0x10

glabel D_80141BE0
    .incbin "baserom.z64", 0xBB8D80, 0x10

glabel D_80141BF0
    .incbin "baserom.z64", 0xBB8D90, 0x10

glabel D_80141C00
    .incbin "baserom.z64", 0xBB8DA0, 0x28

glabel D_80141C28
    .incbin "baserom.z64", 0xBB8DC8, 0x10

glabel D_80141C38
    .incbin "baserom.z64", 0xBB8DD8, 0x10

glabel D_80141C48
    .incbin "baserom.z64", 0xBB8DE8, 0x10

glabel D_80141C58
    .incbin "baserom.z64", 0xBB8DF8, 0x10

glabel D_80141C68
    .incbin "baserom.z64", 0xBB8E08, 0x28

glabel D_80141C90
    .incbin "baserom.z64", 0xBB8E30, 0x10

glabel D_80141CA0
    .incbin "baserom.z64", 0xBB8E40, 0x10

glabel D_80141CB0
    .incbin "baserom.z64", 0xBB8E50, 0x10

glabel D_80141CC0
    .incbin "baserom.z64", 0xBB8E60, 0x10

glabel D_80141CD0
    .incbin "baserom.z64", 0xBB8E70, 0x28

glabel D_80141CF8
    .incbin "baserom.z64", 0xBB8E98, 0x10

glabel D_80141D08
    .incbin "baserom.z64", 0xBB8EA8, 0x10

glabel D_80141D18
    .incbin "baserom.z64", 0xBB8EB8, 0x10

glabel D_80141D28
    .incbin "baserom.z64", 0xBB8EC8, 0x28

glabel D_80141D50
    .incbin "baserom.z64", 0xBB8EF0, 0x10

glabel D_80141D60
    .incbin "baserom.z64", 0xBB8F00, 0x10

glabel D_80141D70
    .incbin "baserom.z64", 0xBB8F10, 0x10

glabel D_80141D80
    .incbin "baserom.z64", 0xBB8F20, 0x28

glabel D_80141DA8
    .incbin "baserom.z64", 0xBB8F48, 0x10

glabel D_80141DB8
    .incbin "baserom.z64", 0xBB8F58, 0x10

glabel D_80141DC8
    .incbin "baserom.z64", 0xBB8F68, 0x10

glabel D_80141DD8
    .incbin "baserom.z64", 0xBB8F78, 0x28

glabel D_80141E00
    .incbin "baserom.z64", 0xBB8FA0, 0x10

glabel D_80141E10
    .incbin "baserom.z64", 0xBB8FB0, 0x10

glabel D_80141E20
    .incbin "baserom.z64", 0xBB8FC0, 0x10

glabel D_80141E30
    .incbin "baserom.z64", 0xBB8FD0, 0x10

glabel D_80141E40
    .incbin "baserom.z64", 0xBB8FE0, 0x28

glabel D_80141E68
    .incbin "baserom.z64", 0xBB9008, 0x10

glabel D_80141E78
    .incbin "baserom.z64", 0xBB9018, 0x10

glabel D_80141E88
    .incbin "baserom.z64", 0xBB9028, 0x10

glabel D_80141E98
    .incbin "baserom.z64", 0xBB9038, 0x28

glabel D_80141EC0
    .incbin "baserom.z64", 0xBB9060, 0x10

glabel D_80141ED0
    .incbin "baserom.z64", 0xBB9070, 0x10

glabel D_80141EE0
    .incbin "baserom.z64", 0xBB9080, 0x10

glabel D_80141EF0
    .incbin "baserom.z64", 0xBB9090, 0x28

glabel D_80141F18
    .incbin "baserom.z64", 0xBB90B8, 0x10

glabel D_80141F28
    .incbin "baserom.z64", 0xBB90C8, 0x10

glabel D_80141F38
    .incbin "baserom.z64", 0xBB90D8, 0x10

glabel D_80141F48
    .incbin "baserom.z64", 0xBB90E8, 0x28

glabel D_80141F70
    .incbin "baserom.z64", 0xBB9110, 0x10

glabel D_80141F80
    .incbin "baserom.z64", 0xBB9120, 0x10

glabel D_80141F90
    .incbin "baserom.z64", 0xBB9130, 0x10

glabel D_80141FA0
    .incbin "baserom.z64", 0xBB9140, 0x28

glabel D_80141FC8
    .incbin "baserom.z64", 0xBB9168, 0x10

glabel D_80141FD8
    .incbin "baserom.z64", 0xBB9178, 0x10

glabel D_80141FE8
    .incbin "baserom.z64", 0xBB9188, 0x10

glabel D_80141FF8
    .incbin "baserom.z64", 0xBB9198, 0x10

glabel D_80142008
    .incbin "baserom.z64", 0xBB91A8, 0x28

glabel D_80142030
    .incbin "baserom.z64", 0xBB91D0, 0x10

glabel D_80142040
    .incbin "baserom.z64", 0xBB91E0, 0x10

glabel D_80142050
    .incbin "baserom.z64", 0xBB91F0, 0x10

glabel D_80142060
    .incbin "baserom.z64", 0xBB9200, 0x28

glabel D_80142088
    .incbin "baserom.z64", 0xBB9228, 0x10

glabel D_80142098
    .incbin "baserom.z64", 0xBB9238, 0x10

glabel D_801420A8
    .incbin "baserom.z64", 0xBB9248, 0x10

glabel D_801420B8
    .incbin "baserom.z64", 0xBB9258, 0x28

glabel D_801420E0
    .incbin "baserom.z64", 0xBB9280, 0x10

glabel D_801420F0
    .incbin "baserom.z64", 0xBB9290, 0x10

glabel D_80142100
    .incbin "baserom.z64", 0xBB92A0, 0x10

glabel D_80142110
    .incbin "baserom.z64", 0xBB92B0, 0x28

glabel D_80142138
    .incbin "baserom.z64", 0xBB92D8, 0x10

glabel D_80142148
    .incbin "baserom.z64", 0xBB92E8, 0x10

glabel D_80142158
    .incbin "baserom.z64", 0xBB92F8, 0x10

glabel D_80142168
    .incbin "baserom.z64", 0xBB9308, 0x28

glabel D_80142190
    .incbin "baserom.z64", 0xBB9330, 0x10

glabel D_801421A0
    .incbin "baserom.z64", 0xBB9340, 0x10

glabel D_801421B0
    .incbin "baserom.z64", 0xBB9350, 0x10

glabel D_801421C0
    .incbin "baserom.z64", 0xBB9360, 0x28

glabel D_801421E8
    .incbin "baserom.z64", 0xBB9388, 0x10

glabel D_801421F8
    .incbin "baserom.z64", 0xBB9398, 0x10

glabel D_80142208
    .incbin "baserom.z64", 0xBB93A8, 0x10

glabel D_80142218
    .incbin "baserom.z64", 0xBB93B8, 0x28

glabel D_80142240
    .incbin "baserom.z64", 0xBB93E0, 0x10

glabel D_80142250
    .incbin "baserom.z64", 0xBB93F0, 0x10

glabel D_80142260
    .incbin "baserom.z64", 0xBB9400, 0x10

glabel D_80142270
    .incbin "baserom.z64", 0xBB9410, 0x28

glabel D_80142298
    .incbin "baserom.z64", 0xBB9438, 0x10

glabel D_801422A8
    .incbin "baserom.z64", 0xBB9448, 0x10

glabel D_801422B8
    .incbin "baserom.z64", 0xBB9458, 0x10

glabel D_801422C8
    .incbin "baserom.z64", 0xBB9468, 0x28

glabel D_801422F0
    .incbin "baserom.z64", 0xBB9490, 0x10

glabel D_80142300
    .incbin "baserom.z64", 0xBB94A0, 0x10

glabel D_80142310
    .incbin "baserom.z64", 0xBB94B0, 0x10

glabel D_80142320
    .incbin "baserom.z64", 0xBB94C0, 0x28

glabel D_80142348
    .incbin "baserom.z64", 0xBB94E8, 0x10

glabel D_80142358
    .incbin "baserom.z64", 0xBB94F8, 0x10

glabel D_80142368
    .incbin "baserom.z64", 0xBB9508, 0x10

glabel D_80142378
    .incbin "baserom.z64", 0xBB9518, 0x28

glabel D_801423A0
    .incbin "baserom.z64", 0xBB9540, 0x10

glabel D_801423B0
    .incbin "baserom.z64", 0xBB9550, 0x10

glabel D_801423C0
    .incbin "baserom.z64", 0xBB9560, 0x10

glabel D_801423D0
    .incbin "baserom.z64", 0xBB9570, 0x28

glabel D_801423F8
    .incbin "baserom.z64", 0xBB9598, 0x10

glabel D_80142408
    .incbin "baserom.z64", 0xBB95A8, 0x10

glabel D_80142418
    .incbin "baserom.z64", 0xBB95B8, 0x3

glabel D_8014241B
    .incbin "baserom.z64", 0xBB95BB, 0xD

glabel D_80142428
    .incbin "baserom.z64", 0xBB95C8, 0x28

glabel D_80142450
    .incbin "baserom.z64", 0xBB95F0, 0x10

glabel D_80142460
    .incbin "baserom.z64", 0xBB9600, 0x10

glabel D_80142470
    .incbin "baserom.z64", 0xBB9610, 0x10

glabel D_80142480
    .incbin "baserom.z64", 0xBB9620, 0x28

glabel D_801424A8
    .incbin "baserom.z64", 0xBB9648, 0x10

glabel D_801424B8
    .incbin "baserom.z64", 0xBB9658, 0x10

glabel D_801424C8
    .incbin "baserom.z64", 0xBB9668, 0x10

glabel D_801424D8
    .incbin "baserom.z64", 0xBB9678, 0x28

glabel D_80142500
    .incbin "baserom.z64", 0xBB96A0, 0x10

glabel D_80142510
    .incbin "baserom.z64", 0xBB96B0, 0x10

glabel D_80142520
    .incbin "baserom.z64", 0xBB96C0, 0x10

glabel D_80142530
    .incbin "baserom.z64", 0xBB96D0, 0x28

glabel D_80142558
    .incbin "baserom.z64", 0xBB96F8, 0x10

glabel D_80142568
    .incbin "baserom.z64", 0xBB9708, 0x10

glabel D_80142578
    .incbin "baserom.z64", 0xBB9718, 0x10

glabel D_80142588
    .incbin "baserom.z64", 0xBB9728, 0x28

glabel D_801425B0
    .incbin "baserom.z64", 0xBB9750, 0x10

glabel D_801425C0
    .incbin "baserom.z64", 0xBB9760, 0x10

glabel D_801425D0
    .incbin "baserom.z64", 0xBB9770, 0x10

glabel D_801425E0
    .incbin "baserom.z64", 0xBB9780, 0x28

glabel D_80142608
    .incbin "baserom.z64", 0xBB97A8, 0x10

glabel D_80142618
    .incbin "baserom.z64", 0xBB97B8, 0x10

glabel D_80142628
    .incbin "baserom.z64", 0xBB97C8, 0x10

glabel D_80142638
    .incbin "baserom.z64", 0xBB97D8, 0x28

glabel D_80142660
    .incbin "baserom.z64", 0xBB9800, 0x10

glabel D_80142670
    .incbin "baserom.z64", 0xBB9810, 0x10

glabel D_80142680
    .incbin "baserom.z64", 0xBB9820, 0x10

glabel D_80142690
    .incbin "baserom.z64", 0xBB9830, 0x28

glabel D_801426B8
    .incbin "baserom.z64", 0xBB9858, 0x10

glabel D_801426C8
    .incbin "baserom.z64", 0xBB9868, 0x10

glabel D_801426D8
    .incbin "baserom.z64", 0xBB9878, 0x10

glabel D_801426E8
    .incbin "baserom.z64", 0xBB9888, 0x28

glabel D_80142710
    .incbin "baserom.z64", 0xBB98B0, 0x10

glabel D_80142720
    .incbin "baserom.z64", 0xBB98C0, 0x10

glabel D_80142730
    .incbin "baserom.z64", 0xBB98D0, 0x10

glabel D_80142740
    .incbin "baserom.z64", 0xBB98E0, 0x28

glabel D_80142768
    .incbin "baserom.z64", 0xBB9908, 0x10

glabel D_80142778
    .incbin "baserom.z64", 0xBB9918, 0x10

glabel D_80142788
    .incbin "baserom.z64", 0xBB9928, 0x10

glabel D_80142798
    .incbin "baserom.z64", 0xBB9938, 0x28

glabel D_801427C0
    .incbin "baserom.z64", 0xBB9960, 0x10

glabel D_801427D0
    .incbin "baserom.z64", 0xBB9970, 0x10

glabel D_801427E0
    .incbin "baserom.z64", 0xBB9980, 0x10

glabel D_801427F0
    .incbin "baserom.z64", 0xBB9990, 0x28

glabel D_80142818
    .incbin "baserom.z64", 0xBB99B8, 0x10

glabel D_80142828
    .incbin "baserom.z64", 0xBB99C8, 0x10

glabel D_80142838
    .incbin "baserom.z64", 0xBB99D8, 0x10

glabel D_80142848
    .incbin "baserom.z64", 0xBB99E8, 0x28

glabel D_80142870
    .incbin "baserom.z64", 0xBB9A10, 0x10

glabel D_80142880
    .incbin "baserom.z64", 0xBB9A20, 0x10

glabel D_80142890
    .incbin "baserom.z64", 0xBB9A30, 0x10

glabel D_801428A0
    .incbin "baserom.z64", 0xBB9A40, 0x28

glabel D_801428C8
    .incbin "baserom.z64", 0xBB9A68, 0x10

glabel D_801428D8
    .incbin "baserom.z64", 0xBB9A78, 0x10

glabel D_801428E8
    .incbin "baserom.z64", 0xBB9A88, 0x10

glabel D_801428F8
    .incbin "baserom.z64", 0xBB9A98, 0x28

glabel D_80142920
    .incbin "baserom.z64", 0xBB9AC0, 0x10

glabel D_80142930
    .incbin "baserom.z64", 0xBB9AD0, 0x10

glabel D_80142940
    .incbin "baserom.z64", 0xBB9AE0, 0x10

glabel D_80142950
    .incbin "baserom.z64", 0xBB9AF0, 0x28

glabel D_80142978
    .incbin "baserom.z64", 0xBB9B18, 0x10

glabel D_80142988
    .incbin "baserom.z64", 0xBB9B28, 0x10

glabel D_80142998
    .incbin "baserom.z64", 0xBB9B38, 0x10

glabel D_801429A8
    .incbin "baserom.z64", 0xBB9B48, 0x28

glabel D_801429D0
    .incbin "baserom.z64", 0xBB9B70, 0x10

glabel D_801429E0
    .incbin "baserom.z64", 0xBB9B80, 0x10

glabel D_801429F0
    .incbin "baserom.z64", 0xBB9B90, 0x10

glabel D_80142A00
    .incbin "baserom.z64", 0xBB9BA0, 0x28

glabel D_80142A28
    .incbin "baserom.z64", 0xBB9BC8, 0x10

glabel D_80142A38
    .incbin "baserom.z64", 0xBB9BD8, 0x10

glabel D_80142A48
    .incbin "baserom.z64", 0xBB9BE8, 0x10

glabel D_80142A58
    .incbin "baserom.z64", 0xBB9BF8, 0x28

glabel D_80142A80
    .incbin "baserom.z64", 0xBB9C20, 0x10

glabel D_80142A90
    .incbin "baserom.z64", 0xBB9C30, 0x10

glabel D_80142AA0
    .incbin "baserom.z64", 0xBB9C40, 0x10

glabel D_80142AB0
    .incbin "baserom.z64", 0xBB9C50, 0x28

glabel D_80142AD8
    .incbin "baserom.z64", 0xBB9C78, 0x10

glabel D_80142AE8
    .incbin "baserom.z64", 0xBB9C88, 0x10

glabel D_80142AF8
    .incbin "baserom.z64", 0xBB9C98, 0x10

glabel D_80142B08
    .incbin "baserom.z64", 0xBB9CA8, 0x28

glabel D_80142B30
    .incbin "baserom.z64", 0xBB9CD0, 0x10

glabel D_80142B40
    .incbin "baserom.z64", 0xBB9CE0, 0x10

glabel D_80142B50
    .incbin "baserom.z64", 0xBB9CF0, 0x10

glabel D_80142B60
    .incbin "baserom.z64", 0xBB9D00, 0x28

glabel D_80142B88
    .incbin "baserom.z64", 0xBB9D28, 0x10

glabel D_80142B98
    .incbin "baserom.z64", 0xBB9D38, 0x10

glabel D_80142BA8
    .incbin "baserom.z64", 0xBB9D48, 0x10

glabel D_80142BB8
    .incbin "baserom.z64", 0xBB9D58, 0x28

glabel D_80142BE0
    .incbin "baserom.z64", 0xBB9D80, 0x10

glabel D_80142BF0
    .incbin "baserom.z64", 0xBB9D90, 0x10

glabel D_80142C00
    .incbin "baserom.z64", 0xBB9DA0, 0x6C

glabel D_80142C6C
    .incbin "baserom.z64", 0xBB9E0C, 0x8

glabel D_80142C74
    .incbin "baserom.z64", 0xBB9E14, 0x10

glabel D_80142C84
    .incbin "baserom.z64", 0xBB9E24, 0x18

glabel D_80142C9C
    .incbin "baserom.z64", 0xBB9E3C, 0x10

glabel D_80142CAC
    .incbin "baserom.z64", 0xBB9E4C, 0x10

glabel D_80142CBC
    .incbin "baserom.z64", 0xBB9E5C, 0x18

glabel D_80142CD4
    .incbin "baserom.z64", 0xBB9E74, 0x10

glabel D_80142CE4
    .incbin "baserom.z64", 0xBB9E84, 0x10

glabel D_80142CF4
    .incbin "baserom.z64", 0xBB9E94, 0x18

glabel D_80142D0C
    .incbin "baserom.z64", 0xBB9EAC, 0x10

glabel D_80142D1C
    .incbin "baserom.z64", 0xBB9EBC, 0x10

glabel D_80142D2C
    .incbin "baserom.z64", 0xBB9ECC, 0x18

glabel D_80142D44
    .incbin "baserom.z64", 0xBB9EE4, 0x10

glabel D_80142D54
    .incbin "baserom.z64", 0xBB9EF4, 0x10

glabel D_80142D64
    .incbin "baserom.z64", 0xBB9F04, 0x18

glabel D_80142D7C
    .incbin "baserom.z64", 0xBB9F1C, 0x10

glabel D_80142D8C
    .incbin "baserom.z64", 0xBB9F2C, 0x4

glabel jtbl_80142D90
    .incbin "baserom.z64", 0xBB9F30, 0x18

glabel jtbl_80142DA8
    .incbin "baserom.z64", 0xBB9F48, 0x18

glabel jtbl_80142DC0
    .incbin "baserom.z64", 0xBB9F60, 0x9C

glabel D_80142E5C
    .incbin "baserom.z64", 0xBB9FFC, 0x4

glabel D_80142E60
    .incbin "baserom.z64", 0xBBA000, 0x4

glabel D_80142E64
    .incbin "baserom.z64", 0xBBA004, 0x4

glabel D_80142E68
    .incbin "baserom.z64", 0xBBA008, 0x4

glabel D_80142E6C
    .incbin "baserom.z64", 0xBBA00C, 0x4

glabel D_80142E70
    .incbin "baserom.z64", 0xBBA010, 0x4

glabel D_80142E74
    .incbin "baserom.z64", 0xBBA014, 0x4

glabel D_80142E78
    .incbin "baserom.z64", 0xBBA018, 0x8
