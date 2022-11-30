;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
; This file was generated Mon Nov 21 10:47:53 2022
;--------------------------------------------------------
	.module hw11
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uart_ASCII
	.globl _main
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
	.globl _uart_initialize
	.globl _uart_put_char
	.globl _uart_get_char
	.globl _uart_get_char_echo
	.globl _uart_put_string
	.globl _uart_get_string
	.globl _uart_i2s
	.globl _uart_s2i
	.globl _uart_put_integer
	.globl _uart_get_integer
	.globl _uart_put_byte
	.globl _uart_put_word
	.globl _uart_get_nibble
	.globl _uart_get_byte
	.globl _uart_get_word
	.globl _keypad_get_key
	.globl _keypad_get_key_echo
	.globl _keypad_get_byte
	.globl _keypad_get_word
	.globl _keypad_check_key
	.globl _keypad_get_integer
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
;Allocation info for local variables in function 'uart_initialize'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:24: void uart_initialize(void)
;	-----------------------------------------
;	 function uart_initialize
;	-----------------------------------------
_uart_initialize:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:26: PCON&=0x7F;		// Clear SMOD of PCON, No Double Baud Rate
	anl	_PCON,#0x7F
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:27: TMOD&=0x2F;TMOD|=0x20;	// Set Timer1 to Mode 2 (8-bit auto reload) for Baud Rate Generation
	anl	_TMOD,#0x2F
	orl	_TMOD,#0x20
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:28: TH1=0xFD;		// Set Baud Rate to 9600 bps for 11.0592M Hz
	mov	_TH1,#0xFD
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:29: SM0=0;SM1=1;		// Set UART to Mode 1 (8-bit UART)
	clr	_SM0
	setb	_SM1
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:30: REN=1;			// Set REN of SCON to Enable UART Receive
	setb	_REN
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:31: TR1=1;			// Set TR1 of TCON to Start Timer1
	setb	_TR1
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:32: TI=0;RI=0;		// Clear TI/RI of SCON to Get Ready to Send/Receive
	clr	_TI
	clr	_RI
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_put_char'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:35: void uart_put_char(char c)	// Put Character to UART
;	-----------------------------------------
;	 function uart_put_char
;	-----------------------------------------
_uart_put_char:
	mov	_SBUF,dpl
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:38: while(TI==0);TI=0;
00101$:
	jbc	_TI,00108$
	sjmp	00101$
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_get_char'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:41: char uart_get_char(void)	// Get Character from UART
;	-----------------------------------------
;	 function uart_get_char
;	-----------------------------------------
_uart_get_char:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:43: while(RI==0);RI=0;
00101$:
	jbc	_RI,00108$
	sjmp	00101$
00108$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:44: return SBUF;
	mov	dpl,_SBUF
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_get_char_echo'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:47: char uart_get_char_echo(void)	// Get Character from UART with Echo, Require uart_put_char()
;	-----------------------------------------
;	 function uart_get_char_echo
;	-----------------------------------------
_uart_get_char_echo:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:49: while(RI==0);RI=0;
00101$:
	jbc	_RI,00108$
	sjmp	00101$
00108$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:50: uart_put_char(SBUF);
	mov	dpl,_SBUF
	lcall	_uart_put_char
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:51: return SBUF;
	mov	dpl,_SBUF
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_put_string'
;------------------------------------------------------------
;s                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:54: void uart_put_string(char *s)	// Put String to UART, Require uart_put_char()
;	-----------------------------------------
;	 function uart_put_string
;	-----------------------------------------
_uart_put_string:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:56: while(*s!=0){uart_put_char(*s);s++;}
00101$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	jz	00104$
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_uart_put_char
	pop	ar4
	pop	ar3
	pop	ar2
	inc	r2
	cjne	r2,#0x00,00101$
	inc	r3
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_get_string'
;------------------------------------------------------------
;s                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:59: void uart_get_string(char *s)	// Get String from UART, Require uart_get_char_echo()
;	-----------------------------------------
;	 function uart_get_string
;	-----------------------------------------
_uart_get_string:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:61: while(((*s)=uart_get_char_echo())!=13)s++;
00101$:
	push	ar2
	push	ar3
	push	ar4
	lcall	_uart_get_char_echo
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	cjne	r5,#0x0D,00109$
	sjmp	00103$
