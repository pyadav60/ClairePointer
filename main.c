#include "gba.h"
#include "print.h"

extern unsigned short* videoBuffer;

unsigned short oldButtons;
unsigned short buttons;

int isLooping = 1;
int isBackwards = 0;
int skipFrames = 0;
int currFrame = 0;
int skipperMySon = 1;

int main() {

    mgba_open();
    mgba_printf("Debug logs initialized!");
    // if (isLooping) {
    //         if (isBackwards) {
    //             skipFrames += skipperMySon;
    //             if (skipFrames > 30) {
    //                 if (currFrame == 0) {
    //                     currFrame = 8;
    //                     skipFrames = 0;
    //                 } else {
    //                     currFrame--;
    //                     skipFrames = 0;
    //                 }
    //             }
    //         } else {
    //             skipFrames += skipperMySon;
    //             if (skipFrames > 30) {
    //                 if (currFrame == 8) {
    //                     currFrame = 0;
    //                     skipFrames = 0;
    //                 } else {
    //                     currFrame++;
    //                     skipFrames = 0;
    //                 }
    //             }
    //         }
    //     }
    REG_DISPCTL = MODE(3) | BG2_ENABLE;
    oldButtons = 0;
    buttons = REG_BUTTONS;

    drawClair();
    drawClean();
    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;
        updateGame();
        waitForVBlank();

        if (isLooping) {
            if (isBackwards) {
                skipFrames += skipperMySon;
                if (skipFrames > 40) {
                    if (currFrame == 0) {
                        currFrame = 8;
                        skipFrames = 0;
                    } else {
                        currFrame--;
                        skipFrames = 0;
                    }
                }
            } else {
                skipFrames += skipperMySon;
                if (skipFrames > 40) {
                    if (currFrame == 8) {
                        currFrame = 0;
                        skipFrames = 0;
                    } else {
                        currFrame++;
                        skipFrames = 0;
                    }
                }
            }
        }

        draw(currFrame);
    }
}



void updateGame() {

    if (BUTTON_PRESSED(BUTTON_A)) {
        if (currFrame == 8) {
            currFrame = 0;
        } else {
            currFrame++;
        }
    }

    if (BUTTON_PRESSED(BUTTON_B)) {
        if (currFrame == 0) {
            currFrame = 8;
        } else {
            currFrame--;
        }
    }

    if (BUTTON_PRESSED(BUTTON_START)) {
        isLooping = !isLooping;
    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        isBackwards = !isBackwards;
    }

    if (BUTTON_PRESSED(BUTTON_LEFT)) {
        currFrame = 0;
    }

    if (BUTTON_PRESSED(BUTTON_RIGHT)) {
        currFrame = 8;
    }

    if (BUTTON_PRESSED(BUTTON_UP)) {
        if (skipperMySon < 5) {
            skipperMySon++;
        }
    }

    if (BUTTON_PRESSED(BUTTON_DOWN)) {
        if (skipperMySon > 1) {
            skipperMySon--;
        }
    }

 
}

void draw(int frame) {
    switch(currFrame) {
        case 0:
            drawP();
            break;
        case 1:
            drawO();
            break;
        case 2:
            drawI();
            break;
        case 3:
            drawN();
            break;
        case 4:
            drawT();
            break;
        case 5:
            drawE();
            break;
        case 6:
            drawR();
            break;
        case 7:
            drawS();
            break;
        case 8:
            drawX();
            break;
    }
}
void drawP() {
    drawClean();
    drawRect(15,47,3,6,BLACK);

    drawRect(15,47,1,5,RED);
    drawRect(17,47,1,3,RED);
    setPixel(16,47,RED);
    setPixel(16,49,RED);
}
void drawO() {
    drawClean();
    drawRect(19,47,3,6,BLACK);

    drawRect(19,47,1,5,COLOR(31,19,5));
    drawRect(21,47,1,5,COLOR(31,19,5));
    setPixel(20,47,COLOR(31,19,5));
    setPixel(20,51,COLOR(31,19,5));
}
void drawI() {
    drawClean();
    drawRect(23,47,3,6,BLACK);

    drawRect(23,47,3,1,YELLOW);
    drawRect(23,51,3,1,YELLOW);
    drawRect(24,48,1,3,YELLOW);
}
void drawN() {
    drawClean();
    drawRect(27,47,4,6,BLACK);

    drawRect(27,47,1,5,GREEN);
    drawRect(28,48,1,2,GREEN);
    drawRect(29,49,1,2,GREEN);
    drawRect(30,47,1,5,GREEN);
}

void drawT() {
    drawClean();
    drawRect(32,47,3,6,BLACK);

    drawRect(32,47,3,1,CYAN);
    drawRect(33,47,1,5,CYAN);
}

void drawE() {
    drawClean();
    drawRect(36,47,3,6,BLACK);

    drawRect(36,47,1,5,BLUE);
    drawRect(37,47,2,1,BLUE);
    drawRect(37,49,2,1,BLUE);
    drawRect(37,51,2,1,BLUE);
}

void drawR() {
    drawClean();
    drawRect(40,47,3,6,BLACK);

    drawRect(40,47,1,5,COLOR(19,5,31));
    drawRect(42,47,1,3,COLOR(19,5,31));
    setPixel(41,47,COLOR(19,5,31));
    setPixel(41,50,COLOR(19,5,31));
    setPixel(42,51,COLOR(19,5,31));
}

