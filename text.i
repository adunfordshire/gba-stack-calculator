# 1 "text.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "text.c"
# 1 "myLib.h" 1



typedef unsigned short u16;
# 31 "myLib.h"
extern unsigned short *videoBuffer;



void setPixel(int row, int col, unsigned short color);
void setPixel4(int row, int col, unsigned char color);
void drawRect3(int row, int col, int height, int width, unsigned short color);
void drawRectInBounds3(int row, int col, int height, int width, unsigned short color);
void waitForVBlank();
void fillScreen(unsigned short color);
void fillScreen4(unsigned char color);
void drawBackgroundImage3(volatile const unsigned short*);
void drawBackgroundImage4(volatile const unsigned short*);
void drawImage3(volatile const unsigned short* image, int row, int col, int height, int width);
void drawImage4(volatile const unsigned short* image, int row, int col, int height, int width);
void loadPalette(volatile const unsigned short* palette);

void flipPage();
# 66 "myLib.h"
extern unsigned int oldButtons;
extern unsigned int buttons;
# 76 "myLib.h"
void DMANow(int channel, volatile const void* source, volatile const void* destination, unsigned int control);






typedef struct
{
        const volatile void *src;
        const volatile void *dst;
        unsigned int cnt;
} DMA_CONTROLLER;
# 2 "text.c" 2
# 1 "text.h" 1


void drawChar(int row, int col, char ch, u16 color);
void drawString(int row, int col, char str[], u16 color);
void drawChar4(int row, int col, char ch, char colorIndex);
void drawString4(int row, int col, char str[], char colorIndex);


extern const unsigned char fontdata_6x8[12288];
# 3 "text.c" 2

void drawChar(int row, int col, char ch, u16 color) {
 for(int r=0; r<8; r++) {
  for(int c=0; c<6; c++) {
   if(fontdata_6x8[((r)*(6)+(c)) + ch*48]) {
    setPixel(row+r, col+c, color);
   }
  }
 }
}
void drawChar4(int row, int col, char ch, char colorIndex) {
 for (int r=0; r<8; r++) {
  for (int c=0; c<6; c++) {
   if (fontdata_6x8[((r)*(6)+(c)) + ch*48]) {
    setPixel4(row+r, col+c, colorIndex);
   }
  }
 }
}

void drawString(int row, int col, char str[], u16 color) {
 while(*str) {
  drawChar(row, col, *str++, color);
  col += 6;
 }
}

void drawString4(int row, int col, char str[], char colorIndex) {
 while(*str != '\0') {
  drawChar4(row, col, *str++, colorIndex);
  col += 6;
 }
}
