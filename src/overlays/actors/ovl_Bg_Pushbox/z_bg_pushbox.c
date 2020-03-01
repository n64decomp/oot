#include "z_bg_pushbox.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void BgPushbox_Init(BgPushbox* this, GlobalContext* globalCtx);
void BgPushbox_Destroy(BgPushbox* this, GlobalContext* globalCtx);
void BgPushbox_Update(BgPushbox* this, GlobalContext* globalCtx);
void BgPushbox_Draw(BgPushbox* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Pushbox_InitVars =
{
    ACTOR_BG_PUSHBOX,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_DANGEON_KEEP,
    sizeof(BgPushbox),
    (ActorFunc)BgPushbox_Init,
    (ActorFunc)BgPushbox_Destroy,
    (ActorFunc)BgPushbox_Update,
    (ActorFunc)BgPushbox_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Pushbox/func_808A8AE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Pushbox/BgPushbox_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Pushbox/BgPushbox_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Pushbox/func_808A8BAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Pushbox/BgPushbox_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Pushbox/BgPushbox_Draw.s")