void drawS() {
    drawClean();
    drawRect(44,47,3,6,BLACK);

    drawRect(44,47,3,1,MAGENTA);
    drawRect(44,49,3,1,MAGENTA);
    drawRect(44,51,3,1,MAGENTA);
    setPixel(44,48,MAGENTA);
    setPixel(46,50,MAGENTA);
}

void drawX() {
    drawClean();
    drawRect(48,47,1,6,BLACK);

    drawRect(48,47,1,3,COLOR(31,17,23));
    setPixel(48,51,COLOR(31,17,23));
}

void drawClean() {
    drawRect(15,47,34,6,BLACK);

    drawRect(15,48,1,5,WHITE);
    drawRect(17,48,1,3,WHITE);
    setPixel(16,48,WHITE);
    setPixel(16,50,WHITE);

    drawRect(19,48,1,5,WHITE);
    drawRect(21,48,1,5,WHITE);
    setPixel(20,48,WHITE);
    setPixel(20,52,WHITE);

    drawRect(23,48,3,1,WHITE);
    drawRect(23,52,3,1,WHITE);
    drawRect(24,49,1,3,WHITE);

    drawRect(27,48,1,5,WHITE);
    drawRect(28,49,1,2,WHITE);
    drawRect(29,50,1,2,WHITE);
    drawRect(30,48,1,5,WHITE);

    drawRect(32,48,3,1,WHITE);
    drawRect(33,48,1,5,WHITE);

    drawRect(36,48,1,5,WHITE);
    drawRect(37,48,2,1,WHITE);
    drawRect(37,50,2,1,WHITE);
    drawRect(37,52,2,1,WHITE);

    drawRect(40,48,1,5,WHITE);
    drawRect(42,48,1,3,WHITE);
    setPixel(41,48,WHITE);
    setPixel(41,51,WHITE);
    setPixel(42,52,WHITE);

    drawRect(44,48,3,1,WHITE);
    drawRect(44,50,3,1,WHITE);
    drawRect(44,52,3,1,WHITE);
    setPixel(44,49,WHITE);
    setPixel(46,51,WHITE);

    drawRect(48,48,1,3,WHITE);
    setPixel(48,52,WHITE);
}


