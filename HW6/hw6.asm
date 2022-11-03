;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
; This file was generated Thu Nov 03 12:06:29 2022
;--------------------------------------------------------
	.module hw6
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _delayms
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
	.globl _NIBBLE
	.globl _FONT
	.globl _LED_DATA
	.globl _INT0_ISR
	.globl _T0_ISR
	.globl _INT1_ISR
	.globl _T1_ISR
	.globl _UART_ISR
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_LED_DATA::
	.ds 1
_FONT::
	.ds 16
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
_NIBBLE::
	.ds 1
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:12: char FONT[16]={	0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,
	mov	_FONT,#0xC0
	mov	(_FONT + 0x0001),#0xF9
	mov	(_FONT + 0x0002),#0xA4
	mov	(_FONT + 0x0003),#0xB0
	mov	(_FONT + 0x0004),#0x99
	mov	(_FONT + 0x0005),#0x92
	mov	(_FONT + 0x0006),#0x82
	mov	(_FONT + 0x0007),#0xF8
	mov	(_FONT + 0x0008),#0x80
	mov	(_FONT + 0x0009),#0x90
	mov	(_FONT + 0x000a),#0x88
	mov	(_FONT + 0x000b),#0x83
	mov	(_FONT + 0x000c),#0xA7
	mov	(_FONT + 0x000d),#0xA1
	mov	(_FONT + 0x000e),#0x86
	mov	(_FONT + 0x000f),#0x8E
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
;Allocation info for local variables in function 'delayms'
;------------------------------------------------------------
;time                      Allocated to registers r2 r3 
;n                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:22: void delayms(unsigned int time)
;	-----------------------------------------
;	 function delayms
;	-----------------------------------------
_delayms:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
	mov	r3,dph
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:25: while (time>0)
00104$:
	mov	a,r2
	orl	a,r3
	jz	00107$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:28: while(n>0) n--;
	mov	r4,#0x78
	mov	r5,#0x00
00101$:
	mov	a,r4
	orl	a,r5
	jz	00103$
	dec	r4
	cjne	r4,#0xff,00101$
	dec	r5
	sjmp	00101$
00103$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:29: time--;
	dec	r2
	cjne	r2,#0xff,00104$
	dec	r3
	sjmp	00104$
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:33: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:36: TMOD=0x11;		// Set Timer to work in Mode 1 (16-bit Timer)
	mov	_TMOD,#0x11
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:37: ET0=1;			// Enable Timer 0 Interrupt
	setb	_ET0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:38: EA=1;			// Enable Interrupt
	setb	_EA
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:39: TR0=1;			// Start Timer 0
	setb	_TR0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:40: BUTTON=1;		// Set the output latch of BUTTON to 1
	setb	_P1_0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:41: LED_DATA++;
	mov	_LED_DATA,#0x01
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:42: delayms(1000);
	mov	dptr,#0x03E8
	ljmp	_delayms
;------------------------------------------------------------
;Allocation info for local variables in function 'INT0_ISR'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:45: void INT0_ISR(void)	interrupt 0
;	-----------------------------------------
;	 function INT0_ISR
;	-----------------------------------------
_INT0_ISR:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:46: {}
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:47: void T0_ISR(void)	interrupt 1
;	-----------------------------------------
;	 function T0_ISR
;	-----------------------------------------
_T0_ISR:
	push	acc
	push	ar0
	push	psw
	mov	psw,#0x00
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:49: TH0=0xFC;	// Timer 0 Interrupt will be generated
	mov	_TH0,#0xFC
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:50: TL0=0x18;	// for every 1mS
	mov	_TL0,#0x18
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:51: NIBBLE=!NIBBLE;
	cpl	_NIBBLE
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:52: if(NIBBLE==1)
	jnb	_NIBBLE,00102$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:55: LOW_NIBBLE=1;
	setb	_P2_0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:56: ACC=LED_DATA;
	mov	_ACC,_LED_DATA
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:57: ACC=ACC>>4;
	mov	a,_ACC
	swap	a
	anl	a,#0x0f
	mov	_ACC,a
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:58: ACC=FONT[ACC];
	mov	a,_ACC
	add	a,#_FONT
	mov	r0,a
	mov	_ACC,@r0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:59: LED_PORT=ACC;
	mov	_P0,_ACC
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:60: HIGH_NIBBLE=0;
	clr	_P2_1
	sjmp	00104$
00102$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:65: HIGH_NIBBLE=1;
	setb	_P2_1
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:66: ACC=LED_DATA;
	mov	_ACC,_LED_DATA
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:67: ACC=ACC&0X0F;
	anl	_ACC,#0x0F
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:68: ACC=FONT[ACC];
	mov	a,_ACC
	add	a,#_FONT
	mov	r0,a
	mov	_ACC,@r0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:69: LED_PORT=ACC;
	mov	_P0,_ACC
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:70: LOW_NIBBLE=0;
	clr	_P2_0
00104$:
	pop	psw
	pop	ar0
	pop	acc
	reti
;	eliminated unneeded push/pop ar1
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'INT1_ISR'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:73: void INT1_ISR(void)	interrupt 2
;	-----------------------------------------
;	 function INT1_ISR
;	-----------------------------------------
_INT1_ISR:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:74: {}
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:75: void T1_ISR(void)	interrupt 3
;	-----------------------------------------
;	 function T1_ISR
;	-----------------------------------------
_T1_ISR:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:76: {}
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:77: void UART_ISR(void) interrupt 4
;	-----------------------------------------
;	 function UART_ISR
;	-----------------------------------------
_UART_ISR:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:78: {}
	reti
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
