;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
; This file was generated Mon Dec 26 11:31:34 2022
;--------------------------------------------------------
	.module DHT11_ex
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ASCII
	.globl _main
	.globl _delay
	.globl _DHT11_Read
	.globl _DHT11_Read_Bit
	.globl _ACC_7
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
	.globl _clcd_initialize
	.globl _clcd_write_instruction
	.globl _clcd_wait
	.globl _clcd_cls
	.globl _clcd_set_cursor
	.globl _clcd_put_char
	.globl _clcd_put_string
	.globl _clcd_put_byte
	.globl _clcd_put_word
	.globl _i2s
	.globl _clcd_put_int
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
;Allocation info for local variables in function 'DHT11_Read_Bit'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:5: __bit DHT11_Read_Bit()
;	-----------------------------------------
;	 function DHT11_Read_Bit
;	-----------------------------------------
_DHT11_Read_Bit:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:7: while(DHT11_DATA==0);
00101$:
	jnb	_P0_0,00101$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:8: TL0=0;
	mov	_TL0,#0x00
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:9: while(DHT11_DATA==1);
00104$:
	jb	_P0_0,00104$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:10: if(TL0>50)
	mov	a,#0x32
	cjne	a,_TL0,00119$
00119$:
	jnc	00108$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:11: return 1;
	setb	c
	ret
00108$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:13: return 0;
	clr	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DHT11_Read'
;------------------------------------------------------------
;Temperature               Allocated to stack - offset -5
;Humidity                  Allocated to registers r2 r3 r4 
;i                         Allocated to registers r6 
;readings                  Allocated to stack - offset 1
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:16: void DHT11_Read(unsigned char * Humidity,unsigned char * Temperature)
;	-----------------------------------------
;	 function DHT11_Read
;	-----------------------------------------
_DHT11_Read:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x28
	mov	sp,a
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:21: TMOD&=0xF1;TMOD|=0x01;TR0=1;
	anl	_TMOD,#0xF1
	orl	_TMOD,#0x01
	setb	_TR0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:23: TH0=0;TL0=0;
	mov	_TH0,#0x00
	mov	_TL0,#0x00
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:24: DHT11_DATA=0;
	clr	_P0_0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:25: while(TH0<75);
00101$:
	mov	a,#0x100 - 0x4B
	add	a,_TH0
	jnc	00101$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:26: DHT11_DATA=1;
	setb	_P0_0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:28: while(DHT11_DATA==1);
00104$:
	jb	_P0_0,00104$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:29: while(DHT11_DATA==0);
00107$:
	jnb	_P0_0,00107$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:30: while(DHT11_DATA==1);
00110$:
	jb	_P0_0,00110$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:32: for(i=0;i<40;i++)
	mov	r5,_bp
	inc	r5
	mov	r6,#0x00
00116$:
	cjne	r6,#0x28,00151$
00151$:
	jnc	00113$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:33: readings[i]=DHT11_Read_Bit();
	mov	a,r6
	add	a,r5
	mov	r0,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar0
	lcall	_DHT11_Read_Bit
	clr	a
	rlc	a
	pop	ar0
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	@r0,a
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:32: for(i=0;i<40;i++)
	inc	r6
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:35: while(DHT11_DATA==0);
	sjmp	00116$
00113$:
	jnb	_P0_0,00113$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:37: for(i=0,(*Humidity)=0;i<8;i++)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	mov	r6,#0x00
00120$:
	cjne	r6,#0x08,00154$
00154$:
	jnc	00123$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:39: (*Humidity)*=2;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	add	a,acc
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:40: (*Humidity)+=readings[i];
	mov	a,r6
	add	a,r5
	mov	r0,a
	push	ar5
	mov	a,@r0
	add	a,r7
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:37: for(i=0,(*Humidity)=0;i<8;i++)
	inc	r6
	pop	ar5
	sjmp	00120$
00123$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:42: for(i=0,(*Temperature)=0;i<8;i++)
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	mov	r6,#0x00
00124$:
	cjne	r6,#0x08,00156$
00156$:
	jnc	00128$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:44: (*Temperature)*=2;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	add	a,acc
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:45: (*Temperature)+=readings[i+16];
	mov	a,#0x10
	add	a,r6
	add	a,r5
	mov	r0,a
	push	ar5
	mov	a,@r0
	add	a,r7
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:42: for(i=0,(*Temperature)=0;i<8;i++)
	inc	r6
	pop	ar5
	sjmp	00124$
00128$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clcd_initialize'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:25: void clcd_initialize(void) {
;	-----------------------------------------
;	 function clcd_initialize
;	-----------------------------------------
_clcd_initialize:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:26: clcd_write_instruction(0x38);  // 8-bit interface, 2 lines, 5x7 dots
	mov	dpl,#0x38
	lcall	_clcd_write_instruction
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:27: clcd_write_instruction(0x0F);  // display on, cursor on, cursor blinking
	mov	dpl,#0x0F
	lcall	_clcd_write_instruction
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:28: clcd_write_instruction(0x06);  // move cursor right when read/write
	mov	dpl,#0x06
	lcall	_clcd_write_instruction
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:29: clcd_write_instruction(0x01);  // clear display, cursor home
	mov	dpl,#0x01
	ljmp	_clcd_write_instruction
