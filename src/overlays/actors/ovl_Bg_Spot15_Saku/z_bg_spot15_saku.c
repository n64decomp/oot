#include "z_bg_spot15_saku.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void BgSpot15Saku_Init(BgSpot15Saku* this, GlobalContext* globalCtx);
void BgSpot15Saku_Destroy(BgSpot15Saku* this, GlobalContext* globalCtx);
void BgSpot15Saku_Update(BgSpot15Saku* this, GlobalContext* globalCtx);
void BgSpot15Saku_Draw(BgSpot15Saku* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot15_Saku_InitVars =
{
    ACTOR_BG_SPOT15_SAKU,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_SPOT15_OBJ,
    sizeof(BgSpot15Saku),
    (ActorFunc)BgSpot15Saku_Init,
    (ActorFunc)BgSpot15Saku_Destroy,
    (ActorFunc)BgSpot15Saku_Update,
    (ActorFunc)BgSpot15Saku_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Saku/BgSpot15Saku_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Saku/BgSpot15Saku_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Saku/func_808B4930.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Saku/func_808B4978.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Saku/func_808B4A04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Saku/BgSpot15Saku_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Saku/BgSpot15Saku_Draw.s")
