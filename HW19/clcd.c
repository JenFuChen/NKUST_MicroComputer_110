// Character LCD (HD44780U-compatible) functions by CHin-Shiuh Shieh on
// 2011-04-04

// #define	CLCD_RS		P2_0
// #define	CLCD_RW		P2_1
// #define	CLCD_E		P2_2
// #define	CLCD_DB		P1

__sbit __at 0xE7 ACC_7;

__code char ASCII[] = "0123456789ABCDEF";

void clcd_initialize(void);
void clcd_write_instruction(unsigned char instruction);
void clcd_wait(void);
void clcd_cls(void);
void clcd_set_cursor(unsigned int row, unsigned int column);
void clcd_put_char(char c);
void clcd_put_string(char* s);
void clcd_put_byte(unsigned char byte_data);
void clcd_put_word(unsigned int word_data);
void clcd_put_int(int i);
void i2s(int i, char* s);

void clcd_initialize(void) {
    clcd_write_instruction(0x38);  // 8-bit interface, 2 lines, 5x7 dots
    clcd_write_instruction(0x0F);  // display on, cursor on, cursor blinking
    clcd_write_instruction(0x06);  // move cursor right when read/write
    clcd_write_instruction(0x01);  // clear display, cursor home
}

void clcd_write_instruction(unsigned char instruction) {
    clcd_wait();
    CLCD_RS = 0;
    CLCD_RW = 0;
    CLCD_DB = instruction;
    CLCD_E = 1;
    CLCD_E = 0;
}

void clcd_wait(void) {
    CLCD_DB = 0xFF;
    CLCD_RS = 0;
    CLCD_RW = 1;
    do {
        CLCD_E = 1;
        ACC = CLCD_DB;
        CLCD_E = 0;
    } while (ACC_7 == 1);
}

void clcd_cls(void) {
    clcd_write_instruction(0x01);
}

void clcd_set_cursor(unsigned int row, unsigned int column) {
    unsigned int instruction = 0x80;
    if (row == 1)
        instruction += 0x40;
    instruction += column;
    clcd_write_instruction(instruction);
}

void clcd_put_char(char c) {
    clcd_wait();
    CLCD_RS = 1;
    CLCD_RW = 0;
    CLCD_DB = c;
    CLCD_E = 1;
    CLCD_E = 0;
}

void clcd_put_string(char* s) {
    while (*s != 0) {
        clcd_put_char(*s);
        s++;
    }
}

void clcd_put_byte(unsigned char byte_data) {
    clcd_put_char(ASCII[byte_data / 16]);
    clcd_put_char(ASCII[byte_data % 16]);
}

void clcd_put_word(unsigned int word_data) {
    clcd_put_byte(word_data / 256);
    clcd_put_byte(word_data % 256);
}

void i2s(int i, char* s) {
    char sign;
    unsigned char len;
    char* p;
    sign = '+';
    len = 0;
    p = s;
    if (i < 0) {
        sign = '-';
        i = -i;
    }
    do {
        *s = (i % 10) + '0';
        s++;
        len++;
        i /= 10;
    } while (i != 0);
    if (sign == '-') {
        *s = '-';
        s++;
        len++;
    }
    for (i = 0; i < len / 2; i++) {
        p[len] = p[i];
        p[i] = p[len - 1 - i];
        p[len - 1 - i] = p[len];
    }
    p[len] = 0;
}

void clcd_put_int(int i) {
    char s[7];
    i2s(i, s);
    clcd_put_string(s);
}