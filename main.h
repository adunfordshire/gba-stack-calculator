
//Structs
typedef struct {
    char *sign;
} OPSIGN;
OPSIGN opSign[13] = {{"+"}, {"-"}, {"*"}, {"/"}, {"&&"}, {"||"}, 
    {"!"}, {"&"}, {"|"}, {"^"}, {"~"}, {"<<"}, {">>"}};

typedef struct {
    int row;
    int col;
    int oldCol;
    int height;
    int width;
    char colorIndex;
    int pos;
} CURSOR;

//Prototypes
void init();
void initCalc();

void goToBin();
void updateBin();

void goToOct();
void updateOct();

void goToDec();
void updateDec();

void goToHex();
void updateHex();

void update();
void draw();

void drawCursor();
void updateCursor();
void opUpdate();

void flow();

void computeAdd();
void computeSub();
void computeMulti();
void computeDiv();
void computeBoolAnd();
void computeBoolOr();
void computeBoolNot();
void computeBitAnd();
void computeBitOr();
void computeBitXor();
void computeComp();
void computeSLeft();
void computeSRight();

void goToAdd();
void goToSub();
void goToMulti();
void goToDiv();
void goToBoolAnd();
void goToBoolOr();
void goToBoolNot();
void goToBitAnd();
void goToBitOr();
void goToBitXor();
void goToComp();
void goToSLeft();
void goToSRight();

void updateAdd();
void updateSub();
void updateMulti();
void updateDiv();
void updateBoolAnd();
void updateBoolOr();
void updateBoolNot();
void updateBitAnd();
void updateBitOr();
void updateBitXor();
void updateComp();
void updateSLeft();
void updateSRight();

void drawBin();
void drawOct();
void drawDec();
void drawHex();