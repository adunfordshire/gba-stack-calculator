#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "main.h"
#include "myLib.h"
#include "text.h"

enum { BINARY, OCTAL, DECIMAL, HEX};
int base;

enum { ADDITION, SUBTRACTION, MULTIPLICATION, INTDIVISION, 
        BOOLAND, BOOLOR, BOOLNOT, BITAND, BITOR, BITXOR, COMPLEMENT,
        SHIFTLEFT, SHIFTRIGHT};
int operation;

char buffer[41];
char binbuff0[41];
char binbuff1[41];
char binbuff2[41];
char binbuff3[41];

char * stackbin0;
char * stackbin1;
char * stackbin2;
char * stackbin3;

volatile unsigned short stack[4];
int factor; //factor to multiply place value by

CURSOR cursor;

int changed = 0;

unsigned int buttons;
unsigned int oldButtons;

int main() {

    init();
    initCalc();

    while (1) {
        oldButtons = buttons;
        buttons = BUTTONS;

        update();
        waitForVBlank();
        draw();
    }
    return 0;
}

void init() {
    REG_DISPCTL = MODE4 | BG2_ENABLE | BUFFER2;
    PALETTE[0] = BLACK;
    PALETTE[1] = WHITE;
    PALETTE[2] = RED;
    PALETTE[3] = GREEN;
    changed = 0;
}

//Calculator initial drawing and such (set the stage)
void initCalc() {

    cursor.row = 140;
    cursor.col = 161;
    cursor.height = 2;
    cursor.width = 5;
    cursor.colorIndex = 2;
    cursor.pos = 0;

    drawString4(2, 20, "  Hi, I am a stack calculator!", 1);
    drawString4(12, 10, "Direction Pad: move the cursor", 1);
    drawString4(22, 10, "R: change base   L: swap", 1);
    drawString4(32, 10, "A: operate    B: change operation", 1);
    drawString4(42, 10, "Start: roll down    Select: roll up", 1);
    drawString4(82, 20, "Binary  Octal  Decimal  Hexadecimal", 3);
    flipPage();
    drawString4(2, 20, "  Hi, I am a stack calculator!", 1);
    drawString4(12, 10, "Direction Pad: move the cursor", 1);
    drawString4(22, 10, "R: change base   L: swap", 1);
    drawString4(32, 10, "A: operate    B: change operation", 1);
    drawString4(42, 10, "Start: roll down    Select: roll up", 1);
    drawString4(82, 20, "Binary  Octal  Decimal  Hexadecimal", 3);
    flipPage();

    goToBin();
    goToAdd();
}

void operations() {
    switch(operation) {
        case ADDITION:
            updateAdd();
            break;
        case SUBTRACTION:
            updateSub();
            break;
        case MULTIPLICATION:
            updateMulti();
            break;
        case INTDIVISION:
            updateDiv();
            break;
        case BOOLAND:
            updateBoolAnd();
            break;
        case BOOLOR:
            updateBoolOr();
            break;
        case BOOLNOT:
            updateBoolNot();
            break;
        case BITAND:
            updateBitAnd();
            break;
        case BITOR:
            updateBitOr();
            break;
        case BITXOR:
            updateBitXor();
            break;
        case COMPLEMENT:
            updateComp();
            break;
        case SHIFTLEFT:
            updateSLeft();
            break;
        case SHIFTRIGHT:
            updateSRight();
            break;
    }
}

void goToBin() {
    drawBin();
    drawString4(82, 157, "*", 0);
    drawString4(82, 10, "*", 2);
    flipPage();

    drawString4(82, 157, "*", 0);
    drawString4(82, 10, "*", 2);
    flipPage();

    factor = 2;
    base = BINARY;
}

void updateBin() {
    if (BUTTON_PRESSED(BUTTON_R)) {
        goToOct();
    }
    if (BUTTON_PRESSED(BUTTON_UP)) {
        stack[0] += pow(factor, cursor.pos);
        drawRect4(130, 70, 8, 96, 0);
        stackbin0 = (char *) short2bin(stack[0], binbuff0);
        drawString4(130, 70, binbuff0, 3);
        flipPage();
        drawRect4(130, 70, 8, 96, 0);
        drawString4(130, 70, binbuff0, 3);
        flipPage();
    }
    if (BUTTON_PRESSED(BUTTON_DOWN)) {
        stack[0] -= pow(factor, cursor.pos);
        drawRect4(130, 70, 8, 96, 0);
        stackbin0 = (char *) short2bin(stack[0], binbuff0);
        drawString4(130, 70, binbuff0, 3);
        flipPage();
        drawRect4(130, 70, 8, 96, 0);
        drawString4(130, 70, binbuff0, 3);
        flipPage();
    }
}

