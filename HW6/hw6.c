// Template for SDCC 8051 C Language

#include <8051.h> // Definitions of registers, SFRs and Bits

#define	LED_PORT	P0
#define	HIGH_NIBBLE	P2_1
#define	LOW_NIBBLE	P2_0
#define	BUTTON		P1_0

char LED_DATA;
__bit NIBBLE;
char FONT[16]={	0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,
        		0x80,0x90,0x88,0x83,0xA7,0xA1,0x86,0x8E };

// ISR Prototypes ===================================================
void INT0_ISR(void)	__interrupt 0; // ISR for External Interrupt 0
void T0_ISR(void)	__interrupt 1; // ISR for Timer0/Counter0 Overflow
void INT1_ISR(void)	__interrupt 2; // ISR for External Interrupt 1
void T1_ISR(void)	__interrupt 3; // ISR for Timer1/Counter1 Overflow
void UART_ISR(void)	__interrupt 4; // ISR for UART Interrupt

void delayms(unsigned int time)
	{
		unsigned int n;
		while (time>0)
		{
			n=120;
		  while(n>0) n--;
		  time--;
	  }
	}

void main(void)
{
LED_DATA=0;
TMOD=0x11;		// Set Timer to work in Mode 1 (16-bit Timer)
ET0=1;			// Enable Timer 0 Interrupt
EA=1;			// Enable Interrupt
TR0=1;			// Start Timer 0
BUTTON=1;		// Set the output latch of BUTTON to 1
LED_DATA++;
delayms(1000);
}

void INT0_ISR(void)	interrupt 0
{}
void T0_ISR(void)	interrupt 1
{
TH0=0xFC;	// Timer 0 Interrupt will be generated
TL0=0x18;	// for every 1mS
NIBBLE=!NIBBLE;
if(NIBBLE==1)
	{
	// Show High Nibble
	LOW_NIBBLE=1;
	ACC=LED_DATA;
	ACC=ACC>>4;
	ACC=FONT[ACC];
	LED_PORT=ACC;
	HIGH_NIBBLE=0;
	}
else
	{
	// Show Low Nibble
	HIGH_NIBBLE=1;
	ACC=LED_DATA;
	ACC=ACC&0X0F;
	ACC=FONT[ACC];
	LED_PORT=ACC;
	LOW_NIBBLE=0;
	}
}
void INT1_ISR(void)	interrupt 2
{}
void T1_ISR(void)	interrupt 3
{}
void UART_ISR(void) interrupt 4
{}
