/*
 * File: z_title.c
 * Overlay: ovl_title
 * Description: Displays the Nintendo Logo
*/

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ GraphicsContext* gfxCtx;
    /* 0x0004 */ char unk_4[0x1CC];
    /* 0x01D0 */ UNK_TYPE unk_1D0;
    /* 0x01D4 */ char unk_1D4[0xD];
    /* 0x01E1 */ u8 unk_1E1;
} TitleContext;


#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_title/func_80800000.s")

void func_80800128(TitleContext* this)
{
    this->unk_1E1 = 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_title/func_80800134.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_title/func_808001C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_title/func_8080073C.s")

void func_80800858(TitleContext* this)
{
    func_800A9AD0(this, &this->unk_1D0);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_title/func_80800878.s")