;------------------------------------------------------------
;Allocation info for local variables in function 'clcd_write_instruction'
;------------------------------------------------------------
;instruction               Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:32: void clcd_write_instruction(unsigned char instruction) {
;	-----------------------------------------
;	 function clcd_write_instruction
;	-----------------------------------------
_clcd_write_instruction:
	mov	r2,dpl
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:33: clcd_wait();
	push	ar2
	lcall	_clcd_wait
	pop	ar2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:34: CLCD_RS = 0;
	clr	_P2_0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:35: CLCD_RW = 0;
	clr	_P2_1
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:36: CLCD_DB = instruction;
	mov	_P1,r2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:37: CLCD_E = 1;
	setb	_P2_2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:38: CLCD_E = 0;
	clr	_P2_2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clcd_wait'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:41: void clcd_wait(void) {
;	-----------------------------------------
;	 function clcd_wait
;	-----------------------------------------
_clcd_wait:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:42: CLCD_DB = 0xFF;
	mov	_P1,#0xFF
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:43: CLCD_RS = 0;
	clr	_P2_0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:44: CLCD_RW = 1;
	setb	_P2_1
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:45: do {
00101$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:46: CLCD_E = 1;
	setb	_P2_2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:47: ACC = CLCD_DB;
	mov	_ACC,_P1
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:48: CLCD_E = 0;
	clr	_P2_2
	jb	_ACC_7,00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clcd_cls'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:52: void clcd_cls(void) {
;	-----------------------------------------
;	 function clcd_cls
;	-----------------------------------------
_clcd_cls:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:53: clcd_write_instruction(0x01);
	mov	dpl,#0x01
	ljmp	_clcd_write_instruction
;------------------------------------------------------------
;Allocation info for local variables in function 'clcd_set_cursor'
;------------------------------------------------------------
;column                    Allocated to stack - offset -4
;row                       Allocated to registers r2 r3 
;instruction               Allocated to registers r4 r5 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:56: void clcd_set_cursor(unsigned int row, unsigned int column) {
;	-----------------------------------------
;	 function clcd_set_cursor
;	-----------------------------------------
_clcd_set_cursor:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
	mov	r3,dph
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:57: unsigned int instruction = 0x80;
	mov	r4,#0x80
	mov	r5,#0x00
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:58: if (row == 1)
	cjne	r2,#0x01,00102$
	cjne	r3,#0x00,00102$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:59: instruction += 0x40;
	mov	r4,#0xC0
	mov	r5,#0x00
00102$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:60: instruction += column;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	add	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r5
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:61: clcd_write_instruction(instruction);
	mov	dpl,r4
	lcall	_clcd_write_instruction
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clcd_put_char'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:64: void clcd_put_char(char c) {
;	-----------------------------------------
;	 function clcd_put_char
;	-----------------------------------------
_clcd_put_char:
	mov	r2,dpl
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:65: clcd_wait();
	push	ar2
	lcall	_clcd_wait
	pop	ar2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:66: CLCD_RS = 1;
	setb	_P2_0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:67: CLCD_RW = 0;
	clr	_P2_1
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:68: CLCD_DB = c;
	mov	_P1,r2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:69: CLCD_E = 1;
	setb	_P2_2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:70: CLCD_E = 0;
	clr	_P2_2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clcd_put_string'
;------------------------------------------------------------
;s                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:73: void clcd_put_string(char* s) {
;	-----------------------------------------
;	 function clcd_put_string
;	-----------------------------------------
_clcd_put_string:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:74: while (*s != 0) {
00101$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	jz	00104$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:75: clcd_put_char(*s);
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_clcd_put_char
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:76: s++;
	inc	r2
	cjne	r2,#0x00,00101$
	inc	r3
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clcd_put_byte'
;------------------------------------------------------------
;byte_data                 Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:80: void clcd_put_byte(unsigned char byte_data) {
;	-----------------------------------------
;	 function clcd_put_byte
;	-----------------------------------------
_clcd_put_byte:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:81: clcd_put_char(ASCII[byte_data / 16]);
	mov	a,dpl
	mov	r2,a
	swap	a
	anl	a,#0x0f
	mov	dptr,#_ASCII
	movc	a,@a+dptr
	mov	dpl,a
	push	ar2
	lcall	_clcd_put_char
	pop	ar2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:82: clcd_put_char(ASCII[byte_data % 16]);
	mov	a,#0x0F
	anl	a,r2
	mov	dptr,#_ASCII
	movc	a,@a+dptr
	mov	dpl,a
	ljmp	_clcd_put_char
;------------------------------------------------------------
;Allocation info for local variables in function 'clcd_put_word'
;------------------------------------------------------------
;word_data                 Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:85: void clcd_put_word(unsigned int word_data) {
;	-----------------------------------------
;	 function clcd_put_word
;	-----------------------------------------
_clcd_put_word:
	mov	r2,dpl
	mov	r3,dph
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:86: clcd_put_byte(word_data / 256);
	mov	ar4,r3
	mov	dpl,r4
	push	ar2
	push	ar3
	lcall	_clcd_put_byte
	pop	ar3
	pop	ar2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:87: clcd_put_byte(word_data % 256);
	mov	dpl,r2
	ljmp	_clcd_put_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'i2s'
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:90: void i2s(int i, char* s) {
;	-----------------------------------------
;	 function i2s
;	-----------------------------------------
_i2s:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x0a
	mov	sp,a
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:94: sign = '+';
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,#0x2B
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:96: p = s;
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:97: if (i < 0) {
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	jnb	acc.7,00115$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:98: sign = '-';
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,#0x2D
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:99: i = -i;
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:101: do {
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:102: *s = (i % 10) + '0';
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:103: s++;
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:104: len++;
	inc	r5
	mov	ar6,r5
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:105: i /= 10;
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:106: } while (i != 0);
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00103$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:107: if (sign == '-') {
	mov	ar6,r5
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	cjne	@r0,#0x2D,00119$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:108: *s = '-';
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	mov	a,#0x2D
	lcall	__gptrput
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:110: len++;
	mov	a,r5
	inc	a
	mov	r6,a
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:112: for (i = 0; i < len / 2; i++) {
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:113: p[len] = p[i];
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:114: p[i] = p[len - 1 - i];
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:115: p[len - 1 - i] = p[len];
	mov	dpl,r7
	mov	dph,r5
	mov	b,r2
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:112: for (i = 0; i < len / 2; i++) {
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:117: p[len] = 0;
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
;Allocation info for local variables in function 'clcd_put_int'
;------------------------------------------------------------
;i                         Allocated to registers r2 r3 
;s                         Allocated to stack - offset 1
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:120: void clcd_put_int(int i) {
;	-----------------------------------------
;	 function clcd_put_int
;	-----------------------------------------
_clcd_put_int:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x07
	mov	sp,a
	mov	r2,dpl
	mov	r3,dph
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:122: i2s(i, s);
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
	lcall	_i2s
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:123: clcd_put_string(s);
	mov	r2,#0x00
	mov	r3,#0x40
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	_clcd_put_string
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;x                         Allocated to registers r2 r3 
;n                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:11: void delay(int x) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r2,dpl
	mov	r3,dph
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:13: while (x > 0) {
00104$:
	clr	c
	clr	a
	subb	a,r2
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:15: while (n > 0)
	mov	r4,#0x78
	mov	r5,#0x00
00101$:
	clr	c
	clr	a
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:16: n--;
	dec	r4
	cjne	r4,#0xff,00101$
	dec	r5
	sjmp	00101$
00103$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:17: x--;
	dec	r2
	cjne	r2,#0xff,00104$
	dec	r3
	sjmp	00104$
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;Humidity                  Allocated to stack - offset 1
;Temperature               Allocated to stack - offset 2
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:21: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:24: clcd_initialize();
	lcall	_clcd_initialize
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:25: while (1) {
00102$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:26: DHT11_Read(&Humidity, &Temperature);
	mov	a,_bp
	add	a,#0x02
	mov	r2,a
	mov	r3,#0x00
	mov	r4,#0x40
	mov	r5,_bp
	inc	r5
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_DHT11_Read
	dec	sp
	dec	sp
	dec	sp
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:28: clcd_set_cursor(0, 0);
	clr	a
	push	acc
	push	acc
	mov	dptr,#0x0000
	lcall	_clcd_set_cursor
	dec	sp
	dec	sp
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:29: clcd_put_string("Humidity: ");
	mov	dptr,#__str_0
	mov	b,#0x80
	lcall	_clcd_put_string
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:30: clcd_put_int(Humidity);
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	mov	r3,#0x00
	mov	dpl,r2
	mov	dph,r3
	lcall	_clcd_put_int
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:32: clcd_set_cursor(1, 0);
	clr	a
	push	acc
	push	acc
	mov	dptr,#0x0001
	lcall	_clcd_set_cursor
	dec	sp
	dec	sp
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:33: clcd_put_string("Temperature: ");
	mov	dptr,#__str_1
	mov	b,#0x80
	lcall	_clcd_put_string
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:34: clcd_put_int(Temperature);
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	ar2,@r0
	mov	r3,#0x00
	mov	dpl,r2
	mov	dph,r3
	lcall	_clcd_put_int
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:36: delay(2000);
	mov	dptr,#0x07D0
	lcall	_delay
	ljmp	00102$
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_ASCII:
	.ascii "0123456789ABCDEF"
	.db 0x00
__str_0:
	.ascii "Humidity: "
	.db 0x00
__str_1:
	.ascii "Temperature: "
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
