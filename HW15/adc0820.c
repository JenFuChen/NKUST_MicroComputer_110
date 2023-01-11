#include <8051.h> // Defining SFRs

// ISR Prototypes ===================================================
void INT0_ISR(void) __interrupt 0; // ISR for External Interrupt 0
void T0_ISR(void)   __interrupt 1; // ISR for Timer0/Counter0 Overflow Interrupt
void INT1_ISR(void) __interrupt 2; // ISR for External Interrupt 1
void T1_ISR(void)   __interrupt 3; // ISR for Timer1/Counter1 Overflow Interrupt
void UART_ISR(void) __interrupt 4; // ISR for UART Interrupt

void main(void)
{
while(1)
	{
	P3_0=0;P3_1=0;
	while(P3_2==0);
	P1=0xFF-P2;
	P3_1=1;
	P3_0=1;
	}
}

void INT0_ISR(void) __interrupt 0
{}
void T0_ISR(void) __interrupt 1
{}
void INT1_ISR(void) __interrupt 2
{}
void T1_ISR(void) __interrupt 3
{}
void UART_ISR(void) __interrupt 4
{}