void goToOct() {
    drawOct();
    drawString4(82, 10, "*", 0);
    drawString4(82, 60, "*", 2);
    flipPage();
    drawString4(82, 10, "*", 0);
    drawString4(82, 60, "*", 2);
    flipPage();

    factor = 8;
    base = OCTAL;
}

void updateOct() {
    if (BUTTON_PRESSED(BUTTON_R)) {
        goToDec();
    }
    if (BUTTON_PRESSED(BUTTON_UP)) {
        stack[0] += pow(factor, cursor.pos);
        drawRect4(130, 70, 8, 96, 0);
        sprintf(buffer, "%016o", stack[0]);
        drawString4(130, 70, buffer, 3);
        flipPage();
        drawRect4(130, 70, 8, 96, 0);
        sprintf(buffer, "%016o", stack[0]);
        drawString4(130, 70, buffer, 3);
        flipPage();
    }
    if (BUTTON_PRESSED(BUTTON_DOWN)) {
        stack[0] -= pow(factor, cursor.pos);
        drawRect4(130, 70, 8, 96, 0);
        sprintf(buffer, "%016o", stack[0]);
        drawString4(130, 70, buffer, 3);
        flipPage();
        drawRect4(130, 70, 8, 96, 0);
        sprintf(buffer, "%016o", stack[0]);
        drawString4(130, 70, buffer, 3);
        flipPage();
    }
}

void goToDec() {
    drawDec();
    drawString4(82, 60, "*", 0);
    drawString4(82, 103, "*", 2);
    flipPage();

    drawString4(82, 60, "*", 0);
    drawString4(82, 103, "*", 2);
    flipPage();

    factor = 10;
    base = DECIMAL;
}

void updateDec() {
    if (BUTTON_PRESSED(BUTTON_R)) {
        goToHex();
    }
    if (BUTTON_PRESSED(BUTTON_UP)) {
        stack[0] += pow(factor, cursor.pos);
        drawRect4(130, 70, 8, 96, 0);
        sprintf(buffer, "%016d", stack[0]);
        drawString4(130, 70, buffer, 3);
        flipPage();
        drawRect4(130, 70, 8, 96, 0);
        sprintf(buffer, "%016d", stack[0]);
        drawString4(130, 70, buffer, 3);
        flipPage();
    }
    if (BUTTON_PRESSED(BUTTON_DOWN)) {
        stack[0] -= pow(factor, cursor.pos);
        drawRect4(130, 70, 8, 96, 0);
        sprintf(buffer, "%016d", stack[0]);
        drawString4(130, 70, buffer, 3);
        flipPage();
        drawRect4(130, 70, 8, 96, 0);
        sprintf(buffer, "%016d", stack[0]);
        drawString4(130, 70, buffer, 3);
        flipPage();
    }
}

void goToHex() {
    drawHex();
    drawString4(82, 103, "*", 0);
    drawString4(82, 157, "*", 2);
    flipPage();

    drawString4(82, 103, "*", 0);
    drawString4(82, 157, "*", 2);
    flipPage();

    factor = 16;
    base = HEX;
}

void updateHex() {
    if (BUTTON_PRESSED(BUTTON_R)) {
        goToBin();
    }
    if (BUTTON_PRESSED(BUTTON_UP)) {
        stack[0] += pow(factor, cursor.pos);
        drawRect4(130, 70, 8, 96, 0);
        sprintf(buffer, "%016x", stack[0]);
        drawString4(130, 70, buffer, 3);
        flipPage();
        drawRect4(130, 70, 8, 96, 0);
        sprintf(buffer, "%016x", stack[0]);
        drawString4(130, 70, buffer, 3);
        flipPage();
    }
    if (BUTTON_PRESSED(BUTTON_DOWN)) {
        stack[0] -= pow(factor, cursor.pos);
        drawRect4(130, 70, 8, 96, 0);
        sprintf(buffer, "%016d", stack[0]);
        drawString4(130, 70, buffer, 3);
        flipPage();
        drawRect4(130, 70, 8, 96, 0);
        sprintf(buffer, "%016d", stack[0]);
        drawString4(130, 70, buffer, 3);
        flipPage();
    }
}

void drawBin() {
    stackbin0 = (char *) short2bin(stack[0], binbuff0);
    stackbin1 = (char *) short2bin(stack[1], binbuff1);
    stackbin2 = (char *) short2bin(stack[2], binbuff2);
    stackbin3 = (char *) short2bin(stack[3], binbuff3);
    drawRect4(100, 70, 38, 96, 0);
    drawString4(130, 70, binbuff0, 3);
    drawString4(120, 70, binbuff1, 3);
    drawString4(110, 70, binbuff2, 3);
    drawString4(100, 70, binbuff3, 3);
    flipPage();

    drawRect4(100, 70, 38, 96, 0);
    drawString4(130, 70, binbuff0, 3);
    drawString4(120, 70, binbuff1, 3);
    drawString4(110, 70, binbuff2, 3);
    drawString4(100, 70, binbuff3, 3);
    flipPage();
}

