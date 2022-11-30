; Example Program sm01.a51: Stepping Motor
; Chin-Shiuh Shieh
; 2003-03-29
;
; Memory Allocation
DIRECTION	EQU		00h		; 0 for Right, 1 for Left
; Pin Assignment
SMA			EQU     P0.0
SM_A		EQU     P0.1
SMB			EQU     P0.2
SM_B		EQU     P0.3
BUTTON		EQU     P1.0	; Toggle Motor to Turn Left/Right
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
        CLR     DIRECTION
        SETB    SMA
        CLR     SMB
        CLR     SM_A
        CLR     SM_B
CHECK_BUTTON:
        JB      BUTTON,TURN
        CPL     DIRECTION
WAIT_BUTTON_RELEASE:
        JNB     BUTTON,WAIT_BUTTON_RELEASE
;
TURN:
        JB      DIRECTION,LEFT
RIGHT:  ; ... SMA, SMB, SM_A, SM_B, ...
		JNB     SMA,R_1
        CLR     SMA
        SETB    SMB
        SJMP    DELAY
R_1:    JNB     SMB,R_2
        CLR     SMB
        SETB    SM_A
        SJMP    DELAY
R_2:    JNB     SM_A,R_3
        CLR     SM_A
        SETB    SM_B
        SJMP    DELAY
R_3:    CLR     SM_B
        SETB    SMA
        SJMP    DELAY
LEFT:   ; ... SMA, SM_B, SM_A, SMB, ...
		JNB     SMA,L_1
        CLR     SMA
        SETB    SM_B
        SJMP    DELAY
L_1:    JNB     SM_B,L_2
        CLR     SM_B
        SETB    SM_A
        SJMP    DELAY
L_2:    JNB     SM_A,L_3
        CLR     SM_A
        SETB    SMB
        SJMP    DELAY
L_3:    CLR     SMB
        SETB    SMA
        SJMP    DELAY
;
DELAY:  MOV     R0,#20h
D0:     MOV     R1,#00h
D1:     DJNZ    R1,D1
        DJNZ    R0,D0
		SJMP	CHECK_BUTTON
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