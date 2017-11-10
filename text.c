#include "myLib.h"
#include "text.h"

void drawChar(int row, int col, char ch, u16 color) {
	for(int r=0; r<8; r++) {
		for(int c=0; c<6; c++) {
			if(fontdata_6x8[OFFSET(r, c, 6) + ch*48]) {
				setPixel(row+r, col+c, color);
			}
		}
	}
}
void drawChar4(int row, int col, char ch, char colorIndex) {
	for (int r=0; r<8; r++) {
		for (int c=0; c<6; c++) {
			if (fontdata_6x8[OFFSET(r, c, 6) + ch*48]) {
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