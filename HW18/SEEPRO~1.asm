;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
; This file was generated Mon Dec 26 11:19:12 2022
;--------------------------------------------------------
	.module SEEPRO_1
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uart_ASCII
	.globl _ASCII
	.globl _main
	.globl _ACC_7
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
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
	.globl _F1
	.globl _B
	.globl _A
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
	.globl _i2c_start
	.globl _i2c_stop
	.globl _i2c_shift_out
	.globl _i2c_shift_in
	.globl _seeprom_write_byte
	.globl _seeprom_read_byte
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
	.globl _delay
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
_A	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_F1	=	0x00d1
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
_FL	=	0x00d1
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
;Allocation info for local variables in function 'clcd_initialize'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:25: void clcd_initialize(void) {
;	-----------------------------------------
;	 function clcd_initialize
;	-----------------------------------------
_clcd_initialize:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:26: clcd_write_instruction(0x38);  // 8-bit interface, 2 lines, 5x7 dots
	mov	dpl,#0x38
	lcall	_clcd_write_instruction
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:27: clcd_write_instruction(0x0F);  // display on, cursor on, cursor blinking
	mov	dpl,#0x0F
	lcall	_clcd_write_instruction
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:28: clcd_write_instruction(0x06);  // move cursor right when read/write
	mov	dpl,#0x06
	lcall	_clcd_write_instruction
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:29: clcd_write_instruction(0x01);  // clear display, cursor home
	mov	dpl,#0x01
	ljmp	_clcd_write_instruction
;------------------------------------------------------------
;Allocation info for local variables in function 'clcd_write_instruction'
;------------------------------------------------------------
;instruction               Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:32: void clcd_write_instruction(unsigned char instruction) {
;	-----------------------------------------
;	 function clcd_write_instruction
;	-----------------------------------------
_clcd_write_instruction:
	mov	r2,dpl
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:33: clcd_wait();
	push	ar2
	lcall	_clcd_wait
	pop	ar2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:34: CLCD_RS = 0;
	clr	_P2_0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:35: CLCD_RW = 0;
	clr	_P2_1
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:36: CLCD_DB = instruction;
	mov	_P1,r2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:37: CLCD_E = 1;
	setb	_P2_2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:38: CLCD_E = 0;
	clr	_P2_2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clcd_wait'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:41: void clcd_wait(void) {
;	-----------------------------------------
;	 function clcd_wait
;	-----------------------------------------
_clcd_wait:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:42: CLCD_DB = 0xFF;
	mov	_P1,#0xFF
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:43: CLCD_RS = 0;
	clr	_P2_0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:44: CLCD_RW = 1;
	setb	_P2_1
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:45: do {
00101$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:46: CLCD_E = 1;
	setb	_P2_2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:47: ACC = CLCD_DB;
	mov	_ACC,_P1
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:48: CLCD_E = 0;
	clr	_P2_2
	jb	_ACC_7,00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clcd_cls'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:52: void clcd_cls(void) {
;	-----------------------------------------
;	 function clcd_cls
;	-----------------------------------------
_clcd_cls:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:53: clcd_write_instruction(0x01);
	mov	dpl,#0x01
	ljmp	_clcd_write_instruction
;------------------------------------------------------------
;Allocation info for local variables in function 'clcd_set_cursor'
;------------------------------------------------------------
;column                    Allocated to stack - offset -4
;row                       Allocated to registers r2 r3 
;instruction               Allocated to registers r4 r5 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:56: void clcd_set_cursor(unsigned int row, unsigned int column) {
;	-----------------------------------------
;	 function clcd_set_cursor
;	-----------------------------------------
_clcd_set_cursor:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
	mov	r3,dph
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:57: unsigned int instruction = 0x80;
	mov	r4,#0x80
	mov	r5,#0x00
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:58: if (row == 1)
	cjne	r2,#0x01,00102$
	cjne	r3,#0x00,00102$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:59: instruction += 0x40;
	mov	r4,#0xC0
	mov	r5,#0x00
00102$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:60: instruction += column;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	add	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r5
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:61: clcd_write_instruction(instruction);
	mov	dpl,r4
	lcall	_clcd_write_instruction
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clcd_put_char'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:64: void clcd_put_char(char c) {
;	-----------------------------------------
;	 function clcd_put_char
;	-----------------------------------------
_clcd_put_char:
	mov	r2,dpl
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:65: clcd_wait();
	push	ar2
	lcall	_clcd_wait
	pop	ar2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:66: CLCD_RS = 1;
	setb	_P2_0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:67: CLCD_RW = 0;
	clr	_P2_1
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:68: CLCD_DB = c;
	mov	_P1,r2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:69: CLCD_E = 1;
	setb	_P2_2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:70: CLCD_E = 0;
	clr	_P2_2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clcd_put_string'
;------------------------------------------------------------
;s                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:73: void clcd_put_string(char* s) {
;	-----------------------------------------
;	 function clcd_put_string
;	-----------------------------------------
_clcd_put_string:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:74: while (*s != 0) {
00101$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	jz	00104$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:75: clcd_put_char(*s);
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_clcd_put_char
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:76: s++;
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:80: void clcd_put_byte(unsigned char byte_data) {
;	-----------------------------------------
;	 function clcd_put_byte
;	-----------------------------------------
_clcd_put_byte:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:81: clcd_put_char(ASCII[byte_data / 16]);
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:82: clcd_put_char(ASCII[byte_data % 16]);
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:85: void clcd_put_word(unsigned int word_data) {
;	-----------------------------------------
;	 function clcd_put_word
;	-----------------------------------------
_clcd_put_word:
	mov	r2,dpl
	mov	r3,dph
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:86: clcd_put_byte(word_data / 256);
	mov	ar4,r3
	mov	dpl,r4
	push	ar2
	push	ar3
	lcall	_clcd_put_byte
	pop	ar3
	pop	ar2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:87: clcd_put_byte(word_data % 256);
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:90: void i2s(int i, char* s) {
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:94: sign = '+';
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,#0x2B
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:96: p = s;
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:97: if (i < 0) {
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	jnb	acc.7,00115$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:98: sign = '-';
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,#0x2D
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:99: i = -i;
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:101: do {
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:102: *s = (i % 10) + '0';
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:103: s++;
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:104: len++;
	inc	r5
	mov	ar6,r5
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:105: i /= 10;
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:106: } while (i != 0);
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00103$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:107: if (sign == '-') {
	mov	ar6,r5
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	cjne	@r0,#0x2D,00119$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:108: *s = '-';
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	mov	a,#0x2D
	lcall	__gptrput
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:110: len++;
	mov	a,r5
	inc	a
	mov	r6,a
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:112: for (i = 0; i < len / 2; i++) {
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:113: p[len] = p[i];
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:114: p[i] = p[len - 1 - i];
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:115: p[len - 1 - i] = p[len];
	mov	dpl,r7
	mov	dph,r5
	mov	b,r2
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:112: for (i = 0; i < len / 2; i++) {
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:117: p[len] = 0;
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:120: void clcd_put_int(int i) {
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:122: i2s(i, s);
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:123: clcd_put_string(s);
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
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:16: unsigned char i2c_start(void) {
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:17: SDA = 1;
	setb	_P0_1
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:18: SCL = 1;
	setb	_P0_0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:19: if (SDA == 0) return (i2c_ER);
	jb	_P0_1,00102$
	mov	dpl,#0x01
	ret
00102$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:20: if (SCL == 0) return (i2c_ER);
	jb	_P0_0,00104$
	mov	dpl,#0x01
	ret
00104$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:21: SDA = 0;
	clr	_P0_1
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:22: SCL=0;
	clr	_P0_0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:23: return (i2c_OK);
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:26: void i2c_stop(void) {
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:27: SDA = 0; SCL = 1; SDA = 1;
	clr	_P0_1
	setb	_P0_0
	setb	_P0_1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_shift_out'
;------------------------------------------------------------
;buffer                    Allocated to registers r2 
;i                         Allocated to registers r3 
;ack                       Allocated to registers 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:30: unsigned char i2c_shift_out(unsigned char buffer) {
;	-----------------------------------------
;	 function i2c_shift_out
;	-----------------------------------------
_i2c_shift_out:
	mov	r2,dpl
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:33: for (i = 0; i < 8; i++) {
	mov	r3,#0x00
00104$:
	cjne	r3,#0x08,00114$
00114$:
	jnc	00107$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:34: if (buffer >= 128) SDA = 1; else SDA = 0;
	cjne	r2,#0x80,00116$
00116$:
	jc	00102$
	setb	_P0_1
	sjmp	00103$
00102$:
	clr	_P0_1
00103$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:35: SCL = 1; SCL = 0;
	setb	_P0_0
	clr	_P0_0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:36: buffer *= 2;
	mov	a,r2
	add	a,r2
	mov	r2,a
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:33: for (i = 0; i < 8; i++) {
	inc	r3
	sjmp	00104$
00107$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:38: SDA = 1; SCL = 1; ack = SDA; SCL = 0;
	setb	_P0_1
	setb	_P0_0
	mov	c,_P0_1
	clr	a
	rlc	a
	mov	dpl,a
	clr	_P0_0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:39: return ack;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_shift_in'
;------------------------------------------------------------
;ack                       Allocated to registers r2 
;i                         Allocated to registers r4 
;buffer                    Allocated to registers r3 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:42: unsigned char i2c_shift_in(unsigned char ack) {
;	-----------------------------------------
;	 function i2c_shift_in
;	-----------------------------------------
_i2c_shift_in:
	mov	r2,dpl
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:44: unsigned char buffer = 0;
	mov	r3,#0x00
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:45: SDA = 1;
	setb	_P0_1
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:46: for (i = 0; i < 8; i++) {
	mov	r4,#0x00
00103$:
	cjne	r4,#0x08,00113$
00113$:
	jnc	00106$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:47: buffer *= 2;
	mov	a,r3
	add	a,r3
	mov	r3,a
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:48: SCL = 1;
	setb	_P0_0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:49: if (SDA == 1) buffer += 1;
	jnb	_P0_1,00102$
	inc	r3
00102$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:50: SCL = 0;
	clr	_P0_0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:46: for (i = 0; i < 8; i++) {
	inc	r4
	sjmp	00103$
00106$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:52: SDA = ack;
	mov	a,r2
	add	a,#0xff
	mov	_P0_1,c
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:53: SCL = 1; SCL = 0;
	setb	_P0_0
	clr	_P0_0
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:54: return buffer;
	mov	dpl,r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'seeprom_write_byte'
;------------------------------------------------------------
;seeprom_memory_address    Allocated to stack - offset -4
;seeprom_byte_data         Allocated to stack - offset -5
;seeprom_device_address    Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:8: void seeprom_write_byte(unsigned char seeprom_device_address, unsigned int seeprom_memory_address, unsigned char seeprom_byte_data)
;	-----------------------------------------
;	 function seeprom_write_byte
;	-----------------------------------------
_seeprom_write_byte:
	push	_bp
	mov	_bp,sp
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:10: seeprom_write_byte_start:
	mov	a,dpl
	add	a,dpl
	mov	r2,a
	orl	ar2,#0xA0
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	inc	r0
	mov	ar3,@r0
	mov	r4,#0x00
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar5,@r0
	mov	r6,#0x00
00101$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:11: if(i2c_start()==i2c_ER)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_i2c_start
	mov	r7,dpl
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	cjne	r7,#0x01,00120$
	sjmp	00101$
00120$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:13: if(i2c_shift_out(0xA0|(seeprom_device_address*2+0))==i2c_NACK)
	mov	dpl,r2
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_i2c_shift_out
	mov	r7,dpl
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	cjne	r7,#0x01,00105$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:14: {i2c_stop();goto seeprom_write_byte_start;}
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_i2c_stop
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00101$
00105$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:15: if(i2c_shift_out(seeprom_memory_address/256)==i2c_NACK)
	mov	dpl,r3
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_i2c_shift_out
	mov	r7,dpl
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	cjne	r7,#0x01,00107$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:16: {i2c_stop();goto seeprom_write_byte_start;}
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_i2c_stop
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00101$
00107$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:17: if(i2c_shift_out(seeprom_memory_address%256)==i2c_NACK)
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_i2c_shift_out
	mov	r7,dpl
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	cjne	r7,#0x01,00109$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:18: {i2c_stop();goto seeprom_write_byte_start;}
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_i2c_stop
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00101$
00109$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:19: if(i2c_shift_out(seeprom_byte_data)==i2c_NACK)
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_i2c_shift_out
	mov	r7,dpl
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	cjne	r7,#0x01,00111$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:20: {i2c_stop();goto seeprom_write_byte_start;}
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_i2c_stop
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00101$
00111$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:21: i2c_stop();
	lcall	_i2c_stop
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'seeprom_read_byte'
;------------------------------------------------------------
;seeprom_memory_address    Allocated to stack - offset -4
;seeprom_device_address    Allocated to registers r2 
;seeprom_byte_data         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:24: unsigned char seeprom_read_byte(unsigned char seeprom_device_address, unsigned int seeprom_memory_address)
;	-----------------------------------------
;	 function seeprom_read_byte
;	-----------------------------------------
_seeprom_read_byte:
	push	_bp
	mov	_bp,sp
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:27: seeprom_read_byte_start:
	mov	a,dpl
	add	a,dpl
	mov	r2,a
	mov	a,#0xA0
	orl	a,r2
	mov	r3,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	inc	r0
	mov	ar4,@r0
	mov	r5,#0x00
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar6,@r0
	mov	r7,#0x00
	mov	a,r2
	inc	a
	orl	a,#0xA0
	mov	r2,a
00101$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:28: if(i2c_start()==i2c_ER)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_i2c_start
	mov	r2,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	cjne	r2,#0x01,00123$
	pop	ar2
	sjmp	00101$
00123$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:30: if(i2c_shift_out(0xA0|(seeprom_device_address*2+0))==i2c_NACK)
	mov	dpl,r3
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_i2c_shift_out
	mov	r2,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	cjne	r2,#0x01,00124$
	sjmp	00125$
00124$:
	pop	ar2
	sjmp	00105$
00125$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:31: {i2c_stop();goto seeprom_read_byte_start;}
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_i2c_stop
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00101$
00105$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:32: if(i2c_shift_out(seeprom_memory_address/256)==i2c_NACK)
	push	ar2
	mov	dpl,r4
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_i2c_shift_out
	mov	r2,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	cjne	r2,#0x01,00126$
	sjmp	00127$
00126$:
	pop	ar2
	sjmp	00107$
00127$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:33: {i2c_stop();goto seeprom_read_byte_start;}
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_i2c_stop
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00101$
00107$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:34: if(i2c_shift_out(seeprom_memory_address%256)==i2c_NACK)
	push	ar2
	mov	dpl,r6
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_i2c_shift_out
	mov	r2,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	cjne	r2,#0x01,00128$
	sjmp	00129$
00128$:
	pop	ar2
	sjmp	00109$
00129$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:35: {i2c_stop();goto seeprom_read_byte_start;}
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_i2c_stop
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00101$
00109$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:36: if(i2c_start()==i2c_ER)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_i2c_start
	mov	r2,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	cjne	r2,#0x01,00130$
	pop	ar2
	ljmp	00101$
00130$:
	pop	ar2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:38: if(i2c_shift_out(0xA0|(seeprom_device_address*2+1))==i2c_NACK)
	push	ar3
	mov	dpl,r2
	push	ar2
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_i2c_shift_out
	mov	r3,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar2
	cjne	r3,#0x01,00131$
	sjmp	00132$
00131$:
	pop	ar3
	sjmp	00113$
00132$:
	pop	ar3
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:39: {i2c_stop();goto seeprom_read_byte_start;}
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_i2c_stop
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00101$
00113$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:40: seeprom_byte_data=i2c_shift_in(i2c_NACK);
	mov	dpl,#0x01
	lcall	_i2c_shift_in
	mov	r2,dpl
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:41: i2c_stop();
	push	ar2
	lcall	_i2c_stop
	pop	ar2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:42: return seeprom_byte_data;
	mov	dpl,r2
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_initialize'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:24: void uart_initialize(void)
;	-----------------------------------------
;	 function uart_initialize
;	-----------------------------------------
_uart_initialize:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:26: PCON&=0x7F;		// Clear SMOD of PCON, No Double Baud Rate
	anl	_PCON,#0x7F
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:27: TMOD&=0x2F;TMOD|=0x20;	// Set Timer1 to Mode 2 (8-bit auto reload) for Baud Rate Generation
	anl	_TMOD,#0x2F
	orl	_TMOD,#0x20
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:28: TH1=0xFD;		// Set Baud Rate to 9600 bps for 11.0592M Hz
	mov	_TH1,#0xFD
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:29: SM0=0;SM1=1;		// Set UART to Mode 1 (8-bit UART)
	clr	_SM0
	setb	_SM1
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:30: REN=1;			// Set REN of SCON to Enable UART Receive
	setb	_REN
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:31: TR1=1;			// Set TR1 of TCON to Start Timer1
	setb	_TR1
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:32: TI=0;RI=0;		// Clear TI/RI of SCON to Get Ready to Send/Receive
	clr	_TI
	clr	_RI
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_put_char'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:35: void uart_put_char(char c)	// Put Character to UART
;	-----------------------------------------
;	 function uart_put_char
;	-----------------------------------------
_uart_put_char:
	mov	_SBUF,dpl
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:38: while(TI==0);TI=0;
00101$:
	jbc	_TI,00108$
	sjmp	00101$
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_get_char'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:41: char uart_get_char(void)	// Get Character from UART
;	-----------------------------------------
;	 function uart_get_char
;	-----------------------------------------
_uart_get_char:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:43: while(RI==0);RI=0;
00101$:
	jbc	_RI,00108$
	sjmp	00101$
00108$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:44: return SBUF;
	mov	dpl,_SBUF
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_get_char_echo'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:47: char uart_get_char_echo(void)	// Get Character from UART with Echo, Require uart_put_char()
;	-----------------------------------------
;	 function uart_get_char_echo
;	-----------------------------------------
_uart_get_char_echo:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:49: while(RI==0);RI=0;
00101$:
	jbc	_RI,00108$
	sjmp	00101$
00108$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:50: uart_put_char(SBUF);
	mov	dpl,_SBUF
	lcall	_uart_put_char
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:51: return SBUF;
	mov	dpl,_SBUF
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_put_string'
;------------------------------------------------------------
;s                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:54: void uart_put_string(char *s)	// Put String to UART, Require uart_put_char()
;	-----------------------------------------
;	 function uart_put_string
;	-----------------------------------------
_uart_put_string:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:56: while(*s!=0){uart_put_char(*s);s++;}
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:59: void uart_get_string(char *s)	// Get String from UART, Require uart_get_char_echo()
;	-----------------------------------------
;	 function uart_get_string
;	-----------------------------------------
_uart_get_string:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:61: while(((*s)=uart_get_char())!=13)s++;
00101$:
	push	ar2
	push	ar3
	push	ar4
	lcall	_uart_get_char
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:62: *s=0;
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:65: void uart_i2s(int i,char *s)	// Convert Integer to String
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:68: sign='+';len=0;p=s;
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:69: if(i<0){sign='-';i=-i;}
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:70: do{*s=(i%10)+'0';s++;len++;i/=10;}while(i!=0);
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:71: if(sign=='-'){*s='-';s++;len++;}
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:72: for(i=0;i<len/2;i++){p[len]=p[i];p[i]=p[len-1-i];p[len-1-i]=p[len];}
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:73: p[len]=0;
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:76: int uart_s2i(char *s)	// Convert String to Integer
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:78: int i=0;char sign='+';
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x2B
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:79: if(*s=='-'){sign='-';s++;}
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:80: while(*s!=0){i=i*10+(*s-'0');s++;}
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:81: if(sign=='-')i=-i;
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:82: return i;
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:85: void uart_put_integer(int i)	// Put Integer to UART, Require uart_i2s(),uart_put_string()
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:88: uart_i2s(i,s);uart_put_string(s);
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:91: int uart_get_integer()		// Get Integer from UART, Require uart_get_string(),uart_s2i()
;	-----------------------------------------
;	 function uart_get_integer
;	-----------------------------------------
_uart_get_integer:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x07
	mov	sp,a
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:94: uart_get_string(s);
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:95: return uart_s2i(s);
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:98: void uart_put_byte(unsigned char byte_data)
;	-----------------------------------------
;	 function uart_put_byte
;	-----------------------------------------
_uart_put_byte:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:100: uart_put_char(uart_ASCII[byte_data/16]);uart_put_char(uart_ASCII[byte_data%16]);
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:103: void uart_put_word(unsigned int word_data)
;	-----------------------------------------
;	 function uart_put_word
;	-----------------------------------------
_uart_put_word:
	mov	r2,dpl
	mov	r3,dph
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:105: uart_put_byte(word_data/256);uart_put_byte(word_data%256);
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:108: char uart_get_nibble()
;	-----------------------------------------
;	 function uart_get_nibble
;	-----------------------------------------
_uart_get_nibble:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:111: c=uart_get_char_echo();
	lcall	_uart_get_char_echo
	mov	r2,dpl
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:112: if('0'<=c && c<='9')return(c-'0');
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:113: if('A'<=c && c<='F')return(10+c-'A');
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:114: if('a'<=c && c<='f')return(10+c-'a');
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:115: return(0);
	ret
00108$:
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_get_byte'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:118: unsigned char uart_get_byte()
;	-----------------------------------------
;	 function uart_get_byte
;	-----------------------------------------
_uart_get_byte:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:120: return(16*uart_get_nibble()+uart_get_nibble());
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:123: unsigned int uart_get_word()
;	-----------------------------------------
;	 function uart_get_word
;	-----------------------------------------
_uart_get_word:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:125: return(256*uart_get_byte()+uart_get_byte());
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;s                         Allocated to registers r2 
;addr                      Allocated to registers r3 r4 
;val                       Allocated to registers r5 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:15: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:19: uart_initialize();
	lcall	_uart_initialize
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:20: clcd_initialize();
	lcall	_clcd_initialize
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:22: while (1) {
00106$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:23: clcd_set_cursor(0, 0);
	clr	a
	push	acc
	push	acc
	mov	dptr,#0x0000
	lcall	_clcd_set_cursor
	dec	sp
	dec	sp
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:24: uart_put_string("\n[ Write:0 |  Read:1 ]");
	mov	dptr,#__str_0
	mov	b,#0x80
	lcall	_uart_put_string
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:25: s = uart_get_char_echo();
	lcall	_uart_get_char_echo
	mov	r2,dpl
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:26: uart_put_string("\r\n");
	mov	dptr,#__str_1
	mov	b,#0x80
	push	ar2
	lcall	_uart_put_string
	pop	ar2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:27: if (s == '0') {
	cjne	r2,#0x30,00113$
	sjmp	00114$
00113$:
	ljmp	00102$
00114$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:28: clcd_set_cursor(0, 0);
	push	ar2
	clr	a
	push	acc
	push	acc
	mov	dptr,#0x0000
	lcall	_clcd_set_cursor
	dec	sp
	dec	sp
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:29: clcd_put_string("Write       ");
	mov	dptr,#__str_2
	mov	b,#0x80
	lcall	_clcd_put_string
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:31: uart_put_string("Address: ");
	mov	dptr,#__str_3
	mov	b,#0x80
	lcall	_uart_put_string
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:32: addr = uart_get_word();
	lcall	_uart_get_word
	mov	r3,dpl
	mov	r4,dph
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:33: uart_put_string("\r\n");
	mov	dptr,#__str_1
	mov	b,#0x80
	push	ar3
	push	ar4
	lcall	_uart_put_string
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:34: uart_put_string("Data: ");
	mov	dptr,#__str_4
	mov	b,#0x80
	lcall	_uart_put_string
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:35: val = uart_get_byte();
	lcall	_uart_get_byte
	mov	r5,dpl
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:36: uart_put_string("\r\n");
	mov	dptr,#__str_1
	mov	b,#0x80
	push	ar5
	lcall	_uart_put_string
	pop	ar5
	pop	ar4
	pop	ar3
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:37: seeprom_write_byte(0, addr, val);
	push	ar3
	push	ar4
	push	ar5
	push	ar5
	push	ar3
	push	ar4
	mov	dpl,#0x00
	lcall	_seeprom_write_byte
	dec	sp
	dec	sp
	dec	sp
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:41: clcd_set_cursor(1, 0);
	clr	a
	push	acc
	push	acc
	mov	dptr,#0x0001
	lcall	_clcd_set_cursor
	dec	sp
	dec	sp
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:42: clcd_put_string("A: ");
	mov	dptr,#__str_5
	mov	b,#0x80
	lcall	_clcd_put_string
	pop	ar5
	pop	ar4
	pop	ar3
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:43: clcd_put_int(addr);
	mov	dpl,r3
	mov	dph,r4
	push	ar5
	lcall	_clcd_put_int
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:44: clcd_put_string("|D: ");
	mov	dptr,#__str_6
	mov	b,#0x80
	lcall	_clcd_put_string
	pop	ar5
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:45: clcd_put_byte(val);
	mov	dpl,r5
	lcall	_clcd_put_byte
	pop	ar2
00102$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:47: if (s == '1') {
	cjne	r2,#0x31,00115$
	sjmp	00116$
00115$:
	ljmp	00104$
00116$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:48: clcd_set_cursor(0, 0);
	clr	a
	push	acc
	push	acc
	mov	dptr,#0x0000
	lcall	_clcd_set_cursor
	dec	sp
	dec	sp
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:49: clcd_put_string("Read ");
	mov	dptr,#__str_7
	mov	b,#0x80
	lcall	_clcd_put_string
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:50: uart_put_string("Address: ");
	mov	dptr,#__str_3
	mov	b,#0x80
	lcall	_uart_put_string
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:51: addr = uart_get_word();
	lcall	_uart_get_word
	mov	r2,dpl
	mov	r5,dph
	mov	ar3,r2
	mov	ar4,r5
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:52: uart_put_string("\r\n");
	mov	dptr,#__str_1
	mov	b,#0x80
	push	ar3
	push	ar4
	lcall	_uart_put_string
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:53: uart_put_string("Data: ");
	mov	dptr,#__str_4
	mov	b,#0x80
	lcall	_uart_put_string
	pop	ar4
	pop	ar3
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:54: uart_put_byte(seeprom_read_byte(0, addr));
	push	ar3
	push	ar4
	push	ar3
	push	ar4
	mov	dpl,#0x00
	lcall	_seeprom_read_byte
	dec	sp
	dec	sp
	lcall	_uart_put_byte
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:55: uart_put_string("\r\n");
	mov	dptr,#__str_1
	mov	b,#0x80
	lcall	_uart_put_string
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:58: clcd_set_cursor(1, 0);
	clr	a
	push	acc
	push	acc
	mov	dptr,#0x0001
	lcall	_clcd_set_cursor
	dec	sp
	dec	sp
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:59: clcd_put_string("A: ");
	mov	dptr,#__str_5
	mov	b,#0x80
	lcall	_clcd_put_string
	pop	ar4
	pop	ar3
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:60: clcd_put_int(addr);
	mov	dpl,r3
	mov	dph,r4
	push	ar3
	push	ar4
	lcall	_clcd_put_int
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:61: clcd_put_string("|D: ");
	mov	dptr,#__str_6
	mov	b,#0x80
	lcall	_clcd_put_string
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:62: clcd_put_byte(seeprom_read_byte(0, addr));
	mov	dpl,#0x00
	lcall	_seeprom_read_byte
	dec	sp
	dec	sp
	lcall	_clcd_put_byte
00104$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:64: delay(590);
	mov	dptr,#0x024E
	lcall	_delay
	ljmp	00106$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;x                         Allocated to registers r2 r3 
;n                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:67: void delay(int x) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r2,dpl
	mov	r3,dph
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:69: while (x > 0) {
00104$:
	clr	c
	clr	a
	subb	a,r2
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:71: while (n > 0)
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:72: n--;
	dec	r4
	cjne	r4,#0xff,00101$
	dec	r5
	sjmp	00101$
00103$:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:73: x--;
	dec	r2
	cjne	r2,#0xff,00104$
	dec	r3
	sjmp	00104$
00107$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_ASCII:
	.ascii "0123456789ABCDEF"
	.db 0x00
_uart_ASCII:
	.ascii "0123456789ABCDEF"
	.db 0x00
__str_0:
	.db 0x0A
	.ascii "[ Write:0 |  Read:1 ]"
	.db 0x00
__str_1:
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_2:
	.ascii "Write       "
	.db 0x00
__str_3:
	.ascii "Address: "
	.db 0x00
__str_4:
	.ascii "Data: "
	.db 0x00
__str_5:
	.ascii "A: "
	.db 0x00
__str_6:
	.ascii "|D: "
	.db 0x00
__str_7:
	.ascii "Read "
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
