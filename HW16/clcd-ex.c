#include <at89x51.h>

#define	CLCD_RS	P2_0
#define	CLCD_RW	P2_1
#define	CLCD_E	P2_2
#define	CLCD_DB	P1

#include "clcd.c"

void main(void)
{
int  i;
unsigned char j;
char tmp;
char msg[17]="Hello, 8051!    ";
clcd_initialize();
clcd_set_cursor(1,0);
clcd_put_string("Chin-Shiuh Shieh");
for(j=0;j<16;j++)
	{
	clcd_set_cursor(0,0);
	clcd_put_string(msg);
	for(i=-32768;i<32767;i++);
	tmp=msg[0];
	for(i=1;i<16;i++)
		msg[i-1]=msg[i];
	msg[15]=tmp;
	}
clcd_cls();
clcd_set_cursor(0,0);
clcd_put_string(msg);
clcd_set_cursor(1,0);
clcd_put_byte(12);clcd_put_string("h * ");clcd_put_byte(34);clcd_put_string("h = ");clcd_put_integer(12*34);
while(1==1);
}