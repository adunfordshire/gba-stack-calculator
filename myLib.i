# 1 "myLib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "myLib.c"
# 1 "myLib.h" 1



typedef unsigned short u16;
# 31 "myLib.h"
extern unsigned short *videoBuffer;



void setPixel(int row, int col, unsigned short color);
void setPixel4(int row, int col, char color);
void drawRect3(int row, int col, int height, int width, unsigned short color);
void drawRect4(int row, int col, int height, int width, volatile unsigned char colorIndex);
void drawRectInBounds3(int row, int col, int height, int width, unsigned short color);
void waitForVBlank();
void fillScreen(unsigned short color);
void fillScreen4(unsigned char color);
void drawBackgroundImage3(volatile const unsigned short*);
void drawBackgroundImage4(volatile const unsigned short*);
void drawImage3(volatile const unsigned short* image, int row, int col, int height, int width);
void drawImage4(volatile const unsigned short* image, int row, int col, int height, int width);
void loadPalette(volatile const unsigned short* palette);
char * short2bin(short x, char arr[]);

void flipPage();
# 68 "myLib.h"
extern unsigned int oldButtons;
extern unsigned int buttons;
# 78 "myLib.h"
void DMANow(int channel, volatile const void* source, volatile const void* destination, unsigned int control);






typedef struct
{
        const volatile void *src;
        const volatile void *dst;
        unsigned int cnt;
} DMA_CONTROLLER;
# 2 "myLib.c" 2

unsigned short * videoBuffer = (unsigned short *)0x6000000;

unsigned short *frontBuffer = (u16 *)0x6000000;
unsigned short *backBuffer = (u16 *)0x600A000;

void setPixel(int row, int col, unsigned short color) {
    videoBuffer[((row)*(240)+(col))] = color;
}

void setPixel4(int row, int col, char index) {
    unsigned short pixel = videoBuffer[((row)*(240)+(col)) / 2];
    if (col & 1) {
        pixel &= 0x00FF;
        videoBuffer[((row)*(240)+(col)) / 2] = pixel | (index << 8);
    } else {
        pixel &= 0xFF00;
        videoBuffer[((row)*(240)+(col)) / 2] = pixel | (index);
    }
}

void DMANow(int channel, volatile const void* source, volatile const void* destination, unsigned int control)
{
    ((volatile DMA_CONTROLLER *) 0x40000B0)[channel].src = source;
    ((volatile DMA_CONTROLLER *) 0x40000B0)[channel].dst = destination;
    ((volatile DMA_CONTROLLER *) 0x40000B0)[channel].cnt = (1 << 31) | control;
}

void drawRect3(int row, int col, int height, int width, unsigned short color) {
    volatile unsigned short c = color;
    for(int r = 0; r < height; r++) {
        DMANow(3, &c, &videoBuffer[((row + r)*(240)+(col))], (2 << 23) | width);
    }
}

void drawRect4(int row, int col, int height, int width, volatile unsigned char colorIndex) {

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
        DMANow(3, &image[r*width], &videoBuffer[((row+r)*(240)+(col))], width);
    }
}

void loadPalette(volatile const unsigned short* palette) {
    DMANow(3, palette, ((u16 *)0x5000000), 256);
}

void fillScreen(unsigned short color) {
    volatile unsigned short c = color;
    DMANow(3, &c, videoBuffer, (2 << 23) | (240 * 160));
}

void fillScreen4(unsigned char colorIndex) {
    volatile unsigned short pixels = (colorIndex << 8) | colorIndex;
    DMANow(3, &pixels, videoBuffer, (2 << 23) | (240 * 160) / 2);
}

void flipPage() {
    if(*(unsigned short *)0x4000000 & (1<<4)) {
        *(unsigned short *)0x4000000 &= ~(1<<4);
        videoBuffer = backBuffer;
    } else {
        *(unsigned short *)0x4000000 |= (1<<4);
        videoBuffer = frontBuffer;
    }
}

void waitForVBlank() {
    while(*(volatile u16 *)0x4000006>160);
    while(*(volatile u16 *)0x4000006<160);
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
