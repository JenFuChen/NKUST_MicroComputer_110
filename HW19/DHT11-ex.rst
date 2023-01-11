                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
                              4 ; This file was generated Mon Dec 26 11:31:34 2022
                              5 ;--------------------------------------------------------
                              6 	.module DHT11_ex
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _ASCII
                             13 	.globl _main
                             14 	.globl _delay
                             15 	.globl _DHT11_Read
                             16 	.globl _DHT11_Read_Bit
                             17 	.globl _ACC_7
                             18 	.globl _CY
                             19 	.globl _AC
                             20 	.globl _F0
                             21 	.globl _RS1
                             22 	.globl _RS0
                             23 	.globl _OV
                             24 	.globl _F1
                             25 	.globl _P
                             26 	.globl _PS
                             27 	.globl _PT1
                             28 	.globl _PX1
                             29 	.globl _PT0
                             30 	.globl _PX0
                             31 	.globl _RD
                             32 	.globl _WR
                             33 	.globl _T1
                             34 	.globl _T0
                             35 	.globl _INT1
                             36 	.globl _INT0
                             37 	.globl _TXD
                             38 	.globl _RXD
                             39 	.globl _P3_7
                             40 	.globl _P3_6
                             41 	.globl _P3_5
                             42 	.globl _P3_4
                             43 	.globl _P3_3
                             44 	.globl _P3_2
                             45 	.globl _P3_1
                             46 	.globl _P3_0
                             47 	.globl _EA
                             48 	.globl _ES
                             49 	.globl _ET1
                             50 	.globl _EX1
                             51 	.globl _ET0
                             52 	.globl _EX0
                             53 	.globl _P2_7
                             54 	.globl _P2_6
                             55 	.globl _P2_5
                             56 	.globl _P2_4
                             57 	.globl _P2_3
                             58 	.globl _P2_2
                             59 	.globl _P2_1
                             60 	.globl _P2_0
                             61 	.globl _SM0
                             62 	.globl _SM1
                             63 	.globl _SM2
                             64 	.globl _REN
                             65 	.globl _TB8
                             66 	.globl _RB8
                             67 	.globl _TI
                             68 	.globl _RI
                             69 	.globl _P1_7
                             70 	.globl _P1_6
                             71 	.globl _P1_5
                             72 	.globl _P1_4
                             73 	.globl _P1_3
                             74 	.globl _P1_2
                             75 	.globl _P1_1
                             76 	.globl _P1_0
                             77 	.globl _TF1
                             78 	.globl _TR1
                             79 	.globl _TF0
                             80 	.globl _TR0
                             81 	.globl _IE1
                             82 	.globl _IT1
                             83 	.globl _IE0
                             84 	.globl _IT0
                             85 	.globl _P0_7
                             86 	.globl _P0_6
                             87 	.globl _P0_5
                             88 	.globl _P0_4
                             89 	.globl _P0_3
                             90 	.globl _P0_2
                             91 	.globl _P0_1
                             92 	.globl _P0_0
                             93 	.globl _B
                             94 	.globl _ACC
                             95 	.globl _PSW
                             96 	.globl _IP
                             97 	.globl _P3
                             98 	.globl _IE
                             99 	.globl _P2
                            100 	.globl _SBUF
                            101 	.globl _SCON
                            102 	.globl _P1
                            103 	.globl _TH1
                            104 	.globl _TH0
                            105 	.globl _TL1
                            106 	.globl _TL0
                            107 	.globl _TMOD
                            108 	.globl _TCON
                            109 	.globl _PCON
                            110 	.globl _DPH
                            111 	.globl _DPL
                            112 	.globl _SP
                            113 	.globl _P0
                            114 	.globl _clcd_initialize
                            115 	.globl _clcd_write_instruction
                            116 	.globl _clcd_wait
                            117 	.globl _clcd_cls
                            118 	.globl _clcd_set_cursor
                            119 	.globl _clcd_put_char
                            120 	.globl _clcd_put_string
                            121 	.globl _clcd_put_byte
                            122 	.globl _clcd_put_word
                            123 	.globl _i2s
                            124 	.globl _clcd_put_int
                            125 ;--------------------------------------------------------
                            126 ; special function registers
                            127 ;--------------------------------------------------------
                            128 	.area RSEG    (ABS,DATA)
   0000                     129 	.org 0x0000
                    0080    130 _P0	=	0x0080
                    0081    131 _SP	=	0x0081
                    0082    132 _DPL	=	0x0082
                    0083    133 _DPH	=	0x0083
                    0087    134 _PCON	=	0x0087
                    0088    135 _TCON	=	0x0088
                    0089    136 _TMOD	=	0x0089
                    008A    137 _TL0	=	0x008a
                    008B    138 _TL1	=	0x008b
                    008C    139 _TH0	=	0x008c
                    008D    140 _TH1	=	0x008d
                    0090    141 _P1	=	0x0090
                    0098    142 _SCON	=	0x0098
                    0099    143 _SBUF	=	0x0099
                    00A0    144 _P2	=	0x00a0
                    00A8    145 _IE	=	0x00a8
                    00B0    146 _P3	=	0x00b0
                    00B8    147 _IP	=	0x00b8
                    00D0    148 _PSW	=	0x00d0
                    00E0    149 _ACC	=	0x00e0
                    00F0    150 _B	=	0x00f0
                            151 ;--------------------------------------------------------
                            152 ; special function bits
                            153 ;--------------------------------------------------------
                            154 	.area RSEG    (ABS,DATA)
   0000                     155 	.org 0x0000
                    0080    156 _P0_0	=	0x0080
                    0081    157 _P0_1	=	0x0081
                    0082    158 _P0_2	=	0x0082
                    0083    159 _P0_3	=	0x0083
                    0084    160 _P0_4	=	0x0084
                    0085    161 _P0_5	=	0x0085
                    0086    162 _P0_6	=	0x0086
                    0087    163 _P0_7	=	0x0087
                    0088    164 _IT0	=	0x0088
                    0089    165 _IE0	=	0x0089
                    008A    166 _IT1	=	0x008a
                    008B    167 _IE1	=	0x008b
                    008C    168 _TR0	=	0x008c
                    008D    169 _TF0	=	0x008d
                    008E    170 _TR1	=	0x008e
                    008F    171 _TF1	=	0x008f
                    0090    172 _P1_0	=	0x0090
                    0091    173 _P1_1	=	0x0091
                    0092    174 _P1_2	=	0x0092
                    0093    175 _P1_3	=	0x0093
                    0094    176 _P1_4	=	0x0094
                    0095    177 _P1_5	=	0x0095
                    0096    178 _P1_6	=	0x0096
                    0097    179 _P1_7	=	0x0097
                    0098    180 _RI	=	0x0098
                    0099    181 _TI	=	0x0099
                    009A    182 _RB8	=	0x009a
                    009B    183 _TB8	=	0x009b
                    009C    184 _REN	=	0x009c
                    009D    185 _SM2	=	0x009d
                    009E    186 _SM1	=	0x009e
                    009F    187 _SM0	=	0x009f
                    00A0    188 _P2_0	=	0x00a0
                    00A1    189 _P2_1	=	0x00a1
                    00A2    190 _P2_2	=	0x00a2
                    00A3    191 _P2_3	=	0x00a3
                    00A4    192 _P2_4	=	0x00a4
                    00A5    193 _P2_5	=	0x00a5
                    00A6    194 _P2_6	=	0x00a6
                    00A7    195 _P2_7	=	0x00a7
                    00A8    196 _EX0	=	0x00a8
                    00A9    197 _ET0	=	0x00a9
                    00AA    198 _EX1	=	0x00aa
                    00AB    199 _ET1	=	0x00ab
                    00AC    200 _ES	=	0x00ac
                    00AF    201 _EA	=	0x00af
                    00B0    202 _P3_0	=	0x00b0
                    00B1    203 _P3_1	=	0x00b1
                    00B2    204 _P3_2	=	0x00b2
                    00B3    205 _P3_3	=	0x00b3
                    00B4    206 _P3_4	=	0x00b4
                    00B5    207 _P3_5	=	0x00b5
                    00B6    208 _P3_6	=	0x00b6
                    00B7    209 _P3_7	=	0x00b7
                    00B0    210 _RXD	=	0x00b0
                    00B1    211 _TXD	=	0x00b1
                    00B2    212 _INT0	=	0x00b2
                    00B3    213 _INT1	=	0x00b3
                    00B4    214 _T0	=	0x00b4
                    00B5    215 _T1	=	0x00b5
                    00B6    216 _WR	=	0x00b6
                    00B7    217 _RD	=	0x00b7
                    00B8    218 _PX0	=	0x00b8
                    00B9    219 _PT0	=	0x00b9
                    00BA    220 _PX1	=	0x00ba
                    00BB    221 _PT1	=	0x00bb
                    00BC    222 _PS	=	0x00bc
                    00D0    223 _P	=	0x00d0
                    00D1    224 _F1	=	0x00d1
                    00D2    225 _OV	=	0x00d2
                    00D3    226 _RS0	=	0x00d3
                    00D4    227 _RS1	=	0x00d4
                    00D5    228 _F0	=	0x00d5
                    00D6    229 _AC	=	0x00d6
                    00D7    230 _CY	=	0x00d7
                    00E7    231 _ACC_7	=	0x00e7
                            232 ;--------------------------------------------------------
                            233 ; overlayable register banks
                            234 ;--------------------------------------------------------
                            235 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     236 	.ds 8
                            237 ;--------------------------------------------------------
                            238 ; internal ram data
                            239 ;--------------------------------------------------------
                            240 	.area DSEG    (DATA)
                            241 ;--------------------------------------------------------
                            242 ; overlayable items in internal ram 
                            243 ;--------------------------------------------------------
                            244 	.area OSEG    (OVR,DATA)
                            245 ;--------------------------------------------------------
                            246 ; Stack segment in internal ram 
                            247 ;--------------------------------------------------------
                            248 	.area	SSEG	(DATA)
   0009                     249 __start__stack:
   0009                     250 	.ds	1
                            251 
                            252 ;--------------------------------------------------------
                            253 ; indirectly addressable internal ram data
                            254 ;--------------------------------------------------------
                            255 	.area ISEG    (DATA)
                            256 ;--------------------------------------------------------
                            257 ; absolute internal ram data
                            258 ;--------------------------------------------------------
                            259 	.area IABS    (ABS,DATA)
                            260 	.area IABS    (ABS,DATA)
                            261 ;--------------------------------------------------------
                            262 ; bit data
                            263 ;--------------------------------------------------------
                            264 	.area BSEG    (BIT)
                            265 ;--------------------------------------------------------
                            266 ; paged external ram data
                            267 ;--------------------------------------------------------
                            268 	.area PSEG    (PAG,XDATA)
                            269 ;--------------------------------------------------------
                            270 ; external ram data
                            271 ;--------------------------------------------------------
                            272 	.area XSEG    (XDATA)
                            273 ;--------------------------------------------------------
                            274 ; absolute external ram data
                            275 ;--------------------------------------------------------
                            276 	.area XABS    (ABS,XDATA)
                            277 ;--------------------------------------------------------
                            278 ; external initialized ram data
                            279 ;--------------------------------------------------------
                            280 	.area XISEG   (XDATA)
                            281 	.area HOME    (CODE)
                            282 	.area GSINIT0 (CODE)
                            283 	.area GSINIT1 (CODE)
                            284 	.area GSINIT2 (CODE)
                            285 	.area GSINIT3 (CODE)
                            286 	.area GSINIT4 (CODE)
                            287 	.area GSINIT5 (CODE)
                            288 	.area GSINIT  (CODE)
                            289 	.area GSFINAL (CODE)
                            290 	.area CSEG    (CODE)
                            291 ;--------------------------------------------------------
                            292 ; interrupt vector 
                            293 ;--------------------------------------------------------
                            294 	.area HOME    (CODE)
   0000                     295 __interrupt_vect:
   0000 02 00 08            296 	ljmp	__sdcc_gsinit_startup
                            297 ;--------------------------------------------------------
                            298 ; global & static initialisations
                            299 ;--------------------------------------------------------
                            300 	.area HOME    (CODE)
                            301 	.area GSINIT  (CODE)
                            302 	.area GSFINAL (CODE)
                            303 	.area GSINIT  (CODE)
                            304 	.globl __sdcc_gsinit_startup
                            305 	.globl __sdcc_program_startup
                            306 	.globl __start__stack
                            307 	.globl __mcs51_genXINIT
                            308 	.globl __mcs51_genXRAMCLEAR
                            309 	.globl __mcs51_genRAMCLEAR
                            310 	.area GSFINAL (CODE)
   0061 02 00 03            311 	ljmp	__sdcc_program_startup
                            312 ;--------------------------------------------------------
                            313 ; Home
                            314 ;--------------------------------------------------------
                            315 	.area HOME    (CODE)
                            316 	.area HOME    (CODE)
   0003                     317 __sdcc_program_startup:
   0003 12 04 97            318 	lcall	_main
                            319 ;	return from main will lock up
   0006 80 FE               320 	sjmp .
                            321 ;--------------------------------------------------------
                            322 ; code
                            323 ;--------------------------------------------------------
                            324 	.area CSEG    (CODE)
                            325 ;------------------------------------------------------------
                            326 ;Allocation info for local variables in function 'DHT11_Read_Bit'
                            327 ;------------------------------------------------------------
                            328 ;------------------------------------------------------------
                            329 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:5: __bit DHT11_Read_Bit()
                            330 ;	-----------------------------------------
                            331 ;	 function DHT11_Read_Bit
                            332 ;	-----------------------------------------
   0064                     333 _DHT11_Read_Bit:
                    0002    334 	ar2 = 0x02
                    0003    335 	ar3 = 0x03
                    0004    336 	ar4 = 0x04
                    0005    337 	ar5 = 0x05
                    0006    338 	ar6 = 0x06
                    0007    339 	ar7 = 0x07
                    0000    340 	ar0 = 0x00
                    0001    341 	ar1 = 0x01
                            342 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:7: while(DHT11_DATA==0);
   0064                     343 00101$:
   0064 30 80 FD            344 	jnb	_P0_0,00101$
                            345 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:8: TL0=0;
   0067 75 8A 00            346 	mov	_TL0,#0x00
                            347 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:9: while(DHT11_DATA==1);
   006A                     348 00104$:
   006A 20 80 FD            349 	jb	_P0_0,00104$
                            350 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:10: if(TL0>50)
   006D 74 32               351 	mov	a,#0x32
   006F B5 8A 00            352 	cjne	a,_TL0,00119$
   0072                     353 00119$:
   0072 50 02               354 	jnc	00108$
                            355 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:11: return 1;
   0074 D3                  356 	setb	c
   0075 22                  357 	ret
   0076                     358 00108$:
                            359 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:13: return 0;
   0076 C3                  360 	clr	c
   0077 22                  361 	ret
                            362 ;------------------------------------------------------------
                            363 ;Allocation info for local variables in function 'DHT11_Read'
                            364 ;------------------------------------------------------------
                            365 ;Temperature               Allocated to stack - offset -5
                            366 ;Humidity                  Allocated to registers r2 r3 r4 
                            367 ;i                         Allocated to registers r6 
                            368 ;readings                  Allocated to stack - offset 1
                            369 ;------------------------------------------------------------
                            370 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:16: void DHT11_Read(unsigned char * Humidity,unsigned char * Temperature)
                            371 ;	-----------------------------------------
                            372 ;	 function DHT11_Read
                            373 ;	-----------------------------------------
   0078                     374 _DHT11_Read:
   0078 C0 08               375 	push	_bp
   007A E5 81               376 	mov	a,sp
   007C F5 08               377 	mov	_bp,a
   007E 24 28               378 	add	a,#0x28
   0080 F5 81               379 	mov	sp,a
   0082 AA 82               380 	mov	r2,dpl
   0084 AB 83               381 	mov	r3,dph
   0086 AC F0               382 	mov	r4,b
                            383 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:21: TMOD&=0xF1;TMOD|=0x01;TR0=1;
   0088 53 89 F1            384 	anl	_TMOD,#0xF1
   008B 43 89 01            385 	orl	_TMOD,#0x01
   008E D2 8C               386 	setb	_TR0
                            387 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:23: TH0=0;TL0=0;
   0090 75 8C 00            388 	mov	_TH0,#0x00
   0093 75 8A 00            389 	mov	_TL0,#0x00
                            390 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:24: DHT11_DATA=0;
   0096 C2 80               391 	clr	_P0_0
                            392 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:25: while(TH0<75);
   0098                     393 00101$:
   0098 74 B5               394 	mov	a,#0x100 - 0x4B
   009A 25 8C               395 	add	a,_TH0
   009C 50 FA               396 	jnc	00101$
                            397 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:26: DHT11_DATA=1;
   009E D2 80               398 	setb	_P0_0
                            399 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:28: while(DHT11_DATA==1);
   00A0                     400 00104$:
   00A0 20 80 FD            401 	jb	_P0_0,00104$
                            402 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:29: while(DHT11_DATA==0);
   00A3                     403 00107$:
   00A3 30 80 FD            404 	jnb	_P0_0,00107$
                            405 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:30: while(DHT11_DATA==1);
   00A6                     406 00110$:
   00A6 20 80 FD            407 	jb	_P0_0,00110$
                            408 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:32: for(i=0;i<40;i++)
   00A9 AD 08               409 	mov	r5,_bp
   00AB 0D                  410 	inc	r5
   00AC 7E 00               411 	mov	r6,#0x00
   00AE                     412 00116$:
   00AE BE 28 00            413 	cjne	r6,#0x28,00151$
   00B1                     414 00151$:
   00B1 50 24               415 	jnc	00113$
                            416 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:33: readings[i]=DHT11_Read_Bit();
   00B3 EE                  417 	mov	a,r6
   00B4 2D                  418 	add	a,r5
   00B5 F8                  419 	mov	r0,a
   00B6 C0 02               420 	push	ar2
   00B8 C0 03               421 	push	ar3
   00BA C0 04               422 	push	ar4
   00BC C0 05               423 	push	ar5
   00BE C0 06               424 	push	ar6
   00C0 C0 00               425 	push	ar0
   00C2 12 00 64            426 	lcall	_DHT11_Read_Bit
   00C5 E4                  427 	clr	a
   00C6 33                  428 	rlc	a
   00C7 D0 00               429 	pop	ar0
   00C9 D0 06               430 	pop	ar6
   00CB D0 05               431 	pop	ar5
   00CD D0 04               432 	pop	ar4
   00CF D0 03               433 	pop	ar3
   00D1 D0 02               434 	pop	ar2
   00D3 F6                  435 	mov	@r0,a
                            436 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:32: for(i=0;i<40;i++)
   00D4 0E                  437 	inc	r6
                            438 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:35: while(DHT11_DATA==0);
   00D5 80 D7               439 	sjmp	00116$
   00D7                     440 00113$:
   00D7 30 80 FD            441 	jnb	_P0_0,00113$
                            442 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:37: for(i=0,(*Humidity)=0;i<8;i++)
   00DA 8A 82               443 	mov	dpl,r2
   00DC 8B 83               444 	mov	dph,r3
   00DE 8C F0               445 	mov	b,r4
   00E0 E4                  446 	clr	a
   00E1 12 05 24            447 	lcall	__gptrput
   00E4 7E 00               448 	mov	r6,#0x00
   00E6                     449 00120$:
   00E6 BE 08 00            450 	cjne	r6,#0x08,00154$
   00E9                     451 00154$:
   00E9 50 2B               452 	jnc	00123$
                            453 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:39: (*Humidity)*=2;
   00EB 8A 82               454 	mov	dpl,r2
   00ED 8B 83               455 	mov	dph,r3
   00EF 8C F0               456 	mov	b,r4
   00F1 12 05 3D            457 	lcall	__gptrget
   00F4 25 E0               458 	add	a,acc
   00F6 FF                  459 	mov	r7,a
   00F7 8A 82               460 	mov	dpl,r2
   00F9 8B 83               461 	mov	dph,r3
   00FB 8C F0               462 	mov	b,r4
   00FD 12 05 24            463 	lcall	__gptrput
                            464 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:40: (*Humidity)+=readings[i];
   0100 EE                  465 	mov	a,r6
   0101 2D                  466 	add	a,r5
   0102 F8                  467 	mov	r0,a
   0103 C0 05               468 	push	ar5
   0105 E6                  469 	mov	a,@r0
   0106 2F                  470 	add	a,r7
   0107 FF                  471 	mov	r7,a
   0108 8A 82               472 	mov	dpl,r2
   010A 8B 83               473 	mov	dph,r3
   010C 8C F0               474 	mov	b,r4
   010E 12 05 24            475 	lcall	__gptrput
                            476 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:37: for(i=0,(*Humidity)=0;i<8;i++)
   0111 0E                  477 	inc	r6
   0112 D0 05               478 	pop	ar5
   0114 80 D0               479 	sjmp	00120$
   0116                     480 00123$:
                            481 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:42: for(i=0,(*Temperature)=0;i<8;i++)
   0116 E5 08               482 	mov	a,_bp
   0118 24 FB               483 	add	a,#0xfb
   011A F8                  484 	mov	r0,a
   011B 86 02               485 	mov	ar2,@r0
   011D 08                  486 	inc	r0
   011E 86 03               487 	mov	ar3,@r0
   0120 08                  488 	inc	r0
   0121 86 04               489 	mov	ar4,@r0
   0123 8A 82               490 	mov	dpl,r2
   0125 8B 83               491 	mov	dph,r3
   0127 8C F0               492 	mov	b,r4
   0129 E4                  493 	clr	a
   012A 12 05 24            494 	lcall	__gptrput
   012D 7E 00               495 	mov	r6,#0x00
   012F                     496 00124$:
   012F BE 08 00            497 	cjne	r6,#0x08,00156$
   0132                     498 00156$:
   0132 50 2D               499 	jnc	00128$
                            500 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:44: (*Temperature)*=2;
   0134 8A 82               501 	mov	dpl,r2
   0136 8B 83               502 	mov	dph,r3
   0138 8C F0               503 	mov	b,r4
   013A 12 05 3D            504 	lcall	__gptrget
   013D 25 E0               505 	add	a,acc
   013F FF                  506 	mov	r7,a
   0140 8A 82               507 	mov	dpl,r2
   0142 8B 83               508 	mov	dph,r3
   0144 8C F0               509 	mov	b,r4
   0146 12 05 24            510 	lcall	__gptrput
                            511 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:45: (*Temperature)+=readings[i+16];
   0149 74 10               512 	mov	a,#0x10
   014B 2E                  513 	add	a,r6
   014C 2D                  514 	add	a,r5
   014D F8                  515 	mov	r0,a
   014E C0 05               516 	push	ar5
   0150 E6                  517 	mov	a,@r0
   0151 2F                  518 	add	a,r7
   0152 FF                  519 	mov	r7,a
   0153 8A 82               520 	mov	dpl,r2
   0155 8B 83               521 	mov	dph,r3
   0157 8C F0               522 	mov	b,r4
   0159 12 05 24            523 	lcall	__gptrput
                            524 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/DHT11.c:42: for(i=0,(*Temperature)=0;i<8;i++)
   015C 0E                  525 	inc	r6
   015D D0 05               526 	pop	ar5
   015F 80 CE               527 	sjmp	00124$
   0161                     528 00128$:
   0161 85 08 81            529 	mov	sp,_bp
   0164 D0 08               530 	pop	_bp
   0166 22                  531 	ret
                            532 ;------------------------------------------------------------
                            533 ;Allocation info for local variables in function 'clcd_initialize'
                            534 ;------------------------------------------------------------
                            535 ;------------------------------------------------------------
                            536 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:25: void clcd_initialize(void) {
                            537 ;	-----------------------------------------
                            538 ;	 function clcd_initialize
                            539 ;	-----------------------------------------
   0167                     540 _clcd_initialize:
                            541 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:26: clcd_write_instruction(0x38);  // 8-bit interface, 2 lines, 5x7 dots
   0167 75 82 38            542 	mov	dpl,#0x38
   016A 12 01 7F            543 	lcall	_clcd_write_instruction
                            544 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:27: clcd_write_instruction(0x0F);  // display on, cursor on, cursor blinking
   016D 75 82 0F            545 	mov	dpl,#0x0F
   0170 12 01 7F            546 	lcall	_clcd_write_instruction
                            547 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:28: clcd_write_instruction(0x06);  // move cursor right when read/write
   0173 75 82 06            548 	mov	dpl,#0x06
   0176 12 01 7F            549 	lcall	_clcd_write_instruction
                            550 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:29: clcd_write_instruction(0x01);  // clear display, cursor home
   0179 75 82 01            551 	mov	dpl,#0x01
   017C 02 01 7F            552 	ljmp	_clcd_write_instruction
                            553 ;------------------------------------------------------------
                            554 ;Allocation info for local variables in function 'clcd_write_instruction'
                            555 ;------------------------------------------------------------
                            556 ;instruction               Allocated to registers r2 
                            557 ;------------------------------------------------------------
                            558 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:32: void clcd_write_instruction(unsigned char instruction) {
                            559 ;	-----------------------------------------
                            560 ;	 function clcd_write_instruction
                            561 ;	-----------------------------------------
   017F                     562 _clcd_write_instruction:
   017F AA 82               563 	mov	r2,dpl
                            564 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:33: clcd_wait();
   0181 C0 02               565 	push	ar2
   0183 12 01 93            566 	lcall	_clcd_wait
   0186 D0 02               567 	pop	ar2
                            568 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:34: CLCD_RS = 0;
   0188 C2 A0               569 	clr	_P2_0
                            570 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:35: CLCD_RW = 0;
   018A C2 A1               571 	clr	_P2_1
                            572 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:36: CLCD_DB = instruction;
   018C 8A 90               573 	mov	_P1,r2
                            574 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:37: CLCD_E = 1;
   018E D2 A2               575 	setb	_P2_2
                            576 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:38: CLCD_E = 0;
   0190 C2 A2               577 	clr	_P2_2
   0192 22                  578 	ret
                            579 ;------------------------------------------------------------
                            580 ;Allocation info for local variables in function 'clcd_wait'
                            581 ;------------------------------------------------------------
                            582 ;------------------------------------------------------------
                            583 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:41: void clcd_wait(void) {
                            584 ;	-----------------------------------------
                            585 ;	 function clcd_wait
                            586 ;	-----------------------------------------
   0193                     587 _clcd_wait:
                            588 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:42: CLCD_DB = 0xFF;
   0193 75 90 FF            589 	mov	_P1,#0xFF
                            590 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:43: CLCD_RS = 0;
   0196 C2 A0               591 	clr	_P2_0
                            592 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:44: CLCD_RW = 1;
   0198 D2 A1               593 	setb	_P2_1
                            594 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:45: do {
   019A                     595 00101$:
                            596 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:46: CLCD_E = 1;
   019A D2 A2               597 	setb	_P2_2
                            598 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:47: ACC = CLCD_DB;
   019C 85 90 E0            599 	mov	_ACC,_P1
                            600 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:48: CLCD_E = 0;
   019F C2 A2               601 	clr	_P2_2
   01A1 20 E7 F6            602 	jb	_ACC_7,00101$
   01A4 22                  603 	ret
                            604 ;------------------------------------------------------------
                            605 ;Allocation info for local variables in function 'clcd_cls'
                            606 ;------------------------------------------------------------
                            607 ;------------------------------------------------------------
                            608 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:52: void clcd_cls(void) {
                            609 ;	-----------------------------------------
                            610 ;	 function clcd_cls
                            611 ;	-----------------------------------------
   01A5                     612 _clcd_cls:
                            613 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:53: clcd_write_instruction(0x01);
   01A5 75 82 01            614 	mov	dpl,#0x01
   01A8 02 01 7F            615 	ljmp	_clcd_write_instruction
                            616 ;------------------------------------------------------------
                            617 ;Allocation info for local variables in function 'clcd_set_cursor'
                            618 ;------------------------------------------------------------
                            619 ;column                    Allocated to stack - offset -4
                            620 ;row                       Allocated to registers r2 r3 
                            621 ;instruction               Allocated to registers r4 r5 
                            622 ;------------------------------------------------------------
                            623 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:56: void clcd_set_cursor(unsigned int row, unsigned int column) {
                            624 ;	-----------------------------------------
                            625 ;	 function clcd_set_cursor
                            626 ;	-----------------------------------------
   01AB                     627 _clcd_set_cursor:
   01AB C0 08               628 	push	_bp
   01AD 85 81 08            629 	mov	_bp,sp
   01B0 AA 82               630 	mov	r2,dpl
   01B2 AB 83               631 	mov	r3,dph
                            632 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:57: unsigned int instruction = 0x80;
   01B4 7C 80               633 	mov	r4,#0x80
   01B6 7D 00               634 	mov	r5,#0x00
                            635 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:58: if (row == 1)
   01B8 BA 01 07            636 	cjne	r2,#0x01,00102$
   01BB BB 00 04            637 	cjne	r3,#0x00,00102$
                            638 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:59: instruction += 0x40;
   01BE 7C C0               639 	mov	r4,#0xC0
   01C0 7D 00               640 	mov	r5,#0x00
   01C2                     641 00102$:
                            642 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:60: instruction += column;
   01C2 E5 08               643 	mov	a,_bp
   01C4 24 FC               644 	add	a,#0xfc
   01C6 F8                  645 	mov	r0,a
   01C7 E6                  646 	mov	a,@r0
   01C8 2C                  647 	add	a,r4
   01C9 FC                  648 	mov	r4,a
   01CA 08                  649 	inc	r0
   01CB E6                  650 	mov	a,@r0
   01CC 3D                  651 	addc	a,r5
                            652 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:61: clcd_write_instruction(instruction);
   01CD 8C 82               653 	mov	dpl,r4
   01CF 12 01 7F            654 	lcall	_clcd_write_instruction
   01D2 D0 08               655 	pop	_bp
   01D4 22                  656 	ret
                            657 ;------------------------------------------------------------
                            658 ;Allocation info for local variables in function 'clcd_put_char'
                            659 ;------------------------------------------------------------
                            660 ;c                         Allocated to registers r2 
                            661 ;------------------------------------------------------------
                            662 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:64: void clcd_put_char(char c) {
                            663 ;	-----------------------------------------
                            664 ;	 function clcd_put_char
                            665 ;	-----------------------------------------
   01D5                     666 _clcd_put_char:
   01D5 AA 82               667 	mov	r2,dpl
                            668 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:65: clcd_wait();
   01D7 C0 02               669 	push	ar2
   01D9 12 01 93            670 	lcall	_clcd_wait
   01DC D0 02               671 	pop	ar2
                            672 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:66: CLCD_RS = 1;
   01DE D2 A0               673 	setb	_P2_0
                            674 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:67: CLCD_RW = 0;
   01E0 C2 A1               675 	clr	_P2_1
                            676 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:68: CLCD_DB = c;
   01E2 8A 90               677 	mov	_P1,r2
                            678 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:69: CLCD_E = 1;
   01E4 D2 A2               679 	setb	_P2_2
                            680 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:70: CLCD_E = 0;
   01E6 C2 A2               681 	clr	_P2_2
   01E8 22                  682 	ret
                            683 ;------------------------------------------------------------
                            684 ;Allocation info for local variables in function 'clcd_put_string'
                            685 ;------------------------------------------------------------
                            686 ;s                         Allocated to registers r2 r3 r4 
                            687 ;------------------------------------------------------------
                            688 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:73: void clcd_put_string(char* s) {
                            689 ;	-----------------------------------------
                            690 ;	 function clcd_put_string
                            691 ;	-----------------------------------------
   01E9                     692 _clcd_put_string:
   01E9 AA 82               693 	mov	r2,dpl
   01EB AB 83               694 	mov	r3,dph
   01ED AC F0               695 	mov	r4,b
                            696 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:74: while (*s != 0) {
   01EF                     697 00101$:
   01EF 8A 82               698 	mov	dpl,r2
   01F1 8B 83               699 	mov	dph,r3
   01F3 8C F0               700 	mov	b,r4
   01F5 12 05 3D            701 	lcall	__gptrget
   01F8 FD                  702 	mov	r5,a
   01F9 60 18               703 	jz	00104$
                            704 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:75: clcd_put_char(*s);
   01FB 8D 82               705 	mov	dpl,r5
   01FD C0 02               706 	push	ar2
   01FF C0 03               707 	push	ar3
   0201 C0 04               708 	push	ar4
   0203 12 01 D5            709 	lcall	_clcd_put_char
   0206 D0 04               710 	pop	ar4
   0208 D0 03               711 	pop	ar3
   020A D0 02               712 	pop	ar2
                            713 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:76: s++;
   020C 0A                  714 	inc	r2
   020D BA 00 DF            715 	cjne	r2,#0x00,00101$
   0210 0B                  716 	inc	r3
   0211 80 DC               717 	sjmp	00101$
   0213                     718 00104$:
   0213 22                  719 	ret
                            720 ;------------------------------------------------------------
                            721 ;Allocation info for local variables in function 'clcd_put_byte'
                            722 ;------------------------------------------------------------
                            723 ;byte_data                 Allocated to registers r2 
                            724 ;------------------------------------------------------------
                            725 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:80: void clcd_put_byte(unsigned char byte_data) {
                            726 ;	-----------------------------------------
                            727 ;	 function clcd_put_byte
                            728 ;	-----------------------------------------
   0214                     729 _clcd_put_byte:
                            730 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:81: clcd_put_char(ASCII[byte_data / 16]);
   0214 E5 82               731 	mov	a,dpl
   0216 FA                  732 	mov	r2,a
   0217 C4                  733 	swap	a
   0218 54 0F               734 	anl	a,#0x0f
   021A 90 06 4D            735 	mov	dptr,#_ASCII
   021D 93                  736 	movc	a,@a+dptr
   021E F5 82               737 	mov	dpl,a
   0220 C0 02               738 	push	ar2
   0222 12 01 D5            739 	lcall	_clcd_put_char
   0225 D0 02               740 	pop	ar2
                            741 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:82: clcd_put_char(ASCII[byte_data % 16]);
   0227 74 0F               742 	mov	a,#0x0F
   0229 5A                  743 	anl	a,r2
   022A 90 06 4D            744 	mov	dptr,#_ASCII
   022D 93                  745 	movc	a,@a+dptr
   022E F5 82               746 	mov	dpl,a
   0230 02 01 D5            747 	ljmp	_clcd_put_char
                            748 ;------------------------------------------------------------
                            749 ;Allocation info for local variables in function 'clcd_put_word'
                            750 ;------------------------------------------------------------
                            751 ;word_data                 Allocated to registers r2 r3 
                            752 ;------------------------------------------------------------
                            753 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:85: void clcd_put_word(unsigned int word_data) {
                            754 ;	-----------------------------------------
                            755 ;	 function clcd_put_word
                            756 ;	-----------------------------------------
   0233                     757 _clcd_put_word:
   0233 AA 82               758 	mov	r2,dpl
   0235 AB 83               759 	mov	r3,dph
                            760 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:86: clcd_put_byte(word_data / 256);
   0237 8B 04               761 	mov	ar4,r3
   0239 8C 82               762 	mov	dpl,r4
   023B C0 02               763 	push	ar2
   023D C0 03               764 	push	ar3
   023F 12 02 14            765 	lcall	_clcd_put_byte
   0242 D0 03               766 	pop	ar3
   0244 D0 02               767 	pop	ar2
                            768 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:87: clcd_put_byte(word_data % 256);
   0246 8A 82               769 	mov	dpl,r2
   0248 02 02 14            770 	ljmp	_clcd_put_byte
                            771 ;------------------------------------------------------------
                            772 ;Allocation info for local variables in function 'i2s'
                            773 ;------------------------------------------------------------
                            774 ;s                         Allocated to stack - offset -5
                            775 ;i                         Allocated to stack - offset 1
                            776 ;sign                      Allocated to stack - offset 3
                            777 ;len                       Allocated to registers r6 
                            778 ;p                         Allocated to stack - offset 4
                            779 ;sloc0                     Allocated to stack - offset 8
                            780 ;sloc1                     Allocated to stack - offset 7
                            781 ;sloc2                     Allocated to stack - offset 8
                            782 ;------------------------------------------------------------
                            783 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:90: void i2s(int i, char* s) {
                            784 ;	-----------------------------------------
                            785 ;	 function i2s
                            786 ;	-----------------------------------------
   024B                     787 _i2s:
   024B C0 08               788 	push	_bp
   024D 85 81 08            789 	mov	_bp,sp
   0250 C0 82               790 	push	dpl
   0252 C0 83               791 	push	dph
   0254 E5 81               792 	mov	a,sp
   0256 24 0A               793 	add	a,#0x0a
   0258 F5 81               794 	mov	sp,a
                            795 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:94: sign = '+';
   025A E5 08               796 	mov	a,_bp
   025C 24 03               797 	add	a,#0x03
   025E F8                  798 	mov	r0,a
   025F 76 2B               799 	mov	@r0,#0x2B
                            800 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:96: p = s;
   0261 E5 08               801 	mov	a,_bp
   0263 24 FB               802 	add	a,#0xfb
   0265 F8                  803 	mov	r0,a
   0266 E5 08               804 	mov	a,_bp
   0268 24 04               805 	add	a,#0x04
   026A F9                  806 	mov	r1,a
   026B E6                  807 	mov	a,@r0
   026C F7                  808 	mov	@r1,a
   026D 08                  809 	inc	r0
   026E 09                  810 	inc	r1
   026F E6                  811 	mov	a,@r0
   0270 F7                  812 	mov	@r1,a
   0271 08                  813 	inc	r0
   0272 09                  814 	inc	r1
   0273 E6                  815 	mov	a,@r0
   0274 F7                  816 	mov	@r1,a
                            817 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:97: if (i < 0) {
   0275 A8 08               818 	mov	r0,_bp
   0277 08                  819 	inc	r0
   0278 08                  820 	inc	r0
   0279 E6                  821 	mov	a,@r0
   027A 30 E7 12            822 	jnb	acc.7,00115$
                            823 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:98: sign = '-';
   027D E5 08               824 	mov	a,_bp
   027F 24 03               825 	add	a,#0x03
   0281 F8                  826 	mov	r0,a
   0282 76 2D               827 	mov	@r0,#0x2D
                            828 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:99: i = -i;
   0284 A8 08               829 	mov	r0,_bp
   0286 08                  830 	inc	r0
   0287 C3                  831 	clr	c
   0288 E4                  832 	clr	a
   0289 96                  833 	subb	a,@r0
   028A F6                  834 	mov	@r0,a
   028B 08                  835 	inc	r0
   028C E4                  836 	clr	a
   028D 96                  837 	subb	a,@r0
   028E F6                  838 	mov	@r0,a
                            839 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:101: do {
   028F                     840 00115$:
   028F E5 08               841 	mov	a,_bp
   0291 24 04               842 	add	a,#0x04
   0293 F8                  843 	mov	r0,a
   0294 86 04               844 	mov	ar4,@r0
   0296 08                  845 	inc	r0
   0297 86 02               846 	mov	ar2,@r0
   0299 08                  847 	inc	r0
   029A 86 03               848 	mov	ar3,@r0
   029C 7D 00               849 	mov	r5,#0x00
   029E                     850 00103$:
                            851 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:102: *s = (i % 10) + '0';
   029E C0 02               852 	push	ar2
   02A0 C0 03               853 	push	ar3
   02A2 C0 04               854 	push	ar4
   02A4 C0 05               855 	push	ar5
   02A6 74 0A               856 	mov	a,#0x0A
   02A8 C0 E0               857 	push	acc
   02AA E4                  858 	clr	a
   02AB C0 E0               859 	push	acc
   02AD A8 08               860 	mov	r0,_bp
   02AF 08                  861 	inc	r0
   02B0 86 82               862 	mov	dpl,@r0
   02B2 08                  863 	inc	r0
   02B3 86 83               864 	mov	dph,@r0
   02B5 12 05 59            865 	lcall	__modsint
   02B8 AE 82               866 	mov	r6,dpl
   02BA 15 81               867 	dec	sp
   02BC 15 81               868 	dec	sp
   02BE D0 05               869 	pop	ar5
   02C0 D0 04               870 	pop	ar4
   02C2 D0 03               871 	pop	ar3
   02C4 D0 02               872 	pop	ar2
   02C6 74 30               873 	mov	a,#0x30
   02C8 2E                  874 	add	a,r6
   02C9 8C 82               875 	mov	dpl,r4
   02CB 8A 83               876 	mov	dph,r2
   02CD 8B F0               877 	mov	b,r3
   02CF 12 05 24            878 	lcall	__gptrput
   02D2 A3                  879 	inc	dptr
   02D3 AC 82               880 	mov	r4,dpl
   02D5 AA 83               881 	mov	r2,dph
                            882 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:103: s++;
                            883 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:104: len++;
   02D7 0D                  884 	inc	r5
   02D8 8D 06               885 	mov	ar6,r5
                            886 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:105: i /= 10;
   02DA C0 02               887 	push	ar2
   02DC C0 03               888 	push	ar3
   02DE C0 04               889 	push	ar4
   02E0 C0 05               890 	push	ar5
   02E2 74 0A               891 	mov	a,#0x0A
   02E4 C0 E0               892 	push	acc
   02E6 E4                  893 	clr	a
   02E7 C0 E0               894 	push	acc
   02E9 A8 08               895 	mov	r0,_bp
   02EB 08                  896 	inc	r0
   02EC 86 82               897 	mov	dpl,@r0
   02EE 08                  898 	inc	r0
   02EF 86 83               899 	mov	dph,@r0
   02F1 12 05 96            900 	lcall	__divsint
   02F4 A8 08               901 	mov	r0,_bp
   02F6 08                  902 	inc	r0
   02F7 A6 82               903 	mov	@r0,dpl
   02F9 08                  904 	inc	r0
   02FA A6 83               905 	mov	@r0,dph
   02FC 15 81               906 	dec	sp
   02FE 15 81               907 	dec	sp
   0300 D0 05               908 	pop	ar5
   0302 D0 04               909 	pop	ar4
   0304 D0 03               910 	pop	ar3
   0306 D0 02               911 	pop	ar2
                            912 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:106: } while (i != 0);
   0308 A8 08               913 	mov	r0,_bp
   030A 08                  914 	inc	r0
   030B E6                  915 	mov	a,@r0
   030C 08                  916 	inc	r0
   030D 46                  917 	orl	a,@r0
   030E 70 8E               918 	jnz	00103$
                            919 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:107: if (sign == '-') {
   0310 8D 06               920 	mov	ar6,r5
   0312 E5 08               921 	mov	a,_bp
   0314 24 03               922 	add	a,#0x03
   0316 F8                  923 	mov	r0,a
   0317 B6 2D 0E            924 	cjne	@r0,#0x2D,00119$
                            925 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:108: *s = '-';
   031A 8C 82               926 	mov	dpl,r4
   031C 8A 83               927 	mov	dph,r2
   031E 8B F0               928 	mov	b,r3
   0320 74 2D               929 	mov	a,#0x2D
   0322 12 05 24            930 	lcall	__gptrput
                            931 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:110: len++;
   0325 ED                  932 	mov	a,r5
   0326 04                  933 	inc	a
   0327 FE                  934 	mov	r6,a
                            935 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:112: for (i = 0; i < len / 2; i++) {
   0328                     936 00119$:
   0328 EE                  937 	mov	a,r6
   0329 C3                  938 	clr	c
   032A 13                  939 	rrc	a
   032B FA                  940 	mov	r2,a
   032C A8 08               941 	mov	r0,_bp
   032E 08                  942 	inc	r0
   032F E4                  943 	clr	a
   0330 F6                  944 	mov	@r0,a
   0331 08                  945 	inc	r0
   0332 F6                  946 	mov	@r0,a
   0333                     947 00108$:
   0333 8A 05               948 	mov	ar5,r2
   0335 7F 00               949 	mov	r7,#0x00
   0337 A8 08               950 	mov	r0,_bp
   0339 08                  951 	inc	r0
   033A C3                  952 	clr	c
   033B E6                  953 	mov	a,@r0
   033C 9D                  954 	subb	a,r5
   033D 08                  955 	inc	r0
   033E E6                  956 	mov	a,@r0
   033F 64 80               957 	xrl	a,#0x80
   0341 8F F0               958 	mov	b,r7
   0343 63 F0 80            959 	xrl	b,#0x80
   0346 95 F0               960 	subb	a,b
   0348 40 03               961 	jc	00126$
   034A 02 04 04            962 	ljmp	00111$
   034D                     963 00126$:
                            964 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:113: p[len] = p[i];
   034D C0 02               965 	push	ar2
   034F E5 08               966 	mov	a,_bp
   0351 24 04               967 	add	a,#0x04
   0353 F8                  968 	mov	r0,a
   0354 EE                  969 	mov	a,r6
   0355 26                  970 	add	a,@r0
   0356 FB                  971 	mov	r3,a
   0357 E4                  972 	clr	a
   0358 08                  973 	inc	r0
   0359 36                  974 	addc	a,@r0
   035A FC                  975 	mov	r4,a
   035B 08                  976 	inc	r0
   035C 86 05               977 	mov	ar5,@r0
   035E E5 08               978 	mov	a,_bp
   0360 24 04               979 	add	a,#0x04
   0362 F8                  980 	mov	r0,a
   0363 A9 08               981 	mov	r1,_bp
   0365 09                  982 	inc	r1
   0366 E7                  983 	mov	a,@r1
   0367 26                  984 	add	a,@r0
   0368 C0 E0               985 	push	acc
   036A 09                  986 	inc	r1
   036B E7                  987 	mov	a,@r1
   036C 08                  988 	inc	r0
   036D 36                  989 	addc	a,@r0
   036E C0 E0               990 	push	acc
   0370 08                  991 	inc	r0
   0371 E6                  992 	mov	a,@r0
   0372 C0 E0               993 	push	acc
   0374 E5 08               994 	mov	a,_bp
   0376 24 0A               995 	add	a,#0x0a
   0378 F8                  996 	mov	r0,a
   0379 D0 E0               997 	pop	acc
   037B F6                  998 	mov	@r0,a
   037C 18                  999 	dec	r0
   037D D0 E0              1000 	pop	acc
   037F F6                 1001 	mov	@r0,a
   0380 18                 1002 	dec	r0
   0381 D0 E0              1003 	pop	acc
   0383 F6                 1004 	mov	@r0,a
   0384 E5 08              1005 	mov	a,_bp
   0386 24 08              1006 	add	a,#0x08
   0388 F8                 1007 	mov	r0,a
   0389 86 82              1008 	mov	dpl,@r0
   038B 08                 1009 	inc	r0
   038C 86 83              1010 	mov	dph,@r0
   038E 08                 1011 	inc	r0
   038F 86 F0              1012 	mov	b,@r0
   0391 E5 08              1013 	mov	a,_bp
   0393 24 07              1014 	add	a,#0x07
   0395 F9                 1015 	mov	r1,a
   0396 12 05 3D           1016 	lcall	__gptrget
   0399 F7                 1017 	mov	@r1,a
   039A 8B 82              1018 	mov	dpl,r3
   039C 8C 83              1019 	mov	dph,r4
   039E 8D F0              1020 	mov	b,r5
   03A0 E5 08              1021 	mov	a,_bp
   03A2 24 07              1022 	add	a,#0x07
   03A4 F8                 1023 	mov	r0,a
   03A5 E6                 1024 	mov	a,@r0
   03A6 12 05 24           1025 	lcall	__gptrput
                           1026 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:114: p[i] = p[len - 1 - i];
   03A9 8E 07              1027 	mov	ar7,r6
   03AB 7D 00              1028 	mov	r5,#0x00
   03AD 1F                 1029 	dec	r7
   03AE BF FF 01           1030 	cjne	r7,#0xff,00127$
   03B1 1D                 1031 	dec	r5
   03B2                    1032 00127$:
   03B2 A8 08              1033 	mov	r0,_bp
   03B4 08                 1034 	inc	r0
   03B5 EF                 1035 	mov	a,r7
   03B6 C3                 1036 	clr	c
   03B7 96                 1037 	subb	a,@r0
   03B8 FF                 1038 	mov	r7,a
   03B9 ED                 1039 	mov	a,r5
   03BA 08                 1040 	inc	r0
   03BB 96                 1041 	subb	a,@r0
   03BC FD                 1042 	mov	r5,a
   03BD E5 08              1043 	mov	a,_bp
   03BF 24 04              1044 	add	a,#0x04
   03C1 F8                 1045 	mov	r0,a
   03C2 EF                 1046 	mov	a,r7
   03C3 26                 1047 	add	a,@r0
   03C4 FF                 1048 	mov	r7,a
   03C5 ED                 1049 	mov	a,r5
   03C6 08                 1050 	inc	r0
   03C7 36                 1051 	addc	a,@r0
   03C8 FD                 1052 	mov	r5,a
   03C9 08                 1053 	inc	r0
   03CA 86 02              1054 	mov	ar2,@r0
   03CC 8F 82              1055 	mov	dpl,r7
   03CE 8D 83              1056 	mov	dph,r5
   03D0 8A F0              1057 	mov	b,r2
   03D2 12 05 3D           1058 	lcall	__gptrget
   03D5 FB                 1059 	mov	r3,a
   03D6 E5 08              1060 	mov	a,_bp
   03D8 24 08              1061 	add	a,#0x08
   03DA F8                 1062 	mov	r0,a
   03DB 86 82              1063 	mov	dpl,@r0
   03DD 08                 1064 	inc	r0
   03DE 86 83              1065 	mov	dph,@r0
   03E0 08                 1066 	inc	r0
   03E1 86 F0              1067 	mov	b,@r0
   03E3 EB                 1068 	mov	a,r3
   03E4 12 05 24           1069 	lcall	__gptrput
                           1070 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:115: p[len - 1 - i] = p[len];
   03E7 8F 82              1071 	mov	dpl,r7
   03E9 8D 83              1072 	mov	dph,r5
   03EB 8A F0              1073 	mov	b,r2
   03ED E5 08              1074 	mov	a,_bp
   03EF 24 07              1075 	add	a,#0x07
   03F1 F8                 1076 	mov	r0,a
   03F2 E6                 1077 	mov	a,@r0
   03F3 12 05 24           1078 	lcall	__gptrput
                           1079 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:112: for (i = 0; i < len / 2; i++) {
   03F6 A8 08              1080 	mov	r0,_bp
   03F8 08                 1081 	inc	r0
   03F9 06                 1082 	inc	@r0
   03FA B6 00 02           1083 	cjne	@r0,#0x00,00128$
   03FD 08                 1084 	inc	r0
   03FE 06                 1085 	inc	@r0
   03FF                    1086 00128$:
   03FF D0 02              1087 	pop	ar2
   0401 02 03 33           1088 	ljmp	00108$
   0404                    1089 00111$:
                           1090 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:117: p[len] = 0;
   0404 E5 08              1091 	mov	a,_bp
   0406 24 04              1092 	add	a,#0x04
   0408 F8                 1093 	mov	r0,a
   0409 EE                 1094 	mov	a,r6
   040A 26                 1095 	add	a,@r0
   040B FE                 1096 	mov	r6,a
   040C E4                 1097 	clr	a
   040D 08                 1098 	inc	r0
   040E 36                 1099 	addc	a,@r0
   040F FA                 1100 	mov	r2,a
   0410 08                 1101 	inc	r0
   0411 86 03              1102 	mov	ar3,@r0
   0413 8E 82              1103 	mov	dpl,r6
   0415 8A 83              1104 	mov	dph,r2
   0417 8B F0              1105 	mov	b,r3
   0419 E4                 1106 	clr	a
   041A 12 05 24           1107 	lcall	__gptrput
   041D 85 08 81           1108 	mov	sp,_bp
   0420 D0 08              1109 	pop	_bp
   0422 22                 1110 	ret
                           1111 ;------------------------------------------------------------
                           1112 ;Allocation info for local variables in function 'clcd_put_int'
                           1113 ;------------------------------------------------------------
                           1114 ;i                         Allocated to registers r2 r3 
                           1115 ;s                         Allocated to stack - offset 1
                           1116 ;------------------------------------------------------------
                           1117 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:120: void clcd_put_int(int i) {
                           1118 ;	-----------------------------------------
                           1119 ;	 function clcd_put_int
                           1120 ;	-----------------------------------------
   0423                    1121 _clcd_put_int:
   0423 C0 08              1122 	push	_bp
   0425 E5 81              1123 	mov	a,sp
   0427 F5 08              1124 	mov	_bp,a
   0429 24 07              1125 	add	a,#0x07
   042B F5 81              1126 	mov	sp,a
   042D AA 82              1127 	mov	r2,dpl
   042F AB 83              1128 	mov	r3,dph
                           1129 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:122: i2s(i, s);
   0431 AC 08              1130 	mov	r4,_bp
   0433 0C                 1131 	inc	r4
   0434 8C 05              1132 	mov	ar5,r4
   0436 7E 00              1133 	mov	r6,#0x00
   0438 7F 40              1134 	mov	r7,#0x40
   043A C0 04              1135 	push	ar4
   043C C0 05              1136 	push	ar5
   043E C0 06              1137 	push	ar6
   0440 C0 07              1138 	push	ar7
   0442 8A 82              1139 	mov	dpl,r2
   0444 8B 83              1140 	mov	dph,r3
   0446 12 02 4B           1141 	lcall	_i2s
   0449 15 81              1142 	dec	sp
   044B 15 81              1143 	dec	sp
   044D 15 81              1144 	dec	sp
   044F D0 04              1145 	pop	ar4
                           1146 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\/clcd.c:123: clcd_put_string(s);
   0451 7A 00              1147 	mov	r2,#0x00
   0453 7B 40              1148 	mov	r3,#0x40
   0455 8C 82              1149 	mov	dpl,r4
   0457 8A 83              1150 	mov	dph,r2
   0459 8B F0              1151 	mov	b,r3
   045B 12 01 E9           1152 	lcall	_clcd_put_string
   045E 85 08 81           1153 	mov	sp,_bp
   0461 D0 08              1154 	pop	_bp
   0463 22                 1155 	ret
                           1156 ;------------------------------------------------------------
                           1157 ;Allocation info for local variables in function 'delay'
                           1158 ;------------------------------------------------------------
                           1159 ;x                         Allocated to registers r2 r3 
                           1160 ;n                         Allocated to registers r4 r5 
                           1161 ;------------------------------------------------------------
                           1162 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:11: void delay(int x) {
                           1163 ;	-----------------------------------------
                           1164 ;	 function delay
                           1165 ;	-----------------------------------------
   0464                    1166 _delay:
   0464 AA 82              1167 	mov	r2,dpl
   0466 AB 83              1168 	mov	r3,dph
                           1169 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:13: while (x > 0) {
   0468                    1170 00104$:
   0468 C3                 1171 	clr	c
   0469 E4                 1172 	clr	a
   046A 9A                 1173 	subb	a,r2
   046B 74 80              1174 	mov	a,#(0x00 ^ 0x80)
   046D 8B F0              1175 	mov	b,r3
   046F 63 F0 80           1176 	xrl	b,#0x80
   0472 95 F0              1177 	subb	a,b
   0474 50 20              1178 	jnc	00107$
                           1179 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:15: while (n > 0)
   0476 7C 78              1180 	mov	r4,#0x78
   0478 7D 00              1181 	mov	r5,#0x00
   047A                    1182 00101$:
   047A C3                 1183 	clr	c
   047B E4                 1184 	clr	a
   047C 9C                 1185 	subb	a,r4
   047D 74 80              1186 	mov	a,#(0x00 ^ 0x80)
   047F 8D F0              1187 	mov	b,r5
   0481 63 F0 80           1188 	xrl	b,#0x80
   0484 95 F0              1189 	subb	a,b
   0486 50 07              1190 	jnc	00103$
                           1191 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:16: n--;
   0488 1C                 1192 	dec	r4
   0489 BC FF EE           1193 	cjne	r4,#0xff,00101$
   048C 1D                 1194 	dec	r5
   048D 80 EB              1195 	sjmp	00101$
   048F                    1196 00103$:
                           1197 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:17: x--;
   048F 1A                 1198 	dec	r2
   0490 BA FF D5           1199 	cjne	r2,#0xff,00104$
   0493 1B                 1200 	dec	r3
   0494 80 D2              1201 	sjmp	00104$
   0496                    1202 00107$:
   0496 22                 1203 	ret
                           1204 ;------------------------------------------------------------
                           1205 ;Allocation info for local variables in function 'main'
                           1206 ;------------------------------------------------------------
                           1207 ;Humidity                  Allocated to stack - offset 1
                           1208 ;Temperature               Allocated to stack - offset 2
                           1209 ;------------------------------------------------------------
                           1210 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:21: void main(void) {
                           1211 ;	-----------------------------------------
                           1212 ;	 function main
                           1213 ;	-----------------------------------------
   0497                    1214 _main:
   0497 C0 08              1215 	push	_bp
   0499 85 81 08           1216 	mov	_bp,sp
   049C 05 81              1217 	inc	sp
   049E 05 81              1218 	inc	sp
                           1219 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:24: clcd_initialize();
   04A0 12 01 67           1220 	lcall	_clcd_initialize
                           1221 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:25: while (1) {
   04A3                    1222 00102$:
                           1223 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:26: DHT11_Read(&Humidity, &Temperature);
   04A3 E5 08              1224 	mov	a,_bp
   04A5 24 02              1225 	add	a,#0x02
   04A7 FA                 1226 	mov	r2,a
   04A8 7B 00              1227 	mov	r3,#0x00
   04AA 7C 40              1228 	mov	r4,#0x40
   04AC AD 08              1229 	mov	r5,_bp
   04AE 0D                 1230 	inc	r5
   04AF 7E 00              1231 	mov	r6,#0x00
   04B1 7F 40              1232 	mov	r7,#0x40
   04B3 C0 02              1233 	push	ar2
   04B5 C0 03              1234 	push	ar3
   04B7 C0 04              1235 	push	ar4
   04B9 8D 82              1236 	mov	dpl,r5
   04BB 8E 83              1237 	mov	dph,r6
   04BD 8F F0              1238 	mov	b,r7
   04BF 12 00 78           1239 	lcall	_DHT11_Read
   04C2 15 81              1240 	dec	sp
   04C4 15 81              1241 	dec	sp
   04C6 15 81              1242 	dec	sp
                           1243 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:28: clcd_set_cursor(0, 0);
   04C8 E4                 1244 	clr	a
   04C9 C0 E0              1245 	push	acc
   04CB C0 E0              1246 	push	acc
   04CD 90 00 00           1247 	mov	dptr,#0x0000
   04D0 12 01 AB           1248 	lcall	_clcd_set_cursor
   04D3 15 81              1249 	dec	sp
   04D5 15 81              1250 	dec	sp
                           1251 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:29: clcd_put_string("Humidity: ");
   04D7 90 06 5E           1252 	mov	dptr,#__str_0
   04DA 75 F0 80           1253 	mov	b,#0x80
   04DD 12 01 E9           1254 	lcall	_clcd_put_string
                           1255 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:30: clcd_put_int(Humidity);
   04E0 A8 08              1256 	mov	r0,_bp
   04E2 08                 1257 	inc	r0
   04E3 86 02              1258 	mov	ar2,@r0
   04E5 7B 00              1259 	mov	r3,#0x00
   04E7 8A 82              1260 	mov	dpl,r2
   04E9 8B 83              1261 	mov	dph,r3
   04EB 12 04 23           1262 	lcall	_clcd_put_int
                           1263 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:32: clcd_set_cursor(1, 0);
   04EE E4                 1264 	clr	a
   04EF C0 E0              1265 	push	acc
   04F1 C0 E0              1266 	push	acc
   04F3 90 00 01           1267 	mov	dptr,#0x0001
   04F6 12 01 AB           1268 	lcall	_clcd_set_cursor
   04F9 15 81              1269 	dec	sp
   04FB 15 81              1270 	dec	sp
                           1271 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:33: clcd_put_string("Temperature: ");
   04FD 90 06 69           1272 	mov	dptr,#__str_1
   0500 75 F0 80           1273 	mov	b,#0x80
   0503 12 01 E9           1274 	lcall	_clcd_put_string
                           1275 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:34: clcd_put_int(Temperature);
   0506 A8 08              1276 	mov	r0,_bp
   0508 08                 1277 	inc	r0
   0509 08                 1278 	inc	r0
   050A 86 02              1279 	mov	ar2,@r0
   050C 7B 00              1280 	mov	r3,#0x00
   050E 8A 82              1281 	mov	dpl,r2
   0510 8B 83              1282 	mov	dph,r3
   0512 12 04 23           1283 	lcall	_clcd_put_int
                           1284 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW19\DHT11-ex.c:36: delay(2000);
   0515 90 07 D0           1285 	mov	dptr,#0x07D0
   0518 12 04 64           1286 	lcall	_delay
   051B 02 04 A3           1287 	ljmp	00102$
   051E 85 08 81           1288 	mov	sp,_bp
   0521 D0 08              1289 	pop	_bp
   0523 22                 1290 	ret
                           1291 	.area CSEG    (CODE)
                           1292 	.area CONST   (CODE)
   064D                    1293 _ASCII:
   064D 30 31 32 33 34 35  1294 	.ascii "0123456789ABCDEF"
        36 37 38 39 41 42
        43 44 45 46
   065D 00                 1295 	.db 0x00
   065E                    1296 __str_0:
   065E 48 75 6D 69 64 69  1297 	.ascii "Humidity: "
        74 79 3A 20
   0668 00                 1298 	.db 0x00
   0669                    1299 __str_1:
   0669 54 65 6D 70 65 72  1300 	.ascii "Temperature: "
        61 74 75 72 65 3A
        20
   0676 00                 1301 	.db 0x00
                           1302 	.area XINIT   (CODE)
                           1303 	.area CABS    (ABS,CODE)
