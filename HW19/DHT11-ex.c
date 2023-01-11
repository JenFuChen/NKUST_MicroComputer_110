// Chin-Shiuh Shieh on 2121/12/15

#include <8051.h>
#define DHT11_DATA P0_0
#define CLCD_RS P2_0
#define CLCD_RW P2_1
#define CLCD_E P2_2
#define CLCD_DB P1
#include "DHT11.c"
#include "clcd.c"
void delay(int x) {
    int n;
    while (x > 0) {
        n = 120;
        while (n > 0)
            n--;
        x--;
    }
}

void main(void) {
    unsigned char Humidity;
    unsigned char Temperature;
    clcd_initialize();
    while (1) {
        DHT11_Read(&Humidity, &Temperature);
		
        clcd_set_cursor(0, 0);
        clcd_put_string("Humidity: ");
        clcd_put_int(Humidity);

        clcd_set_cursor(1, 0);
        clcd_put_string("Temperature: ");
        clcd_put_int(Temperature);

        delay(2000);
    }
}
