#ifndef _VARIABLES_H_
#define _VARIABLES_H_

#include <PR/ultratypes.h>
#include <osint.h>
#include <viint.h>
#include <guint.h>
#include <unk.h>
#include <structs.h>

extern u32 dmadataRomStart; // D_0001A500
extern u32 dmadataRomEnd; // D_00020700
extern UNK_TYPE D_00AC4000; // D_00AC4000
extern UNK_TYPE D_00ACC000; // D_00ACC000
extern UNK_TYPE D_00B3C000; // D_00B3C000
extern UNK_TYPE D_00C7A4E0; // D_00C7A4E0
//extern UNK_TYPE D_0600006C;
extern UNK_TYPE D_060005D0; // D_060005D0
extern UNK_TYPE D_06001100; // D_06001100
extern UNK_TYPE D_06001228; // D_06001228
//extern UNK_TYPE D_06002190;
extern UNK_TYPE D_06002D30; // D_06002D30
extern UNK_TYPE osTvType; // D_80000300
extern UNK_TYPE osRomType; // D_80000304
extern UNK_TYPE osRomBase; // osRomBase
extern UNK_TYPE osResetType; // osResetType
extern UNK_TYPE osCicId; // D_80000310
extern UNK_TYPE osVersion; // D_80000314
extern UNK_TYPE osMemSize; // osMemSize
extern UNK_TYPE osAppNmiBuffer; // osAppNmiBuffer
extern UNK_TYPE D_80000500; // D_80000500
extern UNK_TYPE D_80025D00; // D_80025D00
//extern UNK_TYPE D_8002B5EC;
extern u8 D_80096B20; // D_80096B20
extern volatile u8 D_80096B24; // D_80096B24
extern u8 D_80096B28; // D_80096B28
extern u32 D_80096B2C; // D_80096B2C
extern f32 D_80096B30; // D_80096B30
extern f32 D_80096B34; // D_80096B34
extern OSPiHandle* D_80096B40; // D_80096B40
extern UNK_TYPE D_80096B50; // D_80096B50
extern UNK_TYPE* D_80096B60; // D_80096B60
extern s80085320* g_s80085320_ListHead; // D_80096C40
extern s80085320* g_s80085320_ListTail; // D_80096C44
extern UNK_TYPE D_80097590; // D_80097590
extern short sintable[]; // D_800975E0
extern OSThread* __osThreadTail; // D_80097E10
extern OSThread* __osRunQueue; // D_80097E18
extern OSThread* __osActiveQueue; // D_80097E1C
extern OSThread* __osRunningThread; // D_80097E20
extern OSThread* __osFaultedThread; // D_80097E24
extern UNK_TYPE __osSiAccessQueueEnabled; // D_80097E30
extern u64 osClockRate; // D_80097E50
extern UNK_TYPE D_80097E58; // D_80097E58
extern UNK_TYPE __osShutdown; // D_80097E5C
extern UNK_TYPE __OSGlobalIntMask; // D_80097E60
extern UNK_TYPE __osPiDevMgr; // D_80097E70
extern OSPiHandle* D_80097E8C; // D_80097E8C
extern UNK_TYPE __osPiAccessQueueEnabled; // D_80097EA0
extern UNK_TYPE D_80097F10; // D_80097F10
extern OSTimer* __osTimerList; // D_80097F70
extern u32* D_80097FC0; // D_80097FC0
extern u32* D_80098010; // D_80098010
extern __OSViContext* __osViCurr; // D_800980C0
extern __OSViContext* __osViNext; // D_800980C4
extern UNK_PTR D_800980D0; // D_800980D0
extern u32* D_800980E0; // D_800980E0
extern UNK_TYPE D_80098130; // D_80098130
extern UNK_TYPE D_80098144; // D_80098144
extern UNK_TYPE __osViDevMgr; // D_80098160
extern UNK_TYPE D_8009817C; // D_8009817C
extern UNK_TYPE D_80098190; // D_80098190
extern UNK_TYPE D_80098198; // D_80098198
extern UNK_TYPE D_800981A0; // D_800981A0
extern UNK_TYPE D_800981A8; // D_800981A8
extern float D_800981B0; // D_800981B0
extern UNK_TYPE D_800981C0; // D_800981C0
extern UNK_TYPE D_800981C4; // D_800981C4
extern UNK_TYPE D_800981D4; // D_800981D4
extern UNK_TYPE D_800981E4; // D_800981E4
extern UNK_TYPE D_800981F4; // D_800981F4
extern UNK_TYPE D_80098204; // D_80098204
extern UNK_TYPE D_80098280; // D_80098280
extern UNK_TYPE D_80098290; // D_80098290
extern UNK_TYPE D_800982A4; // D_800982A4
extern du P[]; // D_80099220
extern du rpi; // D_80099248
extern du pihi; // D_80099250
extern du pilo; // D_80099258
extern fu zero; // D_80099260
extern UNK_TYPE __osHwIntTable; // D_80099270
extern UNK_TYPE leoDiskStack; // D_80099290
extern float __libm_qnan_f; // D_80099450
extern UNK_TYPE D_800994D0; // D_800994D0
extern UNK_TYPE D_800994DC; // D_800994DC
extern s80085320 D_80099500; // D_80099500
extern OSThread D_80099520; // D_80099520
extern UNK_TYPE D_800996D0; // D_800996D0
extern s80085320 D_80099AD0; // D_80099AD0
extern UNK_TYPE D_80099AF0; // D_80099AF0
extern UNK_TYPE D_80099EF0; // D_80099EF0
extern UNK_TYPE D_8009A170; // D_8009A170
extern s80085320 D_8009A670; // D_8009A670
extern UNK_TYPE D_8009A690; // D_8009A690
extern UNK_TYPE D_8009A840; // D_8009A840
extern s80085320 D_8009B140; // D_8009B140
extern UNK_TYPE D_8009B160; // D_8009B160
extern UNK_TYPE D_8009B228; // D_8009B228
extern u32* D_8009B240; // D_8009B240
extern u8 D_8009B290; // D_8009B290
extern s80085320 D_8009B2A0; // D_8009B2A0
extern u16 D_8009B2BC; // D_8009B2BC
extern OSMesgQueue D_8009B2C0; // D_8009B2C0
extern UNK_TYPE D_8009B2D8; // D_8009B2D8
extern OSThread D_8009B358; // D_8009B358
extern UNK_TYPE D_8009B508; // D_8009B508
extern UNK_TYPE D_8009BA08; // D_8009BA08
extern UNK_TYPE D_8009BE30; // D_8009BE30
extern UNK_TYPE D_8009BE34; // D_8009BE34
extern UNK_TYPE D_8009BE38; // D_8009BE38
extern OSTask tmp_task; // D_8009CD70
extern UNK_TYPE __osSiAccessQueue; // D_8009CEB8
extern UNK_TYPE __osContPifRam; // D_8009CED0
extern u8 __osContLastCmd; // D_8009CF10
extern UNK_TYPE __osMaxControllers; // D_8009CF11
extern UNK_TYPE D_8009CF70; // D_8009CF70
extern UNK_TYPE __osThreadSave; // D_8009CF80
extern u8 D_8009D134; // D_8009D134
extern u8 D_8009D135; // D_8009D135
extern u8 D_8009D136; // D_8009D136
extern u8 D_8009D137; // D_8009D137
extern u8 D_8009D138; // D_8009D138
extern u8 D_8009D1AC; // D_8009D1AC
extern u8 D_8009D1AD; // D_8009D1AD
extern u8 D_8009D1AE; // D_8009D1AE
extern u8 D_8009D1AF; // D_8009D1AF
extern u8 D_8009D1B0; // D_8009D1B0
extern UNK_TYPE __osPiAccessQueue; // D_8009E3F8
extern __OSEventState __osEventStateTab[]; // D_8009E510
extern UNK_TYPE __osCurrentTime; // D_8009E5B0
extern UNK_TYPE __osBaseCounter; // D_8009E5B8
extern UNK_TYPE __osViIntrCount; // D_8009E5BC
extern UNK_TYPE __osTimerCounter; // D_8009E5C0
extern OSPiHandle D_8009E610; // D_8009E610
extern UNK_TYPE D_8009E624; // D_8009E624
extern DmadataEntry dmadata[]; // D_8009F8B0
extern UNK_TYPE D_801ADE80; // D_801ADE80
extern UNK_TYPE D_801ADEAC; // D_801ADEAC
extern int D_801ADEB0[]; // D_801ADEB0
extern UNK_TYPE D_801ADEE0; // D_801ADEE0
extern UNK_TYPE D_801ADF0C; // D_801ADF0C
extern UNK_TYPE D_801ADF10; // D_801ADF10
extern UNK_TYPE D_801ADF14; // D_801ADF14
extern UNK_TYPE D_801ADF18; // D_801ADF18
extern UNK_TYPE D_801ADF24; // D_801ADF24
extern UNK_TYPE D_801ADF30[]; // D_801ADF30
extern UNK_TYPE D_801ADF44[]; // D_801ADF44
extern u8 D_801ADF74[]; // D_801ADF74
extern u8 D_801AE084[]; // D_801AE084
extern s32 D_801AE194[]; // D_801AE194
extern u8 D_801AE214[]; // D_801AE214
extern z_EffectTableInfo EffectSS2Info; // D_801AE3A0
extern z_ParticleOverlayTableEntry particleOverlayTable[]; // D_801AE4A0
extern s800BF9A0 D_801AEFD0; // D_801AEFD0
extern UNK_TYPE D_801B4610; // D_801B4610
extern s800E03A0 D_801B9F20; // D_801B9F20
extern u8 D_801BDB30[]; // D_801BDB30
extern u8 D_801C2078[]; // D_801C2078
extern u8 D_801C2079; // D_801C2079
extern u8 D_801C207E; // D_801C207E
extern f32 D_801D1508; // D_801D1508
extern f32 D_801DBE68; // D_801DBE68
extern f32 D_801DBE6C; // D_801DBE6C
extern f32 D_801DBE70; // D_801DBE70
extern f32 D_801DBE74; // D_801DBE74
extern f32 D_801DBE78; // D_801DBE78
extern f32 D_801DBE7C; // D_801DBE7C
extern f32 D_801DBE80; // D_801DBE80
extern f32 D_801DBE84; // D_801DBE84
extern f32 D_801DBE88; // D_801DBE88
extern f32 D_801DBE8C; // D_801DBE8C
extern f32 D_801DBE90; // D_801DBE90
extern f32 D_801DBE94; // D_801DBE94
extern f32 D_801DBE98; // D_801DBE98
extern f32 D_801DBE9C; // D_801DBE9C
extern f32 D_801DBEA0; // D_801DBEA0
extern f32 D_801DBF10; // D_801DBF10
extern f32 D_801DBF14; // D_801DBF14
extern f32 D_801DBF18; // D_801DBF18
extern f32 D_801DBF1C; // D_801DBF1C
extern f32 D_801DBF20; // D_801DBF20
extern f32 D_801DC068; // D_801DC068
extern f32 D_801DC06C; // D_801DC06C
extern f32 D_801DC070; // D_801DC070
extern f32 D_801DC074; // D_801DC074
extern UNK_TYPE D_801DCBB0; // D_801DCBB0
extern UNK_TYPE D_801DCBC4; // D_801DCBC4
extern UNK_TYPE D_801DCBE4; // D_801DCBE4
extern UNK_TYPE D_801DCBFC; // D_801DCBFC
extern f32 D_801DDA80; // D_801DDA80
extern f32 D_801DDA84; // D_801DDA84
extern UNK_TYPE D_801E3FA0; // D_801E3FA0
extern UNK_TYPE D_801ED930; // D_801ED930
extern UNK_TYPE D_801ED940; // D_801ED940
extern u8 D_801EF670; // D_801EF670
extern u8 D_801EF677; // D_801EF677
extern UNK_TYPE D_801F8180[]; // D_801F8180
extern UNK_TYPE D_80208EA0; // D_80208EA0
extern f32 D_808637D0; // D_808637D0
//extern UNK_TYPE D_809C1D60;
//extern UNK_TYPE D_809C1E40;
//extern UNK_TYPE D_809C1FF0;
extern f32 D_80ACB650; // D_80ACB650
extern z_ActorInit bgIkanaRayInitVar; // D_80BD55D0
extern UNK_TYPE D_80BD55F0; // D_80BD55F0
extern z_ActorCompInitEntry bgIkanaRayCompInit[]; // D_80BD561C
extern UNK_TYPE D_80BD562C; // D_80BD562C

// extra variables needed for one reason or another

extern UNK_PTR D_800980D0_;
extern UNK_TYPE D_80099AD0_;
extern UNK_TYPE D_8009A670_;
extern UNK_TYPE D_8009B140_;
extern  (*D_801BE960[12])(u8*, z_ActorCompInitEntry*);

#endif
