// Template for SDCC 8051 C Language

#include <8051.h>  // Definitions of registers, SFRs and Bits
#include <string.h>
#define CLCD_RS P2_0  // 0 for Instruction, 1 for Data
#define CLCD_RW P2_1  // 0 for Write, 1 for Read
#define CLCD_E P2_2   // 1 for Read, 1->0 for Write
#define CLCD_Port P1



void clcd_init(void);
void clcd_cursor(int row, int col);
void clcd_puts(char str[]);
void clcd_wait(void);
void clcd_wi(char x);
void clcd_wd(char x);

void main(void) {
    clcd_init();
    clcd_cursor(0, 0);
    clcd_puts("Hello, 8051!");
    clcd_cursor(1, 0);
    clcd_puts("Chin-Shiuh Shieh");
    while (1)
        ;
}

void clcd_init(void) {
    clcd_wi(0x38);  // 8-bit interface, 2 lines, 5x7 dots
    clcd_wi(0x0F);  // display on, cursor on, cursor blinking
    clcd_wi(0x06);  // move cursor right when read/write
    clcd_wi(0x01);  // clear display, cursor home
}

void clcd_wi(char x) {
    clcd_wait();
    CLCD_RS = 0;
    CLCD_RW = 0;
    CLCD_Port = x;
    CLCD_E = 1;
    CLCD_E = 0;
}

void clcd_wd(char x) {
    clcd_wait();
    CLCD_RS = 1;
    CLCD_RW = 0;
    CLCD_Port = x;
    CLCD_E = 1;
    CLCD_E = 0;
}

void clcd_wait(void) {
    CLCD_Port = 0xFF;
    CLCD_RS = 0;
    CLCD_RW = 1;
    do {
        CLCD_E = 1;
        ACC = CLCD_Port;
        CLCD_E = 0;
    } while (ACC_7 == 1);
}

void clcd_cursor(int row, int col) {
    int ddram = 0x80;
    if (row == 1)
        ddram += 0x40;
    ddram += col;
    clcd_wi(ddram);
}

void clcd_puts(char str[]) {
    int i;
    for (i = 0; i < strlen(str); i++)
        clcd_wd(str[i]);
}