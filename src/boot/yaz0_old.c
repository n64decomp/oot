#include <global.h>

/* This seems to be an old version of Yaz0 */

//this function is weird, no clue why it's so far from matching
#ifdef NON_MATCHING
void Yaz0_Old_DecompressImpl(Yaz0Header* hdr, u8* dst)
{
    u16* compInfoPtr;
    u8* uncompDataPtr;
    u32 bitIdx;
    u32* groupeHeaders;
    u8* dstPtr;
    u32 groupeHeader;
    u32 curDecBit;
    u16 compInfo;
    u32 nibble;
    u8* backPtr;
    u32 chunkSize;

    compInfoPtr = (u16*)((u8*)hdr + hdr->compInfoOffset);
    uncompDataPtr = (u8*)hdr + hdr->uncompDataOffset;
    bitIdx = 0;
    groupeHeaders = hdr->data;
    dstPtr = dst;
    
    do
    {
        if (bitIdx == 0)
        {
            groupeHeader = *groupeHeaders;
            bitIdx = 32;
            groupeHeaders++;
        }
        curDecBit = ((s32)groupeHeader < 0); // basically (groupHeader & (1 << 31)) 
        if (curDecBit) //uncompressed
        {
            *dstPtr++ = *uncompDataPtr++;
        }
        else //compressed
        {
            compInfo = *compInfoPtr++;
            nibble = (u32)compInfo >> 12u;
            backPtr = dstPtr - (compInfo & 0x0FFF);
            
            chunkSize = (nibble == 0)               //N = chunkSize; B = back offset
                ? (u32)(*uncompDataPtr++ +0x12)     //0B BB (+ NN from uncompDataPtr)
                : nibble+2;                         //NB BB
            
            do 
            {
                *dstPtr++ = *(backPtr++ - 1);
            } while (chunkSize);
        }

        groupeHeader <<= 1;
        bitIdx--;

    } while (dstPtr != dst + hdr->decSize);

}
#else
#pragma GLOBAL_ASM("asm/non_matchings/boot/Yaz0_Old_Decompress.s")
#endif