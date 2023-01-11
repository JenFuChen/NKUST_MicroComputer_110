                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
                              4 ; This file was generated Mon Dec 26 10:03:17 2022
                              5 ;--------------------------------------------------------
                              6 	.module clcd_ex
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _ASCII
                             13 	.globl _main
                             14 	.globl _ACC_7
                             15 	.globl _CY
                             16 	.globl _AC
                             17 	.globl _F0
                             18 	.globl _RS1
                             19 	.globl _RS0
                             20 	.globl _OV
                             21 	.globl _FL
                             22 	.globl _P
                             23 	.globl _PS
                             24 	.globl _PT1
                             25 	.globl _PX1
                             26 	.globl _PT0
                             27 	.globl _PX0
                             28 	.globl _RD
                             29 	.globl _WR
                             30 	.globl _T1
                             31 	.globl _T0
                             32 	.globl _INT1
                             33 	.globl _INT0
                             34 	.globl _TXD
                             35 	.globl _RXD
                             36 	.globl _P3_7
                             37 	.globl _P3_6
                             38 	.globl _P3_5
                             39 	.globl _P3_4
                             40 	.globl _P3_3
                             41 	.globl _P3_2
                             42 	.globl _P3_1
                             43 	.globl _P3_0
                             44 	.globl _EA
                             45 	.globl _ES
                             46 	.globl _ET1
                             47 	.globl _EX1
                             48 	.globl _ET0
                             49 	.globl _EX0
                             50 	.globl _P2_7
                             51 	.globl _P2_6
                             52 	.globl _P2_5
                             53 	.globl _P2_4
                             54 	.globl _P2_3
                             55 	.globl _P2_2
                             56 	.globl _P2_1
                             57 	.globl _P2_0
                             58 	.globl _SM0
                             59 	.globl _SM1
                             60 	.globl _SM2
                             61 	.globl _REN
                             62 	.globl _TB8
                             63 	.globl _RB8
                             64 	.globl _TI
                             65 	.globl _RI
                             66 	.globl _P1_7
                             67 	.globl _P1_6
                             68 	.globl _P1_5
                             69 	.globl _P1_4
                             70 	.globl _P1_3
                             71 	.globl _P1_2
                             72 	.globl _P1_1
                             73 	.globl _P1_0
                             74 	.globl _TF1
                             75 	.globl _TR1
                             76 	.globl _TF0
                             77 	.globl _TR0
                             78 	.globl _IE1
                             79 	.globl _IT1
                             80 	.globl _IE0
                             81 	.globl _IT0
                             82 	.globl _P0_7
                             83 	.globl _P0_6
                             84 	.globl _P0_5
                             85 	.globl _P0_4
                             86 	.globl _P0_3
                             87 	.globl _P0_2
                             88 	.globl _P0_1
                             89 	.globl _P0_0
                             90 	.globl _B
                             91 	.globl _A
                             92 	.globl _ACC
                             93 	.globl _PSW
                             94 	.globl _IP
                             95 	.globl _P3
                             96 	.globl _IE
                             97 	.globl _P2
                             98 	.globl _SBUF
                             99 	.globl _SCON
                            100 	.globl _P1
                            101 	.globl _TH1
                            102 	.globl _TH0
                            103 	.globl _TL1
                            104 	.globl _TL0
                            105 	.globl _TMOD
                            106 	.globl _TCON
                            107 	.globl _PCON
                            108 	.globl _DPH
                            109 	.globl _DPL
                            110 	.globl _SP
                            111 	.globl _P0
                            112 	.globl _clcd_initialize
                            113 	.globl _clcd_write_instruction
                            114 	.globl _clcd_wait
                            115 	.globl _clcd_cls
                            116 	.globl _clcd_set_cursor
                            117 	.globl _clcd_put_char
                            118 	.globl _clcd_put_string
                            119 	.globl _clcd_put_byte
                            120 	.globl _clcd_put_word
                            121 	.globl _i2s
                            122 	.globl _clcd_put_integer
                            123 ;--------------------------------------------------------
                            124 ; special function registers
                            125 ;--------------------------------------------------------
                            126 	.area RSEG    (ABS,DATA)
   0000                     127 	.org 0x0000
                    0080    128 _P0	=	0x0080
                    0081    129 _SP	=	0x0081
                    0082    130 _DPL	=	0x0082
                    0083    131 _DPH	=	0x0083
                    0087    132 _PCON	=	0x0087
                    0088    133 _TCON	=	0x0088
                    0089    134 _TMOD	=	0x0089
                    008A    135 _TL0	=	0x008a
                    008B    136 _TL1	=	0x008b
                    008C    137 _TH0	=	0x008c
                    008D    138 _TH1	=	0x008d
                    0090    139 _P1	=	0x0090
                    0098    140 _SCON	=	0x0098
                    0099    141 _SBUF	=	0x0099
                    00A0    142 _P2	=	0x00a0
                    00A8    143 _IE	=	0x00a8
                    00B0    144 _P3	=	0x00b0
                    00B8    145 _IP	=	0x00b8
                    00D0    146 _PSW	=	0x00d0
                    00E0    147 _ACC	=	0x00e0
                    00E0    148 _A	=	0x00e0
                    00F0    149 _B	=	0x00f0
                            150 ;--------------------------------------------------------
                            151 ; special function bits
                            152 ;--------------------------------------------------------
                            153 	.area RSEG    (ABS,DATA)
   0000                     154 	.org 0x0000
                    0080    155 _P0_0	=	0x0080
                    0081    156 _P0_1	=	0x0081
                    0082    157 _P0_2	=	0x0082
                    0083    158 _P0_3	=	0x0083
                    0084    159 _P0_4	=	0x0084
                    0085    160 _P0_5	=	0x0085
                    0086    161 _P0_6	=	0x0086
                    0087    162 _P0_7	=	0x0087
                    0088    163 _IT0	=	0x0088
                    0089    164 _IE0	=	0x0089
                    008A    165 _IT1	=	0x008a
                    008B    166 _IE1	=	0x008b
                    008C    167 _TR0	=	0x008c
                    008D    168 _TF0	=	0x008d
                    008E    169 _TR1	=	0x008e
                    008F    170 _TF1	=	0x008f
                    0090    171 _P1_0	=	0x0090
                    0091    172 _P1_1	=	0x0091
                    0092    173 _P1_2	=	0x0092
                    0093    174 _P1_3	=	0x0093
                    0094    175 _P1_4	=	0x0094
                    0095    176 _P1_5	=	0x0095
                    0096    177 _P1_6	=	0x0096
                    0097    178 _P1_7	=	0x0097
                    0098    179 _RI	=	0x0098
                    0099    180 _TI	=	0x0099
                    009A    181 _RB8	=	0x009a
                    009B    182 _TB8	=	0x009b
                    009C    183 _REN	=	0x009c
                    009D    184 _SM2	=	0x009d
                    009E    185 _SM1	=	0x009e
                    009F    186 _SM0	=	0x009f
                    00A0    187 _P2_0	=	0x00a0
                    00A1    188 _P2_1	=	0x00a1
                    00A2    189 _P2_2	=	0x00a2
                    00A3    190 _P2_3	=	0x00a3
                    00A4    191 _P2_4	=	0x00a4
                    00A5    192 _P2_5	=	0x00a5
                    00A6    193 _P2_6	=	0x00a6
                    00A7    194 _P2_7	=	0x00a7
                    00A8    195 _EX0	=	0x00a8
                    00A9    196 _ET0	=	0x00a9
                    00AA    197 _EX1	=	0x00aa
                    00AB    198 _ET1	=	0x00ab
                    00AC    199 _ES	=	0x00ac
                    00AF    200 _EA	=	0x00af
                    00B0    201 _P3_0	=	0x00b0
                    00B1    202 _P3_1	=	0x00b1
                    00B2    203 _P3_2	=	0x00b2
                    00B3    204 _P3_3	=	0x00b3
                    00B4    205 _P3_4	=	0x00b4
                    00B5    206 _P3_5	=	0x00b5
                    00B6    207 _P3_6	=	0x00b6
                    00B7    208 _P3_7	=	0x00b7
                    00B0    209 _RXD	=	0x00b0
                    00B1    210 _TXD	=	0x00b1
                    00B2    211 _INT0	=	0x00b2
                    00B3    212 _INT1	=	0x00b3
                    00B4    213 _T0	=	0x00b4
                    00B5    214 _T1	=	0x00b5
                    00B6    215 _WR	=	0x00b6
                    00B7    216 _RD	=	0x00b7
                    00B8    217 _PX0	=	0x00b8
                    00B9    218 _PT0	=	0x00b9
                    00BA    219 _PX1	=	0x00ba
                    00BB    220 _PT1	=	0x00bb
                    00BC    221 _PS	=	0x00bc
                    00D0    222 _P	=	0x00d0
                    00D1    223 _FL	=	0x00d1
                    00D2    224 _OV	=	0x00d2
                    00D3    225 _RS0	=	0x00d3
                    00D4    226 _RS1	=	0x00d4
                    00D5    227 _F0	=	0x00d5
                    00D6    228 _AC	=	0x00d6
                    00D7    229 _CY	=	0x00d7
                    00E7    230 _ACC_7	=	0x00e7
                            231 ;--------------------------------------------------------
                            232 ; overlayable register banks
                            233 ;--------------------------------------------------------
                            234 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     235 	.ds 8
                            236 ;--------------------------------------------------------
                            237 ; internal ram data
                            238 ;--------------------------------------------------------
                            239 	.area DSEG    (DATA)
                            240 ;--------------------------------------------------------
                            241 ; overlayable items in internal ram 
                            242 ;--------------------------------------------------------
                            243 	.area OSEG    (OVR,DATA)
                            244 ;--------------------------------------------------------
                            245 ; Stack segment in internal ram 
                            246 ;--------------------------------------------------------
                            247 	.area	SSEG	(DATA)
   0009                     248 __start__stack:
   0009                     249 	.ds	1
                            250 
                            251 ;--------------------------------------------------------
                            252 ; indirectly addressable internal ram data
                            253 ;--------------------------------------------------------
                            254 	.area ISEG    (DATA)
                            255 ;--------------------------------------------------------
                            256 ; absolute internal ram data
                            257 ;--------------------------------------------------------
                            258 	.area IABS    (ABS,DATA)
                            259 	.area IABS    (ABS,DATA)
                            260 ;--------------------------------------------------------
                            261 ; bit data
                            262 ;--------------------------------------------------------
                            263 	.area BSEG    (BIT)
                            264 ;--------------------------------------------------------
                            265 ; paged external ram data
                            266 ;--------------------------------------------------------
                            267 	.area PSEG    (PAG,XDATA)
                            268 ;--------------------------------------------------------
                            269 ; external ram data
                            270 ;--------------------------------------------------------
                            271 	.area XSEG    (XDATA)
                            272 ;--------------------------------------------------------
                            273 ; absolute external ram data
                            274 ;--------------------------------------------------------
                            275 	.area XABS    (ABS,XDATA)
                            276 ;--------------------------------------------------------
                            277 ; external initialized ram data
                            278 ;--------------------------------------------------------
                            279 	.area XISEG   (XDATA)
                            280 	.area HOME    (CODE)
                            281 	.area GSINIT0 (CODE)
                            282 	.area GSINIT1 (CODE)
                            283 	.area GSINIT2 (CODE)
                            284 	.area GSINIT3 (CODE)
                            285 	.area GSINIT4 (CODE)
                            286 	.area GSINIT5 (CODE)
                            287 	.area GSINIT  (CODE)
                            288 	.area GSFINAL (CODE)
                            289 	.area CSEG    (CODE)
                            290 ;--------------------------------------------------------
                            291 ; interrupt vector 
                            292 ;--------------------------------------------------------
                            293 	.area HOME    (CODE)
   0000                     294 __interrupt_vect:
   0000 02 00 08            295 	ljmp	__sdcc_gsinit_startup
                            296 ;--------------------------------------------------------
                            297 ; global & static initialisations
                            298 ;--------------------------------------------------------
                            299 	.area HOME    (CODE)
                            300 	.area GSINIT  (CODE)
                            301 	.area GSFINAL (CODE)
                            302 	.area GSINIT  (CODE)
                            303 	.globl __sdcc_gsinit_startup
                            304 	.globl __sdcc_program_startup
                            305 	.globl __start__stack
                            306 	.globl __mcs51_genXINIT
                            307 	.globl __mcs51_genXRAMCLEAR
                            308 	.globl __mcs51_genRAMCLEAR
                            309 	.area GSFINAL (CODE)
   0061 02 00 03            310 	ljmp	__sdcc_program_startup
                            311 ;--------------------------------------------------------
                            312 ; Home
                            313 ;--------------------------------------------------------
                            314 	.area HOME    (CODE)
                            315 	.area HOME    (CODE)
   0003                     316 __sdcc_program_startup:
   0003 12 03 61            317 	lcall	_main
                            318 ;	return from main will lock up
   0006 80 FE               319 	sjmp .
                            320 ;--------------------------------------------------------
                            321 ; code
                            322 ;--------------------------------------------------------
                            323 	.area CSEG    (CODE)
                            324 ;------------------------------------------------------------
                            325 ;Allocation info for local variables in function 'clcd_initialize'
                            326 ;------------------------------------------------------------
                            327 ;------------------------------------------------------------
                            328 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:26: void clcd_initialize(void)
                            329 ;	-----------------------------------------
                            330 ;	 function clcd_initialize
                            331 ;	-----------------------------------------
   0064                     332 _clcd_initialize:
                    0002    333 	ar2 = 0x02
                    0003    334 	ar3 = 0x03
                    0004    335 	ar4 = 0x04
                    0005    336 	ar5 = 0x05
                    0006    337 	ar6 = 0x06
                    0007    338 	ar7 = 0x07
                    0000    339 	ar0 = 0x00
                    0001    340 	ar1 = 0x01
                            341 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:28: clcd_write_instruction(0x38);		// 8-bit interface, 2 lines, 5x7 dots
   0064 75 82 38            342 	mov	dpl,#0x38
   0067 12 00 7C            343 	lcall	_clcd_write_instruction
                            344 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:29: clcd_write_instruction(0x0F);		// display on, cursor on, cursor blinking
   006A 75 82 0F            345 	mov	dpl,#0x0F
   006D 12 00 7C            346 	lcall	_clcd_write_instruction
                            347 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:30: clcd_write_instruction(0x06);		// move cursor right when read/write
   0070 75 82 06            348 	mov	dpl,#0x06
   0073 12 00 7C            349 	lcall	_clcd_write_instruction
                            350 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:31: clcd_write_instruction(0x01);		// clear display, cursor home
   0076 75 82 01            351 	mov	dpl,#0x01
   0079 02 00 7C            352 	ljmp	_clcd_write_instruction
                            353 ;------------------------------------------------------------
                            354 ;Allocation info for local variables in function 'clcd_write_instruction'
                            355 ;------------------------------------------------------------
                            356 ;instruction               Allocated to registers r2 
                            357 ;------------------------------------------------------------
                            358 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:34: void clcd_write_instruction(unsigned char instruction)
                            359 ;	-----------------------------------------
                            360 ;	 function clcd_write_instruction
                            361 ;	-----------------------------------------
   007C                     362 _clcd_write_instruction:
   007C AA 82               363 	mov	r2,dpl
                            364 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:36: clcd_wait();
   007E C0 02               365 	push	ar2
   0080 12 00 90            366 	lcall	_clcd_wait
   0083 D0 02               367 	pop	ar2
                            368 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:37: CLCD_RS=0;CLCD_RW=0;
   0085 C2 A0               369 	clr	_P2_0
   0087 C2 A1               370 	clr	_P2_1
                            371 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:38: CLCD_DB=instruction;CLCD_E=1;CLCD_E=0;
   0089 8A 90               372 	mov	_P1,r2
   008B D2 A2               373 	setb	_P2_2
   008D C2 A2               374 	clr	_P2_2
   008F 22                  375 	ret
                            376 ;------------------------------------------------------------
                            377 ;Allocation info for local variables in function 'clcd_wait'
                            378 ;------------------------------------------------------------
                            379 ;------------------------------------------------------------
                            380 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:41: void clcd_wait(void)
                            381 ;	-----------------------------------------
                            382 ;	 function clcd_wait
                            383 ;	-----------------------------------------
   0090                     384 _clcd_wait:
                            385 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:43: CLCD_DB=0xFF;
   0090 75 90 FF            386 	mov	_P1,#0xFF
                            387 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:44: CLCD_RS=0;CLCD_RW=1;
   0093 C2 A0               388 	clr	_P2_0
   0095 D2 A1               389 	setb	_P2_1
                            390 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:45: do
   0097                     391 00101$:
                            392 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:47: CLCD_E=1;ACC=CLCD_DB;CLCD_E=0;
   0097 D2 A2               393 	setb	_P2_2
   0099 85 90 E0            394 	mov	_ACC,_P1
   009C C2 A2               395 	clr	_P2_2
   009E 20 E7 F6            396 	jb	_ACC_7,00101$
   00A1 22                  397 	ret
                            398 ;------------------------------------------------------------
                            399 ;Allocation info for local variables in function 'clcd_cls'
                            400 ;------------------------------------------------------------
                            401 ;------------------------------------------------------------
                            402 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:52: void clcd_cls(void)
                            403 ;	-----------------------------------------
                            404 ;	 function clcd_cls
                            405 ;	-----------------------------------------
   00A2                     406 _clcd_cls:
                            407 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:54: clcd_write_instruction(0x01);
   00A2 75 82 01            408 	mov	dpl,#0x01
   00A5 02 00 7C            409 	ljmp	_clcd_write_instruction
                            410 ;------------------------------------------------------------
                            411 ;Allocation info for local variables in function 'clcd_set_cursor'
                            412 ;------------------------------------------------------------
                            413 ;column                    Allocated to stack - offset -4
                            414 ;row                       Allocated to registers r2 r3 
                            415 ;instruction               Allocated to registers r4 r5 
                            416 ;------------------------------------------------------------
                            417 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:57: void clcd_set_cursor(unsigned int row,unsigned int column)
                            418 ;	-----------------------------------------
                            419 ;	 function clcd_set_cursor
                            420 ;	-----------------------------------------
   00A8                     421 _clcd_set_cursor:
   00A8 C0 08               422 	push	_bp
   00AA 85 81 08            423 	mov	_bp,sp
   00AD AA 82               424 	mov	r2,dpl
   00AF AB 83               425 	mov	r3,dph
                            426 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:59: unsigned int instruction=0x80;
   00B1 7C 80               427 	mov	r4,#0x80
   00B3 7D 00               428 	mov	r5,#0x00
                            429 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:60: if(row==1)instruction+=0x40;
   00B5 BA 01 07            430 	cjne	r2,#0x01,00102$
   00B8 BB 00 04            431 	cjne	r3,#0x00,00102$
   00BB 7C C0               432 	mov	r4,#0xC0
   00BD 7D 00               433 	mov	r5,#0x00
   00BF                     434 00102$:
                            435 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:61: instruction+=column;
   00BF E5 08               436 	mov	a,_bp
   00C1 24 FC               437 	add	a,#0xfc
   00C3 F8                  438 	mov	r0,a
   00C4 E6                  439 	mov	a,@r0
   00C5 2C                  440 	add	a,r4
   00C6 FC                  441 	mov	r4,a
   00C7 08                  442 	inc	r0
   00C8 E6                  443 	mov	a,@r0
   00C9 3D                  444 	addc	a,r5
                            445 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:62: clcd_write_instruction(instruction);
   00CA 8C 82               446 	mov	dpl,r4
   00CC 12 00 7C            447 	lcall	_clcd_write_instruction
   00CF D0 08               448 	pop	_bp
   00D1 22                  449 	ret
                            450 ;------------------------------------------------------------
                            451 ;Allocation info for local variables in function 'clcd_put_char'
                            452 ;------------------------------------------------------------
                            453 ;c                         Allocated to registers r2 
                            454 ;------------------------------------------------------------
                            455 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:65: void clcd_put_char(char c)
                            456 ;	-----------------------------------------
                            457 ;	 function clcd_put_char
                            458 ;	-----------------------------------------
   00D2                     459 _clcd_put_char:
   00D2 AA 82               460 	mov	r2,dpl
                            461 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:67: clcd_wait();
   00D4 C0 02               462 	push	ar2
   00D6 12 00 90            463 	lcall	_clcd_wait
   00D9 D0 02               464 	pop	ar2
                            465 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:68: CLCD_RS=1;CLCD_RW=0;
   00DB D2 A0               466 	setb	_P2_0
   00DD C2 A1               467 	clr	_P2_1
                            468 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:69: CLCD_DB=c;CLCD_E=1;CLCD_E=0;
   00DF 8A 90               469 	mov	_P1,r2
   00E1 D2 A2               470 	setb	_P2_2
   00E3 C2 A2               471 	clr	_P2_2
   00E5 22                  472 	ret
                            473 ;------------------------------------------------------------
                            474 ;Allocation info for local variables in function 'clcd_put_string'
                            475 ;------------------------------------------------------------
                            476 ;s                         Allocated to registers r2 r3 r4 
                            477 ;------------------------------------------------------------
                            478 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:72: void clcd_put_string(char *s)
                            479 ;	-----------------------------------------
                            480 ;	 function clcd_put_string
                            481 ;	-----------------------------------------
   00E6                     482 _clcd_put_string:
   00E6 AA 82               483 	mov	r2,dpl
   00E8 AB 83               484 	mov	r3,dph
   00EA AC F0               485 	mov	r4,b
                            486 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:74: while(*s!=0){clcd_put_char(*s);s++;}
   00EC                     487 00101$:
   00EC 8A 82               488 	mov	dpl,r2
   00EE 8B 83               489 	mov	dph,r3
   00F0 8C F0               490 	mov	b,r4
   00F2 12 04 F8            491 	lcall	__gptrget
   00F5 FD                  492 	mov	r5,a
   00F6 60 18               493 	jz	00104$
   00F8 8D 82               494 	mov	dpl,r5
   00FA C0 02               495 	push	ar2
   00FC C0 03               496 	push	ar3
   00FE C0 04               497 	push	ar4
   0100 12 00 D2            498 	lcall	_clcd_put_char
   0103 D0 04               499 	pop	ar4
   0105 D0 03               500 	pop	ar3
   0107 D0 02               501 	pop	ar2
   0109 0A                  502 	inc	r2
   010A BA 00 DF            503 	cjne	r2,#0x00,00101$
   010D 0B                  504 	inc	r3
   010E 80 DC               505 	sjmp	00101$
   0110                     506 00104$:
   0110 22                  507 	ret
                            508 ;------------------------------------------------------------
                            509 ;Allocation info for local variables in function 'clcd_put_byte'
                            510 ;------------------------------------------------------------
                            511 ;byte_data                 Allocated to registers r2 
                            512 ;------------------------------------------------------------
                            513 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:77: void clcd_put_byte(unsigned char byte_data)
                            514 ;	-----------------------------------------
                            515 ;	 function clcd_put_byte
                            516 ;	-----------------------------------------
   0111                     517 _clcd_put_byte:
                            518 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:79: clcd_put_char(ASCII[byte_data/16]);clcd_put_char(ASCII[byte_data%16]);
   0111 E5 82               519 	mov	a,dpl
   0113 FA                  520 	mov	r2,a
   0114 C4                  521 	swap	a
   0115 54 0F               522 	anl	a,#0x0f
   0117 90 06 08            523 	mov	dptr,#_ASCII
   011A 93                  524 	movc	a,@a+dptr
   011B F5 82               525 	mov	dpl,a
   011D C0 02               526 	push	ar2
   011F 12 00 D2            527 	lcall	_clcd_put_char
   0122 D0 02               528 	pop	ar2
   0124 74 0F               529 	mov	a,#0x0F
   0126 5A                  530 	anl	a,r2
   0127 90 06 08            531 	mov	dptr,#_ASCII
   012A 93                  532 	movc	a,@a+dptr
   012B F5 82               533 	mov	dpl,a
   012D 02 00 D2            534 	ljmp	_clcd_put_char
                            535 ;------------------------------------------------------------
                            536 ;Allocation info for local variables in function 'clcd_put_word'
                            537 ;------------------------------------------------------------
                            538 ;word_data                 Allocated to registers r2 r3 
                            539 ;------------------------------------------------------------
                            540 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:82: void clcd_put_word(unsigned int word_data)
                            541 ;	-----------------------------------------
                            542 ;	 function clcd_put_word
                            543 ;	-----------------------------------------
   0130                     544 _clcd_put_word:
   0130 AA 82               545 	mov	r2,dpl
   0132 AB 83               546 	mov	r3,dph
                            547 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:84: clcd_put_byte(word_data/256);clcd_put_byte(word_data%256);
   0134 8B 04               548 	mov	ar4,r3
   0136 8C 82               549 	mov	dpl,r4
   0138 C0 02               550 	push	ar2
   013A C0 03               551 	push	ar3
   013C 12 01 11            552 	lcall	_clcd_put_byte
   013F D0 03               553 	pop	ar3
   0141 D0 02               554 	pop	ar2
   0143 8A 82               555 	mov	dpl,r2
   0145 02 01 11            556 	ljmp	_clcd_put_byte
                            557 ;------------------------------------------------------------
                            558 ;Allocation info for local variables in function 'i2s'
                            559 ;------------------------------------------------------------
                            560 ;s                         Allocated to stack - offset -5
                            561 ;i                         Allocated to stack - offset 1
                            562 ;sign                      Allocated to stack - offset 3
                            563 ;len                       Allocated to registers r6 
                            564 ;p                         Allocated to stack - offset 4
                            565 ;sloc0                     Allocated to stack - offset 8
                            566 ;sloc1                     Allocated to stack - offset 7
                            567 ;sloc2                     Allocated to stack - offset 8
                            568 ;------------------------------------------------------------
                            569 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:87: void i2s(int i,char *s)
                            570 ;	-----------------------------------------
                            571 ;	 function i2s
                            572 ;	-----------------------------------------
   0148                     573 _i2s:
   0148 C0 08               574 	push	_bp
   014A 85 81 08            575 	mov	_bp,sp
   014D C0 82               576 	push	dpl
   014F C0 83               577 	push	dph
   0151 E5 81               578 	mov	a,sp
   0153 24 0A               579 	add	a,#0x0a
   0155 F5 81               580 	mov	sp,a
                            581 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:90: sign='+';len=0;p=s;
   0157 E5 08               582 	mov	a,_bp
   0159 24 03               583 	add	a,#0x03
   015B F8                  584 	mov	r0,a
   015C 76 2B               585 	mov	@r0,#0x2B
   015E E5 08               586 	mov	a,_bp
   0160 24 FB               587 	add	a,#0xfb
   0162 F8                  588 	mov	r0,a
   0163 E5 08               589 	mov	a,_bp
   0165 24 04               590 	add	a,#0x04
   0167 F9                  591 	mov	r1,a
   0168 E6                  592 	mov	a,@r0
   0169 F7                  593 	mov	@r1,a
   016A 08                  594 	inc	r0
   016B 09                  595 	inc	r1
   016C E6                  596 	mov	a,@r0
   016D F7                  597 	mov	@r1,a
   016E 08                  598 	inc	r0
   016F 09                  599 	inc	r1
   0170 E6                  600 	mov	a,@r0
   0171 F7                  601 	mov	@r1,a
                            602 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:91: if(i<0){sign='-';i=-i;}
   0172 A8 08               603 	mov	r0,_bp
   0174 08                  604 	inc	r0
   0175 08                  605 	inc	r0
   0176 E6                  606 	mov	a,@r0
   0177 30 E7 12            607 	jnb	acc.7,00115$
   017A E5 08               608 	mov	a,_bp
   017C 24 03               609 	add	a,#0x03
   017E F8                  610 	mov	r0,a
   017F 76 2D               611 	mov	@r0,#0x2D
   0181 A8 08               612 	mov	r0,_bp
   0183 08                  613 	inc	r0
   0184 C3                  614 	clr	c
   0185 E4                  615 	clr	a
   0186 96                  616 	subb	a,@r0
   0187 F6                  617 	mov	@r0,a
   0188 08                  618 	inc	r0
   0189 E4                  619 	clr	a
   018A 96                  620 	subb	a,@r0
   018B F6                  621 	mov	@r0,a
                            622 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:92: do{*s=(i%10)+'0';s++;len++;i/=10;}while(i!=0);
   018C                     623 00115$:
   018C E5 08               624 	mov	a,_bp
   018E 24 04               625 	add	a,#0x04
   0190 F8                  626 	mov	r0,a
   0191 86 04               627 	mov	ar4,@r0
   0193 08                  628 	inc	r0
   0194 86 02               629 	mov	ar2,@r0
   0196 08                  630 	inc	r0
   0197 86 03               631 	mov	ar3,@r0
   0199 7D 00               632 	mov	r5,#0x00
   019B                     633 00103$:
   019B C0 02               634 	push	ar2
   019D C0 03               635 	push	ar3
   019F C0 04               636 	push	ar4
   01A1 C0 05               637 	push	ar5
   01A3 74 0A               638 	mov	a,#0x0A
   01A5 C0 E0               639 	push	acc
   01A7 E4                  640 	clr	a
   01A8 C0 E0               641 	push	acc
   01AA A8 08               642 	mov	r0,_bp
   01AC 08                  643 	inc	r0
   01AD 86 82               644 	mov	dpl,@r0
   01AF 08                  645 	inc	r0
   01B0 86 83               646 	mov	dph,@r0
   01B2 12 05 14            647 	lcall	__modsint
   01B5 AE 82               648 	mov	r6,dpl
   01B7 15 81               649 	dec	sp
   01B9 15 81               650 	dec	sp
   01BB D0 05               651 	pop	ar5
   01BD D0 04               652 	pop	ar4
   01BF D0 03               653 	pop	ar3
   01C1 D0 02               654 	pop	ar2
   01C3 74 30               655 	mov	a,#0x30
   01C5 2E                  656 	add	a,r6
   01C6 8C 82               657 	mov	dpl,r4
   01C8 8A 83               658 	mov	dph,r2
   01CA 8B F0               659 	mov	b,r3
   01CC 12 04 DF            660 	lcall	__gptrput
   01CF A3                  661 	inc	dptr
   01D0 AC 82               662 	mov	r4,dpl
   01D2 AA 83               663 	mov	r2,dph
   01D4 0D                  664 	inc	r5
   01D5 8D 06               665 	mov	ar6,r5
   01D7 C0 02               666 	push	ar2
   01D9 C0 03               667 	push	ar3
   01DB C0 04               668 	push	ar4
   01DD C0 05               669 	push	ar5
   01DF 74 0A               670 	mov	a,#0x0A
   01E1 C0 E0               671 	push	acc
   01E3 E4                  672 	clr	a
   01E4 C0 E0               673 	push	acc
   01E6 A8 08               674 	mov	r0,_bp
   01E8 08                  675 	inc	r0
   01E9 86 82               676 	mov	dpl,@r0
   01EB 08                  677 	inc	r0
   01EC 86 83               678 	mov	dph,@r0
   01EE 12 05 51            679 	lcall	__divsint
   01F1 A8 08               680 	mov	r0,_bp
   01F3 08                  681 	inc	r0
   01F4 A6 82               682 	mov	@r0,dpl
   01F6 08                  683 	inc	r0
   01F7 A6 83               684 	mov	@r0,dph
   01F9 15 81               685 	dec	sp
   01FB 15 81               686 	dec	sp
   01FD D0 05               687 	pop	ar5
   01FF D0 04               688 	pop	ar4
   0201 D0 03               689 	pop	ar3
   0203 D0 02               690 	pop	ar2
   0205 A8 08               691 	mov	r0,_bp
   0207 08                  692 	inc	r0
   0208 E6                  693 	mov	a,@r0
   0209 08                  694 	inc	r0
   020A 46                  695 	orl	a,@r0
   020B 70 8E               696 	jnz	00103$
                            697 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:93: if(sign=='-'){*s='-';s++;len++;}
   020D 8D 06               698 	mov	ar6,r5
   020F E5 08               699 	mov	a,_bp
   0211 24 03               700 	add	a,#0x03
   0213 F8                  701 	mov	r0,a
   0214 B6 2D 0E            702 	cjne	@r0,#0x2D,00119$
   0217 8C 82               703 	mov	dpl,r4
   0219 8A 83               704 	mov	dph,r2
   021B 8B F0               705 	mov	b,r3
   021D 74 2D               706 	mov	a,#0x2D
   021F 12 04 DF            707 	lcall	__gptrput
   0222 ED                  708 	mov	a,r5
   0223 04                  709 	inc	a
   0224 FE                  710 	mov	r6,a
                            711 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:94: for(i=0;i<len/2;i++){p[len]=p[i];p[i]=p[len-1-i];p[len-1-i]=p[len];}
   0225                     712 00119$:
   0225 EE                  713 	mov	a,r6
   0226 C3                  714 	clr	c
   0227 13                  715 	rrc	a
   0228 FA                  716 	mov	r2,a
   0229 A8 08               717 	mov	r0,_bp
   022B 08                  718 	inc	r0
   022C E4                  719 	clr	a
   022D F6                  720 	mov	@r0,a
   022E 08                  721 	inc	r0
   022F F6                  722 	mov	@r0,a
   0230                     723 00108$:
   0230 8A 05               724 	mov	ar5,r2
   0232 7F 00               725 	mov	r7,#0x00
   0234 A8 08               726 	mov	r0,_bp
   0236 08                  727 	inc	r0
   0237 C3                  728 	clr	c
   0238 E6                  729 	mov	a,@r0
   0239 9D                  730 	subb	a,r5
   023A 08                  731 	inc	r0
   023B E6                  732 	mov	a,@r0
   023C 64 80               733 	xrl	a,#0x80
   023E 8F F0               734 	mov	b,r7
   0240 63 F0 80            735 	xrl	b,#0x80
   0243 95 F0               736 	subb	a,b
   0245 40 03               737 	jc	00126$
   0247 02 03 01            738 	ljmp	00111$
   024A                     739 00126$:
   024A C0 02               740 	push	ar2
   024C E5 08               741 	mov	a,_bp
   024E 24 04               742 	add	a,#0x04
   0250 F8                  743 	mov	r0,a
   0251 EE                  744 	mov	a,r6
   0252 26                  745 	add	a,@r0
   0253 FB                  746 	mov	r3,a
   0254 E4                  747 	clr	a
   0255 08                  748 	inc	r0
   0256 36                  749 	addc	a,@r0
   0257 FC                  750 	mov	r4,a
   0258 08                  751 	inc	r0
   0259 86 05               752 	mov	ar5,@r0
   025B E5 08               753 	mov	a,_bp
   025D 24 04               754 	add	a,#0x04
   025F F8                  755 	mov	r0,a
   0260 A9 08               756 	mov	r1,_bp
   0262 09                  757 	inc	r1
   0263 E7                  758 	mov	a,@r1
   0264 26                  759 	add	a,@r0
   0265 C0 E0               760 	push	acc
   0267 09                  761 	inc	r1
   0268 E7                  762 	mov	a,@r1
   0269 08                  763 	inc	r0
   026A 36                  764 	addc	a,@r0
   026B C0 E0               765 	push	acc
   026D 08                  766 	inc	r0
   026E E6                  767 	mov	a,@r0
   026F C0 E0               768 	push	acc
   0271 E5 08               769 	mov	a,_bp
   0273 24 0A               770 	add	a,#0x0a
   0275 F8                  771 	mov	r0,a
   0276 D0 E0               772 	pop	acc
   0278 F6                  773 	mov	@r0,a
   0279 18                  774 	dec	r0
   027A D0 E0               775 	pop	acc
   027C F6                  776 	mov	@r0,a
   027D 18                  777 	dec	r0
   027E D0 E0               778 	pop	acc
   0280 F6                  779 	mov	@r0,a
   0281 E5 08               780 	mov	a,_bp
   0283 24 08               781 	add	a,#0x08
   0285 F8                  782 	mov	r0,a
   0286 86 82               783 	mov	dpl,@r0
   0288 08                  784 	inc	r0
   0289 86 83               785 	mov	dph,@r0
   028B 08                  786 	inc	r0
   028C 86 F0               787 	mov	b,@r0
   028E E5 08               788 	mov	a,_bp
   0290 24 07               789 	add	a,#0x07
   0292 F9                  790 	mov	r1,a
   0293 12 04 F8            791 	lcall	__gptrget
   0296 F7                  792 	mov	@r1,a
   0297 8B 82               793 	mov	dpl,r3
   0299 8C 83               794 	mov	dph,r4
   029B 8D F0               795 	mov	b,r5
   029D E5 08               796 	mov	a,_bp
   029F 24 07               797 	add	a,#0x07
   02A1 F8                  798 	mov	r0,a
   02A2 E6                  799 	mov	a,@r0
   02A3 12 04 DF            800 	lcall	__gptrput
   02A6 8E 07               801 	mov	ar7,r6
   02A8 7D 00               802 	mov	r5,#0x00
   02AA 1F                  803 	dec	r7
   02AB BF FF 01            804 	cjne	r7,#0xff,00127$
   02AE 1D                  805 	dec	r5
   02AF                     806 00127$:
   02AF A8 08               807 	mov	r0,_bp
   02B1 08                  808 	inc	r0
   02B2 EF                  809 	mov	a,r7
   02B3 C3                  810 	clr	c
   02B4 96                  811 	subb	a,@r0
   02B5 FF                  812 	mov	r7,a
   02B6 ED                  813 	mov	a,r5
   02B7 08                  814 	inc	r0
   02B8 96                  815 	subb	a,@r0
   02B9 FD                  816 	mov	r5,a
   02BA E5 08               817 	mov	a,_bp
   02BC 24 04               818 	add	a,#0x04
   02BE F8                  819 	mov	r0,a
   02BF EF                  820 	mov	a,r7
   02C0 26                  821 	add	a,@r0
   02C1 FF                  822 	mov	r7,a
   02C2 ED                  823 	mov	a,r5
   02C3 08                  824 	inc	r0
   02C4 36                  825 	addc	a,@r0
   02C5 FD                  826 	mov	r5,a
   02C6 08                  827 	inc	r0
   02C7 86 02               828 	mov	ar2,@r0
   02C9 8F 82               829 	mov	dpl,r7
   02CB 8D 83               830 	mov	dph,r5
   02CD 8A F0               831 	mov	b,r2
   02CF 12 04 F8            832 	lcall	__gptrget
   02D2 FB                  833 	mov	r3,a
   02D3 E5 08               834 	mov	a,_bp
   02D5 24 08               835 	add	a,#0x08
   02D7 F8                  836 	mov	r0,a
   02D8 86 82               837 	mov	dpl,@r0
   02DA 08                  838 	inc	r0
   02DB 86 83               839 	mov	dph,@r0
   02DD 08                  840 	inc	r0
   02DE 86 F0               841 	mov	b,@r0
   02E0 EB                  842 	mov	a,r3
   02E1 12 04 DF            843 	lcall	__gptrput
   02E4 8F 82               844 	mov	dpl,r7
   02E6 8D 83               845 	mov	dph,r5
   02E8 8A F0               846 	mov	b,r2
   02EA E5 08               847 	mov	a,_bp
   02EC 24 07               848 	add	a,#0x07
   02EE F8                  849 	mov	r0,a
   02EF E6                  850 	mov	a,@r0
   02F0 12 04 DF            851 	lcall	__gptrput
   02F3 A8 08               852 	mov	r0,_bp
   02F5 08                  853 	inc	r0
   02F6 06                  854 	inc	@r0
   02F7 B6 00 02            855 	cjne	@r0,#0x00,00128$
   02FA 08                  856 	inc	r0
   02FB 06                  857 	inc	@r0
   02FC                     858 00128$:
   02FC D0 02               859 	pop	ar2
   02FE 02 02 30            860 	ljmp	00108$
   0301                     861 00111$:
                            862 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:95: p[len]=0;
   0301 E5 08               863 	mov	a,_bp
   0303 24 04               864 	add	a,#0x04
   0305 F8                  865 	mov	r0,a
   0306 EE                  866 	mov	a,r6
   0307 26                  867 	add	a,@r0
   0308 FE                  868 	mov	r6,a
   0309 E4                  869 	clr	a
   030A 08                  870 	inc	r0
   030B 36                  871 	addc	a,@r0
   030C FA                  872 	mov	r2,a
   030D 08                  873 	inc	r0
   030E 86 03               874 	mov	ar3,@r0
   0310 8E 82               875 	mov	dpl,r6
   0312 8A 83               876 	mov	dph,r2
   0314 8B F0               877 	mov	b,r3
   0316 E4                  878 	clr	a
   0317 12 04 DF            879 	lcall	__gptrput
   031A 85 08 81            880 	mov	sp,_bp
   031D D0 08               881 	pop	_bp
   031F 22                  882 	ret
                            883 ;------------------------------------------------------------
                            884 ;Allocation info for local variables in function 'clcd_put_integer'
                            885 ;------------------------------------------------------------
                            886 ;i                         Allocated to registers r2 r3 
                            887 ;s                         Allocated to stack - offset 1
                            888 ;------------------------------------------------------------
                            889 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:98: void clcd_put_integer(int i)
                            890 ;	-----------------------------------------
                            891 ;	 function clcd_put_integer
                            892 ;	-----------------------------------------
   0320                     893 _clcd_put_integer:
   0320 C0 08               894 	push	_bp
   0322 E5 81               895 	mov	a,sp
   0324 F5 08               896 	mov	_bp,a
   0326 24 07               897 	add	a,#0x07
   0328 F5 81               898 	mov	sp,a
   032A AA 82               899 	mov	r2,dpl
   032C AB 83               900 	mov	r3,dph
                            901 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\/clcd.c:101: i2s(i,s);clcd_put_string(s);
   032E AC 08               902 	mov	r4,_bp
   0330 0C                  903 	inc	r4
   0331 8C 05               904 	mov	ar5,r4
   0333 7E 00               905 	mov	r6,#0x00
   0335 7F 40               906 	mov	r7,#0x40
   0337 C0 04               907 	push	ar4
   0339 C0 05               908 	push	ar5
   033B C0 06               909 	push	ar6
   033D C0 07               910 	push	ar7
   033F 8A 82               911 	mov	dpl,r2
   0341 8B 83               912 	mov	dph,r3
   0343 12 01 48            913 	lcall	_i2s
   0346 15 81               914 	dec	sp
   0348 15 81               915 	dec	sp
   034A 15 81               916 	dec	sp
   034C D0 04               917 	pop	ar4
   034E 7A 00               918 	mov	r2,#0x00
   0350 7B 40               919 	mov	r3,#0x40
   0352 8C 82               920 	mov	dpl,r4
   0354 8A 83               921 	mov	dph,r2
   0356 8B F0               922 	mov	b,r3
   0358 12 00 E6            923 	lcall	_clcd_put_string
   035B 85 08 81            924 	mov	sp,_bp
   035E D0 08               925 	pop	_bp
   0360 22                  926 	ret
                            927 ;------------------------------------------------------------
                            928 ;Allocation info for local variables in function 'main'
                            929 ;------------------------------------------------------------
                            930 ;i                         Allocated to registers r4 r5 
                            931 ;j                         Allocated to registers r3 
                            932 ;tmp                       Allocated to registers r4 
                            933 ;msg                       Allocated to stack - offset 1
                            934 ;------------------------------------------------------------
                            935 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\clcd-ex.c:10: void main(void)
                            936 ;	-----------------------------------------
                            937 ;	 function main
                            938 ;	-----------------------------------------
   0361                     939 _main:
   0361 C0 08               940 	push	_bp
   0363 E5 81               941 	mov	a,sp
   0365 F5 08               942 	mov	_bp,a
   0367 24 11               943 	add	a,#0x11
   0369 F5 81               944 	mov	sp,a
                            945 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\clcd-ex.c:15: char msg[17]="Hello, 8051!    ";
   036B A8 08               946 	mov	r0,_bp
   036D 08                  947 	inc	r0
   036E 76 48               948 	mov	@r0,#0x48
   0370 E8                  949 	mov	a,r0
   0371 04                  950 	inc	a
   0372 F9                  951 	mov	r1,a
   0373 77 65               952 	mov	@r1,#0x65
   0375 74 02               953 	mov	a,#0x02
   0377 28                  954 	add	a,r0
   0378 F9                  955 	mov	r1,a
   0379 77 6C               956 	mov	@r1,#0x6C
   037B 74 03               957 	mov	a,#0x03
   037D 28                  958 	add	a,r0
   037E F9                  959 	mov	r1,a
   037F 77 6C               960 	mov	@r1,#0x6C
   0381 74 04               961 	mov	a,#0x04
   0383 28                  962 	add	a,r0
   0384 F9                  963 	mov	r1,a
   0385 77 6F               964 	mov	@r1,#0x6F
   0387 74 05               965 	mov	a,#0x05
   0389 28                  966 	add	a,r0
   038A F9                  967 	mov	r1,a
   038B 77 2C               968 	mov	@r1,#0x2C
   038D 74 06               969 	mov	a,#0x06
   038F 28                  970 	add	a,r0
   0390 F9                  971 	mov	r1,a
   0391 77 20               972 	mov	@r1,#0x20
   0393 74 07               973 	mov	a,#0x07
   0395 28                  974 	add	a,r0
   0396 F9                  975 	mov	r1,a
   0397 77 38               976 	mov	@r1,#0x38
   0399 74 08               977 	mov	a,#0x08
   039B 28                  978 	add	a,r0
   039C F9                  979 	mov	r1,a
   039D 77 30               980 	mov	@r1,#0x30
   039F 74 09               981 	mov	a,#0x09
   03A1 28                  982 	add	a,r0
   03A2 F9                  983 	mov	r1,a
   03A3 77 35               984 	mov	@r1,#0x35
   03A5 74 0A               985 	mov	a,#0x0A
   03A7 28                  986 	add	a,r0
   03A8 F9                  987 	mov	r1,a
   03A9 77 31               988 	mov	@r1,#0x31
   03AB 74 0B               989 	mov	a,#0x0B
   03AD 28                  990 	add	a,r0
   03AE F9                  991 	mov	r1,a
   03AF 77 21               992 	mov	@r1,#0x21
   03B1 74 0C               993 	mov	a,#0x0C
   03B3 28                  994 	add	a,r0
   03B4 F9                  995 	mov	r1,a
   03B5 77 20               996 	mov	@r1,#0x20
   03B7 74 0D               997 	mov	a,#0x0D
   03B9 28                  998 	add	a,r0
   03BA F9                  999 	mov	r1,a
   03BB 77 20              1000 	mov	@r1,#0x20
   03BD 74 0E              1001 	mov	a,#0x0E
   03BF 28                 1002 	add	a,r0
   03C0 F9                 1003 	mov	r1,a
   03C1 77 20              1004 	mov	@r1,#0x20
   03C3 74 0F              1005 	mov	a,#0x0F
   03C5 28                 1006 	add	a,r0
   03C6 F9                 1007 	mov	r1,a
   03C7 77 20              1008 	mov	@r1,#0x20
   03C9 74 10              1009 	mov	a,#0x10
   03CB 28                 1010 	add	a,r0
   03CC C0 00              1011 	push	ar0
   03CE F8                 1012 	mov	r0,a
   03CF 76 00              1013 	mov	@r0,#0x00
                           1014 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\clcd-ex.c:16: clcd_initialize();
   03D1 C0 01              1015 	push	ar1
   03D3 12 00 64           1016 	lcall	_clcd_initialize
                           1017 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\clcd-ex.c:17: clcd_set_cursor(1,0);
   03D6 E4                 1018 	clr	a
   03D7 C0 E0              1019 	push	acc
   03D9 C0 E0              1020 	push	acc
   03DB 90 00 01           1021 	mov	dptr,#0x0001
   03DE 12 00 A8           1022 	lcall	_clcd_set_cursor
   03E1 15 81              1023 	dec	sp
   03E3 15 81              1024 	dec	sp
                           1025 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\clcd-ex.c:18: clcd_put_string("Chin-Shiuh Shieh");
   03E5 90 06 19           1026 	mov	dptr,#__str_1
   03E8 75 F0 80           1027 	mov	b,#0x80
   03EB 12 00 E6           1028 	lcall	_clcd_put_string
   03EE D0 01              1029 	pop	ar1
   03F0 D0 00              1030 	pop	ar0
                           1031 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\clcd-ex.c:19: for(j=0;j<16;j++)
   03F2 88 02              1032 	mov	ar2,r0
   03F4 7B 00              1033 	mov	r3,#0x00
   03F6                    1034 00111$:
   03F6 BB 10 00           1035 	cjne	r3,#0x10,00127$
   03F9                    1036 00127$:
   03F9 40 03              1037 	jc	00128$
   03FB 02 04 7F           1038 	ljmp	00114$
   03FE                    1039 00128$:
                           1040 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\clcd-ex.c:21: clcd_set_cursor(0,0);
   03FE C0 02              1041 	push	ar2
   0400 C0 03              1042 	push	ar3
   0402 C0 00              1043 	push	ar0
   0404 C0 01              1044 	push	ar1
   0406 E4                 1045 	clr	a
   0407 C0 E0              1046 	push	acc
   0409 C0 E0              1047 	push	acc
   040B 90 00 00           1048 	mov	dptr,#0x0000
   040E 12 00 A8           1049 	lcall	_clcd_set_cursor
   0411 15 81              1050 	dec	sp
   0413 15 81              1051 	dec	sp
   0415 D0 01              1052 	pop	ar1
   0417 D0 00              1053 	pop	ar0
   0419 D0 03              1054 	pop	ar3
   041B D0 02              1055 	pop	ar2
                           1056 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\clcd-ex.c:22: clcd_put_string(msg);
   041D 8A 04              1057 	mov	ar4,r2
   041F 7D 00              1058 	mov	r5,#0x00
   0421 7E 40              1059 	mov	r6,#0x40
   0423 8C 82              1060 	mov	dpl,r4
   0425 8D 83              1061 	mov	dph,r5
   0427 8E F0              1062 	mov	b,r6
   0429 C0 02              1063 	push	ar2
   042B C0 03              1064 	push	ar3
   042D C0 00              1065 	push	ar0
   042F C0 01              1066 	push	ar1
   0431 12 00 E6           1067 	lcall	_clcd_put_string
   0434 D0 01              1068 	pop	ar1
   0436 D0 00              1069 	pop	ar0
   0438 D0 03              1070 	pop	ar3
   043A D0 02              1071 	pop	ar2
                           1072 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\clcd-ex.c:23: for(i=-32768;i<32767;i++);
   043C 7C FF              1073 	mov	r4,#0xFF
   043E 7D FF              1074 	mov	r5,#0xFF
   0440                    1075 00106$:
   0440 1C                 1076 	dec	r4
   0441 BC FF 01           1077 	cjne	r4,#0xff,00129$
   0444 1D                 1078 	dec	r5
   0445                    1079 00129$:
   0445 EC                 1080 	mov	a,r4
   0446 4D                 1081 	orl	a,r5
                           1082 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\clcd-ex.c:24: tmp=msg[0];
                           1083 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\clcd-ex.c:25: for(i=1;i<16;i++)
   0447 70 F7              1084 	jnz	00106$
   0449 86 04              1085 	mov	ar4,@r0
   044B 7D 01              1086 	mov	r5,#0x01
   044D FE                 1087 	mov	r6,a
   044E                    1088 00107$:
   044E C3                 1089 	clr	c
   044F ED                 1090 	mov	a,r5
   0450 94 10              1091 	subb	a,#0x10
   0452 EE                 1092 	mov	a,r6
   0453 64 80              1093 	xrl	a,#0x80
   0455 94 80              1094 	subb	a,#0x80
   0457 50 20              1095 	jnc	00110$
                           1096 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\clcd-ex.c:26: msg[i-1]=msg[i];
   0459 C0 04              1097 	push	ar4
   045B 8D 07              1098 	mov	ar7,r5
   045D EF                 1099 	mov	a,r7
   045E 14                 1100 	dec	a
   045F 28                 1101 	add	a,r0
   0460 FF                 1102 	mov	r7,a
   0461 ED                 1103 	mov	a,r5
   0462 28                 1104 	add	a,r0
   0463 FC                 1105 	mov	r4,a
   0464 C0 00              1106 	push	ar0
   0466 A8 04              1107 	mov	r0,ar4
   0468 86 04              1108 	mov	ar4,@r0
   046A A8 07              1109 	mov	r0,ar7
   046C A6 04              1110 	mov	@r0,ar4
   046E D0 00              1111 	pop	ar0
                           1112 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\clcd-ex.c:25: for(i=1;i<16;i++)
   0470 0D                 1113 	inc	r5
   0471 BD 00 01           1114 	cjne	r5,#0x00,00132$
   0474 0E                 1115 	inc	r6
   0475                    1116 00132$:
   0475 D0 04              1117 	pop	ar4
   0477 80 D5              1118 	sjmp	00107$
   0479                    1119 00110$:
                           1120 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\clcd-ex.c:27: msg[15]=tmp;
   0479 A7 04              1121 	mov	@r1,ar4
                           1122 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\clcd-ex.c:19: for(j=0;j<16;j++)
   047B 0B                 1123 	inc	r3
   047C 02 03 F6           1124 	ljmp	00111$
   047F                    1125 00114$:
                           1126 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\clcd-ex.c:29: clcd_cls();
   047F C0 00              1127 	push	ar0
   0481 12 00 A2           1128 	lcall	_clcd_cls
                           1129 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\clcd-ex.c:30: clcd_set_cursor(0,0);
   0484 E4                 1130 	clr	a
   0485 C0 E0              1131 	push	acc
   0487 C0 E0              1132 	push	acc
   0489 90 00 00           1133 	mov	dptr,#0x0000
   048C 12 00 A8           1134 	lcall	_clcd_set_cursor
   048F 15 81              1135 	dec	sp
   0491 15 81              1136 	dec	sp
   0493 D0 00              1137 	pop	ar0
                           1138 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\clcd-ex.c:31: clcd_put_string(msg);
   0495 88 02              1139 	mov	ar2,r0
   0497 7B 00              1140 	mov	r3,#0x00
   0499 7C 40              1141 	mov	r4,#0x40
   049B 8A 82              1142 	mov	dpl,r2
   049D 8B 83              1143 	mov	dph,r3
   049F 8C F0              1144 	mov	b,r4
   04A1 12 00 E6           1145 	lcall	_clcd_put_string
                           1146 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\clcd-ex.c:32: clcd_set_cursor(1,0);
   04A4 E4                 1147 	clr	a
   04A5 C0 E0              1148 	push	acc
   04A7 C0 E0              1149 	push	acc
   04A9 90 00 01           1150 	mov	dptr,#0x0001
   04AC 12 00 A8           1151 	lcall	_clcd_set_cursor
   04AF 15 81              1152 	dec	sp
   04B1 15 81              1153 	dec	sp
                           1154 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\clcd-ex.c:33: clcd_put_byte(12);clcd_put_string("h * ");clcd_put_byte(34);clcd_put_string("h = ");clcd_put_integer(12*34);
   04B3 75 82 0C           1155 	mov	dpl,#0x0C
   04B6 12 01 11           1156 	lcall	_clcd_put_byte
   04B9 90 06 2A           1157 	mov	dptr,#__str_2
   04BC 75 F0 80           1158 	mov	b,#0x80
   04BF 12 00 E6           1159 	lcall	_clcd_put_string
   04C2 75 82 22           1160 	mov	dpl,#0x22
   04C5 12 01 11           1161 	lcall	_clcd_put_byte
   04C8 90 06 2F           1162 	mov	dptr,#__str_3
   04CB 75 F0 80           1163 	mov	b,#0x80
   04CE 12 00 E6           1164 	lcall	_clcd_put_string
   04D1 90 01 98           1165 	mov	dptr,#0x0198
   04D4 12 03 20           1166 	lcall	_clcd_put_integer
                           1167 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW16\clcd-ex.c:34: while(1==1);
   04D7                    1168 00102$:
   04D7 80 FE              1169 	sjmp	00102$
   04D9 85 08 81           1170 	mov	sp,_bp
   04DC D0 08              1171 	pop	_bp
   04DE 22                 1172 	ret
                           1173 	.area CSEG    (CODE)
                           1174 	.area CONST   (CODE)
   0608                    1175 _ASCII:
   0608 30 31 32 33 34 35  1176 	.ascii "0123456789ABCDEF"
        36 37 38 39 41 42
        43 44 45 46
   0618 00                 1177 	.db 0x00
   0619                    1178 __str_1:
   0619 43 68 69 6E 2D 53  1179 	.ascii "Chin-Shiuh Shieh"
        68 69 75 68 20 53
        68 69 65 68
   0629 00                 1180 	.db 0x00
   062A                    1181 __str_2:
   062A 68 20 2A 20        1182 	.ascii "h * "
   062E 00                 1183 	.db 0x00
   062F                    1184 __str_3:
   062F 68 20 3D 20        1185 	.ascii "h = "
   0633 00                 1186 	.db 0x00
                           1187 	.area XINIT   (CODE)
                           1188 	.area CABS    (ABS,CODE)