00109$:
	inc	r2
	cjne	r2,#0x00,00101$
	inc	r3
	sjmp	00101$
00103$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:62: *s=0;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_i2s'
;------------------------------------------------------------
;s                         Allocated to stack - offset -5
;i                         Allocated to stack - offset 1
;sign                      Allocated to stack - offset 3
;len                       Allocated to registers r6 
;p                         Allocated to stack - offset 4
;sloc0                     Allocated to stack - offset 8
;sloc1                     Allocated to stack - offset 7
;sloc2                     Allocated to stack - offset 8
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:65: void uart_i2s(int i,char *s)	// Convert Integer to String
;	-----------------------------------------
;	 function uart_i2s
;	-----------------------------------------
_uart_i2s:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x0a
	mov	sp,a
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:68: sign='+';len=0;p=s;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,#0x2B
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:69: if(i<0){sign='-';i=-i;}
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	jnb	acc.7,00115$
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,#0x2D
	mov	r0,_bp
	inc	r0
	clr	c
	clr	a
	subb	a,@r0
	mov	@r0,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	@r0,a
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:70: do{*s=(i%10)+'0';s++;len++;i/=10;}while(i!=0);
00115$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	mov	r5,#0x00
00103$:
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__modsint
	mov	r6,dpl
	dec	sp
	dec	sp
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,#0x30
	add	a,r6
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrput
	inc	dptr
	mov	r4,dpl
	mov	r2,dph
	inc	r5
	mov	ar6,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__divsint
	mov	r0,_bp
	inc	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00103$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:71: if(sign=='-'){*s='-';s++;len++;}
	mov	ar6,r5
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	cjne	@r0,#0x2D,00119$
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	mov	a,#0x2D
	lcall	__gptrput
	mov	a,r5
	inc	a
	mov	r6,a
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:72: for(i=0;i<len/2;i++){p[len]=p[i];p[i]=p[len-1-i];p[len-1-i]=p[len];}
00119$:
	mov	a,r6
	clr	c
	rrc	a
	mov	r2,a
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00108$:
	mov	ar5,r2
	mov	r7,#0x00
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,r5
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00126$
	ljmp	00111$
00126$:
	push	ar2
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	mov	ar7,r6
	mov	r5,#0x00
	dec	r7
	cjne	r7,#0xff,00127$
	dec	r5
00127$:
	mov	r0,_bp
	inc	r0
	mov	a,r7
	clr	c
	subb	a,@r0
	mov	r7,a
	mov	a,r5
	inc	r0
	subb	a,@r0
	mov	r5,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r7
	add	a,@r0
	mov	r7,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar2,@r0
	mov	dpl,r7
	mov	dph,r5
	mov	b,r2
	lcall	__gptrget
	mov	r3,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	mov	dpl,r7
	mov	dph,r5
	mov	b,r2
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	mov	r0,_bp
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00128$
	inc	r0
	inc	@r0
00128$:
	pop	ar2
	ljmp	00108$
00111$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:73: p[len]=0;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r2,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r6
	mov	dph,r2
	mov	b,r3
	clr	a
	lcall	__gptrput
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_s2i'
;------------------------------------------------------------
;s                         Allocated to registers r2 r3 r4 
;i                         Allocated to registers r5 r6 
;sign                      Allocated to stack - offset 1
;sloc0                     Allocated to stack - offset 7
;sloc1                     Allocated to stack - offset 2
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:76: int uart_s2i(char *s)	// Convert String to Integer
;	-----------------------------------------
;	 function uart_s2i
;	-----------------------------------------
_uart_s2i:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:78: int i=0;char sign='+';
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x2B
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:79: if(*s=='-'){sign='-';s++;}
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x2D,00112$
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x2D
	inc	r2
	cjne	r2,#0x00,00117$
	inc	r3
00117$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:80: while(*s!=0){i=i*10+(*s-'0');s++;}
00112$:
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
00103$:
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	jz	00105$
	push	ar3
	push	ar5
	push	ar6
	mov	dptr,#0x000A
	lcall	__mulint
	mov	r7,dpl
	mov	r2,dph
	dec	sp
	dec	sp
	pop	ar3
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r3
	add	a,#0xd0
	mov	r3,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	mov	a,r3
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r2
	mov	r2,a
	mov	ar5,r7
	mov	ar6,r2
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00119$
	inc	r0
	inc	@r0
