#include "z_bg_bom_guard.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void BgBomGuard_Init(BgBomGuard* this, GlobalContext* globalCtx);
void BgBomGuard_Destroy(BgBomGuard* this, GlobalContext* globalCtx);
void BgBomGuard_Update(BgBomGuard* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Bom_Guard_InitVars =
{
    ACTOR_BG_BOM_GUARD,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_BOWL,
    sizeof(BgBomGuard),
    (ActorFunc)BgBomGuard_Init,
    (ActorFunc)BgBomGuard_Destroy,
    (ActorFunc)BgBomGuard_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bom_Guard/func_8086E550.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bom_Guard/BgBomGuard_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bom_Guard/BgBomGuard_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bom_Guard/func_8086E638.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bom_Guard/BgBomGuard_Update.s")
