		ORG		0000h
LOOP:	MOV		P1,#0FFh
		MOV		A,P1
		MOV 	P2,A
		LJMP	LOOP
		END
// This HW is about using 8051 to contorl the LED by DIP input.