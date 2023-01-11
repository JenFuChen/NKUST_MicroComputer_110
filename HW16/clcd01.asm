;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.7.0 #4818 (May 31 2007)
; This file generated Wed May 14 10:15:38 2008
;--------------------------------------------------------
	.module clcd01
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _ACC_7
	.globl _ACC_6
	.globl _ACC_5
	.globl _ACC_4
	.globl _ACC_3
	.globl _ACC_2
	.globl _ACC_1
	.globl _ACC_0
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _clcd_cursor_PARM_2
	.globl _clcd_init
	.globl _clcd_wi
	.globl _clcd_wd
	.globl _clcd_wait
	.globl _clcd_cursor
	.globl _clcd_puts
	.globl _INT0_ISR
	.globl _T0_ISR
	.globl _INT1_ISR
	.globl _T1_ISR
	.globl _UART_ISR
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ACC_0	=	0x00e0
_ACC_1	=	0x00e1
_ACC_2	=	0x00e2
_ACC_3	=	0x00e3
_ACC_4	=	0x00e4
_ACC_5	=	0x00e5
_ACC_6	=	0x00e6
_ACC_7	=	0x00e7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_clcd_cursor_PARM_2:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_INT0_ISR
	.ds	5
	ljmp	_T0_ISR
	.ds	5
	ljmp	_INT1_ISR
	.ds	5
	ljmp	_T1_ISR
	.ds	5
	ljmp	_UART_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Work\clcd01\clcd01.c:25: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	C:\Work\clcd01\clcd01.c:27: clcd_init();
	lcall	_clcd_init
;	C:\Work\clcd01\clcd01.c:28: clcd_cursor(0,0);
	clr	a
	mov	_clcd_cursor_PARM_2,a
	mov	(_clcd_cursor_PARM_2 + 1),a
	mov	dpl,a
	mov	dph,a
	lcall	_clcd_cursor
;	C:\Work\clcd01\clcd01.c:29: clcd_puts("Hello, 8051!");
	mov	dptr,#__str_0
	mov	b,#0x80
	lcall	_clcd_puts
;	C:\Work\clcd01\clcd01.c:30: clcd_cursor(1,0);
	clr	a
	mov	_clcd_cursor_PARM_2,a
	mov	(_clcd_cursor_PARM_2 + 1),a
	mov	dptr,#0x0001
	lcall	_clcd_cursor
;	C:\Work\clcd01\clcd01.c:31: clcd_puts("Chin-Shiuh Shieh");
	mov	dptr,#__str_1
	mov	b,#0x80
	lcall	_clcd_puts
;	C:\Work\clcd01\clcd01.c:32: while(1);
00102$:
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'clcd_init'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Work\clcd01\clcd01.c:35: void clcd_init(void)
;	-----------------------------------------
;	 function clcd_init
;	-----------------------------------------
_clcd_init:
;	C:\Work\clcd01\clcd01.c:37: clcd_wi(0x38);	// 8-bit interface, 2 lines, 5x7 dots
	mov	dpl,#0x38
	lcall	_clcd_wi
;	C:\Work\clcd01\clcd01.c:38: clcd_wi(0x0F);	// display on, cursor on, cursor blinking
	mov	dpl,#0x0F
	lcall	_clcd_wi
;	C:\Work\clcd01\clcd01.c:39: clcd_wi(0x06);	// move cursor right when read/write
	mov	dpl,#0x06
	lcall	_clcd_wi
;	C:\Work\clcd01\clcd01.c:40: clcd_wi(0x01);	// clear display, cursor home
	mov	dpl,#0x01
	ljmp	_clcd_wi
;------------------------------------------------------------
;Allocation info for local variables in function 'clcd_wi'
;------------------------------------------------------------
;x                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Work\clcd01\clcd01.c:43: void clcd_wi(char x)
;	-----------------------------------------
;	 function clcd_wi
;	-----------------------------------------
_clcd_wi:
	mov	r2,dpl
;	C:\Work\clcd01\clcd01.c:45: clcd_wait();
	push	ar2
	lcall	_clcd_wait
	pop	ar2
;	C:\Work\clcd01\clcd01.c:46: CLCD_RS=0;
	clr	_P2_0
;	C:\Work\clcd01\clcd01.c:47: CLCD_RW=0;
	clr	_P2_1
;	C:\Work\clcd01\clcd01.c:48: CLCD_Port=x;
	mov	_P1,r2
;	C:\Work\clcd01\clcd01.c:49: CLCD_E=1;
	setb	_P2_2
;	C:\Work\clcd01\clcd01.c:50: CLCD_E=0;
	clr	_P2_2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clcd_wd'
;------------------------------------------------------------
;x                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Work\clcd01\clcd01.c:53: void clcd_wd(char x)
;	-----------------------------------------
;	 function clcd_wd
;	-----------------------------------------
_clcd_wd:
	mov	r2,dpl
;	C:\Work\clcd01\clcd01.c:55: clcd_wait();
	push	ar2
	lcall	_clcd_wait
	pop	ar2
;	C:\Work\clcd01\clcd01.c:56: CLCD_RS=1;
	setb	_P2_0
;	C:\Work\clcd01\clcd01.c:57: CLCD_RW=0;
	clr	_P2_1
;	C:\Work\clcd01\clcd01.c:58: CLCD_Port=x;
	mov	_P1,r2
