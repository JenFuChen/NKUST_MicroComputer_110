; Example program 05: UART-RS232
; Chin-Shiuh Shieh
; 2003-03-09
;
; Memory Allocation
UART_BUSY  EQU  00h
; Pin Assignment
LED_PORT  EQU  P2
;
PROG EQU  0000h
  ORG  PROG+0000h
  SJMP  START
;Interrupt Vector Table
  ORG  PROG+0003h
  LCALL INT0_ISR
  RETI
  ORG  PROG+000Bh
  LCALL T0_ISR
  RETI
  ORG  PROG+0013h
  LCALL INT1_ISR
  RETI
  ORG  PROG+001Bh
  LCALL T1_ISR
  RETI
  ORG  PROG+0023h
  LCALL UART_ISR
  RETI
;
  ORG  PROG+0030h
START:
  CLR  UART_BUSY
        MOV     TMOD,#00100001b ; Timer1 in Mode 2, Timer0 in Mode 1
        MOV     TH1, #0FDh  ; Baud Rate = 9600 bps at 11.0592MHz
        MOV     SCON,#01010000b ; UART in Mode 1
  SETB ES    ; Enable UART Interrupt
  SETB EA    ; Enable Interrupt
  SETB TR1    ; Start Timer 1
  
  
  MOV   P1,#FFh
  MOV  B,P1
  
  MOV  A,B  ; Cartage Return
  CALL UART_PUTC
  SJMP START
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
        JB      RI,RECEIVED
TRANSMITTED:
  CLR  UART_BUSY
        CLR     TI
        RET
RECEIVED:
  MOV  A,SBUF
  CPL  A
  MOV  P2,A
  CLR     RI
  RET
;
UART_PUTC:
  JB  UART_BUSY,UART_PUTC
  SETB UART_BUSY
  MOV  SBUF,A
  RET
        END