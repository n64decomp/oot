#include "z_en_wallmas.h"

#define ROOM  0x00
#define FLAGS 0x00000015

void EnWallmas_Init(EnWallmas* this, GlobalContext* globalCtx);
void EnWallmas_Destroy(EnWallmas* this, GlobalContext* globalCtx);
void EnWallmas_Update(EnWallmas* this, GlobalContext* globalCtx);
void EnWallmas_Draw(EnWallmas* this, GlobalContext* globalCtx);

/*
const ActorInit En_Wallmas_InitVars =
{
    ACTOR_EN_WALLMAS,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_WALLMASTER,
    sizeof(EnWallmas),
    (ActorFunc)EnWallmas_Init,
    (ActorFunc)EnWallmas_Destroy,
    (ActorFunc)EnWallmas_Update,
    (ActorFunc)EnWallmas_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/EnWallmas_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/EnWallmas_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B2F684.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B2F6DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B2F7A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B2F868.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B2F8A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B2F8F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B2F93C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B2F9C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B2FA7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B2FAD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B2FB98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B2FC20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B2FC68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B2FD38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B2FE40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B2FF0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B2FF44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B2FFA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B30054.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B3008C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B301A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B30238.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B30270.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B302E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B30508.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B3055C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B305A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B3061C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/EnWallmas_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B308F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B30AD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/func_80B30B48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wallmas/EnWallmas_Draw.s")
