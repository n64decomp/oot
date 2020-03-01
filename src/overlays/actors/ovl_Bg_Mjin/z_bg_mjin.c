#include "z_bg_mjin.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void BgMjin_Init(BgMjin* this, GlobalContext* globalCtx);
void BgMjin_Destroy(BgMjin* this, GlobalContext* globalCtx);
void BgMjin_Update(BgMjin* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Mjin_InitVars =
{
    ACTOR_BG_MJIN,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(BgMjin),
    (ActorFunc)BgMjin_Init,
    (ActorFunc)BgMjin_Destroy,
    (ActorFunc)BgMjin_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mjin/func_808A0780.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mjin/BgMjin_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mjin/BgMjin_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mjin/func_808A0850.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mjin/func_808A0920.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mjin/BgMjin_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mjin/func_808A0950.s")
