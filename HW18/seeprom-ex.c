// Chin-Shiuh Shieh on 2021/12/05
#include <8051.h>
#include <at89x51.h>
#define SCL P0_0
#define SDA P0_1
#define CLCD_RS P2_0
#define CLCD_RW P2_1
#define CLCD_E P2_2
#define CLCD_DB P1
#include "clcd.c"
#include "i2c.c"
#include "seeprom.c"
#include "uart.c"
void delay(int x);
void main() {
    char s;
    unsigned int addr;
    unsigned char val;
    uart_initialize();
    clcd_initialize();

    while (1) {
        clcd_set_cursor(0, 0);
        uart_put_string("\n[ Write:0 |  Read:1 ]");
        s = uart_get_char_echo();
        uart_put_string("\r\n");
        if (s == '0') {
            clcd_set_cursor(0, 0);
            clcd_put_string("Write       ");
            
            uart_put_string("Address: ");
            addr = uart_get_word();
            uart_put_string("\r\n");
            uart_put_string("Data: ");
            val = uart_get_byte();
            uart_put_string("\r\n");
            seeprom_write_byte(0, addr, val);
            
           
            
            clcd_set_cursor(1, 0);
            clcd_put_string("A: ");
            clcd_put_int(addr);
            clcd_put_string("|D: ");
            clcd_put_byte(val);
        }
        if (s == '1') {
            clcd_set_cursor(0, 0);
            clcd_put_string("Read ");
            uart_put_string("Address: ");
            addr = uart_get_word();
            uart_put_string("\r\n");
            uart_put_string("Data: ");
            uart_put_byte(seeprom_read_byte(0, addr));
            uart_put_string("\r\n");
             
            
            clcd_set_cursor(1, 0);
            clcd_put_string("A: ");
            clcd_put_int(addr);
            clcd_put_string("|D: ");
            clcd_put_byte(seeprom_read_byte(0, addr));
        }
        delay(590);
    }
}
void delay(int x) {
    int n;
    while (x > 0) {
        n = 120;
        while (n > 0)
            n--;
        x--;
    }
}