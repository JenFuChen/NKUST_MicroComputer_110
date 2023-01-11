#include <at89x51.h>

#define CLCD_RS P2_0
#define CLCD_RW P2_1
#define CLCD_E P2_2
#define CLCD_DB P1

#include "clcd.c"
void delay(int x);
void main(void)
{
	int i=1;
	int j=1;
	int sum=0;
	clcd_initialize();
	while(1)
 	{
	 clcd_set_cursor(0,0);
	 clcd_put_string("C110152319");
	 clcd_set_cursor(1,0);
	 clcd_put_string("::");
	 clcd_put_integer(i);
	 clcd_put_string("X");
	 clcd_put_integer(j);
	 clcd_put_string("=");
	 sum = i * j;
	 i++;
	 j++;
	 
	 clcd_put_integer(sum);
	 delay(590);
 	}
 	delay(590);
	while(1==1);
}

void delay(int x)
{
 int n;
 while(x>0)
 {
   n=120;
   while(n>0)n--;
   x--;
 }
}