; Example Program 02: External Interrupt
; Chin-Shiuh Shieh
; 2003-03-08
;
; Memory Allocation
LED_DATA	EQU		30h		;Byte for LED Data
; Pin Assignment
LED_PORT	EQU		P2
;

PROG	EQU		0000h
		ORG		PROG+0000h
		SJMP	START
;Interrupt Vector Table
		ORG		PROG+0003h
		LCALL	INT0_ISR
		RETI
		ORG		PROG+000Bh
		LCALL	T0_ISR
		RETI
		ORG		PROG+0013h
		LCALL	INT1_ISR
		RETI
		ORG		PROG+001Bh
		LCALL	T1_ISR
		RETI
		ORG		PROG+0023h
		LCALL	UART_ISR
		RETI
;
		ORG		PROG+0030h
START:
		MOV		LED_DATA,#01h
		SETB	IT0		; Set External Interrupt 0 to be falling edge triggered
		SETB	EX0		; Enable External Interrut 0
		SETB	EA		; Enable Interrupt
LOOP:
		MOV		A,LED_DATA
		RR		A
		MOV		LED_DATA,A
		CPL		A
		MOV		LED_PORT,A
		CALL	DELAY
		SJMP	LOOP
;
INT0_ISR:
		MOV		P2,#00h
		CALL	DELAY
		MOV		P2,#0FFh
		CALL	DELAY
		MOV		P2,#00h
		CALL	DELAY
		MOV		P2,#0FFh
		CALL	DELAY
		MOV		P2,#00h
		CALL	DELAY
		MOV		P2,#0FFh
		CALL	DELAY
		RET
T0_ISR:
		RET
INT1_ISR:
		RET
T1_ISR:
		RET
UART_ISR:
		RET
;Delay
DELAY:	MOV		R0,#00h
DELAY0:	MOV		R1,#00h
DELAY1:	DJNZ	R1,DELAY1
		DJNZ	R0,DELAY0
		RET
;
		END