# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
# 33 "gba.h"
void waitForVBlank();
# 49 "gba.h"
void drawRect(int x, int y, int width, int height, volatile unsigned short color);
void fillScreen(volatile unsigned short color);
# 66 "gba.h"
extern unsigned short oldButtons;
# 2 "main.c" 2
# 1 "print.h" 1
# 26 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 27 "print.h" 2
# 36 "print.h"

# 36 "print.h"
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
uint8_t mgba_open(void);
void mgba_close(void);
# 3 "main.c" 2

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
# 44 "main.c"
    (*(volatile unsigned short *)0x4000000) = ((3) & 7) | (1<<10);
    oldButtons = 0;
    buttons = (*(volatile unsigned short *)0x04000130);

    drawClair();
    drawClean();
    while (1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);
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

    if (((~(*(volatile unsigned short *)0x04000130) & ((1<<0))) && !(~oldButtons & ((1<<0))))) {
        if (currFrame == 8) {
            currFrame = 0;
        } else {
            currFrame++;
        }
    }

    if (((~(*(volatile unsigned short *)0x04000130) & ((1<<1))) && !(~oldButtons & ((1<<1))))) {
        if (currFrame == 0) {
            currFrame = 8;
        } else {
            currFrame--;
        }
    }

    if (((~(*(volatile unsigned short *)0x04000130) & ((1<<3))) && !(~oldButtons & ((1<<3))))) {
        isLooping = !isLooping;
    }

    if (((~(*(volatile unsigned short *)0x04000130) & ((1<<2))) && !(~oldButtons & ((1<<2))))) {
        isBackwards = !isBackwards;
    }

    if (((~(*(volatile unsigned short *)0x04000130) & ((1<<5))) && !(~oldButtons & ((1<<5))))) {
        currFrame = 0;
    }

    if (((~(*(volatile unsigned short *)0x04000130) & ((1<<4))) && !(~oldButtons & ((1<<4))))) {
        currFrame = 8;
    }

    if (((~(*(volatile unsigned short *)0x04000130) & ((1<<6))) && !(~oldButtons & ((1<<6))))) {
        if (skipperMySon < 5) {
            skipperMySon++;
        }
    }

    if (((~(*(volatile unsigned short *)0x04000130) & ((1<<7))) && !(~oldButtons & ((1<<7))))) {
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
    drawRect(15,47,3,6,((0) | (0) << 5 | (0) << 10));

    drawRect(15,47,1,5,((31) | (0) << 5 | (0) << 10));
    drawRect(17,47,1,3,((31) | (0) << 5 | (0) << 10));
    (videoBuffer[((47) * (240) + (16))] = ((31) | (0) << 5 | (0) << 10));
    (videoBuffer[((49) * (240) + (16))] = ((31) | (0) << 5 | (0) << 10));
}
void drawO() {
    drawClean();
    drawRect(19,47,3,6,((0) | (0) << 5 | (0) << 10));

    drawRect(19,47,1,5,((31) | (19) << 5 | (5) << 10));
    drawRect(21,47,1,5,((31) | (19) << 5 | (5) << 10));
    (videoBuffer[((47) * (240) + (20))] = ((31) | (19) << 5 | (5) << 10));
    (videoBuffer[((51) * (240) + (20))] = ((31) | (19) << 5 | (5) << 10));
}
void drawI() {
    drawClean();
    drawRect(23,47,3,6,((0) | (0) << 5 | (0) << 10));

    drawRect(23,47,3,1,((31) | (31) << 5 | (0) << 10));
    drawRect(23,51,3,1,((31) | (31) << 5 | (0) << 10));
    drawRect(24,48,1,3,((31) | (31) << 5 | (0) << 10));
}
void drawN() {
    drawClean();
    drawRect(27,47,4,6,((0) | (0) << 5 | (0) << 10));

    drawRect(27,47,1,5,((0) | (31) << 5 | (0) << 10));
    drawRect(28,48,1,2,((0) | (31) << 5 | (0) << 10));
    drawRect(29,49,1,2,((0) | (31) << 5 | (0) << 10));
    drawRect(30,47,1,5,((0) | (31) << 5 | (0) << 10));
}

void drawT() {
    drawClean();
    drawRect(32,47,3,6,((0) | (0) << 5 | (0) << 10));

    drawRect(32,47,3,1,((0) | (31) << 5 | (31) << 10));
    drawRect(33,47,1,5,((0) | (31) << 5 | (31) << 10));
}

void drawE() {
    drawClean();
    drawRect(36,47,3,6,((0) | (0) << 5 | (0) << 10));

    drawRect(36,47,1,5,((0) | (0) << 5 | (31) << 10));
    drawRect(37,47,2,1,((0) | (0) << 5 | (31) << 10));
    drawRect(37,49,2,1,((0) | (0) << 5 | (31) << 10));
    drawRect(37,51,2,1,((0) | (0) << 5 | (31) << 10));
}

void drawR() {
    drawClean();
    drawRect(40,47,3,6,((0) | (0) << 5 | (0) << 10));

    drawRect(40,47,1,5,((19) | (5) << 5 | (31) << 10));
    drawRect(42,47,1,3,((19) | (5) << 5 | (31) << 10));
    (videoBuffer[((47) * (240) + (41))] = ((19) | (5) << 5 | (31) << 10));
    (videoBuffer[((50) * (240) + (41))] = ((19) | (5) << 5 | (31) << 10));
    (videoBuffer[((51) * (240) + (42))] = ((19) | (5) << 5 | (31) << 10));
}

void drawS() {
    drawClean();
    drawRect(44,47,3,6,((0) | (0) << 5 | (0) << 10));

    drawRect(44,47,3,1,((31) | (0) << 5 | (31) << 10));
    drawRect(44,49,3,1,((31) | (0) << 5 | (31) << 10));
    drawRect(44,51,3,1,((31) | (0) << 5 | (31) << 10));
    (videoBuffer[((48) * (240) + (44))] = ((31) | (0) << 5 | (31) << 10));
    (videoBuffer[((50) * (240) + (46))] = ((31) | (0) << 5 | (31) << 10));
}

void drawX() {
    drawClean();
    drawRect(48,47,1,6,((0) | (0) << 5 | (0) << 10));

    drawRect(48,47,1,3,((31) | (17) << 5 | (23) << 10));
    (videoBuffer[((51) * (240) + (48))] = ((31) | (17) << 5 | (23) << 10));
}

