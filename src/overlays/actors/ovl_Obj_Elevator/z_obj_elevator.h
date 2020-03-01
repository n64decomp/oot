#ifndef _Z_OBJ_ELEVATOR_H_
#define _Z_OBJ_ELEVATOR_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x28];
} ObjElevator; // size = 0x0174

extern const ActorInit Obj_Elevator_InitVars;

#endif
