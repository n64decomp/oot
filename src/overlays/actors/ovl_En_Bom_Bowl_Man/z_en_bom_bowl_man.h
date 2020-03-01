#ifndef _Z_EN_BOM_BOWL_MAN_H_
#define _Z_EN_BOM_BOWL_MAN_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x118];
} EnBomBowlMan; // size = 0x0264

extern const ActorInit En_Bom_Bowl_Man_InitVars;

#endif
