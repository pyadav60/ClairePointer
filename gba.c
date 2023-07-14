#include "gba.h"

unsigned short oldButtons; // Keeps track of buttons pressed in previous frame
volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;

void drawRect(int x, int y, int width, int height, unsigned short color) {
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            setPixel(x + j, y + i, color);
        }
    }
}

void fillScreen(unsigned short color) {
    // TODO: complete this function from Lab02!

}

void waitForVBlank() {
    while (REG_VCOUNT >= 160);
    while (REG_VCOUNT < 160);
}