void drawClean() {
    drawRect(15,47,34,6,((0) | (0) << 5 | (0) << 10));

    drawRect(15,48,1,5,((31) | (31) << 5 | (31) << 10));
    drawRect(17,48,1,3,((31) | (31) << 5 | (31) << 10));
    (videoBuffer[((48) * (240) + (16))] = ((31) | (31) << 5 | (31) << 10));
    (videoBuffer[((50) * (240) + (16))] = ((31) | (31) << 5 | (31) << 10));

    drawRect(19,48,1,5,((31) | (31) << 5 | (31) << 10));
    drawRect(21,48,1,5,((31) | (31) << 5 | (31) << 10));
    (videoBuffer[((48) * (240) + (20))] = ((31) | (31) << 5 | (31) << 10));
    (videoBuffer[((52) * (240) + (20))] = ((31) | (31) << 5 | (31) << 10));

    drawRect(23,48,3,1,((31) | (31) << 5 | (31) << 10));
    drawRect(23,52,3,1,((31) | (31) << 5 | (31) << 10));
    drawRect(24,49,1,3,((31) | (31) << 5 | (31) << 10));

    drawRect(27,48,1,5,((31) | (31) << 5 | (31) << 10));
    drawRect(28,49,1,2,((31) | (31) << 5 | (31) << 10));
    drawRect(29,50,1,2,((31) | (31) << 5 | (31) << 10));
    drawRect(30,48,1,5,((31) | (31) << 5 | (31) << 10));

    drawRect(32,48,3,1,((31) | (31) << 5 | (31) << 10));
    drawRect(33,48,1,5,((31) | (31) << 5 | (31) << 10));

    drawRect(36,48,1,5,((31) | (31) << 5 | (31) << 10));
    drawRect(37,48,2,1,((31) | (31) << 5 | (31) << 10));
    drawRect(37,50,2,1,((31) | (31) << 5 | (31) << 10));
    drawRect(37,52,2,1,((31) | (31) << 5 | (31) << 10));

    drawRect(40,48,1,5,((31) | (31) << 5 | (31) << 10));
    drawRect(42,48,1,3,((31) | (31) << 5 | (31) << 10));
    (videoBuffer[((48) * (240) + (41))] = ((31) | (31) << 5 | (31) << 10));
    (videoBuffer[((51) * (240) + (41))] = ((31) | (31) << 5 | (31) << 10));
    (videoBuffer[((52) * (240) + (42))] = ((31) | (31) << 5 | (31) << 10));

    drawRect(44,48,3,1,((31) | (31) << 5 | (31) << 10));
    drawRect(44,50,3,1,((31) | (31) << 5 | (31) << 10));
    drawRect(44,52,3,1,((31) | (31) << 5 | (31) << 10));
    (videoBuffer[((49) * (240) + (44))] = ((31) | (31) << 5 | (31) << 10));
    (videoBuffer[((51) * (240) + (46))] = ((31) | (31) << 5 | (31) << 10));

    drawRect(48,48,1,3,((31) | (31) << 5 | (31) << 10));
    (videoBuffer[((52) * (240) + (48))] = ((31) | (31) << 5 | (31) << 10));
}


