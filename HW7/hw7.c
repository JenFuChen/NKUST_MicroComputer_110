#include <8051.h>
#include "uart.c"

void main( void )
{

int s;

uart_initialize();

while(1){  
 P1=0xff;
 s=P1;
 uart_put_byte(s);
}

}