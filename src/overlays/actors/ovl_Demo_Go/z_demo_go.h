#ifndef _Z_DEMO_GO_H_
#define _Z_DEMO_GO_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x54];
} DemoGo; // size = 0x01A0

extern const ActorInit Demo_Go_InitVars;

#endif
