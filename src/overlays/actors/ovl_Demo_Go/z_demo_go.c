#include "z_demo_go.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void DemoGo_Init(DemoGo* this, GlobalContext* globalCtx);
void DemoGo_Destroy(DemoGo* this, GlobalContext* globalCtx);
void DemoGo_Update(DemoGo* this, GlobalContext* globalCtx);
void DemoGo_Draw(DemoGo* this, GlobalContext* globalCtx);

/*
const ActorInit Demo_Go_InitVars =
{
    ACTOR_DEMO_GO,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_OF1D_MAP,
    sizeof(DemoGo),
    (ActorFunc)DemoGo_Init,
    (ActorFunc)DemoGo_Destroy,
    (ActorFunc)DemoGo_Update,
    (ActorFunc)DemoGo_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097C870.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097C8A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/DemoGo_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097C930.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097C9B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097C9DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097CA30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097CA78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097CB0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097CC08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097CCC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097CCE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097CD90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097CDB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097CE10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097CE20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097CE78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097CEEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097CF20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097CF9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097CFDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097CFFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097D01C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097D058.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097D088.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097D0D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097D130.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/DemoGo_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/DemoGo_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097D290.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097D29C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/DemoGo_Draw.s")