void drawOct() {
    drawRect4(100, 70, 38, 96, 0);
    sprintf(buffer, "%016o", stack[0]);
    drawString4(130, 70, buffer, 3);
    sprintf(buffer, "%016o", stack[1]);
    drawString4(120, 70, buffer, 3);
    sprintf(buffer, "%016o", stack[2]);
    drawString4(110, 70, buffer, 3);
    sprintf(buffer, "%016o", stack[3]);
    drawString4(100, 70, buffer, 3);
    flipPage();

    drawRect4(100, 70, 38, 96, 0);
    sprintf(buffer, "%016o", stack[0]);
    drawString4(130, 70, buffer, 3);
    sprintf(buffer, "%016o", stack[1]);
    drawString4(120, 70, buffer, 3);
    sprintf(buffer, "%016o", stack[2]);
    drawString4(110, 70, buffer, 3);
    sprintf(buffer, "%016o", stack[3]);
    drawString4(100, 70, buffer, 3);
    flipPage();
}

void drawDec() {
    drawRect4(100, 70, 38, 96, 0);
    sprintf(buffer, "%016d", stack[0]);
    drawString4(130, 70, buffer, 3);
    sprintf(buffer, "%016d", stack[1]);
    drawString4(120, 70, buffer, 3);
    sprintf(buffer, "%016d", stack[2]);
    drawString4(110, 70, buffer, 3);
    sprintf(buffer, "%016d", stack[3]);
    drawString4(100, 70, buffer, 3);
    flipPage();

    drawRect4(100, 70, 38, 96, 0);
    sprintf(buffer, "%016d", stack[0]);
    drawString4(130, 70, buffer, 3);
    sprintf(buffer, "%016d", stack[1]);
    drawString4(120, 70, buffer, 3);
    sprintf(buffer, "%016d", stack[2]);
    drawString4(110, 70, buffer, 3);
    sprintf(buffer, "%016d", stack[3]);
    drawString4(100, 70, buffer, 3);
    flipPage();
}

void drawHex() {
    drawRect4(100, 70, 38, 96, 0);
    sprintf(buffer, "%016x", stack[0]);
    drawString4(130, 70, buffer, 3);
    sprintf(buffer, "%016x", stack[1]);
    drawString4(120, 70, buffer, 3);
    sprintf(buffer, "%016x", stack[2]);
    drawString4(110, 70, buffer, 3);
    sprintf(buffer, "%016x", stack[3]);
    drawString4(100, 70, buffer, 3);
    flipPage();

    drawRect4(100, 70, 38, 96, 0);
    sprintf(buffer, "%016x", stack[0]);
    drawString4(130, 70, buffer, 3);
    sprintf(buffer, "%016x", stack[1]);
    drawString4(120, 70, buffer, 3);
    sprintf(buffer, "%016x", stack[2]);
    drawString4(110, 70, buffer, 3);
    sprintf(buffer, "%016x", stack[3]);
    drawString4(100, 70, buffer, 3);
    flipPage();
}

void update() {
    switch(base) {
        case BINARY:
            updateBin();
            operations();
            break;
        case OCTAL:
            updateOct();
            operations();
            break;
        case DECIMAL:
            updateDec();
            operations();
            break;
        case HEX:
            updateHex();
            operations();
            break;
    }
    opUpdate();
    updateCursor();
}

void draw() {
    if (changed) {
        switch(base) {
            case BINARY:
                drawBin();
                break;
            case OCTAL:
                drawOct();
                break;
            case DECIMAL:
                drawDec();
                break;
            case HEX:
                drawHex();
                break;
        }
        changed = 0;
    }
    drawCursor();
}

void drawCursor() {
    drawRect4(cursor.row, cursor.oldCol, cursor.height, cursor.width, 0);
    drawRect4(cursor.row, cursor.col, cursor.height, cursor.width, cursor.colorIndex);
    flipPage();

    drawRect4(cursor.row, cursor.oldCol, cursor.height, cursor.width, 0);
    drawRect4(cursor.row, cursor.col, cursor.height, cursor.width, cursor.colorIndex);
    flipPage();
}

void updateCursor() {
    if (BUTTON_PRESSED(BUTTON_RIGHT)) {
        if (cursor.col < 161) {
            cursor.oldCol = cursor.col;
            cursor.col = cursor.col + 6;
            cursor.pos -= 1;
        }
    }
    if (BUTTON_PRESSED(BUTTON_LEFT)) {
        if (cursor.col > 71) {
            cursor.oldCol = cursor.col;
            cursor.col = cursor.col - 6;
            cursor.pos += 1;
        }
    }
}

