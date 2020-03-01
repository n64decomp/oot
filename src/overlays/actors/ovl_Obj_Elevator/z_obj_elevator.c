#include "z_obj_elevator.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void ObjElevator_Init(ObjElevator* this, GlobalContext* globalCtx);
void ObjElevator_Destroy(ObjElevator* this, GlobalContext* globalCtx);
void ObjElevator_Update(ObjElevator* this, GlobalContext* globalCtx);
void ObjElevator_Draw(ObjElevator* this, GlobalContext* globalCtx);

/*
const ActorInit Obj_Elevator_InitVars =
{
    ACTOR_OBJ_ELEVATOR,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_D_ELEVATOR,
    sizeof(ObjElevator),
    (ActorFunc)ObjElevator_Init,
    (ActorFunc)ObjElevator_Destroy,
    (ActorFunc)ObjElevator_Update,
    (ActorFunc)ObjElevator_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Elevator/func_80B92B00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Elevator/func_80B92B08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Elevator/ObjElevator_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Elevator/ObjElevator_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Elevator/func_80B92C5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Elevator/func_80B92C80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Elevator/func_80B92D20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Elevator/func_80B92D44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Elevator/ObjElevator_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Elevator/ObjElevator_Draw.s")
