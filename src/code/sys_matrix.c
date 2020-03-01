#include <ultra64.h>
#include <global.h>

Mtx gMtxClear =
{
    65536,     0,     1,     0,
        0, 65536,     0,     1,
        0,     0,     0,     0,
        0,     0,     0,     0,
};
MtxF gMtxFClear =
{
    1.0f, 0.0f, 0.0f, 0.0f,
    0.0f, 1.0f, 0.0f, 0.0f,
    0.0f, 0.0f, 1.0f, 0.0f,
    0.0f, 0.0f, 0.0f, 1.0f,
};

MtxF* sMatrixStack; // "Matrix_stack"
MtxF* sCurrentMatrix; // "Matrix_now"

void Matrix_Init(void* stateCtx)
{
    sCurrentMatrix = Game_Alloc(stateCtx, 20 * sizeof(MtxF), "../sys_matrix.c", 153);
    sMatrixStack = sCurrentMatrix;
}

void Matrix_Push(void)
{
    Matrix_MtxFCopy(sCurrentMatrix + 1, sCurrentMatrix);
    sCurrentMatrix++;
}

void Matrix_Pull(void)
{
    sCurrentMatrix--;

    if (sCurrentMatrix < sMatrixStack)
        __assert("Matrix_now >= Matrix_stack", "../sys_matrix.c", 176);
}

void Matrix_Get(MtxF* dest)
{
    Matrix_MtxFCopy(dest, sCurrentMatrix);
}

void Matrix_Put(MtxF* src)
{
    Matrix_MtxFCopy(sCurrentMatrix, src);
}

MtxF* Matrix_GetCurrent(void)
{
    return sCurrentMatrix;
}

void Matrix_Mult(MtxF* src, u8 mode)
{
    MtxF* mtx;

    mtx = Matrix_GetCurrent();

    if (mode == 1)
        func_800A6FA0(mtx, src, mtx);
    else
        Matrix_MtxFCopy(sCurrentMatrix, src);
}