void drawClair() {
    setPixel(100, 100, COLOR(3,13,16));
    setPixel(93, 97, COLOR(3,13,16));
    setPixel(92, 97, COLOR(3,13,16));
    setPixel(92, 99, COLOR(3,13,16));
    setPixel(92, 100, COLOR(3,13,16));
    setPixel(91, 99, COLOR(3,13,16));
    setPixel(90, 91, COLOR(3,13,16));
    setPixel(90, 90, COLOR(3,13,16));
    setPixel(90, 89, COLOR(3,13,16));
    setPixel(89, 90, COLOR(3,13,16));
    setPixel(89, 89, COLOR(3,13,16));
    setPixel(91, 89, COLOR(3,13,16));
    setPixel(91, 90, COLOR(3,13,16));
    setPixel(92, 89, COLOR(3,13,16));
    setPixel(92, 88, COLOR(3,13,16));
    setPixel(91, 88, COLOR(3,13,16));

    setPixel(87, 85, COLOR(3,13,16));
    setPixel(88, 85, COLOR(3,13,16));
    setPixel(89, 85, COLOR(3,13,16));
    setPixel(89, 84, COLOR(3,13,16));
    setPixel(90, 84, COLOR(3,13,16));
    setPixel(91, 84, COLOR(3,13,16));

    setPixel(62, 92, COLOR(3,13,16));
    setPixel(63, 92, COLOR(3,13,16));
    setPixel(64, 92, COLOR(3,13,16));

    setPixel(62, 93, COLOR(3,13,16));
    setPixel(63, 93, COLOR(3,13,16));
    setPixel(61, 93, COLOR(3,13,16));

    setPixel(62, 94, COLOR(3,13,16));
    setPixel(63, 94, COLOR(3,13,16));
    setPixel(61, 94, COLOR(3,13,16));
    setPixel(60, 94, COLOR(3,13,16));

    setPixel(62, 95, COLOR(3,13,16));
    setPixel(63, 95, COLOR(3,13,16));
    setPixel(64, 95, COLOR(3,13,16));
    drawRect(59,96,8,3, COLOR(3,13,16));


    drawRect(82,71,4,6,COLOR(31,26,23));
    drawRect(80,72,2,2,COLOR(31,26,23));
    drawRect(84,70,2,1,COLOR(31,26,23));
    drawRect(86,75,2,7,COLOR(31,26,23));
    drawRect(86,72,1,7,COLOR(31,26,23));
    drawRect(85,77,1,4,COLOR(31,26,23));
    drawRect(84,77,1,2,COLOR(31,26,23));
    setPixel(83, 77, COLOR(31,26,23));
    setPixel(81, 75, COLOR(31,26,23));
    setPixel(81, 74, COLOR(31,26,23));
    drawRect(72,49,3,4,COLOR(31,26,23));
    drawRect(71,50,1,2,COLOR(31,26,23));
    drawRect(75,50,1,2,COLOR(31,26,23));
    drawRect(73,37,3,3,COLOR(31,26,23));
    drawRect(76,38,2,3,COLOR(31,26,23));
    drawRect(74,43,5,2,COLOR(31,26,23));
    drawRect(74,45,3,1,COLOR(31,26,23));
    setPixel(75, 46, COLOR(31,26,23));
    setPixel(79, 43, COLOR(31,26,23));
    setPixel(77, 41, COLOR(31,26,23));
    setPixel(77, 42, COLOR(31,26,23));

    drawRect(73,72,3,3,COLOR(27,20,15));
    setPixel(73, 71, COLOR(27,20,15));
    setPixel(74, 75, COLOR(27,20,15));
    setPixel(76, 72, COLOR(27,20,15));
    setPixel(87, 82, COLOR(27,20,15));
    setPixel(88, 79, COLOR(27,20,15));
    setPixel(88, 80, COLOR(27,20,15));
    setPixel(88, 81, COLOR(27,20,15));
    setPixel(89, 81, COLOR(27,20,15));
    drawRect(73,41,1,2,COLOR(27,20,15));
    drawRect(70,50,1,2,COLOR(27,20,15));
    drawRect(72,50,1,2,COLOR(27,20,15));
    drawRect(80,43,1,2,COLOR(27,20,15));
    setPixel(76, 42, COLOR(27,20,15));
    setPixel(79, 45, COLOR(27,20,15));
    setPixel(78, 46, COLOR(27,20,15));
    setPixel(80, 51, COLOR(27,20,15));
    drawRect(76,47,2,1,COLOR(27,20,15));

    setPixel(74, 76, COLOR(23,15,12));
    setPixel(80, 74, COLOR(23,15,12));
    setPixel(81, 76, COLOR(23,15,12));
    setPixel(82, 77, COLOR(23,15,12));
    setPixel(83, 78, COLOR(23,15,12));
    setPixel(84, 79, COLOR(23,15,12));
    setPixel(85, 81, COLOR(23,15,12));
    setPixel(86, 82, COLOR(23,15,12));
    setPixel(86, 72, COLOR(23,15,12));
    setPixel(88, 78, COLOR(23,15,12));
    setPixel(66, 33, COLOR(23,15,12));
    setPixel(75, 40, COLOR(23,15,12));
    setPixel(76, 41, COLOR(23,15,12));
    setPixel(80, 42, COLOR(23,15,12));
    setPixel(79, 44, COLOR(23,15,12));
    setPixel(79, 46, COLOR(23,15,12));
    drawRect(70,52,2,1,COLOR(23,15,12));
    drawRect(73,46,2,1,COLOR(23,15,12));
    drawRect(67,32,2,1,COLOR(23,15,12));
    drawRect(65,34,1,3,COLOR(23,15,12));
    drawRect(76,50,1,3,COLOR(23,15,12));
    drawRect(75,52,1,2,COLOR(23,15,12));
    setPixel(75, 47, COLOR(23,15,12));
    setPixel(75, 49, COLOR(23,15,12));
    setPixel(74, 48, COLOR(23,15,12));
    setPixel(70, 48, COLOR(23,15,12));
    setPixel(71, 47, COLOR(23,15,12));
    
    setPixel(67, 33, COLOR(31,27,17));
    drawRect(66,34,1,2,COLOR(31,27,17));
    drawRect(81,46,1,2,COLOR(31,27,17));
    drawRect(72,47,3,1,COLOR(31,27,17));
    setPixel(71, 48, COLOR(31,27,17));
    setPixel(75, 48, COLOR(31,27,17));
    setPixel(76, 49, COLOR(31,27,17));

    setPixel(78, 49, WHITE);
    setPixel(75, 41, WHITE);
    setPixel(75, 42, WHITE);

    drawRect(75,65,5,4,COLOR(10,24,26));
    drawRect(76,64,2,1,COLOR(10,24,26));
    drawRect(81,52,2,1,COLOR(10,24,26));
    drawRect(82,53,2,1,COLOR(10,24,26));
    drawRect(63,41,2,1,COLOR(10,24,26));
    drawRect(58,38,2,1,COLOR(10,24,26));
    drawRect(56,31,2,1,COLOR(10,24,26));
    drawRect(60,48,2,1,COLOR(10,24,26));
    drawRect(56,31,2,1,COLOR(10,24,26));
    drawRect(63,50,2,1,COLOR(10,24,26));
    drawRect(62,51,2,1,COLOR(10,24,26));
    drawRect(58,30,6,7,COLOR(10,24,26));
    drawRect(56,32,2,7,COLOR(10,24,26));
    drawRect(54,32,2,6,COLOR(10,24,26));
    drawRect(53,33,1,5,COLOR(10,24,26));
    drawRect(51,35,2,3,COLOR(10,24,26));
    setPixel(50, 36, COLOR(10,24,26));
    setPixel(52, 34, COLOR(10,24,26));
    setPixel(77, 63, COLOR(10,24,26));
    setPixel(79, 71, COLOR(10,24,26));
    setPixel(81, 70, COLOR(10,24,26));
    setPixel(77, 69, COLOR(10,24,26));
    drawRect(78,69,3,2,COLOR(10,24,26));
    drawRect(80,67,1,2,COLOR(10,24,26));
    drawRect(83,54,1,2,COLOR(10,24,26));
    drawRect(79,49,1,2,COLOR(10,24,26));
    drawRect(60,50,1,2,COLOR(10,24,26));
    setPixel(61, 52, COLOR(10,24,26));
    setPixel(59, 52, COLOR(10,24,26));
    setPixel(82, 56, COLOR(10,24,26));
    setPixel(72, 43, COLOR(10,24,26));
    setPixel(65, 33, COLOR(10,24,26));
    drawRect(58,37,6,1,COLOR(10,24,26));
    drawRect(53,38,3,1,COLOR(10,24,26));
    drawRect(55,39,3,1,COLOR(10,24,26));
    drawRect(64,31,3,2,COLOR(10,24,26));
    drawRect(64,33,1,4,COLOR(10,24,26));
    drawRect(66,40,6,3,COLOR(10,24,26));
    drawRect(65,41,1,2,COLOR(10,24,26));
    drawRect(68,43,5,1,COLOR(10,24,26));
    drawRect(70,39,2,1,COLOR(10,24,26));
    drawRect(68,34,1,2,COLOR(10,24,26));
    drawRect(69,33,3,6,COLOR(10,24,26));
    drawRect(72,32,4,3,COLOR(10,24,26));
    drawRect(78,32,5,4,COLOR(10,24,26));
    drawRect(79,36,2,4,COLOR(10,24,26));
    drawRect(81,36,1,2,COLOR(10,24,26));
    drawRect(79,40,1,2,COLOR(10,24,26));
    drawRect(80,31,3,1,COLOR(10,24,26));
    setPixel(78, 36, COLOR(10,24,26));
    setPixel(72, 35, COLOR(10,24,26));
    drawRect(76,33,2,2,COLOR(10,24,26));
    drawRect(76,35,1,2,COLOR(10,24,26));
    drawRect(74,35,2,1,COLOR(10,24,26));
    drawRect(70,44,2,1,COLOR(10,24,26));

    setPixel(81, 69, COLOR(9,19,25));
    setPixel(80, 71, COLOR(9,19,25));
    setPixel(77, 70, COLOR(9,19,25));
    setPixel(76, 69, COLOR(9,19,25));
    setPixel(76, 71, COLOR(9,19,25));
    setPixel(74, 63, COLOR(9,19,25));
    setPixel(75, 64, COLOR(9,19,25));
    setPixel(75, 70, COLOR(9,19,25));
    setPixel(72, 36, COLOR(9,19,25));
    setPixel(74, 36, COLOR(9,19,25));
    setPixel(77, 35, COLOR(9,19,25));
    setPixel(72, 44, COLOR(9,19,25));
    setPixel(55, 40, COLOR(9,19,25));
    setPixel(72, 36, COLOR(9,19,25));
    setPixel(50, 35, COLOR(9,19,25));
    setPixel(51, 34, COLOR(9,19,25));
    setPixel(50, 28, COLOR(9,19,25));
    setPixel(44, 27, COLOR(9,19,25));
    setPixel(44, 32, COLOR(9,19,25));
    setPixel(77, 60, COLOR(9,19,25));
    setPixel(76, 63, COLOR(9,19,25));
    setPixel(45, 30, COLOR(9,19,25));
    drawRect(45,32,1,2,COLOR(9,19,25));
    drawRect(72,66,2,4,COLOR(9,19,25));
    drawRect(73,64,2,2,COLOR(9,19,25));
    drawRect(74,63,2,2,COLOR(9,19,25));
    drawRect(78,63,1,2,COLOR(9,19,25));
    drawRect(74,70,2,1,COLOR(9,19,25));
    drawRect(74,68,1,3,COLOR(9,19,25));
    drawRect(75,61,3,2,COLOR(9,19,25));
    drawRect(76,58,1,3,COLOR(9,19,25));
    drawRect(76,37,2,1,COLOR(9,19,25));
    drawRect(68,45,5,1,COLOR(9,19,25));
    drawRect(67,36,1,3,COLOR(9,19,25));
    drawRect(46,30,7,4,COLOR(9,19,25));
    drawRect(50,29,2,1,COLOR(9,19,25));
    drawRect(44,28,2,1,COLOR(9,19,25));
    drawRect(44,29,4,1,COLOR(9,19,25));
    drawRect(49,38,2,1,COLOR(9,19,25));
    drawRect(51,39,4,2,COLOR(9,19,25));
    drawRect(49,38,4,2,COLOR(9,19,25));
    drawRect(47,35,3,2,COLOR(9,19,25));
    drawRect(48,37,3,2,COLOR(9,19,25));
    drawRect(47,34,2,1,COLOR(9,19,25));
    drawRect(72,40,1,2,COLOR(9,19,25));

    drawRect(43,26,2,1,COLOR(3,13,17));
    drawRect(46,28,2,1,COLOR(3,13,17));
    drawRect(49,34,2,1,COLOR(3,13,17));
    drawRect(51,33,2,1,COLOR(3,13,17));
    drawRect(48,29,2,1,COLOR(3,13,17));
    drawRect(49,27,2,1,COLOR(3,13,17));
    drawRect(67,31,2,1,COLOR(3,13,17));
    drawRect(76,32,2,1,COLOR(3,13,17));
    drawRect(78,31,2,1,COLOR(3,13,17));
    drawRect(80,30,3,1,COLOR(3,13,17));
    drawRect(72,31,4,1,COLOR(3,13,17));
    drawRect(82,42,2,1,COLOR(3,13,17));
    drawRect(81,41,4,1,COLOR(3,13,17));
    drawRect(82,39,1,2,COLOR(3,13,17));
    drawRect(62,49,3,1,COLOR(3,13,17));
    drawRect(65,51,2,1,COLOR(3,13,17));
    drawRect(64,52,2,1,COLOR(3,13,17));
    drawRect(66,39,4,1,COLOR(3,13,17));
    drawRect(68,36,1,4,COLOR(3,13,17));
    drawRect(72,37,1,3,COLOR(3,13,17));
    drawRect(73,35,1,2,COLOR(3,13,17));
    drawRect(78,37,1,2,COLOR(3,13,17));
    drawRect(78,57,2,2,COLOR(3,13,17));
    drawRect(79,60,2,2,COLOR(3,13,17));
    drawRect(74,66,1,2,COLOR(3,13,17));
    drawRect(72,70,2,1,COLOR(3,13,17));
    drawRect(74,71,2,1,COLOR(3,13,17));
    drawRect(83,65,1,2,COLOR(3,13,17));
    drawRect(53,30,1,2,COLOR(3,13,17));
    drawRect(81,56,1,1,COLOR(3,13,17));
    drawRect(69,32,3,1,COLOR(3,13,17));
    setPixel(59, 51, COLOR(3,13,17));
    setPixel(60, 52, COLOR(3,13,17));
    setPixel(61, 50, COLOR(3,13,17));
    setPixel(62, 48, COLOR(3,13,17));
    setPixel(66, 50, COLOR(3,13,17));
    setPixel(69, 44, COLOR(3,13,17));
    setPixel(72, 42, COLOR(3,13,17));
    setPixel(73, 43, COLOR(3,13,17));
    setPixel(74, 42, COLOR(3,13,17));
    setPixel(74, 40, COLOR(3,13,17));
    setPixel(65, 40, COLOR(3,13,17));
    setPixel(75, 36, COLOR(3,13,17));
    setPixel(77, 36, COLOR(3,13,17));
    setPixel(83, 31, COLOR(3,13,17));
    setPixel(79, 42, COLOR(3,13,17));
    setPixel(59, 51, COLOR(3,13,17));
    setPixel(80, 40, COLOR(3,13,17));
    setPixel(82, 45, COLOR(3,13,17));
    setPixel(78, 51, COLOR(3,13,17));
    setPixel(79, 52, COLOR(3,13,17));
    setPixel(82, 51, COLOR(3,13,17));
    setPixel(83, 52, COLOR(3,13,17));
    setPixel(84, 53, COLOR(3,13,17));
    setPixel(76, 57, COLOR(3,13,17));
    setPixel(77, 59, COLOR(3,13,17));
    setPixel(59, 51, COLOR(3,13,17));
    setPixel(78, 62, COLOR(3,13,17));
    setPixel(80, 59, COLOR(3,13,17));
    setPixel(80, 57, COLOR(3,13,17));
    setPixel(80, 59, COLOR(3,13,17));
    setPixel(81, 62, COLOR(3,13,17));
    setPixel(82, 63, COLOR(3,13,17));
    setPixel(84, 68, COLOR(3,13,17));
    setPixel(83, 69, COLOR(3,13,17));
    setPixel(81, 71, COLOR(3,13,17));
    setPixel(75, 69, COLOR(3,13,17));
    setPixel(43, 27, COLOR(3,13,17));
    setPixel(45, 27, COLOR(3,13,17));
    setPixel(51, 28, COLOR(3,13,17));
    setPixel(52, 29, COLOR(3,13,17));
    setPixel(44, 30, COLOR(3,13,17));
    setPixel(45, 31, COLOR(3,13,17));
    setPixel(43, 32, COLOR(3,13,17));
    setPixel(46, 34, COLOR(3,13,17));
    setPixel(47, 37, COLOR(3,13,17));
    setPixel(64, 30, COLOR(3,13,17));
    setPixel(51, 28, COLOR(3,13,17));
    setPixel(49, 28, COLOR(3,13,17));
    setPixel(55, 31, COLOR(3,13,17));
    setPixel(57, 30, COLOR(3,13,17));

    drawRect(43,28,1,2,COLOR(4,7,11));
    drawRect(43,33,2,1,COLOR(4,7,11));
    drawRect(46,35,1,2,COLOR(4,7,11));
    drawRect(58,29,6,1,COLOR(4,7,11));
    drawRect(65,30,2,1,COLOR(4,7,11));
    drawRect(67,34,1,2,COLOR(4,7,11));
    setPixel(44, 31, COLOR(4,7,11));
    setPixel(45, 34, COLOR(4,7,11));
    setPixel(53, 32, COLOR(4,7,11));
    setPixel(54, 31, COLOR(4,7,11));
    setPixel(56, 30, COLOR(4,7,11));
    setPixel(56, 40, COLOR(4,7,11));
    setPixel(58, 39, COLOR(4,7,11));
    setPixel(60, 38, COLOR(4,7,11));
    setPixel(64, 37, COLOR(4,7,11));
    setPixel(68, 33, COLOR(4,7,11));
    drawRect(62,40,3,1,COLOR(4,7,11));
    drawRect(62,41,1,1,COLOR(4,7,11));
    drawRect(68,46,4,1,COLOR(4,7,11));
    drawRect(67,45,1,1,COLOR(4,7,11));
    drawRect(60,38,1,1,COLOR(4,7,11));
    drawRect(60,49,2,1,COLOR(4,7,11));
    drawRect(62,52,2,1,COLOR(4,7,11));
    drawRect(60,47,2,1,COLOR(4,7,11));
    setPixel(59, 48, COLOR(4,7,11));
    setPixel(61, 51, COLOR(4,7,11));
    setPixel(62, 50, COLOR(4,7,11));
    setPixel(62, 53, COLOR(4,7,11));
    setPixel(64, 51, COLOR(4,7,11));
    setPixel(65, 50, COLOR(4,7,11));
    setPixel(81, 45, COLOR(4,7,11));
    setPixel(82, 46, COLOR(4,7,11));
    setPixel(83, 45, COLOR(4,7,11));
    setPixel(82, 38, COLOR(4,7,11));
    setPixel(81, 40, COLOR(4,7,11));
    setPixel(85, 41, COLOR(4,7,11));
    setPixel(84, 42, COLOR(4,7,11));
    setPixel(82, 44, COLOR(4,7,11));
    setPixel(82, 43, COLOR(4,7,11));
    setPixel(83, 43, COLOR(4,7,11));
    drawRect(79,54,2,1,COLOR(4,7,11));
    drawRect(81,55,2,1,COLOR(4,7,11));
    drawRect(79,56,2,1,COLOR(4,7,11));
    drawRect(78,59,2,1,COLOR(4,7,11));
    drawRect(79,62,2,1,COLOR(4,7,11));
    drawRect(82,64,2,1,COLOR(4,7,11));
    drawRect(81,65,2,1,COLOR(4,7,11));
    drawRect(83,67,2,1,COLOR(4,7,11));
    drawRect(82,68,2,1,COLOR(4,7,11));
    drawRect(84,69,2,1,COLOR(4,7,11));
    drawRect(82,70,2,1,COLOR(4,7,11));
    drawRect(77,71,2,1,COLOR(4,7,11));
    setPixel(64, 42, COLOR(4,7,11));
    setPixel(67, 43, COLOR(4,7,11));
    setPixel(68, 44, COLOR(4,7,11));
    setPixel(73, 44, COLOR(4,7,11));
    setPixel(73, 45, COLOR(4,7,11));
    setPixel(81, 53, COLOR(4,7,11));
    drawRect(78,39,1,3,COLOR(4,7,11));
    drawRect(79,63,1,2,COLOR(4,7,11));
    drawRect(80,65,1,2,COLOR(4,7,11));
    drawRect(82,69,1,2,COLOR(4,7,11));
    drawRect(84,54,1,2,COLOR(4,7,11));
    drawRect(78,60,1,2,COLOR(4,7,11));
    drawRect(81,67,1,2,COLOR(4,7,11));
    drawRect(81,60,1,2,COLOR(4,7,11));
    drawRect(83,56,1,1,COLOR(4,7,11));
    drawRect(77,58,1,1,COLOR(4,7,11));
    setPixel(75, 60, COLOR(4,7,11));
    setPixel(81, 57, COLOR(4,7,11));
    setPixel(80, 58, COLOR(4,7,11));
    drawRect(91,94,1,4,COLOR(4,7,11));
    drawRect(93,90,1,3,COLOR(4,7,11));
    drawRect(94,93,1,2,COLOR(4,7,11));
    drawRect(90,92,1,2,COLOR(4,7,11));
    drawRect(99,99,1,1,COLOR(4,7,11));
    setPixel(90, 88, COLOR(4,7,11));
    setPixel(89, 91, COLOR(4,7,11));
    setPixel(90, 97, COLOR(4,7,11));
    setPixel(95, 95, COLOR(4,7,11));
    setPixel(96, 96, COLOR(4,7,11));
    setPixel(97, 97, COLOR(4,7,11));
    setPixel(98, 98, COLOR(4,7,11));
    setPixel(95, 99, COLOR(4,7,11));
    setPixel(97, 100, COLOR(4,7,11));
    setPixel(93, 99, COLOR(4,7,11));
    setPixel(63, 48, COLOR(4,7,11));
    setPixel(61, 97, COLOR(4,7,11));
    setPixel(64, 98, COLOR(4,7,11));
    setPixel(66, 96, COLOR(4,7,11));
    setPixel(65, 95, COLOR(4,7,11));
    setPixel(64, 93, COLOR(4,7,11));
    setPixel(65, 92, COLOR(4,7,11));
    setPixel(67, 98, COLOR(4,7,11));
    setPixel(62, 91, COLOR(4,7,11));
    setPixel(61, 92, COLOR(4,7,11));
    setPixel(60, 93, COLOR(4,7,11));
    setPixel(59, 94, COLOR(4,7,11));
    setPixel(76, 70, COLOR(4,7,11));
    drawRect(58,95,4,1,COLOR(4,7,11));
    drawRect(62,96,2,1,COLOR(4,7,11));

    setPixel(82, 47, COLOR(15,9,11));
    setPixel(81, 48, COLOR(15,9,11));
    setPixel(81, 51, COLOR(15,9,11));
    setPixel(74, 53, COLOR(15,9,11));
    setPixel(78, 47, COLOR(15,9,11));
    setPixel(86, 71, COLOR(15,9,11));
    setPixel(87, 74, COLOR(15,9,11));
    setPixel(89, 80, COLOR(15,9,11));
    setPixel(90, 81, COLOR(15,9,11));
    setPixel(84, 80, COLOR(15,9,11));
    setPixel(80, 75, COLOR(15,9,11));
    setPixel(74, 77, COLOR(15,9,11));
    setPixel(75, 75, COLOR(15,9,11));
    setPixel(77, 72, COLOR(15,9,11));
    setPixel(74, 55, COLOR(15,9,11));
    setPixel(73, 40, COLOR(15,9,11));
    drawRect(74,56,2,2,COLOR(15,9,11));
    drawRect(73,57,2,4,COLOR(15,9,11));
    drawRect(76,46,2,1,COLOR(15,9,11));
    drawRect(76,48,2,1,COLOR(15,9,11));
    drawRect(81,42,1,3,COLOR(15,9,11));
    drawRect(80,45,1,3,COLOR(15,9,11));
    drawRect(76,73,1,2,COLOR(15,9,11));
    drawRect(79,72,1,2,COLOR(15,9,11));

    drawRect(80,63,2,2,COLOR(7,16,22));
    drawRect(81,66,2,1,COLOR(7,16,22));
    drawRect(79,55,2,1,COLOR(7,16,22));
    drawRect(81,54,2,1,COLOR(7,16,22));
    drawRect(79,53,2,1,COLOR(7,16,22));
    setPixel(82, 67, COLOR(7,16,22));
    setPixel(92, 90, COLOR(7,16,22));
    setPixel(94, 95, COLOR(7,16,22));
    setPixel(96, 97, COLOR(7,16,22));
    setPixel(98, 99, COLOR(7,16,22));
    drawRect(91,91,2,3,COLOR(7,16,22));
    drawRect(92,93,2,4,COLOR(7,16,22));
    drawRect(94,96,2,3,COLOR(7,16,22));
    drawRect(96,98,2,2,COLOR(7,16,22));
    drawRect(91,98,3,1,COLOR(7,16,22));
    drawRect(98,100,2,1,COLOR(7,16,22));

    drawRect(84,82,2,1,COLOR(6,6,9));
    drawRect(85,83,5,1,COLOR(6,6,9));
    drawRect(88,82,4,1,COLOR(6,6,9));
    drawRect(87,87,4,1,COLOR(6,6,9));
    drawRect(90,85,3,2,COLOR(6,6,9));
    setPixel(90, 80, COLOR(6,6,9));
    setPixel(91, 81, COLOR(6,6,9));
    setPixel(92, 84, COLOR(6,6,9));
    setPixel(86, 86, COLOR(6,6,9));
    setPixel(77, 49, COLOR(6,6,9));
    setPixel(78, 52, COLOR(6,6,9));
    setPixel(79, 51, COLOR(6,6,9));
    setPixel(80, 52, COLOR(6,6,9));
    setPixel(77, 53, COLOR(6,6,9));
    setPixel(78, 56, COLOR(6,6,9));
    setPixel(77, 56, COLOR(6,6,9));
    setPixel(77, 57, COLOR(6,6,9));
    drawRect(78,48,2,1,COLOR(6,6,9));
    drawRect(77,50,2,1,COLOR(6,6,9));
    drawRect(76,54,2,2,COLOR(6,6,9));
    drawRect(67,52,2,2,COLOR(6,6,9));
    drawRect(64,54,3,1,COLOR(6,6,9));
    drawRect(65,49,2,1,COLOR(6,6,9));
    drawRect(67,50,1,2,COLOR(6,6,9));
    drawRect(80,49,1,2,COLOR(6,6,9));
    setPixel(72, 46, COLOR(6,6,9));
    setPixel(69, 49, COLOR(6,6,9));
    setPixel(64, 48, COLOR(6,6,9));
    setPixel(66, 52, COLOR(6,6,9));
    setPixel(74, 54, COLOR(6,6,9));

    drawRect(73,54,1,1,COLOR(6,6,9));
    drawRect(72,54,1,3,COLOR(6,6,9));
    drawRect(71,53,1,9,COLOR(6,6,9));
    drawRect(70,53,1,35,COLOR(6,6,9));
    drawRect(69,55,1,34,COLOR(6,6,9));
    drawRect(68,57,1,35,COLOR(6,6,9));
    drawRect(67,59,1,32,COLOR(6,6,9));
    drawRect(66,61,1,30,COLOR(6,6,9));
    drawRect(65,63,1,28,COLOR(6,6,9));
    drawRect(64,64,1,27,COLOR(6,6,9));
    drawRect(63,66,1,25,COLOR(6,6,9));
    drawRect(62,67,1,23,COLOR(6,6,9));
    drawRect(61,69,1,21,COLOR(6,6,9));
    drawRect(60,70,1,19,COLOR(6,6,9));
    drawRect(59,71,1,18,COLOR(6,6,9));
    drawRect(58,71,1,17,COLOR(6,6,9));
    drawRect(57,72,1,15,COLOR(6,6,9));
    drawRect(56,73,1,13,COLOR(6,6,9));
    drawRect(55,74,1,12,COLOR(6,6,9));
    drawRect(54,75,1,10,COLOR(6,6,9));
    drawRect(53,76,1,8,COLOR(6,6,9));
    drawRect(52,78,1,6,COLOR(6,6,9));
    drawRect(51,79,1,5,COLOR(6,6,9));
    drawRect(50,80,1,4,COLOR(6,6,9));
    drawRect(49,81,1,3,COLOR(6,6,9));
    drawRect(48,81,1,4,COLOR(6,6,9));
    drawRect(47,85,1,1,COLOR(6,6,9));
    drawRect(71,71,1,15,COLOR(6,6,9));
    drawRect(72,74,1,13,COLOR(6,6,9));
    drawRect(73,77,1,10,COLOR(6,6,9));
    drawRect(74,80,1,8,COLOR(6,6,9));
    drawRect(75,82,1,7,COLOR(6,6,9));
    drawRect(76,84,1,6,COLOR(6,6,9));
    drawRect(77,86,1,7,COLOR(6,6,9));
    drawRect(78,88,1,7,COLOR(6,6,9));

    drawRect(65,48,3,1,COLOR(7,9,12));
    drawRect(67,49,2,1,COLOR(7,9,12));
    drawRect(68,50,1,2,COLOR(7,9,12));
    drawRect(48,83,1,2,COLOR(7,9,12));
    drawRect(65,84,1,6,COLOR(7,9,12));
    drawRect(66,81,1,10,COLOR(7,9,12));
    drawRect(67,79,1,12,COLOR(7,9,12));
    drawRect(68,78,1,12,COLOR(7,9,12));
    drawRect(69,79,1,9,COLOR(7,9,12));
    drawRect(70,82,1,6,COLOR(7,9,12));
    drawRect(71,85,1,3,COLOR(7,9,12));
    setPixel(70, 56, COLOR(7,9,12));
    setPixel(69, 57, COLOR(7,9,12));
    setPixel(68, 58, COLOR(7,9,12));
    setPixel(70, 58, COLOR(7,9,12));
    setPixel(71, 57, COLOR(7,9,12));
    setPixel(58, 81, COLOR(7,9,12));
    setPixel(57, 82, COLOR(7,9,12));
    setPixel(58, 83, COLOR(7,9,12));
    setPixel(56, 83, COLOR(7,9,12));
    setPixel(57, 84, COLOR(7,9,12));
    setPixel(55, 84, COLOR(7,9,12));
    setPixel(56, 85, COLOR(7,9,12));
    setPixel(73, 61, COLOR(7,9,12));
    setPixel(52, 77, COLOR(7,9,12));
    setPixel(51, 78, COLOR(7,9,12));
    setPixel(50, 79, COLOR(7,9,12));
    setPixel(49, 80, COLOR(7,9,12));
    setPixel(47, 83, COLOR(7,9,12));
    setPixel(47, 84, COLOR(7,9,12));
    setPixel(69, 88, COLOR(7,9,12));

    drawRect(71,59,1,2,COLOR(7,9,12));
    drawRect(70,59,1,12,COLOR(7,9,12));
    drawRect(69,59,1,10,COLOR(7,9,12));
    drawRect(68,59,1,8,COLOR(7,9,12));
    drawRect(67,61,1,3,COLOR(7,9,12));
    drawRect(66,63,1,2,COLOR(7,9,12));
    drawRect(65,64,1,3,COLOR(7,9,12));
    drawRect(64,66,1,3,COLOR(7,9,12));
    drawRect(63,67,1,4,COLOR(7,9,12));
    drawRect(62,69,1,2,COLOR(7,9,12));
    drawRect(61,70,1,2,COLOR(7,9,12));
    drawRect(60,71,1,3,COLOR(7,9,12));
    drawRect(59,72,1,5,COLOR(7,9,12));
    drawRect(58,72,1,10,COLOR(7,9,12));
    drawRect(57,73,1,8,COLOR(7,9,12));
    drawRect(56,74,1,8,COLOR(7,9,12));
    drawRect(55,75,1,8,COLOR(7,9,12));
    drawRect(54,76,1,8,COLOR(7,9,12));
    drawRect(53,77,1,8,COLOR(7,9,12));
    drawRect(52,78,1,6,COLOR(7,9,12));
    drawRect(51,79,1,5,COLOR(7,9,12));
    drawRect(50,80,1,4,COLOR(7,9,12));
    drawRect(49,81,1,3,COLOR(7,9,12));
    drawRect(48,83,1,2,COLOR(7,9,12));
    drawRect(70,87,1,2,COLOR(7,9,12));

    drawRect(72,61,1,4,COLOR(9,4,7));
    drawRect(69,90,4,4,COLOR(9,4,7));
    drawRect(73,92,1,3,COLOR(9,4,7));
    drawRect(66,92,3,1,COLOR(9,4,7));
    drawRect(71,89,2,1,COLOR(9,4,7));
    setPixel(73, 62, COLOR(9,4,7));
    setPixel(72, 88, COLOR(9,4,7));
    setPixel(68, 91, COLOR(9,4,7));
    setPixel(72, 88, COLOR(9,4,7));
    setPixel(61, 91, COLOR(9,4,7));
    drawRect(49,85,4,1,COLOR(9,4,7));
    drawRect(48,86,7,2,COLOR(9,4,7));
    drawRect(50,87,7,2,COLOR(9,4,7));
    drawRect(52,88,6,2,COLOR(9,4,7));
    drawRect(55,89,4,2,COLOR(9,4,7));
    drawRect(58,90,3,2,COLOR(9,4,7));
    drawRect(77,45,2,1,COLOR(9,4,7));

    drawRect(58,99,1,2,BLACK);
    drawRect(66,94,3,2,BLACK);
    setPixel(59, 98, BLACK);
    setPixel(61, 98, BLACK);
    setPixel(63, 98, BLACK);
    setPixel(62, 97, BLACK);
    setPixel(62, 98, BLACK);
    setPixel(68, 90, BLACK);


}