00119$:
	sjmp	00103$
00105$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:81: if(sign=='-')i=-i;
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x2D,00107$
	clr	c
	clr	a
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	mov	r6,a
00107$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:82: return i;
	mov	dpl,r5
	mov	dph,r6
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_put_integer'
;------------------------------------------------------------
;i                         Allocated to registers r2 r3 
;s                         Allocated to stack - offset 1
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:85: void uart_put_integer(int i)	// Put Integer to UART, Require uart_i2s(),uart_put_string()
;	-----------------------------------------
;	 function uart_put_integer
;	-----------------------------------------
_uart_put_integer:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x07
	mov	sp,a
	mov	r2,dpl
	mov	r3,dph
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:88: uart_i2s(i,s);uart_put_string(s);
	mov	r4,_bp
	inc	r4
	mov	ar5,r4
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	lcall	_uart_i2s
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	mov	r2,#0x00
	mov	r3,#0x40
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	_uart_put_string
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_get_integer'
;------------------------------------------------------------
;s                         Allocated to stack - offset 1
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:91: int uart_get_integer()		// Get Integer from UART, Require uart_get_string(),uart_s2i()
;	-----------------------------------------
;	 function uart_get_integer
;	-----------------------------------------
_uart_get_integer:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x07
	mov	sp,a
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:94: uart_get_string(s);
	mov	r2,_bp
	inc	r2
	mov	ar3,r2
	mov	r4,#0x00
	mov	r5,#0x40
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar2
	lcall	_uart_get_string
	pop	ar2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:95: return uart_s2i(s);
	mov	r3,#0x00
	mov	r4,#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_uart_s2i
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_put_byte'
;------------------------------------------------------------
;byte_data                 Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:98: void uart_put_byte(unsigned char byte_data)
;	-----------------------------------------
;	 function uart_put_byte
;	-----------------------------------------
_uart_put_byte:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:100: uart_put_char(uart_ASCII[byte_data/16]);uart_put_char(uart_ASCII[byte_data%16]);
	mov	a,dpl
	mov	r2,a
	swap	a
	anl	a,#0x0f
	mov	dptr,#_uart_ASCII
	movc	a,@a+dptr
	mov	dpl,a
	push	ar2
	lcall	_uart_put_char
	pop	ar2
	mov	a,#0x0F
	anl	a,r2
	mov	dptr,#_uart_ASCII
	movc	a,@a+dptr
	mov	dpl,a
	ljmp	_uart_put_char
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_put_word'
;------------------------------------------------------------
;word_data                 Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:103: void uart_put_word(unsigned int word_data)
;	-----------------------------------------
;	 function uart_put_word
;	-----------------------------------------
_uart_put_word:
	mov	r2,dpl
	mov	r3,dph
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:105: uart_put_byte(word_data/256);uart_put_byte(word_data%256);
	mov	ar4,r3
	mov	dpl,r4
	push	ar2
	push	ar3
	lcall	_uart_put_byte
	pop	ar3
	pop	ar2
	mov	dpl,r2
	ljmp	_uart_put_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_get_nibble'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:108: char uart_get_nibble()
;	-----------------------------------------
;	 function uart_get_nibble
;	-----------------------------------------
_uart_get_nibble:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:111: c=uart_get_char_echo();
	lcall	_uart_get_char_echo
	mov	r2,dpl
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:112: if('0'<=c && c<='9')return(c-'0');
	clr	c
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0xb0
	jc	00102$
	mov	a,#(0x39 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jc	00102$
	mov	a,r2
	add	a,#0xd0
	mov	dpl,a
	ret
00102$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:113: if('A'<=c && c<='F')return(10+c-'A');
	clr	c
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0xc1
	jc	00105$
	mov	a,#(0x46 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jc	00105$
	mov	a,#0xC9
	add	a,r2
	mov	dpl,a
	ret
