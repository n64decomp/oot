#include <z64.h>
#include <global.h>

u8 sYaz0DataBuffer[0x400];
u32 sYaz0CurDataEnd;
u32 sYaz0CurRomStart;
u32 sYaz0CurSize;
u32 sYaz0MaxPtr;

void* Yaz0_FirstDMA()
{
    u32 pad0;
    u32 pad1;
    u32 dmaSize;
    u32 curSize;

    sYaz0MaxPtr = sYaz0CurDataEnd - 0x19;
    
    curSize = sYaz0CurDataEnd - (u32)sYaz0DataBuffer;
    dmaSize = (curSize > sYaz0CurSize)
        ? sYaz0CurSize
        : curSize;
    
    DmaMgr_DMARomToRam(sYaz0CurRomStart, sYaz0DataBuffer, dmaSize);
    sYaz0CurRomStart += dmaSize;
    sYaz0CurSize -= dmaSize;
    return sYaz0DataBuffer;
}

void* Yaz0_NextDMA(void* curSrcPos)
{
    u8* dst;
    u32 restSize;
    u32 dmaSize;

    restSize = sYaz0CurDataEnd - (u32)curSrcPos;

    dst = (restSize & 7)
        ? (sYaz0DataBuffer - (restSize & 7)) + 8
        : sYaz0DataBuffer;

    bcopy(curSrcPos, dst, restSize);
    dmaSize = (sYaz0CurDataEnd - (u32)dst) - restSize;
    if (sYaz0CurSize < dmaSize)
        dmaSize = sYaz0CurSize;

    if (dmaSize != 0)
    {
        DmaMgr_DMARomToRam(sYaz0CurRomStart, (u32)dst + restSize, dmaSize);
        sYaz0CurRomStart += dmaSize;
        sYaz0CurSize -= dmaSize;
        if (!sYaz0CurSize)
            sYaz0MaxPtr = (u32)dst + restSize + dmaSize;
    }

    return dst;
}

#ifdef NON_MATCHING
void Yaz0_DecompressImpl(Yaz0Header* hdr, u8* dst)
{
    u32 bitIdx;
    u8* srcPtr;
    u8* dstPtr;
    u32 chunkHeader;
    u32 nibble;
    u8* backPtr;
    u32 chunkSize;
    u32 curDecBit;
    u32 off;

    bitIdx = 0;
    srcPtr = hdr->data;
    dstPtr = dst;
    
    do
    {
        if (bitIdx == 0)
        {
            if (sYaz0MaxPtr < (u32)srcPtr)
            {
                if (sYaz0CurSize)
                    srcPtr = Yaz0_NextDMA(srcPtr);
            }
            chunkHeader = *srcPtr++;
            bitIdx = 8;
        }
        curDecBit = chunkHeader & (1 << 7);
        chunkHeader <<= 1;
        if (curDecBit) //uncompressed
        {
            *dstPtr++ = *srcPtr++;
        }
        else //compressed
        {
            nibble = *srcPtr >> 4;
            backPtr = dstPtr - (*(srcPtr+1) | (*srcPtr & 0xF) << 8);
            srcPtr += 2;
            
            chunkSize = (nibble == 0)       //N = chunkSize; B = back offset
                ? (u32)(*srcPtr++ +0x12)    //3 bytes 0B BB NN
                : nibble+2;                 //2 bytes NB BB

            for (off = chunkSize; off > 0; off--)
                *dstPtr++ = backPtr++[3];
        }
        bitIdx--;

    } while (dstPtr != dst + hdr->decSize);

}
#else
#pragma GLOBAL_ASM("asm/non_matchings/boot/yaz0/Yaz0_DecompressImpl.s")
#endif

void Yaz0_Decompress(u32 romStart, void* dst, u32 size)
{
    sYaz0CurRomStart = romStart;
    sYaz0CurSize = size;
    sYaz0CurDataEnd = sYaz0DataBuffer + sizeof(sYaz0DataBuffer);
    Yaz0_DecompressImpl(Yaz0_FirstDMA(), dst);
}
