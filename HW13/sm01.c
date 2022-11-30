// Template for SDCC 8051 C Language

#include <8051.h> // Definitions of registers, SFRs and Bits

#define	BUTTON	P1_0 




__bit 	DIRECTION;
char	SM;

void main(void)
{
int i;
DIRECTION=0;
SM=0x01;

while(1)
{
	if(BUTTON==0)
	{
		DIRECTION=1-DIRECTION;
		while(BUTTON==0);
	}
	if(DIRECTION==1)
	{
		if(SM<8){
			SM=SM<<1;
			P0=SM;
		}
		else{
			SM=1;
			P0=SM;
		}
		
	}	
	else
	{
		if(SM>1){
			SM=SM>>1;
			P0=SM;
		}
		else{
			SM=8;
			P0=SM;
		}
	}
	
	for(i=0;i<367;i++);
	
}
}