;	C:\Work\clcd01\clcd01.c:59: CLCD_E=1;
	setb	_P2_2
;	C:\Work\clcd01\clcd01.c:60: CLCD_E=0;
	clr	_P2_2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clcd_wait'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Work\clcd01\clcd01.c:63: void clcd_wait(void)
;	-----------------------------------------
;	 function clcd_wait
;	-----------------------------------------
_clcd_wait:
;	C:\Work\clcd01\clcd01.c:65: CLCD_Port=0xFF;
	mov	_P1,#0xFF
;	C:\Work\clcd01\clcd01.c:66: CLCD_RS=0;
	clr	_P2_0
;	C:\Work\clcd01\clcd01.c:67: CLCD_RW=1;
	setb	_P2_1
;	C:\Work\clcd01\clcd01.c:68: do
00101$:
;	C:\Work\clcd01\clcd01.c:70: CLCD_E=1;
	setb	_P2_2
;	C:\Work\clcd01\clcd01.c:71: ACC=CLCD_Port;
	mov	_ACC,_P1
;	C:\Work\clcd01\clcd01.c:72: CLCD_E=0;
	clr	_P2_2
	jb	_ACC_7,00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clcd_cursor'
;------------------------------------------------------------
;col                       Allocated with name '_clcd_cursor_PARM_2'
;row                       Allocated to registers r2 r3 
;ddram                     Allocated to registers r4 r5 
;------------------------------------------------------------
;	C:\Work\clcd01\clcd01.c:77: void clcd_cursor(int row,int col)
;	-----------------------------------------
;	 function clcd_cursor
;	-----------------------------------------
_clcd_cursor:
	mov	r2,dpl
	mov	r3,dph
;	C:\Work\clcd01\clcd01.c:79: int ddram=0x80;
	mov	r4,#0x80
	mov	r5,#0x00
;	C:\Work\clcd01\clcd01.c:80: if(row==1)
	cjne	r2,#0x01,00102$
	cjne	r3,#0x00,00102$
;	C:\Work\clcd01\clcd01.c:81: ddram+=0x40;
	mov	r4,#0xC0
	mov	r5,#0x00
00102$:
;	C:\Work\clcd01\clcd01.c:82: ddram+=col;
	mov	a,_clcd_cursor_PARM_2
	add	a,r4
	mov	r4,a
	mov	a,(_clcd_cursor_PARM_2 + 1)
	addc	a,r5
;	C:\Work\clcd01\clcd01.c:83: clcd_wi(ddram);
	mov	dpl,r4
	ljmp	_clcd_wi
;------------------------------------------------------------
;Allocation info for local variables in function 'clcd_puts'
;------------------------------------------------------------
;str                       Allocated to registers r2 r3 r4 
;i                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	C:\Work\clcd01\clcd01.c:86: void clcd_puts(char str[])
;	-----------------------------------------
;	 function clcd_puts
;	-----------------------------------------
_clcd_puts:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	C:\Work\clcd01\clcd01.c:89: for(i=0;i<strlen(str);i++)
	mov	r5,#0x00
	mov	r6,#0x00
00101$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_strlen
	mov	r7,dpl
	mov	r0,dph
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	clr	c
	mov	a,r5
	subb	a,r7
	mov	a,r6
	xrl	a,#0x80
	mov	b,r0
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	C:\Work\clcd01\clcd01.c:90: clcd_wd(str[i]);
	mov	a,r5
	add	a,r2
	mov	r7,a
	mov	a,r6
	addc	a,r3
	mov	r0,a
	mov	ar1,r4
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_clcd_wd
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Work\clcd01\clcd01.c:89: for(i=0;i<strlen(str);i++)
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
	sjmp	00101$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'INT0_ISR'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Work\clcd01\clcd01.c:93: void INT0_ISR(void)	interrupt 0
;	-----------------------------------------
;	 function INT0_ISR
;	-----------------------------------------
_INT0_ISR:
;	C:\Work\clcd01\clcd01.c:94: {}
	reti
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'T0_ISR'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Work\clcd01\clcd01.c:95: void T0_ISR(void)	interrupt 1
;	-----------------------------------------
;	 function T0_ISR
;	-----------------------------------------
_T0_ISR:
;	C:\Work\clcd01\clcd01.c:96: {}
	reti
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'INT1_ISR'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Work\clcd01\clcd01.c:97: void INT1_ISR(void)	interrupt 2
;	-----------------------------------------
;	 function INT1_ISR
;	-----------------------------------------
_INT1_ISR:
;	C:\Work\clcd01\clcd01.c:98: {}
	reti
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'T1_ISR'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Work\clcd01\clcd01.c:99: void T1_ISR(void)	interrupt 3
;	-----------------------------------------
;	 function T1_ISR
;	-----------------------------------------
_T1_ISR:
;	C:\Work\clcd01\clcd01.c:100: {}
	reti
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_ISR'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Work\clcd01\clcd01.c:101: void UART_ISR(void) interrupt 4
;	-----------------------------------------
;	 function UART_ISR
;	-----------------------------------------
_UART_ISR:
;	C:\Work\clcd01\clcd01.c:102: {}
	reti
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "Hello, 8051!"
	.db 0x00
__str_1:
	.ascii "Chin-Shiuh Shieh"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
