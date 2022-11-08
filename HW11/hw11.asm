;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
; This file was generated Mon Nov 07 10:21:28 2022
;--------------------------------------------------------
	.module hw11
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
;Allocation info for local variables in function 'keypad_get_key'
;------------------------------------------------------------
;key                       Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:16: unsigned char keypad_get_key(void)
;	-----------------------------------------
;	 function keypad_get_key
;	-----------------------------------------
_keypad_get_key:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:19: KEYPAD_DO|=0x1F;
	orl	_P1,#0x1F
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:20: while(KEYPAD_DA==0);
00101$:
	jnb	_P1_4,00101$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:21: key=KEYPAD_DO;key&=0x0F;
	mov	r2,_P1
	anl	ar2,#0x0F
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:22: while(KEYPAD_DA==1);
00104$:
	jb	_P1_4,00104$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:23: return key;
	mov	dpl,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'keypad_get_key_echo'
;------------------------------------------------------------
;key                       Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:26: unsigned char keypad_get_key_echo(void)
;	-----------------------------------------
;	 function keypad_get_key_echo
;	-----------------------------------------
_keypad_get_key_echo:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:29: KEYPAD_DO|=0x1F;
	orl	_P1,#0x1F
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:30: while(KEYPAD_DA==0);
00101$:
	jnb	_P1_4,00101$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:31: key=KEYPAD_DO;key&=0x0F;
	mov	r2,_P1
	anl	ar2,#0x0F
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:34: while(KEYPAD_DA==1);
00104$:
	jb	_P1_4,00104$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:35: return key;
	mov	dpl,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'keypad_get_byte'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:38: unsigned char keypad_get_byte(void)
;	-----------------------------------------
;	 function keypad_get_byte
;	-----------------------------------------
_keypad_get_byte:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:40: return(keypad_get_key_echo()*16+keypad_get_key_echo());
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:43: unsigned int keypad_get_word(void)
;	-----------------------------------------
;	 function keypad_get_word
;	-----------------------------------------
_keypad_get_word:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:45: return(keypad_get_byte()*256+keypad_get_byte());
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:48: unsigned char keypad_check_key(void)
;	-----------------------------------------
;	 function keypad_check_key
;	-----------------------------------------
_keypad_check_key:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:51: KEYPAD_DO|=0x1F;
	orl	_P1,#0x1F
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:52: if(KEYPAD_DA==1)
	jnb	_P1_4,00105$
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:53: {key=KEYPAD_DO;key&=0x0F;while(KEYPAD_DA==1);return key;}
	mov	r2,_P1
	anl	ar2,#0x0F
00101$:
	jb	_P1_4,00101$
	mov	dpl,r2
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:55: return KEYPAD_NULL;
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:58: unsigned int keypad_get_integer(void)
;	-----------------------------------------
;	 function keypad_get_integer
;	-----------------------------------------
_keypad_get_integer:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:60: unsigned int value=0;
	mov	r2,#0x00
	mov	r3,#0x00
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:62: while((key=keypad_get_key())<0x0A)
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:66: value=value*10+key;
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
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\/keypad.c:68: return value;
	mov	dpl,r2
	mov	dph,r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:5: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW11\hw11.c:8: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