void opUpdate() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        stack[0] = stack[1];
        stack[1] = stack[2];
        stack[2] = stack[3];
        stack[3] = 0;
        changed = 1;
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        stack[3] = stack[2];
        stack[2] = stack[1];
        stack[1] = stack[0];
        stack[0] = 0;
        changed = 1;
    }
    if (BUTTON_PRESSED(BUTTON_L)) {
        unsigned short temp = stack[1];
        stack[1] = stack[0];
        stack[0] = temp;
        changed = 1;
    }
}

void computeAdd() {
    stack[0] = stack[1] + stack[0];
    flow();
    changed = 1;
}
void computeSub() {
    stack[0] = stack[1] - stack[0];
    flow();
    changed = 1;
}
void computeMulti() {
    stack[0] = stack[1] * stack[0];
    flow();
    changed = 1;
}
void computeDiv() {
    stack[0] = stack[1] / stack[0];
    flow();
    changed = 1;
}
void computeBoolAnd() {
    stack[0] = stack[1] && stack[0];
    flow();
    changed = 1;
}
void computeBoolOr() {
    stack[0] = stack[1] || stack[0];
    flow();
    changed = 1;
}
void computeBoolNot() {
    stack[0] = !stack[0];
    flow();
    changed = 1;
}
void computeBitAnd() {
    stack[0] = stack[1] & stack[0];
    flow();
    changed = 1;
}
void computeBitOr() {
    stack[0] = stack[1] | stack[0];
    flow();
    changed = 1;
}
void computeBitXor() {
    stack[0] = stack[1] ^ stack[0];
    flow();
    changed = 1;
}
void computeComp() {
    stack[0] = ~stack[0];
    flow();
    changed = 1;
}
void computeSLeft() {
    stack[0] = stack[1] << stack[0];
    flow();
    changed = 1;
}
void computeSRight() {
    stack[0] = stack[1] >> stack[0];
    flow();
    changed = 1;
}

void flow() {
    stack[1] = stack[2];
    stack[2] = stack[3];
    stack[3] = 0;
}

void goToAdd() {
    sprintf(buffer, "%s", opSign[0].sign);
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    operation = ADDITION;
}
void goToSub() {
    sprintf(buffer, "%s", opSign[1].sign);
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    operation = SUBTRACTION;
}
void goToMulti() {
    sprintf(buffer, "%s", opSign[2].sign);
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    operation = MULTIPLICATION;
}
void goToDiv() {
    sprintf(buffer, "%s", opSign[3].sign);
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    operation = INTDIVISION;
}
void goToBoolAnd() {
    sprintf(buffer, "%s", opSign[4].sign);
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    operation = BOOLAND;
}
void goToBoolOr() {
    sprintf(buffer, "%s", opSign[5].sign);
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    operation = BOOLOR;
}
void goToBoolNot() {
    sprintf(buffer, "%s", opSign[6].sign);
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    operation = BOOLNOT;
}
void goToBitAnd() {
    sprintf(buffer, "%s", opSign[7].sign);
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    operation = BITAND;
}
void goToBitOr() {
    sprintf(buffer, "%s", opSign[8].sign);
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    operation = BITOR;
}
void goToBitXor() {
    sprintf(buffer, "%s", opSign[9].sign);
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    operation = BITXOR;
}
void goToComp() {
    sprintf(buffer, "%s", opSign[10].sign);
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    operation = COMPLEMENT;
}
void goToSLeft() {
    sprintf(buffer, "%s", opSign[11].sign);
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    operation = SHIFTLEFT;
}
void goToSRight() {
    sprintf(buffer, "%s", opSign[12].sign);
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    drawRect4(130, 52, 8, 12, 0);
    drawString4(130, 52, buffer, 2);
    flipPage();
    operation = SHIFTRIGHT;
}

void updateAdd() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        computeAdd();
    }
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToSub();
    }
}
void updateSub() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        computeSub();
    }
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToMulti();
    }
}
void updateMulti() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        computeMulti();
    }
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToDiv();
    }
}
void updateDiv() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        computeDiv();
    }
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToBoolAnd();
    }
}
void updateBoolAnd() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        computeBoolAnd();
    }
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToBoolOr();
    }
}
void updateBoolOr() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        computeBoolOr();
    }
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToBoolNot();
    }
}
void updateBoolNot() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        computeBoolNot();
    }
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToBitAnd();
    }
}
void updateBitAnd() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        computeBitAnd();
    }
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToBitOr();
    }
}
void updateBitOr() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        computeBitOr();
    }
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToBitXor();
    }
}
void updateBitXor() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        computeBitXor();
    }
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToComp();
    }
}
void updateComp() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        computeComp();
    }
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToSLeft();
    }
}
void updateSLeft() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        computeSLeft();
    }
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToSRight();
    }
}
void updateSRight() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        computeSRight();
    }
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToAdd();
    }
}