#include <8051.h>
#include "uart.c"

void main( void )
{
int i,j;
char s[7];
uart_initialize();
uart_put_string("Name: ");
uart_get_string(s);uart_put_string("\r\n");
uart_put_string("Hello, ");uart_put_string(s);uart_put_string("\r\n");
uart_put_string("i: ");i=uart_get_integer();uart_put_string("\r\n");
uart_put_string("j: ");j=uart_get_integer();uart_put_string("\r\n");
uart_put_integer(i);uart_put_string(" * ");uart_put_integer(j);uart_put_string(" = ");uart_put_integer(i*j);uart_put_string("\r\n");
while(1==1);
}