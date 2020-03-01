#ifndef _Z_EN_PU_BOX_H_
#define _Z_EN_PU_BOX_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1C];
} EnPubox; // size = 0x0168

extern const ActorInit En_Pu_Box_InitVars;

#endif