void drawClair() {
    (videoBuffer[((100) * (240) + (100))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((97) * (240) + (93))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((97) * (240) + (92))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((99) * (240) + (92))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((100) * (240) + (92))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((99) * (240) + (91))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((91) * (240) + (90))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((90) * (240) + (90))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((89) * (240) + (90))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((90) * (240) + (89))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((89) * (240) + (89))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((89) * (240) + (91))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((90) * (240) + (91))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((89) * (240) + (92))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((88) * (240) + (92))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((88) * (240) + (91))] = ((3) | (13) << 5 | (16) << 10));

    (videoBuffer[((85) * (240) + (87))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((85) * (240) + (88))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((85) * (240) + (89))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((84) * (240) + (89))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((84) * (240) + (90))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((84) * (240) + (91))] = ((3) | (13) << 5 | (16) << 10));

    (videoBuffer[((92) * (240) + (62))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((92) * (240) + (63))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((92) * (240) + (64))] = ((3) | (13) << 5 | (16) << 10));

    (videoBuffer[((93) * (240) + (62))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((93) * (240) + (63))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((93) * (240) + (61))] = ((3) | (13) << 5 | (16) << 10));

    (videoBuffer[((94) * (240) + (62))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((94) * (240) + (63))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((94) * (240) + (61))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((94) * (240) + (60))] = ((3) | (13) << 5 | (16) << 10));

    (videoBuffer[((95) * (240) + (62))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((95) * (240) + (63))] = ((3) | (13) << 5 | (16) << 10));
    (videoBuffer[((95) * (240) + (64))] = ((3) | (13) << 5 | (16) << 10));
    drawRect(59,96,8,3, ((3) | (13) << 5 | (16) << 10));


    drawRect(82,71,4,6,((31) | (26) << 5 | (23) << 10));
    drawRect(80,72,2,2,((31) | (26) << 5 | (23) << 10));
    drawRect(84,70,2,1,((31) | (26) << 5 | (23) << 10));
    drawRect(86,75,2,7,((31) | (26) << 5 | (23) << 10));
    drawRect(86,72,1,7,((31) | (26) << 5 | (23) << 10));
    drawRect(85,77,1,4,((31) | (26) << 5 | (23) << 10));
    drawRect(84,77,1,2,((31) | (26) << 5 | (23) << 10));
    (videoBuffer[((77) * (240) + (83))] = ((31) | (26) << 5 | (23) << 10));
    (videoBuffer[((75) * (240) + (81))] = ((31) | (26) << 5 | (23) << 10));
    (videoBuffer[((74) * (240) + (81))] = ((31) | (26) << 5 | (23) << 10));
    drawRect(72,49,3,4,((31) | (26) << 5 | (23) << 10));
    drawRect(71,50,1,2,((31) | (26) << 5 | (23) << 10));
    drawRect(75,50,1,2,((31) | (26) << 5 | (23) << 10));
    drawRect(73,37,3,3,((31) | (26) << 5 | (23) << 10));
    drawRect(76,38,2,3,((31) | (26) << 5 | (23) << 10));
    drawRect(74,43,5,2,((31) | (26) << 5 | (23) << 10));
    drawRect(74,45,3,1,((31) | (26) << 5 | (23) << 10));
    (videoBuffer[((46) * (240) + (75))] = ((31) | (26) << 5 | (23) << 10));
    (videoBuffer[((43) * (240) + (79))] = ((31) | (26) << 5 | (23) << 10));
    (videoBuffer[((41) * (240) + (77))] = ((31) | (26) << 5 | (23) << 10));
    (videoBuffer[((42) * (240) + (77))] = ((31) | (26) << 5 | (23) << 10));

    drawRect(73,72,3,3,((27) | (20) << 5 | (15) << 10));
    (videoBuffer[((71) * (240) + (73))] = ((27) | (20) << 5 | (15) << 10));
    (videoBuffer[((75) * (240) + (74))] = ((27) | (20) << 5 | (15) << 10));
    (videoBuffer[((72) * (240) + (76))] = ((27) | (20) << 5 | (15) << 10));
    (videoBuffer[((82) * (240) + (87))] = ((27) | (20) << 5 | (15) << 10));
    (videoBuffer[((79) * (240) + (88))] = ((27) | (20) << 5 | (15) << 10));
    (videoBuffer[((80) * (240) + (88))] = ((27) | (20) << 5 | (15) << 10));
    (videoBuffer[((81) * (240) + (88))] = ((27) | (20) << 5 | (15) << 10));
    (videoBuffer[((81) * (240) + (89))] = ((27) | (20) << 5 | (15) << 10));
    drawRect(73,41,1,2,((27) | (20) << 5 | (15) << 10));
    drawRect(70,50,1,2,((27) | (20) << 5 | (15) << 10));
    drawRect(72,50,1,2,((27) | (20) << 5 | (15) << 10));
    drawRect(80,43,1,2,((27) | (20) << 5 | (15) << 10));
    (videoBuffer[((42) * (240) + (76))] = ((27) | (20) << 5 | (15) << 10));
    (videoBuffer[((45) * (240) + (79))] = ((27) | (20) << 5 | (15) << 10));
    (videoBuffer[((46) * (240) + (78))] = ((27) | (20) << 5 | (15) << 10));
    (videoBuffer[((51) * (240) + (80))] = ((27) | (20) << 5 | (15) << 10));
    drawRect(76,47,2,1,((27) | (20) << 5 | (15) << 10));

    (videoBuffer[((76) * (240) + (74))] = ((23) | (15) << 5 | (12) << 10));
    (videoBuffer[((74) * (240) + (80))] = ((23) | (15) << 5 | (12) << 10));
    (videoBuffer[((76) * (240) + (81))] = ((23) | (15) << 5 | (12) << 10));
    (videoBuffer[((77) * (240) + (82))] = ((23) | (15) << 5 | (12) << 10));
    (videoBuffer[((78) * (240) + (83))] = ((23) | (15) << 5 | (12) << 10));
    (videoBuffer[((79) * (240) + (84))] = ((23) | (15) << 5 | (12) << 10));
    (videoBuffer[((81) * (240) + (85))] = ((23) | (15) << 5 | (12) << 10));
    (videoBuffer[((82) * (240) + (86))] = ((23) | (15) << 5 | (12) << 10));
    (videoBuffer[((72) * (240) + (86))] = ((23) | (15) << 5 | (12) << 10));
    (videoBuffer[((78) * (240) + (88))] = ((23) | (15) << 5 | (12) << 10));
    (videoBuffer[((33) * (240) + (66))] = ((23) | (15) << 5 | (12) << 10));
    (videoBuffer[((40) * (240) + (75))] = ((23) | (15) << 5 | (12) << 10));
    (videoBuffer[((41) * (240) + (76))] = ((23) | (15) << 5 | (12) << 10));
    (videoBuffer[((42) * (240) + (80))] = ((23) | (15) << 5 | (12) << 10));
    (videoBuffer[((44) * (240) + (79))] = ((23) | (15) << 5 | (12) << 10));
    (videoBuffer[((46) * (240) + (79))] = ((23) | (15) << 5 | (12) << 10));
    drawRect(70,52,2,1,((23) | (15) << 5 | (12) << 10));
    drawRect(73,46,2,1,((23) | (15) << 5 | (12) << 10));
    drawRect(67,32,2,1,((23) | (15) << 5 | (12) << 10));
    drawRect(65,34,1,3,((23) | (15) << 5 | (12) << 10));
    drawRect(76,50,1,3,((23) | (15) << 5 | (12) << 10));
    drawRect(75,52,1,2,((23) | (15) << 5 | (12) << 10));
    (videoBuffer[((47) * (240) + (75))] = ((23) | (15) << 5 | (12) << 10));
    (videoBuffer[((49) * (240) + (75))] = ((23) | (15) << 5 | (12) << 10));
    (videoBuffer[((48) * (240) + (74))] = ((23) | (15) << 5 | (12) << 10));
    (videoBuffer[((48) * (240) + (70))] = ((23) | (15) << 5 | (12) << 10));
    (videoBuffer[((47) * (240) + (71))] = ((23) | (15) << 5 | (12) << 10));

    (videoBuffer[((33) * (240) + (67))] = ((31) | (27) << 5 | (17) << 10));
    drawRect(66,34,1,2,((31) | (27) << 5 | (17) << 10));
    drawRect(81,46,1,2,((31) | (27) << 5 | (17) << 10));
    drawRect(72,47,3,1,((31) | (27) << 5 | (17) << 10));
    (videoBuffer[((48) * (240) + (71))] = ((31) | (27) << 5 | (17) << 10));
    (videoBuffer[((48) * (240) + (75))] = ((31) | (27) << 5 | (17) << 10));
    (videoBuffer[((49) * (240) + (76))] = ((31) | (27) << 5 | (17) << 10));

    (videoBuffer[((49) * (240) + (78))] = ((31) | (31) << 5 | (31) << 10));
    (videoBuffer[((41) * (240) + (75))] = ((31) | (31) << 5 | (31) << 10));
    (videoBuffer[((42) * (240) + (75))] = ((31) | (31) << 5 | (31) << 10));

    drawRect(75,65,5,4,((10) | (24) << 5 | (26) << 10));
    drawRect(76,64,2,1,((10) | (24) << 5 | (26) << 10));
    drawRect(81,52,2,1,((10) | (24) << 5 | (26) << 10));
    drawRect(82,53,2,1,((10) | (24) << 5 | (26) << 10));
    drawRect(63,41,2,1,((10) | (24) << 5 | (26) << 10));
    drawRect(58,38,2,1,((10) | (24) << 5 | (26) << 10));
    drawRect(56,31,2,1,((10) | (24) << 5 | (26) << 10));
    drawRect(60,48,2,1,((10) | (24) << 5 | (26) << 10));
    drawRect(56,31,2,1,((10) | (24) << 5 | (26) << 10));
    drawRect(63,50,2,1,((10) | (24) << 5 | (26) << 10));
    drawRect(62,51,2,1,((10) | (24) << 5 | (26) << 10));
    drawRect(58,30,6,7,((10) | (24) << 5 | (26) << 10));
    drawRect(56,32,2,7,((10) | (24) << 5 | (26) << 10));
    drawRect(54,32,2,6,((10) | (24) << 5 | (26) << 10));
    drawRect(53,33,1,5,((10) | (24) << 5 | (26) << 10));
    drawRect(51,35,2,3,((10) | (24) << 5 | (26) << 10));
    (videoBuffer[((36) * (240) + (50))] = ((10) | (24) << 5 | (26) << 10));
    (videoBuffer[((34) * (240) + (52))] = ((10) | (24) << 5 | (26) << 10));
    (videoBuffer[((63) * (240) + (77))] = ((10) | (24) << 5 | (26) << 10));
    (videoBuffer[((71) * (240) + (79))] = ((10) | (24) << 5 | (26) << 10));
    (videoBuffer[((70) * (240) + (81))] = ((10) | (24) << 5 | (26) << 10));
    (videoBuffer[((69) * (240) + (77))] = ((10) | (24) << 5 | (26) << 10));
    drawRect(78,69,3,2,((10) | (24) << 5 | (26) << 10));
    drawRect(80,67,1,2,((10) | (24) << 5 | (26) << 10));
    drawRect(83,54,1,2,((10) | (24) << 5 | (26) << 10));
    drawRect(79,49,1,2,((10) | (24) << 5 | (26) << 10));
    drawRect(60,50,1,2,((10) | (24) << 5 | (26) << 10));
    (videoBuffer[((52) * (240) + (61))] = ((10) | (24) << 5 | (26) << 10));
    (videoBuffer[((52) * (240) + (59))] = ((10) | (24) << 5 | (26) << 10));
    (videoBuffer[((56) * (240) + (82))] = ((10) | (24) << 5 | (26) << 10));
    (videoBuffer[((43) * (240) + (72))] = ((10) | (24) << 5 | (26) << 10));
    (videoBuffer[((33) * (240) + (65))] = ((10) | (24) << 5 | (26) << 10));
    drawRect(58,37,6,1,((10) | (24) << 5 | (26) << 10));
    drawRect(53,38,3,1,((10) | (24) << 5 | (26) << 10));
    drawRect(55,39,3,1,((10) | (24) << 5 | (26) << 10));
    drawRect(64,31,3,2,((10) | (24) << 5 | (26) << 10));
    drawRect(64,33,1,4,((10) | (24) << 5 | (26) << 10));
    drawRect(66,40,6,3,((10) | (24) << 5 | (26) << 10));
    drawRect(65,41,1,2,((10) | (24) << 5 | (26) << 10));
    drawRect(68,43,5,1,((10) | (24) << 5 | (26) << 10));
    drawRect(70,39,2,1,((10) | (24) << 5 | (26) << 10));
    drawRect(68,34,1,2,((10) | (24) << 5 | (26) << 10));
    drawRect(69,33,3,6,((10) | (24) << 5 | (26) << 10));
    drawRect(72,32,4,3,((10) | (24) << 5 | (26) << 10));
    drawRect(78,32,5,4,((10) | (24) << 5 | (26) << 10));
    drawRect(79,36,2,4,((10) | (24) << 5 | (26) << 10));
    drawRect(81,36,1,2,((10) | (24) << 5 | (26) << 10));
    drawRect(79,40,1,2,((10) | (24) << 5 | (26) << 10));
    drawRect(80,31,3,1,((10) | (24) << 5 | (26) << 10));
    (videoBuffer[((36) * (240) + (78))] = ((10) | (24) << 5 | (26) << 10));
    (videoBuffer[((35) * (240) + (72))] = ((10) | (24) << 5 | (26) << 10));
    drawRect(76,33,2,2,((10) | (24) << 5 | (26) << 10));
    drawRect(76,35,1,2,((10) | (24) << 5 | (26) << 10));
    drawRect(74,35,2,1,((10) | (24) << 5 | (26) << 10));
    drawRect(70,44,2,1,((10) | (24) << 5 | (26) << 10));

    (videoBuffer[((69) * (240) + (81))] = ((9) | (19) << 5 | (25) << 10));
    (videoBuffer[((71) * (240) + (80))] = ((9) | (19) << 5 | (25) << 10));
    (videoBuffer[((70) * (240) + (77))] = ((9) | (19) << 5 | (25) << 10));
    (videoBuffer[((69) * (240) + (76))] = ((9) | (19) << 5 | (25) << 10));
    (videoBuffer[((71) * (240) + (76))] = ((9) | (19) << 5 | (25) << 10));
    (videoBuffer[((63) * (240) + (74))] = ((9) | (19) << 5 | (25) << 10));
    (videoBuffer[((64) * (240) + (75))] = ((9) | (19) << 5 | (25) << 10));
    (videoBuffer[((70) * (240) + (75))] = ((9) | (19) << 5 | (25) << 10));
    (videoBuffer[((36) * (240) + (72))] = ((9) | (19) << 5 | (25) << 10));
    (videoBuffer[((36) * (240) + (74))] = ((9) | (19) << 5 | (25) << 10));
    (videoBuffer[((35) * (240) + (77))] = ((9) | (19) << 5 | (25) << 10));
    (videoBuffer[((44) * (240) + (72))] = ((9) | (19) << 5 | (25) << 10));
    (videoBuffer[((40) * (240) + (55))] = ((9) | (19) << 5 | (25) << 10));
    (videoBuffer[((36) * (240) + (72))] = ((9) | (19) << 5 | (25) << 10));
    (videoBuffer[((35) * (240) + (50))] = ((9) | (19) << 5 | (25) << 10));
    (videoBuffer[((34) * (240) + (51))] = ((9) | (19) << 5 | (25) << 10));
    (videoBuffer[((28) * (240) + (50))] = ((9) | (19) << 5 | (25) << 10));
    (videoBuffer[((27) * (240) + (44))] = ((9) | (19) << 5 | (25) << 10));
    (videoBuffer[((32) * (240) + (44))] = ((9) | (19) << 5 | (25) << 10));
    (videoBuffer[((60) * (240) + (77))] = ((9) | (19) << 5 | (25) << 10));
    (videoBuffer[((63) * (240) + (76))] = ((9) | (19) << 5 | (25) << 10));
    (videoBuffer[((30) * (240) + (45))] = ((9) | (19) << 5 | (25) << 10));
    drawRect(45,32,1,2,((9) | (19) << 5 | (25) << 10));
    drawRect(72,66,2,4,((9) | (19) << 5 | (25) << 10));
    drawRect(73,64,2,2,((9) | (19) << 5 | (25) << 10));
    drawRect(74,63,2,2,((9) | (19) << 5 | (25) << 10));
    drawRect(78,63,1,2,((9) | (19) << 5 | (25) << 10));
    drawRect(74,70,2,1,((9) | (19) << 5 | (25) << 10));
    drawRect(74,68,1,3,((9) | (19) << 5 | (25) << 10));
    drawRect(75,61,3,2,((9) | (19) << 5 | (25) << 10));
    drawRect(76,58,1,3,((9) | (19) << 5 | (25) << 10));
    drawRect(76,37,2,1,((9) | (19) << 5 | (25) << 10));
    drawRect(68,45,5,1,((9) | (19) << 5 | (25) << 10));
    drawRect(67,36,1,3,((9) | (19) << 5 | (25) << 10));
    drawRect(46,30,7,4,((9) | (19) << 5 | (25) << 10));
    drawRect(50,29,2,1,((9) | (19) << 5 | (25) << 10));
    drawRect(44,28,2,1,((9) | (19) << 5 | (25) << 10));
    drawRect(44,29,4,1,((9) | (19) << 5 | (25) << 10));
    drawRect(49,38,2,1,((9) | (19) << 5 | (25) << 10));
    drawRect(51,39,4,2,((9) | (19) << 5 | (25) << 10));
    drawRect(49,38,4,2,((9) | (19) << 5 | (25) << 10));
    drawRect(47,35,3,2,((9) | (19) << 5 | (25) << 10));
    drawRect(48,37,3,2,((9) | (19) << 5 | (25) << 10));
    drawRect(47,34,2,1,((9) | (19) << 5 | (25) << 10));
    drawRect(72,40,1,2,((9) | (19) << 5 | (25) << 10));

    drawRect(43,26,2,1,((3) | (13) << 5 | (17) << 10));
    drawRect(46,28,2,1,((3) | (13) << 5 | (17) << 10));
    drawRect(49,34,2,1,((3) | (13) << 5 | (17) << 10));
    drawRect(51,33,2,1,((3) | (13) << 5 | (17) << 10));
    drawRect(48,29,2,1,((3) | (13) << 5 | (17) << 10));
    drawRect(49,27,2,1,((3) | (13) << 5 | (17) << 10));
    drawRect(67,31,2,1,((3) | (13) << 5 | (17) << 10));
    drawRect(76,32,2,1,((3) | (13) << 5 | (17) << 10));
    drawRect(78,31,2,1,((3) | (13) << 5 | (17) << 10));
    drawRect(80,30,3,1,((3) | (13) << 5 | (17) << 10));
    drawRect(72,31,4,1,((3) | (13) << 5 | (17) << 10));
    drawRect(82,42,2,1,((3) | (13) << 5 | (17) << 10));
    drawRect(81,41,4,1,((3) | (13) << 5 | (17) << 10));
    drawRect(82,39,1,2,((3) | (13) << 5 | (17) << 10));
    drawRect(62,49,3,1,((3) | (13) << 5 | (17) << 10));
    drawRect(65,51,2,1,((3) | (13) << 5 | (17) << 10));
    drawRect(64,52,2,1,((3) | (13) << 5 | (17) << 10));
    drawRect(66,39,4,1,((3) | (13) << 5 | (17) << 10));
    drawRect(68,36,1,4,((3) | (13) << 5 | (17) << 10));
    drawRect(72,37,1,3,((3) | (13) << 5 | (17) << 10));
    drawRect(73,35,1,2,((3) | (13) << 5 | (17) << 10));
    drawRect(78,37,1,2,((3) | (13) << 5 | (17) << 10));
    drawRect(78,57,2,2,((3) | (13) << 5 | (17) << 10));
    drawRect(79,60,2,2,((3) | (13) << 5 | (17) << 10));
    drawRect(74,66,1,2,((3) | (13) << 5 | (17) << 10));
    drawRect(72,70,2,1,((3) | (13) << 5 | (17) << 10));
    drawRect(74,71,2,1,((3) | (13) << 5 | (17) << 10));
    drawRect(83,65,1,2,((3) | (13) << 5 | (17) << 10));
    drawRect(53,30,1,2,((3) | (13) << 5 | (17) << 10));
    drawRect(81,56,1,1,((3) | (13) << 5 | (17) << 10));
    drawRect(69,32,3,1,((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((51) * (240) + (59))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((52) * (240) + (60))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((50) * (240) + (61))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((48) * (240) + (62))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((50) * (240) + (66))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((44) * (240) + (69))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((42) * (240) + (72))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((43) * (240) + (73))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((42) * (240) + (74))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((40) * (240) + (74))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((40) * (240) + (65))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((36) * (240) + (75))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((36) * (240) + (77))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((31) * (240) + (83))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((42) * (240) + (79))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((51) * (240) + (59))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((40) * (240) + (80))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((45) * (240) + (82))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((51) * (240) + (78))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((52) * (240) + (79))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((51) * (240) + (82))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((52) * (240) + (83))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((53) * (240) + (84))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((57) * (240) + (76))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((59) * (240) + (77))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((51) * (240) + (59))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((62) * (240) + (78))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((59) * (240) + (80))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((57) * (240) + (80))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((59) * (240) + (80))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((62) * (240) + (81))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((63) * (240) + (82))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((68) * (240) + (84))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((69) * (240) + (83))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((71) * (240) + (81))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((69) * (240) + (75))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((27) * (240) + (43))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((27) * (240) + (45))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((28) * (240) + (51))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((29) * (240) + (52))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((30) * (240) + (44))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((31) * (240) + (45))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((32) * (240) + (43))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((34) * (240) + (46))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((37) * (240) + (47))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((30) * (240) + (64))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((28) * (240) + (51))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((28) * (240) + (49))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((31) * (240) + (55))] = ((3) | (13) << 5 | (17) << 10));
    (videoBuffer[((30) * (240) + (57))] = ((3) | (13) << 5 | (17) << 10));

    drawRect(43,28,1,2,((4) | (7) << 5 | (11) << 10));
    drawRect(43,33,2,1,((4) | (7) << 5 | (11) << 10));
    drawRect(46,35,1,2,((4) | (7) << 5 | (11) << 10));
    drawRect(58,29,6,1,((4) | (7) << 5 | (11) << 10));
    drawRect(65,30,2,1,((4) | (7) << 5 | (11) << 10));
    drawRect(67,34,1,2,((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((31) * (240) + (44))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((34) * (240) + (45))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((32) * (240) + (53))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((31) * (240) + (54))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((30) * (240) + (56))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((40) * (240) + (56))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((39) * (240) + (58))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((38) * (240) + (60))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((37) * (240) + (64))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((33) * (240) + (68))] = ((4) | (7) << 5 | (11) << 10));
    drawRect(62,40,3,1,((4) | (7) << 5 | (11) << 10));
    drawRect(62,41,1,1,((4) | (7) << 5 | (11) << 10));
    drawRect(68,46,4,1,((4) | (7) << 5 | (11) << 10));
    drawRect(67,45,1,1,((4) | (7) << 5 | (11) << 10));
    drawRect(60,38,1,1,((4) | (7) << 5 | (11) << 10));
    drawRect(60,49,2,1,((4) | (7) << 5 | (11) << 10));
    drawRect(62,52,2,1,((4) | (7) << 5 | (11) << 10));
    drawRect(60,47,2,1,((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((48) * (240) + (59))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((51) * (240) + (61))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((50) * (240) + (62))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((53) * (240) + (62))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((51) * (240) + (64))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((50) * (240) + (65))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((45) * (240) + (81))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((46) * (240) + (82))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((45) * (240) + (83))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((38) * (240) + (82))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((40) * (240) + (81))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((41) * (240) + (85))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((42) * (240) + (84))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((44) * (240) + (82))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((43) * (240) + (82))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((43) * (240) + (83))] = ((4) | (7) << 5 | (11) << 10));
    drawRect(79,54,2,1,((4) | (7) << 5 | (11) << 10));
    drawRect(81,55,2,1,((4) | (7) << 5 | (11) << 10));
    drawRect(79,56,2,1,((4) | (7) << 5 | (11) << 10));
    drawRect(78,59,2,1,((4) | (7) << 5 | (11) << 10));
    drawRect(79,62,2,1,((4) | (7) << 5 | (11) << 10));
    drawRect(82,64,2,1,((4) | (7) << 5 | (11) << 10));
    drawRect(81,65,2,1,((4) | (7) << 5 | (11) << 10));
    drawRect(83,67,2,1,((4) | (7) << 5 | (11) << 10));
    drawRect(82,68,2,1,((4) | (7) << 5 | (11) << 10));
    drawRect(84,69,2,1,((4) | (7) << 5 | (11) << 10));
    drawRect(82,70,2,1,((4) | (7) << 5 | (11) << 10));
    drawRect(77,71,2,1,((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((42) * (240) + (64))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((43) * (240) + (67))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((44) * (240) + (68))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((44) * (240) + (73))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((45) * (240) + (73))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((53) * (240) + (81))] = ((4) | (7) << 5 | (11) << 10));
    drawRect(78,39,1,3,((4) | (7) << 5 | (11) << 10));
    drawRect(79,63,1,2,((4) | (7) << 5 | (11) << 10));
    drawRect(80,65,1,2,((4) | (7) << 5 | (11) << 10));
    drawRect(82,69,1,2,((4) | (7) << 5 | (11) << 10));
    drawRect(84,54,1,2,((4) | (7) << 5 | (11) << 10));
    drawRect(78,60,1,2,((4) | (7) << 5 | (11) << 10));
    drawRect(81,67,1,2,((4) | (7) << 5 | (11) << 10));
    drawRect(81,60,1,2,((4) | (7) << 5 | (11) << 10));
    drawRect(83,56,1,1,((4) | (7) << 5 | (11) << 10));
    drawRect(77,58,1,1,((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((60) * (240) + (75))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((57) * (240) + (81))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((58) * (240) + (80))] = ((4) | (7) << 5 | (11) << 10));
    drawRect(91,94,1,4,((4) | (7) << 5 | (11) << 10));
    drawRect(93,90,1,3,((4) | (7) << 5 | (11) << 10));
    drawRect(94,93,1,2,((4) | (7) << 5 | (11) << 10));
    drawRect(90,92,1,2,((4) | (7) << 5 | (11) << 10));
    drawRect(99,99,1,1,((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((88) * (240) + (90))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((91) * (240) + (89))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((97) * (240) + (90))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((95) * (240) + (95))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((96) * (240) + (96))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((97) * (240) + (97))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((98) * (240) + (98))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((99) * (240) + (95))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((100) * (240) + (97))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((99) * (240) + (93))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((48) * (240) + (63))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((97) * (240) + (61))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((98) * (240) + (64))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((96) * (240) + (66))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((95) * (240) + (65))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((93) * (240) + (64))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((92) * (240) + (65))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((98) * (240) + (67))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((91) * (240) + (62))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((92) * (240) + (61))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((93) * (240) + (60))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((94) * (240) + (59))] = ((4) | (7) << 5 | (11) << 10));
    (videoBuffer[((70) * (240) + (76))] = ((4) | (7) << 5 | (11) << 10));
    drawRect(58,95,4,1,((4) | (7) << 5 | (11) << 10));
    drawRect(62,96,2,1,((4) | (7) << 5 | (11) << 10));

    (videoBuffer[((47) * (240) + (82))] = ((15) | (9) << 5 | (11) << 10));
    (videoBuffer[((48) * (240) + (81))] = ((15) | (9) << 5 | (11) << 10));
    (videoBuffer[((51) * (240) + (81))] = ((15) | (9) << 5 | (11) << 10));
    (videoBuffer[((53) * (240) + (74))] = ((15) | (9) << 5 | (11) << 10));
    (videoBuffer[((47) * (240) + (78))] = ((15) | (9) << 5 | (11) << 10));
    (videoBuffer[((71) * (240) + (86))] = ((15) | (9) << 5 | (11) << 10));
    (videoBuffer[((74) * (240) + (87))] = ((15) | (9) << 5 | (11) << 10));
    (videoBuffer[((80) * (240) + (89))] = ((15) | (9) << 5 | (11) << 10));
    (videoBuffer[((81) * (240) + (90))] = ((15) | (9) << 5 | (11) << 10));
    (videoBuffer[((80) * (240) + (84))] = ((15) | (9) << 5 | (11) << 10));
    (videoBuffer[((75) * (240) + (80))] = ((15) | (9) << 5 | (11) << 10));
    (videoBuffer[((77) * (240) + (74))] = ((15) | (9) << 5 | (11) << 10));
    (videoBuffer[((75) * (240) + (75))] = ((15) | (9) << 5 | (11) << 10));
    (videoBuffer[((72) * (240) + (77))] = ((15) | (9) << 5 | (11) << 10));
    (videoBuffer[((55) * (240) + (74))] = ((15) | (9) << 5 | (11) << 10));
    (videoBuffer[((40) * (240) + (73))] = ((15) | (9) << 5 | (11) << 10));
    drawRect(74,56,2,2,((15) | (9) << 5 | (11) << 10));
    drawRect(73,57,2,4,((15) | (9) << 5 | (11) << 10));
    drawRect(76,46,2,1,((15) | (9) << 5 | (11) << 10));
    drawRect(76,48,2,1,((15) | (9) << 5 | (11) << 10));
    drawRect(81,42,1,3,((15) | (9) << 5 | (11) << 10));
    drawRect(80,45,1,3,((15) | (9) << 5 | (11) << 10));
    drawRect(76,73,1,2,((15) | (9) << 5 | (11) << 10));
    drawRect(79,72,1,2,((15) | (9) << 5 | (11) << 10));

    drawRect(80,63,2,2,((7) | (16) << 5 | (22) << 10));
    drawRect(81,66,2,1,((7) | (16) << 5 | (22) << 10));
    drawRect(79,55,2,1,((7) | (16) << 5 | (22) << 10));
    drawRect(81,54,2,1,((7) | (16) << 5 | (22) << 10));
    drawRect(79,53,2,1,((7) | (16) << 5 | (22) << 10));
    (videoBuffer[((67) * (240) + (82))] = ((7) | (16) << 5 | (22) << 10));
    (videoBuffer[((90) * (240) + (92))] = ((7) | (16) << 5 | (22) << 10));
    (videoBuffer[((95) * (240) + (94))] = ((7) | (16) << 5 | (22) << 10));
    (videoBuffer[((97) * (240) + (96))] = ((7) | (16) << 5 | (22) << 10));
    (videoBuffer[((99) * (240) + (98))] = ((7) | (16) << 5 | (22) << 10));
    drawRect(91,91,2,3,((7) | (16) << 5 | (22) << 10));
    drawRect(92,93,2,4,((7) | (16) << 5 | (22) << 10));
    drawRect(94,96,2,3,((7) | (16) << 5 | (22) << 10));
    drawRect(96,98,2,2,((7) | (16) << 5 | (22) << 10));
    drawRect(91,98,3,1,((7) | (16) << 5 | (22) << 10));
    drawRect(98,100,2,1,((7) | (16) << 5 | (22) << 10));

    drawRect(84,82,2,1,((6) | (6) << 5 | (9) << 10));
    drawRect(85,83,5,1,((6) | (6) << 5 | (9) << 10));
    drawRect(88,82,4,1,((6) | (6) << 5 | (9) << 10));
    drawRect(87,87,4,1,((6) | (6) << 5 | (9) << 10));
    drawRect(90,85,3,2,((6) | (6) << 5 | (9) << 10));
    (videoBuffer[((80) * (240) + (90))] = ((6) | (6) << 5 | (9) << 10));
    (videoBuffer[((81) * (240) + (91))] = ((6) | (6) << 5 | (9) << 10));
    (videoBuffer[((84) * (240) + (92))] = ((6) | (6) << 5 | (9) << 10));
    (videoBuffer[((86) * (240) + (86))] = ((6) | (6) << 5 | (9) << 10));
    (videoBuffer[((49) * (240) + (77))] = ((6) | (6) << 5 | (9) << 10));
    (videoBuffer[((52) * (240) + (78))] = ((6) | (6) << 5 | (9) << 10));
    (videoBuffer[((51) * (240) + (79))] = ((6) | (6) << 5 | (9) << 10));
    (videoBuffer[((52) * (240) + (80))] = ((6) | (6) << 5 | (9) << 10));
    (videoBuffer[((53) * (240) + (77))] = ((6) | (6) << 5 | (9) << 10));
    (videoBuffer[((56) * (240) + (78))] = ((6) | (6) << 5 | (9) << 10));
    (videoBuffer[((56) * (240) + (77))] = ((6) | (6) << 5 | (9) << 10));
    (videoBuffer[((57) * (240) + (77))] = ((6) | (6) << 5 | (9) << 10));
    drawRect(78,48,2,1,((6) | (6) << 5 | (9) << 10));
    drawRect(77,50,2,1,((6) | (6) << 5 | (9) << 10));
    drawRect(76,54,2,2,((6) | (6) << 5 | (9) << 10));
    drawRect(67,52,2,2,((6) | (6) << 5 | (9) << 10));
    drawRect(64,54,3,1,((6) | (6) << 5 | (9) << 10));
    drawRect(65,49,2,1,((6) | (6) << 5 | (9) << 10));
    drawRect(67,50,1,2,((6) | (6) << 5 | (9) << 10));
    drawRect(80,49,1,2,((6) | (6) << 5 | (9) << 10));
    (videoBuffer[((46) * (240) + (72))] = ((6) | (6) << 5 | (9) << 10));
    (videoBuffer[((49) * (240) + (69))] = ((6) | (6) << 5 | (9) << 10));
    (videoBuffer[((48) * (240) + (64))] = ((6) | (6) << 5 | (9) << 10));
    (videoBuffer[((52) * (240) + (66))] = ((6) | (6) << 5 | (9) << 10));
    (videoBuffer[((54) * (240) + (74))] = ((6) | (6) << 5 | (9) << 10));

    drawRect(73,54,1,1,((6) | (6) << 5 | (9) << 10));
    drawRect(72,54,1,3,((6) | (6) << 5 | (9) << 10));
    drawRect(71,53,1,9,((6) | (6) << 5 | (9) << 10));
    drawRect(70,53,1,35,((6) | (6) << 5 | (9) << 10));
    drawRect(69,55,1,34,((6) | (6) << 5 | (9) << 10));
    drawRect(68,57,1,35,((6) | (6) << 5 | (9) << 10));
    drawRect(67,59,1,32,((6) | (6) << 5 | (9) << 10));
    drawRect(66,61,1,30,((6) | (6) << 5 | (9) << 10));
    drawRect(65,63,1,28,((6) | (6) << 5 | (9) << 10));
    drawRect(64,64,1,27,((6) | (6) << 5 | (9) << 10));
    drawRect(63,66,1,25,((6) | (6) << 5 | (9) << 10));
    drawRect(62,67,1,23,((6) | (6) << 5 | (9) << 10));
    drawRect(61,69,1,21,((6) | (6) << 5 | (9) << 10));
    drawRect(60,70,1,19,((6) | (6) << 5 | (9) << 10));
    drawRect(59,71,1,18,((6) | (6) << 5 | (9) << 10));
    drawRect(58,71,1,17,((6) | (6) << 5 | (9) << 10));
    drawRect(57,72,1,15,((6) | (6) << 5 | (9) << 10));
    drawRect(56,73,1,13,((6) | (6) << 5 | (9) << 10));
    drawRect(55,74,1,12,((6) | (6) << 5 | (9) << 10));
    drawRect(54,75,1,10,((6) | (6) << 5 | (9) << 10));
    drawRect(53,76,1,8,((6) | (6) << 5 | (9) << 10));
    drawRect(52,78,1,6,((6) | (6) << 5 | (9) << 10));
    drawRect(51,79,1,5,((6) | (6) << 5 | (9) << 10));
    drawRect(50,80,1,4,((6) | (6) << 5 | (9) << 10));
    drawRect(49,81,1,3,((6) | (6) << 5 | (9) << 10));
    drawRect(48,81,1,4,((6) | (6) << 5 | (9) << 10));
    drawRect(47,85,1,1,((6) | (6) << 5 | (9) << 10));
    drawRect(71,71,1,15,((6) | (6) << 5 | (9) << 10));
    drawRect(72,74,1,13,((6) | (6) << 5 | (9) << 10));
    drawRect(73,77,1,10,((6) | (6) << 5 | (9) << 10));
    drawRect(74,80,1,8,((6) | (6) << 5 | (9) << 10));
    drawRect(75,82,1,7,((6) | (6) << 5 | (9) << 10));
    drawRect(76,84,1,6,((6) | (6) << 5 | (9) << 10));
    drawRect(77,86,1,7,((6) | (6) << 5 | (9) << 10));
    drawRect(78,88,1,7,((6) | (6) << 5 | (9) << 10));

    drawRect(65,48,3,1,((7) | (9) << 5 | (12) << 10));
    drawRect(67,49,2,1,((7) | (9) << 5 | (12) << 10));
    drawRect(68,50,1,2,((7) | (9) << 5 | (12) << 10));
    drawRect(48,83,1,2,((7) | (9) << 5 | (12) << 10));
    drawRect(65,84,1,6,((7) | (9) << 5 | (12) << 10));
    drawRect(66,81,1,10,((7) | (9) << 5 | (12) << 10));
    drawRect(67,79,1,12,((7) | (9) << 5 | (12) << 10));
    drawRect(68,78,1,12,((7) | (9) << 5 | (12) << 10));
    drawRect(69,79,1,9,((7) | (9) << 5 | (12) << 10));
    drawRect(70,82,1,6,((7) | (9) << 5 | (12) << 10));
    drawRect(71,85,1,3,((7) | (9) << 5 | (12) << 10));
    (videoBuffer[((56) * (240) + (70))] = ((7) | (9) << 5 | (12) << 10));
    (videoBuffer[((57) * (240) + (69))] = ((7) | (9) << 5 | (12) << 10));
    (videoBuffer[((58) * (240) + (68))] = ((7) | (9) << 5 | (12) << 10));
    (videoBuffer[((58) * (240) + (70))] = ((7) | (9) << 5 | (12) << 10));
    (videoBuffer[((57) * (240) + (71))] = ((7) | (9) << 5 | (12) << 10));
    (videoBuffer[((81) * (240) + (58))] = ((7) | (9) << 5 | (12) << 10));
    (videoBuffer[((82) * (240) + (57))] = ((7) | (9) << 5 | (12) << 10));
    (videoBuffer[((83) * (240) + (58))] = ((7) | (9) << 5 | (12) << 10));
    (videoBuffer[((83) * (240) + (56))] = ((7) | (9) << 5 | (12) << 10));
    (videoBuffer[((84) * (240) + (57))] = ((7) | (9) << 5 | (12) << 10));
    (videoBuffer[((84) * (240) + (55))] = ((7) | (9) << 5 | (12) << 10));
    (videoBuffer[((85) * (240) + (56))] = ((7) | (9) << 5 | (12) << 10));
    (videoBuffer[((61) * (240) + (73))] = ((7) | (9) << 5 | (12) << 10));
    (videoBuffer[((77) * (240) + (52))] = ((7) | (9) << 5 | (12) << 10));
    (videoBuffer[((78) * (240) + (51))] = ((7) | (9) << 5 | (12) << 10));
    (videoBuffer[((79) * (240) + (50))] = ((7) | (9) << 5 | (12) << 10));
    (videoBuffer[((80) * (240) + (49))] = ((7) | (9) << 5 | (12) << 10));
    (videoBuffer[((83) * (240) + (47))] = ((7) | (9) << 5 | (12) << 10));
    (videoBuffer[((84) * (240) + (47))] = ((7) | (9) << 5 | (12) << 10));
    (videoBuffer[((88) * (240) + (69))] = ((7) | (9) << 5 | (12) << 10));

    drawRect(71,59,1,2,((7) | (9) << 5 | (12) << 10));
    drawRect(70,59,1,12,((7) | (9) << 5 | (12) << 10));
    drawRect(69,59,1,10,((7) | (9) << 5 | (12) << 10));
    drawRect(68,59,1,8,((7) | (9) << 5 | (12) << 10));
    drawRect(67,61,1,3,((7) | (9) << 5 | (12) << 10));
    drawRect(66,63,1,2,((7) | (9) << 5 | (12) << 10));
    drawRect(65,64,1,3,((7) | (9) << 5 | (12) << 10));
    drawRect(64,66,1,3,((7) | (9) << 5 | (12) << 10));
    drawRect(63,67,1,4,((7) | (9) << 5 | (12) << 10));
    drawRect(62,69,1,2,((7) | (9) << 5 | (12) << 10));
    drawRect(61,70,1,2,((7) | (9) << 5 | (12) << 10));
    drawRect(60,71,1,3,((7) | (9) << 5 | (12) << 10));
    drawRect(59,72,1,5,((7) | (9) << 5 | (12) << 10));
    drawRect(58,72,1,10,((7) | (9) << 5 | (12) << 10));
    drawRect(57,73,1,8,((7) | (9) << 5 | (12) << 10));
    drawRect(56,74,1,8,((7) | (9) << 5 | (12) << 10));
    drawRect(55,75,1,8,((7) | (9) << 5 | (12) << 10));
    drawRect(54,76,1,8,((7) | (9) << 5 | (12) << 10));
    drawRect(53,77,1,8,((7) | (9) << 5 | (12) << 10));
    drawRect(52,78,1,6,((7) | (9) << 5 | (12) << 10));
    drawRect(51,79,1,5,((7) | (9) << 5 | (12) << 10));
    drawRect(50,80,1,4,((7) | (9) << 5 | (12) << 10));
    drawRect(49,81,1,3,((7) | (9) << 5 | (12) << 10));
    drawRect(48,83,1,2,((7) | (9) << 5 | (12) << 10));
    drawRect(70,87,1,2,((7) | (9) << 5 | (12) << 10));

    drawRect(72,61,1,4,((9) | (4) << 5 | (7) << 10));
    drawRect(69,90,4,4,((9) | (4) << 5 | (7) << 10));
    drawRect(73,92,1,3,((9) | (4) << 5 | (7) << 10));
    drawRect(66,92,3,1,((9) | (4) << 5 | (7) << 10));
    drawRect(71,89,2,1,((9) | (4) << 5 | (7) << 10));
    (videoBuffer[((62) * (240) + (73))] = ((9) | (4) << 5 | (7) << 10));
    (videoBuffer[((88) * (240) + (72))] = ((9) | (4) << 5 | (7) << 10));
    (videoBuffer[((91) * (240) + (68))] = ((9) | (4) << 5 | (7) << 10));
    (videoBuffer[((88) * (240) + (72))] = ((9) | (4) << 5 | (7) << 10));
    (videoBuffer[((91) * (240) + (61))] = ((9) | (4) << 5 | (7) << 10));
    drawRect(49,85,4,1,((9) | (4) << 5 | (7) << 10));
    drawRect(48,86,7,2,((9) | (4) << 5 | (7) << 10));
    drawRect(50,87,7,2,((9) | (4) << 5 | (7) << 10));
    drawRect(52,88,6,2,((9) | (4) << 5 | (7) << 10));
    drawRect(55,89,4,2,((9) | (4) << 5 | (7) << 10));
    drawRect(58,90,3,2,((9) | (4) << 5 | (7) << 10));
    drawRect(77,45,2,1,((9) | (4) << 5 | (7) << 10));

    drawRect(58,99,1,2,((0) | (0) << 5 | (0) << 10));
    drawRect(66,94,3,2,((0) | (0) << 5 | (0) << 10));
    (videoBuffer[((98) * (240) + (59))] = ((0) | (0) << 5 | (0) << 10));
    (videoBuffer[((98) * (240) + (61))] = ((0) | (0) << 5 | (0) << 10));
    (videoBuffer[((98) * (240) + (63))] = ((0) | (0) << 5 | (0) << 10));
    (videoBuffer[((97) * (240) + (62))] = ((0) | (0) << 5 | (0) << 10));
    (videoBuffer[((98) * (240) + (62))] = ((0) | (0) << 5 | (0) << 10));
    (videoBuffer[((90) * (240) + (68))] = ((0) | (0) << 5 | (0) << 10));


}