00105$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:114: if('a'<=c && c<='f')return(10+c-'a');
	clr	c
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0xe1
	jc	00108$
	mov	a,#(0x66 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jc	00108$
	mov	a,#0xA9
	add	a,r2
	mov	dpl,a
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:115: return(0);
	ret
00108$:
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_get_byte'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:118: unsigned char uart_get_byte()
;	-----------------------------------------
;	 function uart_get_byte
;	-----------------------------------------
_uart_get_byte:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:120: return(16*uart_get_nibble()+uart_get_nibble());
	lcall	_uart_get_nibble
	mov	a,dpl
	swap	a
	anl	a,#0xf0
	mov	r2,a
	push	ar2
	lcall	_uart_get_nibble
	mov	r3,dpl
	pop	ar2
	mov	a,r3
	add	a,r2
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_get_word'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:123: unsigned int uart_get_word()
;	-----------------------------------------
;	 function uart_get_word
;	-----------------------------------------
_uart_get_word:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/uart.c:125: return(256*uart_get_byte()+uart_get_byte());
	lcall	_uart_get_byte
	mov	r3,dpl
	mov	r2,#0x00
	push	ar2
	push	ar3
	lcall	_uart_get_byte
	mov	r4,dpl
	pop	ar3
	pop	ar2
	mov	r5,#0x00
	mov	a,r4
	add	a,r2
	mov	dpl,a
	mov	a,r5
	addc	a,r3
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'keypad_get_key'
;------------------------------------------------------------
;key                       Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:17: unsigned char keypad_get_key(void)
;	-----------------------------------------
;	 function keypad_get_key
;	-----------------------------------------
_keypad_get_key:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:20: KEYPAD_DO|=0x1F;
	orl	_P1,#0x1F
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:21: while(KEYPAD_DA==0);
00101$:
	jnb	_P1_4,00101$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:22: key=KEYPAD_DO;key&=0x0F;
	mov	r2,_P1
	anl	ar2,#0x0F
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:23: while(KEYPAD_DA==1);
00104$:
	jb	_P1_4,00104$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:24: return key;
	mov	dpl,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'keypad_get_key_echo'
;------------------------------------------------------------
;key                       Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:27: unsigned char keypad_get_key_echo(void)
;	-----------------------------------------
;	 function keypad_get_key_echo
;	-----------------------------------------
_keypad_get_key_echo:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:30: KEYPAD_DO|=0x1F;
	orl	_P1,#0x1F
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:31: while(KEYPAD_DA==0);
00101$:
	jnb	_P1_4,00101$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:32: key=KEYPAD_DO;key&=0x0F;
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:33: uart_put_char(uart_ASCII[key]);
	mov	a,_P1
	anl	a,#0x0F
	mov	r2,a
	mov	dptr,#_uart_ASCII
	movc	a,@a+dptr
	mov	dpl,a
	push	ar2
	lcall	_uart_put_char
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:34: uart_put_string("\r\n");
	mov	dptr,#__str_0
	mov	b,#0x80
	lcall	_uart_put_string
	pop	ar2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:36: while(KEYPAD_DA==1);
00104$:
	jb	_P1_4,00104$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:37: return key;
	mov	dpl,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'keypad_get_byte'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:40: unsigned char keypad_get_byte(void)
;	-----------------------------------------
;	 function keypad_get_byte
;	-----------------------------------------
_keypad_get_byte:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:42: return(keypad_get_key_echo()*16+keypad_get_key_echo());
	lcall	_keypad_get_key_echo
	mov	a,dpl
	swap	a
	anl	a,#0xf0
	mov	r2,a
	push	ar2
	lcall	_keypad_get_key_echo
	mov	r3,dpl
	pop	ar2
	mov	a,r3
	add	a,r2
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'keypad_get_word'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:45: unsigned int keypad_get_word(void)
;	-----------------------------------------
;	 function keypad_get_word
;	-----------------------------------------
_keypad_get_word:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:47: return(keypad_get_byte()*256+keypad_get_byte());
	lcall	_keypad_get_byte
	mov	r3,dpl
	mov	r2,#0x00
	push	ar2
	push	ar3
	lcall	_keypad_get_byte
	mov	r4,dpl
	pop	ar3
	pop	ar2
	mov	r5,#0x00
	mov	a,r4
	add	a,r2
	mov	dpl,a
	mov	a,r5
	addc	a,r3
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'keypad_check_key'
;------------------------------------------------------------
;key                       Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:50: unsigned char keypad_check_key(void)
;	-----------------------------------------
;	 function keypad_check_key
;	-----------------------------------------
_keypad_check_key:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:53: KEYPAD_DO|=0x1F;
	orl	_P1,#0x1F
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:54: if(KEYPAD_DA==1)
	jnb	_P1_4,00105$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:55: {key=KEYPAD_DO;key&=0x0F;while(KEYPAD_DA==1);return key;}
	mov	r2,_P1
	anl	ar2,#0x0F
