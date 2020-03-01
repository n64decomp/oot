#include "z_en_pu_box.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void EnPubox_Init(EnPubox* this, GlobalContext* globalCtx);
void EnPubox_Destroy(EnPubox* this, GlobalContext* globalCtx);
void EnPubox_Update(EnPubox* this, GlobalContext* globalCtx);
void EnPubox_Draw(EnPubox* this, GlobalContext* globalCtx);

/*
const ActorInit En_Pu_box_InitVars =
{
    ACTOR_EN_PU_BOX,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_PU_BOX,
    sizeof(EnPubox),
    (ActorFunc)EnPubox_Init,
    (ActorFunc)EnPubox_Destroy,
    (ActorFunc)EnPubox_Update,
    (ActorFunc)EnPubox_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Pu_box/EnPubox_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Pu_box/EnPubox_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Pu_box/EnPubox_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Pu_box/EnPubox_Draw.s")