#ifdef NON_MATCHING
// minor ordering and regalloc differences
void Matrix_Translate(f32 x, f32 y, f32 z, u8 mode)
{
    MtxF* mtx = sCurrentMatrix;

    if (mode == 1)
    {
        mtx->wx += mtx->xx * x + mtx->yx * y + mtx->zx * z;
        mtx->wy += mtx->xy * x + mtx->yy * y + mtx->zy * z;
        mtx->wz += mtx->xz * x + mtx->yz * y + mtx->zz * z;
        mtx->ww += mtx->xw * x + mtx->yw * y + mtx->zw * z;
    }
    else
    {
        func_800A7A24(mtx, x, y, z);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/Matrix_Translate.s")
#endif

void Matrix_Scale(f32 x, f32 y, f32 z, u8 mode)
{
    MtxF* mtx = sCurrentMatrix;

    if (mode == 1)
    {
        mtx->xx *= x;
        mtx->xy *= x;
        mtx->xz *= x;
        mtx->yx *= y;
        mtx->yy *= y;
        mtx->yz *= y;
        mtx->zx *= z;
        mtx->zy *= z;
        mtx->zz *= z;
        mtx->xw *= x;
        mtx->yw *= y;
        mtx->zw *= z;
    }
    else
    {
        func_800A76A4(mtx, x, y, z);
    }
}

void Matrix_RotateX(f32 x, u8 mode)
{
    MtxF* mtx;
    f32 sin;
    f32 cos;
    f32 temp1;
    f32 temp2;

    if (mode == 1)
    {
        if (x != 0)
        {
            mtx = sCurrentMatrix;

            sin = sinf(x);
            cos = cosf(x);

            temp1 = mtx->yx;
            temp2 = mtx->zx;
            mtx->yx = temp1 * cos + temp2 * sin;
            mtx->zx = temp2 * cos - temp1 * sin;

            temp1 = mtx->yy;
            temp2 = mtx->zy;
            mtx->yy = temp1 * cos + temp2 * sin;
            mtx->zy = temp2 * cos - temp1 * sin;

            temp1 = mtx->yz;
            temp2 = mtx->zz;
            mtx->yz = temp1 * cos + temp2 * sin;
            mtx->zz = temp2 * cos - temp1 * sin;

            temp1 = mtx->yw;
            temp2 = mtx->zw;
            mtx->yw = temp1 * cos + temp2 * sin;
            mtx->zw = temp2 * cos - temp1 * sin;
        }
    }
    else
    {
        mtx = sCurrentMatrix;

        if (x != 0)
        {
            sin = sinf(x);
            cos = cosf(x);
        }
        else
        {
            sin = 0.0f;
            cos = 1.0f;
        }

        mtx->xy = 0.0f;
        mtx->xz = 0.0f;
        mtx->xw = 0.0f;
        mtx->yx = 0.0f;
        mtx->yw = 0.0f;
        mtx->zx = 0.0f;
        mtx->zw = 0.0f;
        mtx->wx = 0.0f;
        mtx->wy = 0.0f;
        mtx->wz = 0.0f;
        mtx->xx = 1.0f;
        mtx->ww = 1.0f;
        mtx->yy = cos;
        mtx->zz = cos;
        mtx->yz = sin;
        mtx->zy = -sin;
    }
}

void Matrix_RotateY(f32 y, u8 mode)
{
    MtxF* mtx;
    f32 sin;
    f32 cos;
    f32 temp1;
    f32 temp2;

    if (mode == 1)
    {
        if (y != 0)
        {
            mtx = sCurrentMatrix;

            sin = sinf(y);
            cos = cosf(y);

            temp1 = mtx->xx;
            temp2 = mtx->zx;
            mtx->xx = temp1 * cos - temp2 * sin;
            mtx->zx = temp1 * sin + temp2 * cos;

            temp1 = mtx->xy;
            temp2 = mtx->zy;
            mtx->xy = temp1 * cos - temp2 * sin;
            mtx->zy = temp1 * sin + temp2 * cos;

            temp1 = mtx->xz;
            temp2 = mtx->zz;
            mtx->xz = temp1 * cos - temp2 * sin;
            mtx->zz = temp1 * sin + temp2 * cos;

            temp1 = mtx->xw;
            temp2 = mtx->zw;
            mtx->xw = temp1 * cos - temp2 * sin;
            mtx->zw = temp1 * sin + temp2 * cos;
        }
    }
    else
    {
        mtx = sCurrentMatrix;

        if (y != 0)
        {
            sin = sinf(y);
            cos = cosf(y);
        }
        else
        {
            sin = 0.0f;
            cos = 1.0f;
        }

        mtx->xy = 0.0f;
        mtx->xw = 0.0f;
        mtx->yx = 0.0f;
        mtx->yz = 0.0f;
        mtx->yw = 0.0f;
        mtx->zy = 0.0f;
        mtx->zw = 0.0f;
        mtx->wx = 0.0f;
        mtx->wy = 0.0f;
        mtx->wz = 0.0f;
        mtx->yy = 1.0f;
        mtx->ww = 1.0f;
        mtx->xx = cos;
        mtx->zz = cos;
        mtx->xz = -sin;
        mtx->zx = sin;
    }
}

void Matrix_RotateZ(f32 z, u8 mode)
{
    MtxF* mtx;
    f32 sin;
    f32 cos;
    f32 temp1;
    f32 temp2;

    if (mode == 1)
    {
        if (z != 0)
        {
            mtx = sCurrentMatrix;

            sin = sinf(z);
            cos = cosf(z);

            temp1 = mtx->xx;
            temp2 = mtx->yx;
            mtx->xx = temp1 * cos + temp2 * sin;
            mtx->yx = temp2 * cos - temp1 * sin;

            temp1 = mtx->xy;
            temp2 = mtx->yy;
            mtx->xy = temp1 * cos + temp2 * sin;
            mtx->yy = temp2 * cos - temp1 * sin;

            temp1 = mtx->xz;
            temp2 = mtx->yz;
            mtx->xz = temp1 * cos + temp2 * sin;
            mtx->yz = temp2 * cos - temp1 * sin;

            temp1 = mtx->xw;
            temp2 = mtx->yw;
            mtx->xw = temp1 * cos + temp2 * sin;
            mtx->yw = temp2 * cos - temp1 * sin;
        }
    }
    else
    {
        mtx = sCurrentMatrix;

        if (z != 0)
        {
            sin = sinf(z);
            cos = cosf(z);
        }
        else
        {
            sin = 0.0f;
            cos = 1.0f;
        }

        mtx->xz = 0.0f;
        mtx->xw = 0.0f;
        mtx->yz = 0.0f;
        mtx->yw = 0.0f;
        mtx->zx = 0.0f;
        mtx->zy = 0.0f;
        mtx->zw = 0.0f;
        mtx->wx = 0.0f;
        mtx->wy = 0.0f;
        mtx->wz = 0.0f;
        mtx->zz = 1.0f;
        mtx->ww = 1.0f;
        mtx->xx = cos;
        mtx->yy = cos;
        mtx->xy = sin;
        mtx->yx = -sin;
    }
}

void Matrix_RotateXYZ(s16 x, s16 y, s16 z, u8 mode)
{
    MtxF* mtx = sCurrentMatrix;
    f32 temp1;
    f32 temp2;
    f32 sin;
    f32 cos;

    if (mode == 1)
    {
        sin = Math_Sins(z);
        cos = Math_Coss(z);

        temp1 = mtx->xx;
        temp2 = mtx->yx;
        mtx->xx = temp1 * cos + temp2 * sin;
        mtx->yx = temp2 * cos - temp1 * sin;

        temp1 = mtx->xy;
        temp2 = mtx->yy;
        mtx->xy = temp1 * cos + temp2 * sin;
        mtx->yy = temp2 * cos - temp1 * sin;

        temp1 = mtx->xz;
        temp2 = mtx->yz;
        mtx->xz = temp1 * cos + temp2 * sin;
        mtx->yz = temp2 * cos - temp1 * sin;

        temp1 = mtx->xw;
        temp2 = mtx->yw;
        mtx->xw = temp1 * cos + temp2 * sin;
        mtx->yw = temp2 * cos - temp1 * sin;

        if (y != 0)
        {
            sin = Math_Sins(y);
            cos = Math_Coss(y);

            temp1 = mtx->xx;
            temp2 = mtx->zx;
            mtx->xx = temp1 * cos - temp2 * sin;
            mtx->zx = temp1 * sin + temp2 * cos;

            temp1 = mtx->xy;
            temp2 = mtx->zy;
            mtx->xy = temp1 * cos - temp2 * sin;
            mtx->zy = temp1 * sin + temp2 * cos;

            temp1 = mtx->xz;
            temp2 = mtx->zz;
            mtx->xz = temp1 * cos - temp2 * sin;
            mtx->zz = temp1 * sin + temp2 * cos;

            temp1 = mtx->xw;
            temp2 = mtx->zw;
            mtx->xw = temp1 * cos - temp2 * sin;
            mtx->zw = temp1 * sin + temp2 * cos;
        }

        if (x != 0)
        {
            sin = Math_Sins(x);
            cos = Math_Coss(x);

            temp1 = mtx->yx;
            temp2 = mtx->zx;
            mtx->yx = temp1 * cos + temp2 * sin;
            mtx->zx = temp2 * cos - temp1 * sin;

            temp1 = mtx->yy;
            temp2 = mtx->zy;
            mtx->yy = temp1 * cos + temp2 * sin;
            mtx->zy = temp2 * cos - temp1 * sin;

            temp1 = mtx->yz;
            temp2 = mtx->zz;
            mtx->yz = temp1 * cos + temp2 * sin;
            mtx->zz = temp2 * cos - temp1 * sin;

            temp1 = mtx->yw;
            temp2 = mtx->zw;
            mtx->yw = temp1 * cos + temp2 * sin;
            mtx->zw = temp2 * cos - temp1 * sin;
        }
    }
    else
    {
        func_800A7704(mtx, x, y, z);
    }
}

void Matrix_Softcv3Mult(Vec3f* arg0, Vec3s* arg1)
{
    MtxF* mtx = sCurrentMatrix;
    f32 sin;
    f32 cos;
    f32 temp1;
    f32 temp2;

    sin = Math_Sins(arg1->z);
    cos = Math_Coss(arg1->z);

    temp1 = mtx->xx;
    temp2 = mtx->yx;
    mtx->wx += temp1 * arg0->x + temp2 * arg0->y + mtx->zx * arg0->z;
    mtx->xx = temp1 * cos + temp2 * sin;
    mtx->yx = temp2 * cos - temp1 * sin;

    temp1 = mtx->xy;
    temp2 = mtx->yy;
    mtx->wy += temp1 * arg0->x + temp2 * arg0->y + mtx->zy * arg0->z;
    mtx->xy = temp1 * cos + temp2 * sin;
    mtx->yy = temp2 * cos - temp1 * sin;

    temp1 = mtx->xz;
    temp2 = mtx->yz;
    mtx->wz += temp1 * arg0->x + temp2 * arg0->y + mtx->zz * arg0->z;
    mtx->xz = temp1 * cos + temp2 * sin;
    mtx->yz = temp2 * cos - temp1 * sin;

    temp1 = mtx->xw;
    temp2 = mtx->yw;
    mtx->ww += temp1 * arg0->x + temp2 * arg0->y + mtx->zw * arg0->z;
    mtx->xw = temp1 * cos + temp2 * sin;
    mtx->yw = temp2 * cos - temp1 * sin;

    if (arg1->y != 0)
    {
        sin = Math_Sins(arg1->y);
        cos = Math_Coss(arg1->y);

        temp1 = mtx->xx;
        temp2 = mtx->zx;
        mtx->xx = temp1 * cos - temp2 * sin;
        mtx->zx = temp1 * sin + temp2 * cos;

        temp1 = mtx->xy;
        temp2 = mtx->zy;
        mtx->xy = temp1 * cos - temp2 * sin;
        mtx->zy = temp1 * sin + temp2 * cos;

        temp1 = mtx->xz;
        temp2 = mtx->zz;
        mtx->xz = temp1 * cos - temp2 * sin;
        mtx->zz = temp1 * sin + temp2 * cos;

        temp1 = mtx->xw;
        temp2 = mtx->zw;
        mtx->xw = temp1 * cos - temp2 * sin;
        mtx->zw = temp1 * sin + temp2 * cos;
    }

    if (arg1->x != 0)
    {
        sin = Math_Sins(arg1->x);
        cos = Math_Coss(arg1->x);

        temp1 = mtx->yx;
        temp2 = mtx->zx;
        mtx->yx = temp1 * cos + temp2 * sin;
        mtx->zx = temp2 * cos - temp1 * sin;

        temp1 = mtx->yy;
        temp2 = mtx->zy;
        mtx->yy = temp1 * cos + temp2 * sin;
        mtx->zy = temp2 * cos - temp1 * sin;

        temp1 = mtx->yz;
        temp2 = mtx->zz;
        mtx->yz = temp1 * cos + temp2 * sin;
        mtx->zz = temp2 * cos - temp1 * sin;

        temp1 = mtx->yw;
        temp2 = mtx->zw;
        mtx->yw = temp1 * cos + temp2 * sin;
        mtx->zw = temp2 * cos - temp1 * sin;
    }
}

#ifdef NON_MATCHING
// regalloc differences
void Matrix_Softcv3Load(f32 x, f32 y, f32 z, Vec3s* vec)
{
    MtxF* mtx = sCurrentMatrix;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;

    sp30 = Math_Sins(vec->y);
    sp2C = Math_Coss(vec->y);

    mtx->xx = sp2C;
    mtx->xz = -sp30;
    mtx->wx = x;
    mtx->wy = y;
    mtx->wz = z;
    mtx->xw = 0.0f;
    mtx->yw = 0.0f;
    mtx->zw = 0.0f;
    mtx->ww = 1.0f;

    if (vec->x != 0)
    {
        sp24 = Math_Sins(vec->x);
        sp28 = Math_Coss(vec->x);

        mtx->zy = -sp24;
        mtx->yy = sp28;
        mtx->zz = sp2C * sp28;
        mtx->yz = sp2C * sp24;
        mtx->zx = sp30 * sp28;
        mtx->yx = sp30 * sp24;
    }
    else
    {
        mtx->zz = sp2C;
        mtx->zx = sp30;
        mtx->zy = 0.0f;
        mtx->yz = 0.0f;
        mtx->yx = 0.0f;
        mtx->yy = 1.0f;
    }

    if (vec->z != 0)
    {
        sp24 = Math_Sins(vec->z);
        sp28 = Math_Coss(vec->z);

        sp30 = mtx->xx;
        sp2C = mtx->yx;
        mtx->xx = sp30 * sp28 + sp2C * sp24;
        mtx->yx = sp2C * sp28 - sp30 * sp24;

        sp30 = mtx->xz;
        sp2C = mtx->yz;
        mtx->xz = sp30 * sp28 + sp2C * sp24;
        mtx->yz = sp2C * sp28 - sp30 * sp24;

        sp2C = mtx->yy;
        mtx->xy = sp2C * sp24;
        mtx->yy = sp2C * sp28;
    }
    else
    {
        mtx->xy = 0.0f;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/Matrix_Softcv3Load.s")
#endif

#ifdef NON_MATCHING
// mostly regalloc differences
// possibly a double unrolled loop
Mtx* Matrix_MtxFToMtx(MtxF* src, Mtx* dest)
{
    u16* m1 = (s16*)&dest->m[0][0];
    u16* m2 = (s16*)&dest->m[2][0];
    s32 temp;

    temp = src->xx * 65536.0f;
    m1[0] = (temp >> 0x10) & 0xFFFF;;
    m2[0] = temp & 0xFFFF;

    temp = src->xy * 65536.0f;
    m1[1] = (temp >> 0x10) & 0xFFFF;;
    m2[1] = temp & 0xFFFF;

    temp = src->xz * 65536.0f;
    m1[2] = (temp >> 0x10) & 0xFFFF;;
    m2[2] = temp & 0xFFFF;

    temp = src->xw * 65536.0f;
    m1[3] = (temp >> 0x10) & 0xFFFF;;
    m2[3] = temp & 0xFFFF;

    temp = src->yx * 65536.0f;
    m1[4] = (temp >> 0x10) & 0xFFFF;;
    m2[4] = temp & 0xFFFF;

    temp = src->yy * 65536.0f;
    m1[5] = (temp >> 0x10) & 0xFFFF;;
    m2[5] = temp & 0xFFFF;

    temp = src->yz * 65536.0f;
    m1[6] = (temp >> 0x10) & 0xFFFF;;
    m2[6] = temp & 0xFFFF;

    temp = src->yw * 65536.0f;
    m1[7] = (temp >> 0x10) & 0xFFFF;;
    m2[7] = temp & 0xFFFF;

    temp = src->zx * 65536.0f;
    m1[8] = (temp >> 0x10) & 0xFFFF;;
    m2[8] = temp & 0xFFFF;

    temp = src->zy * 65536.0f;
    m1[9] = (temp >> 0x10) & 0xFFFF;;
    m2[9] = temp & 0xFFFF;

    temp = src->zz * 65536.0f;
    m1[10] = (temp >> 0x10) & 0xFFFF;;
    m2[10] = temp & 0xFFFF;

    temp = src->zw * 65536.0f;
    m1[11] = (temp >> 0x10) & 0xFFFF;;
    m2[11] = temp & 0xFFFF;

    temp = src->wx * 65536.0f;
    m1[12] = (temp >> 0x10) & 0xFFFF;;
    m2[12] = temp & 0xFFFF;

    temp = src->wy * 65536.0f;
    m1[13] = (temp >> 0x10) & 0xFFFF;;
    m2[13] = temp & 0xFFFF;

    temp = src->wz * 65536.0f;
    m1[14] = (temp >> 0x10) & 0xFFFF;;
    m2[14] = temp & 0xFFFF;

    temp = src->ww * 65536.0f;
    m1[15] = (temp >> 0x10) & 0xFFFF;;
    m2[15] = temp & 0xFFFF;

    return dest;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/Matrix_MtxFToMtx.s")
#endif

Mtx* Matrix_ToMtx(Mtx* dest, char* file, s32 line)
{
    return Matrix_MtxFToMtx(func_800D285C(sCurrentMatrix, file, line), dest);
}

Mtx* Matrix_NewMtx(GraphicsContext* gfxCtx, char* file, s32 line)
{
    return Matrix_ToMtx(Graph_Alloc(gfxCtx, sizeof(Mtx)), file, line);
}

Mtx* Matrix_MtxFToNewMtx(MtxF* src, GraphicsContext* gfxCtx)
{
    return Matrix_MtxFToMtx(src, Graph_Alloc(gfxCtx, sizeof(Mtx)));
}

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/func_800D1AF4.s")

void Matrix_MtxFCopy(MtxF* dest, MtxF* src)
{
    dest->xx = src->xx;
    dest->xy = src->xy;
    dest->xz = src->xz;
    dest->xw = src->xw;
    dest->yx = src->yx;
    dest->yy = src->yy;
    dest->yz = src->yz;
    dest->yw = src->yw;
    dest->xx = src->xx;
    dest->xy = src->xy;
    dest->xz = src->xz;
    dest->xw = src->xw;
    dest->yx = src->yx;
    dest->yy = src->yy;
    dest->yz = src->yz;
    dest->yw = src->yw;
    dest->zx = src->zx;
    dest->zy = src->zy;
    dest->zz = src->zz;
    dest->zw = src->zw;
    dest->wx = src->wx;
    dest->wy = src->wy;
    dest->wz = src->wz;
    dest->ww = src->ww;
    dest->zx = src->zx;
    dest->zy = src->zy;
    dest->zz = src->zz;
    dest->zw = src->zw;
    dest->wx = src->wx;
    dest->wy = src->wy;
    dest->wz = src->wz;
    dest->ww = src->ww;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/Matrix_MtxToMtxF.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/func_800D1EF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/func_800D1FA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/func_800D1FD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/func_800D20CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/func_800D2264.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/func_800D23FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/func_800D285C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/func_800D2A34.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/func_800D2A98.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/func_800D2AE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/func_800D2BD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/func_800D2CEC.s")
