#include "z_bg_hidan_fslift.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void BgHidanFslift_Init(BgHidanFslift* this, GlobalContext* globalCtx);
void BgHidanFslift_Destroy(BgHidanFslift* this, GlobalContext* globalCtx);
void BgHidanFslift_Update(BgHidanFslift* this, GlobalContext* globalCtx);
void BgHidanFslift_Draw(BgHidanFslift* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Hidan_Fslift_InitVars =
{
    ACTOR_BG_HIDAN_FSLIFT,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanFslift),
    (ActorFunc)BgHidanFslift_Init,
    (ActorFunc)BgHidanFslift_Destroy,
    (ActorFunc)BgHidanFslift_Update,
    (ActorFunc)BgHidanFslift_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fslift/BgHidanFslift_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fslift/func_80886F24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fslift/BgHidanFslift_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fslift/func_80886FB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fslift/func_80886FCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fslift/func_8088706C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fslift/func_808870D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fslift/BgHidanFslift_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fslift/BgHidanFslift_Draw.s")
