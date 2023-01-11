; Example Program clcd01
; Character LCD: Solomon LM1090TGR (2 Rows x 16 Characters)
; Chin-Shiuh Shieh
; 2003-03-20
;
; Pin Assignment
CLCD_RS		EQU	P2.0	; 0 for Instruction, 1 for Data
CLCD_RW		EQU	P2.1	; 0 for Write, 1 for Read
CLCD_E		EQU	P2.2	; 1 for Read, 1->0 for Write
CLCD_Port	EQU	P1
;
PROG	EQU		0000h
		ORG		PROG+0000h
		JMP		START
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
		CALL	CLCD_INIT
		MOV		A,#80h		; Move cursor to Row 0, Column 0
		CALL	CLCD_WI
		MOV		DPTR,#M_WEL
		CALL	CLCD_PUTS
		MOV		A,#0C0h		; Move cursor to Row 1, Column 0
		CALL	CLCD_WI
		MOV		DPTR,#M_NAME
		CALL	CLCD_PUTS
DONE:   SJMP    DONE
;
CLCD_WAIT:
		PUSH	ACC
        MOV     CLCD_Port,#0FFh
		CLR		CLCD_RS
		SETB	CLCD_RW
CLCD_BUSY:
		SETB	CLCD_E
        MOV     A,CLCD_Port
		CLR		CLCD_E
		JB		ACC.7,CLCD_BUSY
		POP		ACC
		RET
;
CLCD_WI:
		CALL	CLCD_WAIT
		CLR		CLCD_RS
		CLR		CLCD_RW
        MOV     CLCD_Port,A
		SETB	CLCD_E
		CLR		CLCD_E
		RET
;
CLCD_WD:
		CALL	CLCD_WAIT
		SETB	CLCD_RS
		CLR		CLCD_RW
        MOV     CLCD_Port,A
		SETB	CLCD_E
		CLR		CLCD_E
		RET
;
CLCD_INIT:
        MOV     A,#00111000b	; 8-bit interface, 2 lines, 5x7 dots
        CALL    CLCD_WI
        MOV     A,#00001111b	; display on, cursor on, cursor blinking
        CALL    CLCD_WI
        MOV     A,#00000110b	; move cursor right when read/write
        CALL    CLCD_WI
        MOV     A,#00000001b	; clear display, cursor home
        CALL    CLCD_WI
        RET
;
CLCD_PUTS:
        MOV     A,#00h
        MOVC    A,@A+DPTR
        CJNE    A,#00h,CLCD_PUTS_LOOP
        RET
CLCD_PUTS_LOOP:
        CALL    CLCD_WD
        INC     DPTR
        SJMP    CLCD_PUTS
;
M_WEL:  DB      "Hello, 8051!",00h
M_NAME: DB      "Chin-Shiuh Shieh",00h
;
INT0_ISR:
		RET
T0_ISR:
		RET
INT1_ISR:
		RET
T1_ISR:
		RET
UART_ISR:
		RET
;
        END