00101$:
	jb	_P1_4,00101$
	mov	dpl,r2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:57: return KEYPAD_NULL;
	ret
00105$:
	mov	dpl,#0x10
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'keypad_get_integer'
;------------------------------------------------------------
;value                     Allocated to registers r2 r3 
;key                       Allocated to registers r5 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:60: unsigned int keypad_get_integer(void)
;	-----------------------------------------
;	 function keypad_get_integer
;	-----------------------------------------
_keypad_get_integer:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:62: unsigned int value=0;
	mov	r2,#0x00
	mov	r3,#0x00
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:64: while((key=keypad_get_key())<0x0A)
00101$:
	push	ar2
	push	ar3
	lcall	_keypad_get_key
	mov	r4,dpl
	pop	ar3
	pop	ar2
	mov	ar5,r4
	cjne	r4,#0x0A,00108$
00108$:
	jnc	00103$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:66: uart_put_char(uart_ASCII[key]);
	mov	a,r5
	mov	dptr,#_uart_ASCII
	movc	a,@a+dptr
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar5
	lcall	_uart_put_char
	pop	ar5
	pop	ar3
	pop	ar2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:68: value=value*10+key;
	push	ar5
	push	ar2
	push	ar3
	mov	dptr,#0x000A
	lcall	__mulint
	mov	r4,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	pop	ar5
	mov	r7,#0x00
	mov	a,r5
	add	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r6
	mov	r6,a
	mov	ar2,r4
	mov	ar3,r6
	sjmp	00101$
00103$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:70: return value;
	mov	dpl,r2
	mov	dph,r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r2 r3 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:72: void main(){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:73: uart_initialize();
	lcall	_uart_initialize
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:74: uart_put_string("Test:\r\n");
	mov	dptr,#__str_1
	mov	b,#0x80
	lcall	_uart_put_string
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:75: while(1){
00102$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:77: uart_put_string("First:\r\n");
	mov	dptr,#__str_2
	mov	b,#0x80
	lcall	_uart_put_string
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:78: i = keypad_get_key_echo();
	lcall	_keypad_get_key_echo
	mov	r2,dpl
	mov	r3,#0x00
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:79: uart_put_string("Second:\r\n");
	mov	dptr,#__str_3
	mov	b,#0x80
	push	ar2
	push	ar3
	lcall	_uart_put_string
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:80: j = keypad_get_key_echo();
	lcall	_keypad_get_key_echo
	mov	r4,dpl
	pop	ar3
	pop	ar2
	mov	r5,#0x00
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:81: uart_put_integer(i);uart_put_string(" * ");uart_put_integer(j);uart_put_string(" = ");uart_put_integer(i*j);uart_put_string("\r\n");
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_uart_put_integer
	mov	dptr,#__str_4
	mov	b,#0x80
	lcall	_uart_put_string
	pop	ar5
	pop	ar4
	mov	dpl,r4
	mov	dph,r5
	push	ar4
	push	ar5
	lcall	_uart_put_integer
	mov	dptr,#__str_5
	mov	b,#0x80
	lcall	_uart_put_string
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	mov	dpl,r2
	mov	dph,r3
	lcall	_uart_put_integer
	mov	dptr,#__str_0
	mov	b,#0x80
	lcall	_uart_put_string
	ljmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_uart_ASCII:
	.ascii "0123456789ABCDEF"
	.db 0x00
__str_0:
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_1:
	.ascii "Test:"
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_2:
	.ascii "First:"
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_3:
	.ascii "Second:"
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_4:
	.ascii " * "
	.db 0x00
__str_5:
	.ascii " = "
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
