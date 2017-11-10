#include "myLib.h"

unsigned short * videoBuffer = (unsigned short *)0x6000000;

unsigned short *frontBuffer = (u16 *)0x6000000;
unsigned short *backBuffer =  (u16 *)0x600A000;

void setPixel(int row, int col, unsigned short color) {
    videoBuffer[OFFSET(row,col,240)] = color;
}

void setPixel4(int row, int col, char index) {
    unsigned short pixel = videoBuffer[OFFSET(row, col, 240) / 2];
    if (col & 1) { //column is odd
        pixel &= 0x00FF;
        videoBuffer[OFFSET(row, col, 240) / 2] = pixel | (index << 8);
    } else { //column is even
        pixel &= 0xFF00;
        videoBuffer[OFFSET(row, col, 240) / 2] = pixel | (index);
    }
}

void DMANow(int channel, volatile const void* source, volatile const void* destination, unsigned int control)
{
    DMA[channel].src = source; 
    DMA[channel].dst = destination; 
    DMA[channel].cnt = DMA_ON | control; 
}

void drawRect3(int row, int col, int height, int width, unsigned short color) {
    volatile unsigned short c = color;
    for(int r = 0; r < height; r++) {
        DMANow(3, &c, &videoBuffer[OFFSET(row + r, col, 240)], DMA_SOURCE_FIXED | width); 
    }   
}

void drawRect4(int row, int col, int height, int width, volatile unsigned char colorIndex) {
    //TODO: Learn!
    for (int r = 0; r < height; r++) {
        for (int c = 0; c < width; c++) {
            setPixel4(row + r, col + c, colorIndex);
        }
    }
}

void drawBackgroundImage3(volatile const unsigned short * image) {
    DMANow(3, image, videoBuffer, (240*160));
}

void drawImage3(volatile const unsigned short* image, int row, int col, int height, int width) {
    for(int r = 0; r < height; r++) {
        DMANow(3, &image[r*width], &videoBuffer[OFFSET(row+r,col,240)], width);
    }
}

void loadPalette(volatile const unsigned short* palette) {
    DMANow(3, palette, PALETTE, 256);
}

void fillScreen(unsigned short color) {
    volatile unsigned short c = color;
    DMANow(3, &c, videoBuffer, DMA_SOURCE_FIXED | (240 * 160)); 
}

void fillScreen4(unsigned char colorIndex) {
    volatile unsigned short pixels = (colorIndex << 8) | colorIndex;
    DMANow(3, &pixels, videoBuffer, DMA_SOURCE_FIXED | (240 * 160) / 2); 
}

void flipPage() {
    if(REG_DISPCTL & BUFFER2) {
        REG_DISPCTL &= ~BUFFER2;
        videoBuffer = backBuffer;
    } else {
        REG_DISPCTL |= BUFFER2;
        videoBuffer = frontBuffer;
    }
}

void waitForVBlank() {
    while(SCANLINECOUNTER>160);
    while(SCANLINECOUNTER<160);
}

char * short2bin(short x, char arr[])
{
    arr[16] = '\0';
    int mask = 1;
    for(int i = 15; i>= 0; i--)
    {
        if(x & mask)
        {
            arr[i] = '1';
        }
        else
        {
            arr[i] = '0';
        }
        mask = mask << 1;
    }
    return arr;
}