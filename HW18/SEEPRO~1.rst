                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
                              4 ; This file was generated Mon Dec 26 11:19:12 2022
                              5 ;--------------------------------------------------------
                              6 	.module SEEPRO_1
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _uart_ASCII
                             13 	.globl _ASCII
                             14 	.globl _main
                             15 	.globl _ACC_7
                             16 	.globl _CY
                             17 	.globl _AC
                             18 	.globl _F0
                             19 	.globl _RS1
                             20 	.globl _RS0
                             21 	.globl _OV
                             22 	.globl _FL
                             23 	.globl _P
                             24 	.globl _PS
                             25 	.globl _PT1
                             26 	.globl _PX1
                             27 	.globl _PT0
                             28 	.globl _PX0
                             29 	.globl _RD
                             30 	.globl _WR
                             31 	.globl _T1
                             32 	.globl _T0
                             33 	.globl _INT1
                             34 	.globl _INT0
                             35 	.globl _TXD
                             36 	.globl _RXD
                             37 	.globl _P3_7
                             38 	.globl _P3_6
                             39 	.globl _P3_5
                             40 	.globl _P3_4
                             41 	.globl _P3_3
                             42 	.globl _P3_2
                             43 	.globl _P3_1
                             44 	.globl _P3_0
                             45 	.globl _EA
                             46 	.globl _ES
                             47 	.globl _ET1
                             48 	.globl _EX1
                             49 	.globl _ET0
                             50 	.globl _EX0
                             51 	.globl _P2_7
                             52 	.globl _P2_6
                             53 	.globl _P2_5
                             54 	.globl _P2_4
                             55 	.globl _P2_3
                             56 	.globl _P2_2
                             57 	.globl _P2_1
                             58 	.globl _P2_0
                             59 	.globl _SM0
                             60 	.globl _SM1
                             61 	.globl _SM2
                             62 	.globl _REN
                             63 	.globl _TB8
                             64 	.globl _RB8
                             65 	.globl _TI
                             66 	.globl _RI
                             67 	.globl _P1_7
                             68 	.globl _P1_6
                             69 	.globl _P1_5
                             70 	.globl _P1_4
                             71 	.globl _P1_3
                             72 	.globl _P1_2
                             73 	.globl _P1_1
                             74 	.globl _P1_0
                             75 	.globl _TF1
                             76 	.globl _TR1
                             77 	.globl _TF0
                             78 	.globl _TR0
                             79 	.globl _IE1
                             80 	.globl _IT1
                             81 	.globl _IE0
                             82 	.globl _IT0
                             83 	.globl _P0_7
                             84 	.globl _P0_6
                             85 	.globl _P0_5
                             86 	.globl _P0_4
                             87 	.globl _P0_3
                             88 	.globl _P0_2
                             89 	.globl _P0_1
                             90 	.globl _P0_0
                             91 	.globl _F1
                             92 	.globl _B
                             93 	.globl _A
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
                            125 	.globl _i2c_start
                            126 	.globl _i2c_stop
                            127 	.globl _i2c_shift_out
                            128 	.globl _i2c_shift_in
                            129 	.globl _seeprom_write_byte
                            130 	.globl _seeprom_read_byte
                            131 	.globl _uart_initialize
                            132 	.globl _uart_put_char
                            133 	.globl _uart_get_char
                            134 	.globl _uart_get_char_echo
                            135 	.globl _uart_put_string
                            136 	.globl _uart_get_string
                            137 	.globl _uart_i2s
                            138 	.globl _uart_s2i
                            139 	.globl _uart_put_integer
                            140 	.globl _uart_get_integer
                            141 	.globl _uart_put_byte
                            142 	.globl _uart_put_word
                            143 	.globl _uart_get_nibble
                            144 	.globl _uart_get_byte
                            145 	.globl _uart_get_word
                            146 	.globl _delay
                            147 ;--------------------------------------------------------
                            148 ; special function registers
                            149 ;--------------------------------------------------------
                            150 	.area RSEG    (ABS,DATA)
   0000                     151 	.org 0x0000
                    0080    152 _P0	=	0x0080
                    0081    153 _SP	=	0x0081
                    0082    154 _DPL	=	0x0082
                    0083    155 _DPH	=	0x0083
                    0087    156 _PCON	=	0x0087
                    0088    157 _TCON	=	0x0088
                    0089    158 _TMOD	=	0x0089
                    008A    159 _TL0	=	0x008a
                    008B    160 _TL1	=	0x008b
                    008C    161 _TH0	=	0x008c
                    008D    162 _TH1	=	0x008d
                    0090    163 _P1	=	0x0090
                    0098    164 _SCON	=	0x0098
                    0099    165 _SBUF	=	0x0099
                    00A0    166 _P2	=	0x00a0
                    00A8    167 _IE	=	0x00a8
                    00B0    168 _P3	=	0x00b0
                    00B8    169 _IP	=	0x00b8
                    00D0    170 _PSW	=	0x00d0
                    00E0    171 _ACC	=	0x00e0
                    00E0    172 _A	=	0x00e0
                    00F0    173 _B	=	0x00f0
                            174 ;--------------------------------------------------------
                            175 ; special function bits
                            176 ;--------------------------------------------------------
                            177 	.area RSEG    (ABS,DATA)
   0000                     178 	.org 0x0000
                    00D1    179 _F1	=	0x00d1
                    0080    180 _P0_0	=	0x0080
                    0081    181 _P0_1	=	0x0081
                    0082    182 _P0_2	=	0x0082
                    0083    183 _P0_3	=	0x0083
                    0084    184 _P0_4	=	0x0084
                    0085    185 _P0_5	=	0x0085
                    0086    186 _P0_6	=	0x0086
                    0087    187 _P0_7	=	0x0087
                    0088    188 _IT0	=	0x0088
                    0089    189 _IE0	=	0x0089
                    008A    190 _IT1	=	0x008a
                    008B    191 _IE1	=	0x008b
                    008C    192 _TR0	=	0x008c
                    008D    193 _TF0	=	0x008d
                    008E    194 _TR1	=	0x008e
                    008F    195 _TF1	=	0x008f
                    0090    196 _P1_0	=	0x0090
                    0091    197 _P1_1	=	0x0091
                    0092    198 _P1_2	=	0x0092
                    0093    199 _P1_3	=	0x0093
                    0094    200 _P1_4	=	0x0094
                    0095    201 _P1_5	=	0x0095
                    0096    202 _P1_6	=	0x0096
                    0097    203 _P1_7	=	0x0097
                    0098    204 _RI	=	0x0098
                    0099    205 _TI	=	0x0099
                    009A    206 _RB8	=	0x009a
                    009B    207 _TB8	=	0x009b
                    009C    208 _REN	=	0x009c
                    009D    209 _SM2	=	0x009d
                    009E    210 _SM1	=	0x009e
                    009F    211 _SM0	=	0x009f
                    00A0    212 _P2_0	=	0x00a0
                    00A1    213 _P2_1	=	0x00a1
                    00A2    214 _P2_2	=	0x00a2
                    00A3    215 _P2_3	=	0x00a3
                    00A4    216 _P2_4	=	0x00a4
                    00A5    217 _P2_5	=	0x00a5
                    00A6    218 _P2_6	=	0x00a6
                    00A7    219 _P2_7	=	0x00a7
                    00A8    220 _EX0	=	0x00a8
                    00A9    221 _ET0	=	0x00a9
                    00AA    222 _EX1	=	0x00aa
                    00AB    223 _ET1	=	0x00ab
                    00AC    224 _ES	=	0x00ac
                    00AF    225 _EA	=	0x00af
                    00B0    226 _P3_0	=	0x00b0
                    00B1    227 _P3_1	=	0x00b1
                    00B2    228 _P3_2	=	0x00b2
                    00B3    229 _P3_3	=	0x00b3
                    00B4    230 _P3_4	=	0x00b4
                    00B5    231 _P3_5	=	0x00b5
                    00B6    232 _P3_6	=	0x00b6
                    00B7    233 _P3_7	=	0x00b7
                    00B0    234 _RXD	=	0x00b0
                    00B1    235 _TXD	=	0x00b1
                    00B2    236 _INT0	=	0x00b2
                    00B3    237 _INT1	=	0x00b3
                    00B4    238 _T0	=	0x00b4
                    00B5    239 _T1	=	0x00b5
                    00B6    240 _WR	=	0x00b6
                    00B7    241 _RD	=	0x00b7
                    00B8    242 _PX0	=	0x00b8
                    00B9    243 _PT0	=	0x00b9
                    00BA    244 _PX1	=	0x00ba
                    00BB    245 _PT1	=	0x00bb
                    00BC    246 _PS	=	0x00bc
                    00D0    247 _P	=	0x00d0
                    00D1    248 _FL	=	0x00d1
                    00D2    249 _OV	=	0x00d2
                    00D3    250 _RS0	=	0x00d3
                    00D4    251 _RS1	=	0x00d4
                    00D5    252 _F0	=	0x00d5
                    00D6    253 _AC	=	0x00d6
                    00D7    254 _CY	=	0x00d7
                    00E7    255 _ACC_7	=	0x00e7
                            256 ;--------------------------------------------------------
                            257 ; overlayable register banks
                            258 ;--------------------------------------------------------
                            259 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     260 	.ds 8
                            261 ;--------------------------------------------------------
                            262 ; internal ram data
                            263 ;--------------------------------------------------------
                            264 	.area DSEG    (DATA)
                            265 ;--------------------------------------------------------
                            266 ; overlayable items in internal ram 
                            267 ;--------------------------------------------------------
                            268 	.area OSEG    (OVR,DATA)
                            269 ;--------------------------------------------------------
                            270 ; Stack segment in internal ram 
                            271 ;--------------------------------------------------------
                            272 	.area	SSEG	(DATA)
   0009                     273 __start__stack:
   0009                     274 	.ds	1
                            275 
                            276 ;--------------------------------------------------------
                            277 ; indirectly addressable internal ram data
                            278 ;--------------------------------------------------------
                            279 	.area ISEG    (DATA)
                            280 ;--------------------------------------------------------
                            281 ; absolute internal ram data
                            282 ;--------------------------------------------------------
                            283 	.area IABS    (ABS,DATA)
                            284 	.area IABS    (ABS,DATA)
                            285 ;--------------------------------------------------------
                            286 ; bit data
                            287 ;--------------------------------------------------------
                            288 	.area BSEG    (BIT)
                            289 ;--------------------------------------------------------
                            290 ; paged external ram data
                            291 ;--------------------------------------------------------
                            292 	.area PSEG    (PAG,XDATA)
                            293 ;--------------------------------------------------------
                            294 ; external ram data
                            295 ;--------------------------------------------------------
                            296 	.area XSEG    (XDATA)
                            297 ;--------------------------------------------------------
                            298 ; absolute external ram data
                            299 ;--------------------------------------------------------
                            300 	.area XABS    (ABS,XDATA)
                            301 ;--------------------------------------------------------
                            302 ; external initialized ram data
                            303 ;--------------------------------------------------------
                            304 	.area XISEG   (XDATA)
                            305 	.area HOME    (CODE)
                            306 	.area GSINIT0 (CODE)
                            307 	.area GSINIT1 (CODE)
                            308 	.area GSINIT2 (CODE)
                            309 	.area GSINIT3 (CODE)
                            310 	.area GSINIT4 (CODE)
                            311 	.area GSINIT5 (CODE)
                            312 	.area GSINIT  (CODE)
                            313 	.area GSFINAL (CODE)
                            314 	.area CSEG    (CODE)
                            315 ;--------------------------------------------------------
                            316 ; interrupt vector 
                            317 ;--------------------------------------------------------
                            318 	.area HOME    (CODE)
   0000                     319 __interrupt_vect:
   0000 02 00 08            320 	ljmp	__sdcc_gsinit_startup
                            321 ;--------------------------------------------------------
                            322 ; global & static initialisations
                            323 ;--------------------------------------------------------
                            324 	.area HOME    (CODE)
                            325 	.area GSINIT  (CODE)
                            326 	.area GSFINAL (CODE)
                            327 	.area GSINIT  (CODE)
                            328 	.globl __sdcc_gsinit_startup
                            329 	.globl __sdcc_program_startup
                            330 	.globl __start__stack
                            331 	.globl __mcs51_genXINIT
                            332 	.globl __mcs51_genXRAMCLEAR
                            333 	.globl __mcs51_genRAMCLEAR
                            334 	.area GSFINAL (CODE)
   0061 02 00 03            335 	ljmp	__sdcc_program_startup
                            336 ;--------------------------------------------------------
                            337 ; Home
                            338 ;--------------------------------------------------------
                            339 	.area HOME    (CODE)
                            340 	.area HOME    (CODE)
   0003                     341 __sdcc_program_startup:
   0003 12 0A CD            342 	lcall	_main
                            343 ;	return from main will lock up
   0006 80 FE               344 	sjmp .
                            345 ;--------------------------------------------------------
                            346 ; code
                            347 ;--------------------------------------------------------
                            348 	.area CSEG    (CODE)
                            349 ;------------------------------------------------------------
                            350 ;Allocation info for local variables in function 'clcd_initialize'
                            351 ;------------------------------------------------------------
                            352 ;------------------------------------------------------------
                            353 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:25: void clcd_initialize(void) {
                            354 ;	-----------------------------------------
                            355 ;	 function clcd_initialize
                            356 ;	-----------------------------------------
   0064                     357 _clcd_initialize:
                    0002    358 	ar2 = 0x02
                    0003    359 	ar3 = 0x03
                    0004    360 	ar4 = 0x04
                    0005    361 	ar5 = 0x05
                    0006    362 	ar6 = 0x06
                    0007    363 	ar7 = 0x07
                    0000    364 	ar0 = 0x00
                    0001    365 	ar1 = 0x01
                            366 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:26: clcd_write_instruction(0x38);  // 8-bit interface, 2 lines, 5x7 dots
   0064 75 82 38            367 	mov	dpl,#0x38
   0067 12 00 7C            368 	lcall	_clcd_write_instruction
                            369 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:27: clcd_write_instruction(0x0F);  // display on, cursor on, cursor blinking
   006A 75 82 0F            370 	mov	dpl,#0x0F
   006D 12 00 7C            371 	lcall	_clcd_write_instruction
                            372 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:28: clcd_write_instruction(0x06);  // move cursor right when read/write
   0070 75 82 06            373 	mov	dpl,#0x06
   0073 12 00 7C            374 	lcall	_clcd_write_instruction
                            375 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:29: clcd_write_instruction(0x01);  // clear display, cursor home
   0076 75 82 01            376 	mov	dpl,#0x01
   0079 02 00 7C            377 	ljmp	_clcd_write_instruction
                            378 ;------------------------------------------------------------
                            379 ;Allocation info for local variables in function 'clcd_write_instruction'
                            380 ;------------------------------------------------------------
                            381 ;instruction               Allocated to registers r2 
                            382 ;------------------------------------------------------------
                            383 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:32: void clcd_write_instruction(unsigned char instruction) {
                            384 ;	-----------------------------------------
                            385 ;	 function clcd_write_instruction
                            386 ;	-----------------------------------------
   007C                     387 _clcd_write_instruction:
   007C AA 82               388 	mov	r2,dpl
                            389 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:33: clcd_wait();
   007E C0 02               390 	push	ar2
   0080 12 00 90            391 	lcall	_clcd_wait
   0083 D0 02               392 	pop	ar2
                            393 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:34: CLCD_RS = 0;
   0085 C2 A0               394 	clr	_P2_0
                            395 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:35: CLCD_RW = 0;
   0087 C2 A1               396 	clr	_P2_1
                            397 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:36: CLCD_DB = instruction;
   0089 8A 90               398 	mov	_P1,r2
                            399 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:37: CLCD_E = 1;
   008B D2 A2               400 	setb	_P2_2
                            401 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:38: CLCD_E = 0;
   008D C2 A2               402 	clr	_P2_2
   008F 22                  403 	ret
                            404 ;------------------------------------------------------------
                            405 ;Allocation info for local variables in function 'clcd_wait'
                            406 ;------------------------------------------------------------
                            407 ;------------------------------------------------------------
                            408 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:41: void clcd_wait(void) {
                            409 ;	-----------------------------------------
                            410 ;	 function clcd_wait
                            411 ;	-----------------------------------------
   0090                     412 _clcd_wait:
                            413 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:42: CLCD_DB = 0xFF;
   0090 75 90 FF            414 	mov	_P1,#0xFF
                            415 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:43: CLCD_RS = 0;
   0093 C2 A0               416 	clr	_P2_0
                            417 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:44: CLCD_RW = 1;
   0095 D2 A1               418 	setb	_P2_1
                            419 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:45: do {
   0097                     420 00101$:
                            421 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:46: CLCD_E = 1;
   0097 D2 A2               422 	setb	_P2_2
                            423 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:47: ACC = CLCD_DB;
   0099 85 90 E0            424 	mov	_ACC,_P1
                            425 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:48: CLCD_E = 0;
   009C C2 A2               426 	clr	_P2_2
   009E 20 E7 F6            427 	jb	_ACC_7,00101$
   00A1 22                  428 	ret
                            429 ;------------------------------------------------------------
                            430 ;Allocation info for local variables in function 'clcd_cls'
                            431 ;------------------------------------------------------------
                            432 ;------------------------------------------------------------
                            433 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:52: void clcd_cls(void) {
                            434 ;	-----------------------------------------
                            435 ;	 function clcd_cls
                            436 ;	-----------------------------------------
   00A2                     437 _clcd_cls:
                            438 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:53: clcd_write_instruction(0x01);
   00A2 75 82 01            439 	mov	dpl,#0x01
   00A5 02 00 7C            440 	ljmp	_clcd_write_instruction
                            441 ;------------------------------------------------------------
                            442 ;Allocation info for local variables in function 'clcd_set_cursor'
                            443 ;------------------------------------------------------------
                            444 ;column                    Allocated to stack - offset -4
                            445 ;row                       Allocated to registers r2 r3 
                            446 ;instruction               Allocated to registers r4 r5 
                            447 ;------------------------------------------------------------
                            448 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:56: void clcd_set_cursor(unsigned int row, unsigned int column) {
                            449 ;	-----------------------------------------
                            450 ;	 function clcd_set_cursor
                            451 ;	-----------------------------------------
   00A8                     452 _clcd_set_cursor:
   00A8 C0 08               453 	push	_bp
   00AA 85 81 08            454 	mov	_bp,sp
   00AD AA 82               455 	mov	r2,dpl
   00AF AB 83               456 	mov	r3,dph
                            457 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:57: unsigned int instruction = 0x80;
   00B1 7C 80               458 	mov	r4,#0x80
   00B3 7D 00               459 	mov	r5,#0x00
                            460 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:58: if (row == 1)
   00B5 BA 01 07            461 	cjne	r2,#0x01,00102$
   00B8 BB 00 04            462 	cjne	r3,#0x00,00102$
                            463 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:59: instruction += 0x40;
   00BB 7C C0               464 	mov	r4,#0xC0
   00BD 7D 00               465 	mov	r5,#0x00
   00BF                     466 00102$:
                            467 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:60: instruction += column;
   00BF E5 08               468 	mov	a,_bp
   00C1 24 FC               469 	add	a,#0xfc
   00C3 F8                  470 	mov	r0,a
   00C4 E6                  471 	mov	a,@r0
   00C5 2C                  472 	add	a,r4
   00C6 FC                  473 	mov	r4,a
   00C7 08                  474 	inc	r0
   00C8 E6                  475 	mov	a,@r0
   00C9 3D                  476 	addc	a,r5
                            477 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:61: clcd_write_instruction(instruction);
   00CA 8C 82               478 	mov	dpl,r4
   00CC 12 00 7C            479 	lcall	_clcd_write_instruction
   00CF D0 08               480 	pop	_bp
   00D1 22                  481 	ret
                            482 ;------------------------------------------------------------
                            483 ;Allocation info for local variables in function 'clcd_put_char'
                            484 ;------------------------------------------------------------
                            485 ;c                         Allocated to registers r2 
                            486 ;------------------------------------------------------------
                            487 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:64: void clcd_put_char(char c) {
                            488 ;	-----------------------------------------
                            489 ;	 function clcd_put_char
                            490 ;	-----------------------------------------
   00D2                     491 _clcd_put_char:
   00D2 AA 82               492 	mov	r2,dpl
                            493 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:65: clcd_wait();
   00D4 C0 02               494 	push	ar2
   00D6 12 00 90            495 	lcall	_clcd_wait
   00D9 D0 02               496 	pop	ar2
                            497 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:66: CLCD_RS = 1;
   00DB D2 A0               498 	setb	_P2_0
                            499 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:67: CLCD_RW = 0;
   00DD C2 A1               500 	clr	_P2_1
                            501 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:68: CLCD_DB = c;
   00DF 8A 90               502 	mov	_P1,r2
                            503 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:69: CLCD_E = 1;
   00E1 D2 A2               504 	setb	_P2_2
                            505 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:70: CLCD_E = 0;
   00E3 C2 A2               506 	clr	_P2_2
   00E5 22                  507 	ret
                            508 ;------------------------------------------------------------
                            509 ;Allocation info for local variables in function 'clcd_put_string'
                            510 ;------------------------------------------------------------
                            511 ;s                         Allocated to registers r2 r3 r4 
                            512 ;------------------------------------------------------------
                            513 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:73: void clcd_put_string(char* s) {
                            514 ;	-----------------------------------------
                            515 ;	 function clcd_put_string
                            516 ;	-----------------------------------------
   00E6                     517 _clcd_put_string:
   00E6 AA 82               518 	mov	r2,dpl
   00E8 AB 83               519 	mov	r3,dph
   00EA AC F0               520 	mov	r4,b
                            521 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:74: while (*s != 0) {
   00EC                     522 00101$:
   00EC 8A 82               523 	mov	dpl,r2
   00EE 8B 83               524 	mov	dph,r3
   00F0 8C F0               525 	mov	b,r4
   00F2 12 0C CC            526 	lcall	__gptrget
   00F5 FD                  527 	mov	r5,a
   00F6 60 18               528 	jz	00104$
                            529 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:75: clcd_put_char(*s);
   00F8 8D 82               530 	mov	dpl,r5
   00FA C0 02               531 	push	ar2
   00FC C0 03               532 	push	ar3
   00FE C0 04               533 	push	ar4
   0100 12 00 D2            534 	lcall	_clcd_put_char
   0103 D0 04               535 	pop	ar4
   0105 D0 03               536 	pop	ar3
   0107 D0 02               537 	pop	ar2
                            538 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:76: s++;
   0109 0A                  539 	inc	r2
   010A BA 00 DF            540 	cjne	r2,#0x00,00101$
   010D 0B                  541 	inc	r3
   010E 80 DC               542 	sjmp	00101$
   0110                     543 00104$:
   0110 22                  544 	ret
                            545 ;------------------------------------------------------------
                            546 ;Allocation info for local variables in function 'clcd_put_byte'
                            547 ;------------------------------------------------------------
                            548 ;byte_data                 Allocated to registers r2 
                            549 ;------------------------------------------------------------
                            550 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:80: void clcd_put_byte(unsigned char byte_data) {
                            551 ;	-----------------------------------------
                            552 ;	 function clcd_put_byte
                            553 ;	-----------------------------------------
   0111                     554 _clcd_put_byte:
                            555 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:81: clcd_put_char(ASCII[byte_data / 16]);
   0111 E5 82               556 	mov	a,dpl
   0113 FA                  557 	mov	r2,a
   0114 C4                  558 	swap	a
   0115 54 0F               559 	anl	a,#0x0f
   0117 90 0D DC            560 	mov	dptr,#_ASCII
   011A 93                  561 	movc	a,@a+dptr
   011B F5 82               562 	mov	dpl,a
   011D C0 02               563 	push	ar2
   011F 12 00 D2            564 	lcall	_clcd_put_char
   0122 D0 02               565 	pop	ar2
                            566 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:82: clcd_put_char(ASCII[byte_data % 16]);
   0124 74 0F               567 	mov	a,#0x0F
   0126 5A                  568 	anl	a,r2
   0127 90 0D DC            569 	mov	dptr,#_ASCII
   012A 93                  570 	movc	a,@a+dptr
   012B F5 82               571 	mov	dpl,a
   012D 02 00 D2            572 	ljmp	_clcd_put_char
                            573 ;------------------------------------------------------------
                            574 ;Allocation info for local variables in function 'clcd_put_word'
                            575 ;------------------------------------------------------------
                            576 ;word_data                 Allocated to registers r2 r3 
                            577 ;------------------------------------------------------------
                            578 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:85: void clcd_put_word(unsigned int word_data) {
                            579 ;	-----------------------------------------
                            580 ;	 function clcd_put_word
                            581 ;	-----------------------------------------
   0130                     582 _clcd_put_word:
   0130 AA 82               583 	mov	r2,dpl
   0132 AB 83               584 	mov	r3,dph
                            585 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:86: clcd_put_byte(word_data / 256);
   0134 8B 04               586 	mov	ar4,r3
   0136 8C 82               587 	mov	dpl,r4
   0138 C0 02               588 	push	ar2
   013A C0 03               589 	push	ar3
   013C 12 01 11            590 	lcall	_clcd_put_byte
   013F D0 03               591 	pop	ar3
   0141 D0 02               592 	pop	ar2
                            593 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:87: clcd_put_byte(word_data % 256);
   0143 8A 82               594 	mov	dpl,r2
   0145 02 01 11            595 	ljmp	_clcd_put_byte
                            596 ;------------------------------------------------------------
                            597 ;Allocation info for local variables in function 'i2s'
                            598 ;------------------------------------------------------------
                            599 ;s                         Allocated to stack - offset -5
                            600 ;i                         Allocated to stack - offset 1
                            601 ;sign                      Allocated to stack - offset 3
                            602 ;len                       Allocated to registers r6 
                            603 ;p                         Allocated to stack - offset 4
                            604 ;sloc0                     Allocated to stack - offset 8
                            605 ;sloc1                     Allocated to stack - offset 7
                            606 ;sloc2                     Allocated to stack - offset 8
                            607 ;------------------------------------------------------------
                            608 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:90: void i2s(int i, char* s) {
                            609 ;	-----------------------------------------
                            610 ;	 function i2s
                            611 ;	-----------------------------------------
   0148                     612 _i2s:
   0148 C0 08               613 	push	_bp
   014A 85 81 08            614 	mov	_bp,sp
   014D C0 82               615 	push	dpl
   014F C0 83               616 	push	dph
   0151 E5 81               617 	mov	a,sp
   0153 24 0A               618 	add	a,#0x0a
   0155 F5 81               619 	mov	sp,a
                            620 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:94: sign = '+';
   0157 E5 08               621 	mov	a,_bp
   0159 24 03               622 	add	a,#0x03
   015B F8                  623 	mov	r0,a
   015C 76 2B               624 	mov	@r0,#0x2B
                            625 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:96: p = s;
   015E E5 08               626 	mov	a,_bp
   0160 24 FB               627 	add	a,#0xfb
   0162 F8                  628 	mov	r0,a
   0163 E5 08               629 	mov	a,_bp
   0165 24 04               630 	add	a,#0x04
   0167 F9                  631 	mov	r1,a
   0168 E6                  632 	mov	a,@r0
   0169 F7                  633 	mov	@r1,a
   016A 08                  634 	inc	r0
   016B 09                  635 	inc	r1
   016C E6                  636 	mov	a,@r0
   016D F7                  637 	mov	@r1,a
   016E 08                  638 	inc	r0
   016F 09                  639 	inc	r1
   0170 E6                  640 	mov	a,@r0
   0171 F7                  641 	mov	@r1,a
                            642 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:97: if (i < 0) {
   0172 A8 08               643 	mov	r0,_bp
   0174 08                  644 	inc	r0
   0175 08                  645 	inc	r0
   0176 E6                  646 	mov	a,@r0
   0177 30 E7 12            647 	jnb	acc.7,00115$
                            648 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:98: sign = '-';
   017A E5 08               649 	mov	a,_bp
   017C 24 03               650 	add	a,#0x03
   017E F8                  651 	mov	r0,a
   017F 76 2D               652 	mov	@r0,#0x2D
                            653 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:99: i = -i;
   0181 A8 08               654 	mov	r0,_bp
   0183 08                  655 	inc	r0
   0184 C3                  656 	clr	c
   0185 E4                  657 	clr	a
   0186 96                  658 	subb	a,@r0
   0187 F6                  659 	mov	@r0,a
   0188 08                  660 	inc	r0
   0189 E4                  661 	clr	a
   018A 96                  662 	subb	a,@r0
   018B F6                  663 	mov	@r0,a
                            664 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:101: do {
   018C                     665 00115$:
   018C E5 08               666 	mov	a,_bp
   018E 24 04               667 	add	a,#0x04
   0190 F8                  668 	mov	r0,a
   0191 86 04               669 	mov	ar4,@r0
   0193 08                  670 	inc	r0
   0194 86 02               671 	mov	ar2,@r0
   0196 08                  672 	inc	r0
   0197 86 03               673 	mov	ar3,@r0
   0199 7D 00               674 	mov	r5,#0x00
   019B                     675 00103$:
                            676 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:102: *s = (i % 10) + '0';
   019B C0 02               677 	push	ar2
   019D C0 03               678 	push	ar3
   019F C0 04               679 	push	ar4
   01A1 C0 05               680 	push	ar5
   01A3 74 0A               681 	mov	a,#0x0A
   01A5 C0 E0               682 	push	acc
   01A7 E4                  683 	clr	a
   01A8 C0 E0               684 	push	acc
   01AA A8 08               685 	mov	r0,_bp
   01AC 08                  686 	inc	r0
   01AD 86 82               687 	mov	dpl,@r0
   01AF 08                  688 	inc	r0
   01B0 86 83               689 	mov	dph,@r0
   01B2 12 0C E8            690 	lcall	__modsint
   01B5 AE 82               691 	mov	r6,dpl
   01B7 15 81               692 	dec	sp
   01B9 15 81               693 	dec	sp
   01BB D0 05               694 	pop	ar5
   01BD D0 04               695 	pop	ar4
   01BF D0 03               696 	pop	ar3
   01C1 D0 02               697 	pop	ar2
   01C3 74 30               698 	mov	a,#0x30
   01C5 2E                  699 	add	a,r6
   01C6 8C 82               700 	mov	dpl,r4
   01C8 8A 83               701 	mov	dph,r2
   01CA 8B F0               702 	mov	b,r3
   01CC 12 0C 91            703 	lcall	__gptrput
   01CF A3                  704 	inc	dptr
   01D0 AC 82               705 	mov	r4,dpl
   01D2 AA 83               706 	mov	r2,dph
                            707 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:103: s++;
                            708 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:104: len++;
   01D4 0D                  709 	inc	r5
   01D5 8D 06               710 	mov	ar6,r5
                            711 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:105: i /= 10;
   01D7 C0 02               712 	push	ar2
   01D9 C0 03               713 	push	ar3
   01DB C0 04               714 	push	ar4
   01DD C0 05               715 	push	ar5
   01DF 74 0A               716 	mov	a,#0x0A
   01E1 C0 E0               717 	push	acc
   01E3 E4                  718 	clr	a
   01E4 C0 E0               719 	push	acc
   01E6 A8 08               720 	mov	r0,_bp
   01E8 08                  721 	inc	r0
   01E9 86 82               722 	mov	dpl,@r0
   01EB 08                  723 	inc	r0
   01EC 86 83               724 	mov	dph,@r0
   01EE 12 0D 25            725 	lcall	__divsint
   01F1 A8 08               726 	mov	r0,_bp
   01F3 08                  727 	inc	r0
   01F4 A6 82               728 	mov	@r0,dpl
   01F6 08                  729 	inc	r0
   01F7 A6 83               730 	mov	@r0,dph
   01F9 15 81               731 	dec	sp
   01FB 15 81               732 	dec	sp
   01FD D0 05               733 	pop	ar5
   01FF D0 04               734 	pop	ar4
   0201 D0 03               735 	pop	ar3
   0203 D0 02               736 	pop	ar2
                            737 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:106: } while (i != 0);
   0205 A8 08               738 	mov	r0,_bp
   0207 08                  739 	inc	r0
   0208 E6                  740 	mov	a,@r0
   0209 08                  741 	inc	r0
   020A 46                  742 	orl	a,@r0
   020B 70 8E               743 	jnz	00103$
                            744 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:107: if (sign == '-') {
   020D 8D 06               745 	mov	ar6,r5
   020F E5 08               746 	mov	a,_bp
   0211 24 03               747 	add	a,#0x03
   0213 F8                  748 	mov	r0,a
   0214 B6 2D 0E            749 	cjne	@r0,#0x2D,00119$
                            750 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:108: *s = '-';
   0217 8C 82               751 	mov	dpl,r4
   0219 8A 83               752 	mov	dph,r2
   021B 8B F0               753 	mov	b,r3
   021D 74 2D               754 	mov	a,#0x2D
   021F 12 0C 91            755 	lcall	__gptrput
                            756 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:110: len++;
   0222 ED                  757 	mov	a,r5
   0223 04                  758 	inc	a
   0224 FE                  759 	mov	r6,a
                            760 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:112: for (i = 0; i < len / 2; i++) {
   0225                     761 00119$:
   0225 EE                  762 	mov	a,r6
   0226 C3                  763 	clr	c
   0227 13                  764 	rrc	a
   0228 FA                  765 	mov	r2,a
   0229 A8 08               766 	mov	r0,_bp
   022B 08                  767 	inc	r0
   022C E4                  768 	clr	a
   022D F6                  769 	mov	@r0,a
   022E 08                  770 	inc	r0
   022F F6                  771 	mov	@r0,a
   0230                     772 00108$:
   0230 8A 05               773 	mov	ar5,r2
   0232 7F 00               774 	mov	r7,#0x00
   0234 A8 08               775 	mov	r0,_bp
   0236 08                  776 	inc	r0
   0237 C3                  777 	clr	c
   0238 E6                  778 	mov	a,@r0
   0239 9D                  779 	subb	a,r5
   023A 08                  780 	inc	r0
   023B E6                  781 	mov	a,@r0
   023C 64 80               782 	xrl	a,#0x80
   023E 8F F0               783 	mov	b,r7
   0240 63 F0 80            784 	xrl	b,#0x80
   0243 95 F0               785 	subb	a,b
   0245 40 03               786 	jc	00126$
   0247 02 03 01            787 	ljmp	00111$
   024A                     788 00126$:
                            789 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:113: p[len] = p[i];
   024A C0 02               790 	push	ar2
   024C E5 08               791 	mov	a,_bp
   024E 24 04               792 	add	a,#0x04
   0250 F8                  793 	mov	r0,a
   0251 EE                  794 	mov	a,r6
   0252 26                  795 	add	a,@r0
   0253 FB                  796 	mov	r3,a
   0254 E4                  797 	clr	a
   0255 08                  798 	inc	r0
   0256 36                  799 	addc	a,@r0
   0257 FC                  800 	mov	r4,a
   0258 08                  801 	inc	r0
   0259 86 05               802 	mov	ar5,@r0
   025B E5 08               803 	mov	a,_bp
   025D 24 04               804 	add	a,#0x04
   025F F8                  805 	mov	r0,a
   0260 A9 08               806 	mov	r1,_bp
   0262 09                  807 	inc	r1
   0263 E7                  808 	mov	a,@r1
   0264 26                  809 	add	a,@r0
   0265 C0 E0               810 	push	acc
   0267 09                  811 	inc	r1
   0268 E7                  812 	mov	a,@r1
   0269 08                  813 	inc	r0
   026A 36                  814 	addc	a,@r0
   026B C0 E0               815 	push	acc
   026D 08                  816 	inc	r0
   026E E6                  817 	mov	a,@r0
   026F C0 E0               818 	push	acc
   0271 E5 08               819 	mov	a,_bp
   0273 24 0A               820 	add	a,#0x0a
   0275 F8                  821 	mov	r0,a
   0276 D0 E0               822 	pop	acc
   0278 F6                  823 	mov	@r0,a
   0279 18                  824 	dec	r0
   027A D0 E0               825 	pop	acc
   027C F6                  826 	mov	@r0,a
   027D 18                  827 	dec	r0
   027E D0 E0               828 	pop	acc
   0280 F6                  829 	mov	@r0,a
   0281 E5 08               830 	mov	a,_bp
   0283 24 08               831 	add	a,#0x08
   0285 F8                  832 	mov	r0,a
   0286 86 82               833 	mov	dpl,@r0
   0288 08                  834 	inc	r0
   0289 86 83               835 	mov	dph,@r0
   028B 08                  836 	inc	r0
   028C 86 F0               837 	mov	b,@r0
   028E E5 08               838 	mov	a,_bp
   0290 24 07               839 	add	a,#0x07
   0292 F9                  840 	mov	r1,a
   0293 12 0C CC            841 	lcall	__gptrget
   0296 F7                  842 	mov	@r1,a
   0297 8B 82               843 	mov	dpl,r3
   0299 8C 83               844 	mov	dph,r4
   029B 8D F0               845 	mov	b,r5
   029D E5 08               846 	mov	a,_bp
   029F 24 07               847 	add	a,#0x07
   02A1 F8                  848 	mov	r0,a
   02A2 E6                  849 	mov	a,@r0
   02A3 12 0C 91            850 	lcall	__gptrput
                            851 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:114: p[i] = p[len - 1 - i];
   02A6 8E 07               852 	mov	ar7,r6
   02A8 7D 00               853 	mov	r5,#0x00
   02AA 1F                  854 	dec	r7
   02AB BF FF 01            855 	cjne	r7,#0xff,00127$
   02AE 1D                  856 	dec	r5
   02AF                     857 00127$:
   02AF A8 08               858 	mov	r0,_bp
   02B1 08                  859 	inc	r0
   02B2 EF                  860 	mov	a,r7
   02B3 C3                  861 	clr	c
   02B4 96                  862 	subb	a,@r0
   02B5 FF                  863 	mov	r7,a
   02B6 ED                  864 	mov	a,r5
   02B7 08                  865 	inc	r0
   02B8 96                  866 	subb	a,@r0
   02B9 FD                  867 	mov	r5,a
   02BA E5 08               868 	mov	a,_bp
   02BC 24 04               869 	add	a,#0x04
   02BE F8                  870 	mov	r0,a
   02BF EF                  871 	mov	a,r7
   02C0 26                  872 	add	a,@r0
   02C1 FF                  873 	mov	r7,a
   02C2 ED                  874 	mov	a,r5
   02C3 08                  875 	inc	r0
   02C4 36                  876 	addc	a,@r0
   02C5 FD                  877 	mov	r5,a
   02C6 08                  878 	inc	r0
   02C7 86 02               879 	mov	ar2,@r0
   02C9 8F 82               880 	mov	dpl,r7
   02CB 8D 83               881 	mov	dph,r5
   02CD 8A F0               882 	mov	b,r2
   02CF 12 0C CC            883 	lcall	__gptrget
   02D2 FB                  884 	mov	r3,a
   02D3 E5 08               885 	mov	a,_bp
   02D5 24 08               886 	add	a,#0x08
   02D7 F8                  887 	mov	r0,a
   02D8 86 82               888 	mov	dpl,@r0
   02DA 08                  889 	inc	r0
   02DB 86 83               890 	mov	dph,@r0
   02DD 08                  891 	inc	r0
   02DE 86 F0               892 	mov	b,@r0
   02E0 EB                  893 	mov	a,r3
   02E1 12 0C 91            894 	lcall	__gptrput
                            895 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:115: p[len - 1 - i] = p[len];
   02E4 8F 82               896 	mov	dpl,r7
   02E6 8D 83               897 	mov	dph,r5
   02E8 8A F0               898 	mov	b,r2
   02EA E5 08               899 	mov	a,_bp
   02EC 24 07               900 	add	a,#0x07
   02EE F8                  901 	mov	r0,a
   02EF E6                  902 	mov	a,@r0
   02F0 12 0C 91            903 	lcall	__gptrput
                            904 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:112: for (i = 0; i < len / 2; i++) {
   02F3 A8 08               905 	mov	r0,_bp
   02F5 08                  906 	inc	r0
   02F6 06                  907 	inc	@r0
   02F7 B6 00 02            908 	cjne	@r0,#0x00,00128$
   02FA 08                  909 	inc	r0
   02FB 06                  910 	inc	@r0
   02FC                     911 00128$:
   02FC D0 02               912 	pop	ar2
   02FE 02 02 30            913 	ljmp	00108$
   0301                     914 00111$:
                            915 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:117: p[len] = 0;
   0301 E5 08               916 	mov	a,_bp
   0303 24 04               917 	add	a,#0x04
   0305 F8                  918 	mov	r0,a
   0306 EE                  919 	mov	a,r6
   0307 26                  920 	add	a,@r0
   0308 FE                  921 	mov	r6,a
   0309 E4                  922 	clr	a
   030A 08                  923 	inc	r0
   030B 36                  924 	addc	a,@r0
   030C FA                  925 	mov	r2,a
   030D 08                  926 	inc	r0
   030E 86 03               927 	mov	ar3,@r0
   0310 8E 82               928 	mov	dpl,r6
   0312 8A 83               929 	mov	dph,r2
   0314 8B F0               930 	mov	b,r3
   0316 E4                  931 	clr	a
   0317 12 0C 91            932 	lcall	__gptrput
   031A 85 08 81            933 	mov	sp,_bp
   031D D0 08               934 	pop	_bp
   031F 22                  935 	ret
                            936 ;------------------------------------------------------------
                            937 ;Allocation info for local variables in function 'clcd_put_int'
                            938 ;------------------------------------------------------------
                            939 ;i                         Allocated to registers r2 r3 
                            940 ;s                         Allocated to stack - offset 1
                            941 ;------------------------------------------------------------
                            942 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:120: void clcd_put_int(int i) {
                            943 ;	-----------------------------------------
                            944 ;	 function clcd_put_int
                            945 ;	-----------------------------------------
   0320                     946 _clcd_put_int:
   0320 C0 08               947 	push	_bp
   0322 E5 81               948 	mov	a,sp
   0324 F5 08               949 	mov	_bp,a
   0326 24 07               950 	add	a,#0x07
   0328 F5 81               951 	mov	sp,a
   032A AA 82               952 	mov	r2,dpl
   032C AB 83               953 	mov	r3,dph
                            954 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:122: i2s(i, s);
   032E AC 08               955 	mov	r4,_bp
   0330 0C                  956 	inc	r4
   0331 8C 05               957 	mov	ar5,r4
   0333 7E 00               958 	mov	r6,#0x00
   0335 7F 40               959 	mov	r7,#0x40
   0337 C0 04               960 	push	ar4
   0339 C0 05               961 	push	ar5
   033B C0 06               962 	push	ar6
   033D C0 07               963 	push	ar7
   033F 8A 82               964 	mov	dpl,r2
   0341 8B 83               965 	mov	dph,r3
   0343 12 01 48            966 	lcall	_i2s
   0346 15 81               967 	dec	sp
   0348 15 81               968 	dec	sp
   034A 15 81               969 	dec	sp
   034C D0 04               970 	pop	ar4
                            971 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/clcd.c:123: clcd_put_string(s);
   034E 7A 00               972 	mov	r2,#0x00
   0350 7B 40               973 	mov	r3,#0x40
   0352 8C 82               974 	mov	dpl,r4
   0354 8A 83               975 	mov	dph,r2
   0356 8B F0               976 	mov	b,r3
   0358 12 00 E6            977 	lcall	_clcd_put_string
   035B 85 08 81            978 	mov	sp,_bp
   035E D0 08               979 	pop	_bp
   0360 22                  980 	ret
                            981 ;------------------------------------------------------------
                            982 ;Allocation info for local variables in function 'i2c_start'
                            983 ;------------------------------------------------------------
                            984 ;------------------------------------------------------------
                            985 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:16: unsigned char i2c_start(void) {
                            986 ;	-----------------------------------------
                            987 ;	 function i2c_start
                            988 ;	-----------------------------------------
   0361                     989 _i2c_start:
                            990 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:17: SDA = 1;
   0361 D2 81               991 	setb	_P0_1
                            992 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:18: SCL = 1;
   0363 D2 80               993 	setb	_P0_0
                            994 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:19: if (SDA == 0) return (i2c_ER);
   0365 20 81 04            995 	jb	_P0_1,00102$
   0368 75 82 01            996 	mov	dpl,#0x01
   036B 22                  997 	ret
   036C                     998 00102$:
                            999 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:20: if (SCL == 0) return (i2c_ER);
   036C 20 80 04           1000 	jb	_P0_0,00104$
   036F 75 82 01           1001 	mov	dpl,#0x01
   0372 22                 1002 	ret
   0373                    1003 00104$:
                           1004 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:21: SDA = 0;
   0373 C2 81              1005 	clr	_P0_1
                           1006 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:22: SCL=0;
   0375 C2 80              1007 	clr	_P0_0
                           1008 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:23: return (i2c_OK);
   0377 75 82 00           1009 	mov	dpl,#0x00
   037A 22                 1010 	ret
                           1011 ;------------------------------------------------------------
                           1012 ;Allocation info for local variables in function 'i2c_stop'
                           1013 ;------------------------------------------------------------
                           1014 ;------------------------------------------------------------
                           1015 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:26: void i2c_stop(void) {
                           1016 ;	-----------------------------------------
                           1017 ;	 function i2c_stop
                           1018 ;	-----------------------------------------
   037B                    1019 _i2c_stop:
                           1020 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:27: SDA = 0; SCL = 1; SDA = 1;
   037B C2 81              1021 	clr	_P0_1
   037D D2 80              1022 	setb	_P0_0
   037F D2 81              1023 	setb	_P0_1
   0381 22                 1024 	ret
                           1025 ;------------------------------------------------------------
                           1026 ;Allocation info for local variables in function 'i2c_shift_out'
                           1027 ;------------------------------------------------------------
                           1028 ;buffer                    Allocated to registers r2 
                           1029 ;i                         Allocated to registers r3 
                           1030 ;ack                       Allocated to registers 
                           1031 ;------------------------------------------------------------
                           1032 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:30: unsigned char i2c_shift_out(unsigned char buffer) {
                           1033 ;	-----------------------------------------
                           1034 ;	 function i2c_shift_out
                           1035 ;	-----------------------------------------
   0382                    1036 _i2c_shift_out:
   0382 AA 82              1037 	mov	r2,dpl
                           1038 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:33: for (i = 0; i < 8; i++) {
   0384 7B 00              1039 	mov	r3,#0x00
   0386                    1040 00104$:
   0386 BB 08 00           1041 	cjne	r3,#0x08,00114$
   0389                    1042 00114$:
   0389 50 15              1043 	jnc	00107$
                           1044 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:34: if (buffer >= 128) SDA = 1; else SDA = 0;
   038B BA 80 00           1045 	cjne	r2,#0x80,00116$
   038E                    1046 00116$:
   038E 40 04              1047 	jc	00102$
   0390 D2 81              1048 	setb	_P0_1
   0392 80 02              1049 	sjmp	00103$
   0394                    1050 00102$:
   0394 C2 81              1051 	clr	_P0_1
   0396                    1052 00103$:
                           1053 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:35: SCL = 1; SCL = 0;
   0396 D2 80              1054 	setb	_P0_0
   0398 C2 80              1055 	clr	_P0_0
                           1056 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:36: buffer *= 2;
   039A EA                 1057 	mov	a,r2
   039B 2A                 1058 	add	a,r2
   039C FA                 1059 	mov	r2,a
                           1060 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:33: for (i = 0; i < 8; i++) {
   039D 0B                 1061 	inc	r3
   039E 80 E6              1062 	sjmp	00104$
   03A0                    1063 00107$:
                           1064 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:38: SDA = 1; SCL = 1; ack = SDA; SCL = 0;
   03A0 D2 81              1065 	setb	_P0_1
   03A2 D2 80              1066 	setb	_P0_0
   03A4 A2 81              1067 	mov	c,_P0_1
   03A6 E4                 1068 	clr	a
   03A7 33                 1069 	rlc	a
   03A8 F5 82              1070 	mov	dpl,a
   03AA C2 80              1071 	clr	_P0_0
                           1072 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:39: return ack;
   03AC 22                 1073 	ret
                           1074 ;------------------------------------------------------------
                           1075 ;Allocation info for local variables in function 'i2c_shift_in'
                           1076 ;------------------------------------------------------------
                           1077 ;ack                       Allocated to registers r2 
                           1078 ;i                         Allocated to registers r4 
                           1079 ;buffer                    Allocated to registers r3 
                           1080 ;------------------------------------------------------------
                           1081 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:42: unsigned char i2c_shift_in(unsigned char ack) {
                           1082 ;	-----------------------------------------
                           1083 ;	 function i2c_shift_in
                           1084 ;	-----------------------------------------
   03AD                    1085 _i2c_shift_in:
   03AD AA 82              1086 	mov	r2,dpl
                           1087 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:44: unsigned char buffer = 0;
   03AF 7B 00              1088 	mov	r3,#0x00
                           1089 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:45: SDA = 1;
   03B1 D2 81              1090 	setb	_P0_1
                           1091 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:46: for (i = 0; i < 8; i++) {
   03B3 7C 00              1092 	mov	r4,#0x00
   03B5                    1093 00103$:
   03B5 BC 08 00           1094 	cjne	r4,#0x08,00113$
   03B8                    1095 00113$:
   03B8 50 0E              1096 	jnc	00106$
                           1097 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:47: buffer *= 2;
   03BA EB                 1098 	mov	a,r3
   03BB 2B                 1099 	add	a,r3
   03BC FB                 1100 	mov	r3,a
                           1101 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:48: SCL = 1;
   03BD D2 80              1102 	setb	_P0_0
                           1103 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:49: if (SDA == 1) buffer += 1;
   03BF 30 81 01           1104 	jnb	_P0_1,00102$
   03C2 0B                 1105 	inc	r3
   03C3                    1106 00102$:
                           1107 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:50: SCL = 0;
   03C3 C2 80              1108 	clr	_P0_0
                           1109 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:46: for (i = 0; i < 8; i++) {
   03C5 0C                 1110 	inc	r4
   03C6 80 ED              1111 	sjmp	00103$
   03C8                    1112 00106$:
                           1113 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:52: SDA = ack;
   03C8 EA                 1114 	mov	a,r2
   03C9 24 FF              1115 	add	a,#0xff
   03CB 92 81              1116 	mov	_P0_1,c
                           1117 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:53: SCL = 1; SCL = 0;
   03CD D2 80              1118 	setb	_P0_0
   03CF C2 80              1119 	clr	_P0_0
                           1120 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/i2c.c:54: return buffer;
   03D1 8B 82              1121 	mov	dpl,r3
   03D3 22                 1122 	ret
                           1123 ;------------------------------------------------------------
                           1124 ;Allocation info for local variables in function 'seeprom_write_byte'
                           1125 ;------------------------------------------------------------
                           1126 ;seeprom_memory_address    Allocated to stack - offset -4
                           1127 ;seeprom_byte_data         Allocated to stack - offset -5
                           1128 ;seeprom_device_address    Allocated to registers r2 
                           1129 ;------------------------------------------------------------
                           1130 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:8: void seeprom_write_byte(unsigned char seeprom_device_address, unsigned int seeprom_memory_address, unsigned char seeprom_byte_data)
                           1131 ;	-----------------------------------------
                           1132 ;	 function seeprom_write_byte
                           1133 ;	-----------------------------------------
   03D4                    1134 _seeprom_write_byte:
   03D4 C0 08              1135 	push	_bp
   03D6 85 81 08           1136 	mov	_bp,sp
                           1137 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:10: seeprom_write_byte_start:
   03D9 E5 82              1138 	mov	a,dpl
   03DB 25 82              1139 	add	a,dpl
   03DD FA                 1140 	mov	r2,a
   03DE 43 02 A0           1141 	orl	ar2,#0xA0
   03E1 E5 08              1142 	mov	a,_bp
   03E3 24 FC              1143 	add	a,#0xfc
   03E5 F8                 1144 	mov	r0,a
   03E6 08                 1145 	inc	r0
   03E7 86 03              1146 	mov	ar3,@r0
   03E9 7C 00              1147 	mov	r4,#0x00
   03EB E5 08              1148 	mov	a,_bp
   03ED 24 FC              1149 	add	a,#0xfc
   03EF F8                 1150 	mov	r0,a
   03F0 86 05              1151 	mov	ar5,@r0
   03F2 7E 00              1152 	mov	r6,#0x00
   03F4                    1153 00101$:
                           1154 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:11: if(i2c_start()==i2c_ER)
   03F4 C0 02              1155 	push	ar2
   03F6 C0 03              1156 	push	ar3
   03F8 C0 04              1157 	push	ar4
   03FA C0 05              1158 	push	ar5
   03FC C0 06              1159 	push	ar6
   03FE 12 03 61           1160 	lcall	_i2c_start
   0401 AF 82              1161 	mov	r7,dpl
   0403 D0 06              1162 	pop	ar6
   0405 D0 05              1163 	pop	ar5
   0407 D0 04              1164 	pop	ar4
   0409 D0 03              1165 	pop	ar3
   040B D0 02              1166 	pop	ar2
   040D BF 01 02           1167 	cjne	r7,#0x01,00120$
   0410 80 E2              1168 	sjmp	00101$
   0412                    1169 00120$:
                           1170 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:13: if(i2c_shift_out(0xA0|(seeprom_device_address*2+0))==i2c_NACK)
   0412 8A 82              1171 	mov	dpl,r2
   0414 C0 02              1172 	push	ar2
   0416 C0 03              1173 	push	ar3
   0418 C0 04              1174 	push	ar4
   041A C0 05              1175 	push	ar5
   041C C0 06              1176 	push	ar6
   041E 12 03 82           1177 	lcall	_i2c_shift_out
   0421 AF 82              1178 	mov	r7,dpl
   0423 D0 06              1179 	pop	ar6
   0425 D0 05              1180 	pop	ar5
   0427 D0 04              1181 	pop	ar4
   0429 D0 03              1182 	pop	ar3
   042B D0 02              1183 	pop	ar2
   042D BF 01 19           1184 	cjne	r7,#0x01,00105$
                           1185 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:14: {i2c_stop();goto seeprom_write_byte_start;}
   0430 C0 02              1186 	push	ar2
   0432 C0 03              1187 	push	ar3
   0434 C0 04              1188 	push	ar4
   0436 C0 05              1189 	push	ar5
   0438 C0 06              1190 	push	ar6
   043A 12 03 7B           1191 	lcall	_i2c_stop
   043D D0 06              1192 	pop	ar6
   043F D0 05              1193 	pop	ar5
   0441 D0 04              1194 	pop	ar4
   0443 D0 03              1195 	pop	ar3
   0445 D0 02              1196 	pop	ar2
   0447 80 AB              1197 	sjmp	00101$
   0449                    1198 00105$:
                           1199 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:15: if(i2c_shift_out(seeprom_memory_address/256)==i2c_NACK)
   0449 8B 82              1200 	mov	dpl,r3
   044B C0 02              1201 	push	ar2
   044D C0 03              1202 	push	ar3
   044F C0 04              1203 	push	ar4
   0451 C0 05              1204 	push	ar5
   0453 C0 06              1205 	push	ar6
   0455 12 03 82           1206 	lcall	_i2c_shift_out
   0458 AF 82              1207 	mov	r7,dpl
   045A D0 06              1208 	pop	ar6
   045C D0 05              1209 	pop	ar5
   045E D0 04              1210 	pop	ar4
   0460 D0 03              1211 	pop	ar3
   0462 D0 02              1212 	pop	ar2
   0464 BF 01 1A           1213 	cjne	r7,#0x01,00107$
                           1214 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:16: {i2c_stop();goto seeprom_write_byte_start;}
   0467 C0 02              1215 	push	ar2
   0469 C0 03              1216 	push	ar3
   046B C0 04              1217 	push	ar4
   046D C0 05              1218 	push	ar5
   046F C0 06              1219 	push	ar6
   0471 12 03 7B           1220 	lcall	_i2c_stop
   0474 D0 06              1221 	pop	ar6
   0476 D0 05              1222 	pop	ar5
   0478 D0 04              1223 	pop	ar4
   047A D0 03              1224 	pop	ar3
   047C D0 02              1225 	pop	ar2
   047E 02 03 F4           1226 	ljmp	00101$
   0481                    1227 00107$:
                           1228 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:17: if(i2c_shift_out(seeprom_memory_address%256)==i2c_NACK)
   0481 8D 82              1229 	mov	dpl,r5
   0483 C0 02              1230 	push	ar2
   0485 C0 03              1231 	push	ar3
   0487 C0 04              1232 	push	ar4
   0489 C0 05              1233 	push	ar5
   048B C0 06              1234 	push	ar6
   048D 12 03 82           1235 	lcall	_i2c_shift_out
   0490 AF 82              1236 	mov	r7,dpl
   0492 D0 06              1237 	pop	ar6
   0494 D0 05              1238 	pop	ar5
   0496 D0 04              1239 	pop	ar4
   0498 D0 03              1240 	pop	ar3
   049A D0 02              1241 	pop	ar2
   049C BF 01 1A           1242 	cjne	r7,#0x01,00109$
                           1243 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:18: {i2c_stop();goto seeprom_write_byte_start;}
   049F C0 02              1244 	push	ar2
   04A1 C0 03              1245 	push	ar3
   04A3 C0 04              1246 	push	ar4
   04A5 C0 05              1247 	push	ar5
   04A7 C0 06              1248 	push	ar6
   04A9 12 03 7B           1249 	lcall	_i2c_stop
   04AC D0 06              1250 	pop	ar6
   04AE D0 05              1251 	pop	ar5
   04B0 D0 04              1252 	pop	ar4
   04B2 D0 03              1253 	pop	ar3
   04B4 D0 02              1254 	pop	ar2
   04B6 02 03 F4           1255 	ljmp	00101$
   04B9                    1256 00109$:
                           1257 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:19: if(i2c_shift_out(seeprom_byte_data)==i2c_NACK)
   04B9 E5 08              1258 	mov	a,_bp
   04BB 24 FB              1259 	add	a,#0xfb
   04BD F8                 1260 	mov	r0,a
   04BE 86 82              1261 	mov	dpl,@r0
   04C0 C0 02              1262 	push	ar2
   04C2 C0 03              1263 	push	ar3
   04C4 C0 04              1264 	push	ar4
   04C6 C0 05              1265 	push	ar5
   04C8 C0 06              1266 	push	ar6
   04CA 12 03 82           1267 	lcall	_i2c_shift_out
   04CD AF 82              1268 	mov	r7,dpl
   04CF D0 06              1269 	pop	ar6
   04D1 D0 05              1270 	pop	ar5
   04D3 D0 04              1271 	pop	ar4
   04D5 D0 03              1272 	pop	ar3
   04D7 D0 02              1273 	pop	ar2
   04D9 BF 01 1A           1274 	cjne	r7,#0x01,00111$
                           1275 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:20: {i2c_stop();goto seeprom_write_byte_start;}
   04DC C0 02              1276 	push	ar2
   04DE C0 03              1277 	push	ar3
   04E0 C0 04              1278 	push	ar4
   04E2 C0 05              1279 	push	ar5
   04E4 C0 06              1280 	push	ar6
   04E6 12 03 7B           1281 	lcall	_i2c_stop
   04E9 D0 06              1282 	pop	ar6
   04EB D0 05              1283 	pop	ar5
   04ED D0 04              1284 	pop	ar4
   04EF D0 03              1285 	pop	ar3
   04F1 D0 02              1286 	pop	ar2
   04F3 02 03 F4           1287 	ljmp	00101$
   04F6                    1288 00111$:
                           1289 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:21: i2c_stop();
   04F6 12 03 7B           1290 	lcall	_i2c_stop
   04F9 D0 08              1291 	pop	_bp
   04FB 22                 1292 	ret
                           1293 ;------------------------------------------------------------
                           1294 ;Allocation info for local variables in function 'seeprom_read_byte'
                           1295 ;------------------------------------------------------------
                           1296 ;seeprom_memory_address    Allocated to stack - offset -4
                           1297 ;seeprom_device_address    Allocated to registers r2 
                           1298 ;seeprom_byte_data         Allocated to registers r2 
                           1299 ;------------------------------------------------------------
                           1300 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:24: unsigned char seeprom_read_byte(unsigned char seeprom_device_address, unsigned int seeprom_memory_address)
                           1301 ;	-----------------------------------------
                           1302 ;	 function seeprom_read_byte
                           1303 ;	-----------------------------------------
   04FC                    1304 _seeprom_read_byte:
   04FC C0 08              1305 	push	_bp
   04FE 85 81 08           1306 	mov	_bp,sp
                           1307 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:27: seeprom_read_byte_start:
   0501 E5 82              1308 	mov	a,dpl
   0503 25 82              1309 	add	a,dpl
   0505 FA                 1310 	mov	r2,a
   0506 74 A0              1311 	mov	a,#0xA0
   0508 4A                 1312 	orl	a,r2
   0509 FB                 1313 	mov	r3,a
   050A E5 08              1314 	mov	a,_bp
   050C 24 FC              1315 	add	a,#0xfc
   050E F8                 1316 	mov	r0,a
   050F 08                 1317 	inc	r0
   0510 86 04              1318 	mov	ar4,@r0
   0512 7D 00              1319 	mov	r5,#0x00
   0514 E5 08              1320 	mov	a,_bp
   0516 24 FC              1321 	add	a,#0xfc
   0518 F8                 1322 	mov	r0,a
   0519 86 06              1323 	mov	ar6,@r0
   051B 7F 00              1324 	mov	r7,#0x00
   051D EA                 1325 	mov	a,r2
   051E 04                 1326 	inc	a
   051F 44 A0              1327 	orl	a,#0xA0
   0521 FA                 1328 	mov	r2,a
   0522                    1329 00101$:
                           1330 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:28: if(i2c_start()==i2c_ER)
   0522 C0 02              1331 	push	ar2
   0524 C0 03              1332 	push	ar3
   0526 C0 04              1333 	push	ar4
   0528 C0 05              1334 	push	ar5
   052A C0 06              1335 	push	ar6
   052C C0 07              1336 	push	ar7
   052E 12 03 61           1337 	lcall	_i2c_start
   0531 AA 82              1338 	mov	r2,dpl
   0533 D0 07              1339 	pop	ar7
   0535 D0 06              1340 	pop	ar6
   0537 D0 05              1341 	pop	ar5
   0539 D0 04              1342 	pop	ar4
   053B D0 03              1343 	pop	ar3
   053D BA 01 04           1344 	cjne	r2,#0x01,00123$
   0540 D0 02              1345 	pop	ar2
   0542 80 DE              1346 	sjmp	00101$
   0544                    1347 00123$:
                           1348 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:30: if(i2c_shift_out(0xA0|(seeprom_device_address*2+0))==i2c_NACK)
   0544 8B 82              1349 	mov	dpl,r3
   0546 C0 03              1350 	push	ar3
   0548 C0 04              1351 	push	ar4
   054A C0 05              1352 	push	ar5
   054C C0 06              1353 	push	ar6
   054E C0 07              1354 	push	ar7
   0550 12 03 82           1355 	lcall	_i2c_shift_out
   0553 AA 82              1356 	mov	r2,dpl
   0555 D0 07              1357 	pop	ar7
   0557 D0 06              1358 	pop	ar6
   0559 D0 05              1359 	pop	ar5
   055B D0 04              1360 	pop	ar4
   055D D0 03              1361 	pop	ar3
   055F BA 01 02           1362 	cjne	r2,#0x01,00124$
   0562 80 04              1363 	sjmp	00125$
   0564                    1364 00124$:
   0564 D0 02              1365 	pop	ar2
   0566 80 1B              1366 	sjmp	00105$
   0568                    1367 00125$:
                           1368 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:31: {i2c_stop();goto seeprom_read_byte_start;}
   0568 C0 03              1369 	push	ar3
   056A C0 04              1370 	push	ar4
   056C C0 05              1371 	push	ar5
   056E C0 06              1372 	push	ar6
   0570 C0 07              1373 	push	ar7
   0572 12 03 7B           1374 	lcall	_i2c_stop
   0575 D0 07              1375 	pop	ar7
   0577 D0 06              1376 	pop	ar6
   0579 D0 05              1377 	pop	ar5
   057B D0 04              1378 	pop	ar4
   057D D0 03              1379 	pop	ar3
   057F D0 02              1380 	pop	ar2
   0581 80 9F              1381 	sjmp	00101$
   0583                    1382 00105$:
                           1383 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:32: if(i2c_shift_out(seeprom_memory_address/256)==i2c_NACK)
   0583 C0 02              1384 	push	ar2
   0585 8C 82              1385 	mov	dpl,r4
   0587 C0 03              1386 	push	ar3
   0589 C0 04              1387 	push	ar4
   058B C0 05              1388 	push	ar5
   058D C0 06              1389 	push	ar6
   058F C0 07              1390 	push	ar7
   0591 12 03 82           1391 	lcall	_i2c_shift_out
   0594 AA 82              1392 	mov	r2,dpl
   0596 D0 07              1393 	pop	ar7
   0598 D0 06              1394 	pop	ar6
   059A D0 05              1395 	pop	ar5
   059C D0 04              1396 	pop	ar4
   059E D0 03              1397 	pop	ar3
   05A0 BA 01 02           1398 	cjne	r2,#0x01,00126$
   05A3 80 04              1399 	sjmp	00127$
   05A5                    1400 00126$:
   05A5 D0 02              1401 	pop	ar2
   05A7 80 1C              1402 	sjmp	00107$
   05A9                    1403 00127$:
                           1404 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:33: {i2c_stop();goto seeprom_read_byte_start;}
   05A9 C0 03              1405 	push	ar3
   05AB C0 04              1406 	push	ar4
   05AD C0 05              1407 	push	ar5
   05AF C0 06              1408 	push	ar6
   05B1 C0 07              1409 	push	ar7
   05B3 12 03 7B           1410 	lcall	_i2c_stop
   05B6 D0 07              1411 	pop	ar7
   05B8 D0 06              1412 	pop	ar6
   05BA D0 05              1413 	pop	ar5
   05BC D0 04              1414 	pop	ar4
   05BE D0 03              1415 	pop	ar3
   05C0 D0 02              1416 	pop	ar2
   05C2 02 05 22           1417 	ljmp	00101$
   05C5                    1418 00107$:
                           1419 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:34: if(i2c_shift_out(seeprom_memory_address%256)==i2c_NACK)
   05C5 C0 02              1420 	push	ar2
   05C7 8E 82              1421 	mov	dpl,r6
   05C9 C0 03              1422 	push	ar3
   05CB C0 04              1423 	push	ar4
   05CD C0 05              1424 	push	ar5
   05CF C0 06              1425 	push	ar6
   05D1 C0 07              1426 	push	ar7
   05D3 12 03 82           1427 	lcall	_i2c_shift_out
   05D6 AA 82              1428 	mov	r2,dpl
   05D8 D0 07              1429 	pop	ar7
   05DA D0 06              1430 	pop	ar6
   05DC D0 05              1431 	pop	ar5
   05DE D0 04              1432 	pop	ar4
   05E0 D0 03              1433 	pop	ar3
   05E2 BA 01 02           1434 	cjne	r2,#0x01,00128$
   05E5 80 04              1435 	sjmp	00129$
   05E7                    1436 00128$:
   05E7 D0 02              1437 	pop	ar2
   05E9 80 1C              1438 	sjmp	00109$
   05EB                    1439 00129$:
                           1440 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:35: {i2c_stop();goto seeprom_read_byte_start;}
   05EB C0 03              1441 	push	ar3
   05ED C0 04              1442 	push	ar4
   05EF C0 05              1443 	push	ar5
   05F1 C0 06              1444 	push	ar6
   05F3 C0 07              1445 	push	ar7
   05F5 12 03 7B           1446 	lcall	_i2c_stop
   05F8 D0 07              1447 	pop	ar7
   05FA D0 06              1448 	pop	ar6
   05FC D0 05              1449 	pop	ar5
   05FE D0 04              1450 	pop	ar4
   0600 D0 03              1451 	pop	ar3
   0602 D0 02              1452 	pop	ar2
   0604 02 05 22           1453 	ljmp	00101$
   0607                    1454 00109$:
                           1455 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:36: if(i2c_start()==i2c_ER)
   0607 C0 02              1456 	push	ar2
   0609 C0 03              1457 	push	ar3
   060B C0 04              1458 	push	ar4
   060D C0 05              1459 	push	ar5
   060F C0 06              1460 	push	ar6
   0611 C0 07              1461 	push	ar7
   0613 12 03 61           1462 	lcall	_i2c_start
   0616 AA 82              1463 	mov	r2,dpl
   0618 D0 07              1464 	pop	ar7
   061A D0 06              1465 	pop	ar6
   061C D0 05              1466 	pop	ar5
   061E D0 04              1467 	pop	ar4
   0620 D0 03              1468 	pop	ar3
   0622 BA 01 05           1469 	cjne	r2,#0x01,00130$
   0625 D0 02              1470 	pop	ar2
   0627 02 05 22           1471 	ljmp	00101$
   062A                    1472 00130$:
   062A D0 02              1473 	pop	ar2
                           1474 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:38: if(i2c_shift_out(0xA0|(seeprom_device_address*2+1))==i2c_NACK)
   062C C0 03              1475 	push	ar3
   062E 8A 82              1476 	mov	dpl,r2
   0630 C0 02              1477 	push	ar2
   0632 C0 04              1478 	push	ar4
   0634 C0 05              1479 	push	ar5
   0636 C0 06              1480 	push	ar6
   0638 C0 07              1481 	push	ar7
   063A 12 03 82           1482 	lcall	_i2c_shift_out
   063D AB 82              1483 	mov	r3,dpl
   063F D0 07              1484 	pop	ar7
   0641 D0 06              1485 	pop	ar6
   0643 D0 05              1486 	pop	ar5
   0645 D0 04              1487 	pop	ar4
   0647 D0 02              1488 	pop	ar2
   0649 BB 01 02           1489 	cjne	r3,#0x01,00131$
   064C 80 04              1490 	sjmp	00132$
   064E                    1491 00131$:
   064E D0 03              1492 	pop	ar3
   0650 80 20              1493 	sjmp	00113$
   0652                    1494 00132$:
   0652 D0 03              1495 	pop	ar3
                           1496 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:39: {i2c_stop();goto seeprom_read_byte_start;}
   0654 C0 02              1497 	push	ar2
   0656 C0 03              1498 	push	ar3
   0658 C0 04              1499 	push	ar4
   065A C0 05              1500 	push	ar5
   065C C0 06              1501 	push	ar6
   065E C0 07              1502 	push	ar7
   0660 12 03 7B           1503 	lcall	_i2c_stop
   0663 D0 07              1504 	pop	ar7
   0665 D0 06              1505 	pop	ar6
   0667 D0 05              1506 	pop	ar5
   0669 D0 04              1507 	pop	ar4
   066B D0 03              1508 	pop	ar3
   066D D0 02              1509 	pop	ar2
   066F 02 05 22           1510 	ljmp	00101$
   0672                    1511 00113$:
                           1512 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:40: seeprom_byte_data=i2c_shift_in(i2c_NACK);
   0672 75 82 01           1513 	mov	dpl,#0x01
   0675 12 03 AD           1514 	lcall	_i2c_shift_in
   0678 AA 82              1515 	mov	r2,dpl
                           1516 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:41: i2c_stop();
   067A C0 02              1517 	push	ar2
   067C 12 03 7B           1518 	lcall	_i2c_stop
   067F D0 02              1519 	pop	ar2
                           1520 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/seeprom.c:42: return seeprom_byte_data;
   0681 8A 82              1521 	mov	dpl,r2
   0683 D0 08              1522 	pop	_bp
   0685 22                 1523 	ret
                           1524 ;------------------------------------------------------------
                           1525 ;Allocation info for local variables in function 'uart_initialize'
                           1526 ;------------------------------------------------------------
                           1527 ;------------------------------------------------------------
                           1528 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:24: void uart_initialize(void)
                           1529 ;	-----------------------------------------
                           1530 ;	 function uart_initialize
                           1531 ;	-----------------------------------------
   0686                    1532 _uart_initialize:
                           1533 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:26: PCON&=0x7F;		// Clear SMOD of PCON, No Double Baud Rate
   0686 53 87 7F           1534 	anl	_PCON,#0x7F
                           1535 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:27: TMOD&=0x2F;TMOD|=0x20;	// Set Timer1 to Mode 2 (8-bit auto reload) for Baud Rate Generation
   0689 53 89 2F           1536 	anl	_TMOD,#0x2F
   068C 43 89 20           1537 	orl	_TMOD,#0x20
                           1538 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:28: TH1=0xFD;		// Set Baud Rate to 9600 bps for 11.0592M Hz
   068F 75 8D FD           1539 	mov	_TH1,#0xFD
                           1540 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:29: SM0=0;SM1=1;		// Set UART to Mode 1 (8-bit UART)
   0692 C2 9F              1541 	clr	_SM0
   0694 D2 9E              1542 	setb	_SM1
                           1543 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:30: REN=1;			// Set REN of SCON to Enable UART Receive
   0696 D2 9C              1544 	setb	_REN
                           1545 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:31: TR1=1;			// Set TR1 of TCON to Start Timer1
   0698 D2 8E              1546 	setb	_TR1
                           1547 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:32: TI=0;RI=0;		// Clear TI/RI of SCON to Get Ready to Send/Receive
   069A C2 99              1548 	clr	_TI
   069C C2 98              1549 	clr	_RI
   069E 22                 1550 	ret
                           1551 ;------------------------------------------------------------
                           1552 ;Allocation info for local variables in function 'uart_put_char'
                           1553 ;------------------------------------------------------------
                           1554 ;c                         Allocated to registers 
                           1555 ;------------------------------------------------------------
                           1556 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:35: void uart_put_char(char c)	// Put Character to UART
                           1557 ;	-----------------------------------------
                           1558 ;	 function uart_put_char
                           1559 ;	-----------------------------------------
   069F                    1560 _uart_put_char:
   069F 85 82 99           1561 	mov	_SBUF,dpl
                           1562 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:38: while(TI==0);TI=0;
   06A2                    1563 00101$:
   06A2 10 99 02           1564 	jbc	_TI,00108$
   06A5 80 FB              1565 	sjmp	00101$
   06A7                    1566 00108$:
   06A7 22                 1567 	ret
                           1568 ;------------------------------------------------------------
                           1569 ;Allocation info for local variables in function 'uart_get_char'
                           1570 ;------------------------------------------------------------
                           1571 ;------------------------------------------------------------
                           1572 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:41: char uart_get_char(void)	// Get Character from UART
                           1573 ;	-----------------------------------------
                           1574 ;	 function uart_get_char
                           1575 ;	-----------------------------------------
   06A8                    1576 _uart_get_char:
                           1577 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:43: while(RI==0);RI=0;
   06A8                    1578 00101$:
   06A8 10 98 02           1579 	jbc	_RI,00108$
   06AB 80 FB              1580 	sjmp	00101$
   06AD                    1581 00108$:
                           1582 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:44: return SBUF;
   06AD 85 99 82           1583 	mov	dpl,_SBUF
   06B0 22                 1584 	ret
                           1585 ;------------------------------------------------------------
                           1586 ;Allocation info for local variables in function 'uart_get_char_echo'
                           1587 ;------------------------------------------------------------
                           1588 ;------------------------------------------------------------
                           1589 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:47: char uart_get_char_echo(void)	// Get Character from UART with Echo, Require uart_put_char()
                           1590 ;	-----------------------------------------
                           1591 ;	 function uart_get_char_echo
                           1592 ;	-----------------------------------------
   06B1                    1593 _uart_get_char_echo:
                           1594 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:49: while(RI==0);RI=0;
   06B1                    1595 00101$:
   06B1 10 98 02           1596 	jbc	_RI,00108$
   06B4 80 FB              1597 	sjmp	00101$
   06B6                    1598 00108$:
                           1599 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:50: uart_put_char(SBUF);
   06B6 85 99 82           1600 	mov	dpl,_SBUF
   06B9 12 06 9F           1601 	lcall	_uart_put_char
                           1602 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:51: return SBUF;
   06BC 85 99 82           1603 	mov	dpl,_SBUF
   06BF 22                 1604 	ret
                           1605 ;------------------------------------------------------------
                           1606 ;Allocation info for local variables in function 'uart_put_string'
                           1607 ;------------------------------------------------------------
                           1608 ;s                         Allocated to registers r2 r3 r4 
                           1609 ;------------------------------------------------------------
                           1610 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:54: void uart_put_string(char *s)	// Put String to UART, Require uart_put_char()
                           1611 ;	-----------------------------------------
                           1612 ;	 function uart_put_string
                           1613 ;	-----------------------------------------
   06C0                    1614 _uart_put_string:
   06C0 AA 82              1615 	mov	r2,dpl
   06C2 AB 83              1616 	mov	r3,dph
   06C4 AC F0              1617 	mov	r4,b
                           1618 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:56: while(*s!=0){uart_put_char(*s);s++;}
   06C6                    1619 00101$:
   06C6 8A 82              1620 	mov	dpl,r2
   06C8 8B 83              1621 	mov	dph,r3
   06CA 8C F0              1622 	mov	b,r4
   06CC 12 0C CC           1623 	lcall	__gptrget
   06CF FD                 1624 	mov	r5,a
   06D0 60 18              1625 	jz	00104$
   06D2 8D 82              1626 	mov	dpl,r5
   06D4 C0 02              1627 	push	ar2
   06D6 C0 03              1628 	push	ar3
   06D8 C0 04              1629 	push	ar4
   06DA 12 06 9F           1630 	lcall	_uart_put_char
   06DD D0 04              1631 	pop	ar4
   06DF D0 03              1632 	pop	ar3
   06E1 D0 02              1633 	pop	ar2
   06E3 0A                 1634 	inc	r2
   06E4 BA 00 DF           1635 	cjne	r2,#0x00,00101$
   06E7 0B                 1636 	inc	r3
   06E8 80 DC              1637 	sjmp	00101$
   06EA                    1638 00104$:
   06EA 22                 1639 	ret
                           1640 ;------------------------------------------------------------
                           1641 ;Allocation info for local variables in function 'uart_get_string'
                           1642 ;------------------------------------------------------------
                           1643 ;s                         Allocated to registers r2 r3 r4 
                           1644 ;------------------------------------------------------------
                           1645 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:59: void uart_get_string(char *s)	// Get String from UART, Require uart_get_char_echo()
                           1646 ;	-----------------------------------------
                           1647 ;	 function uart_get_string
                           1648 ;	-----------------------------------------
   06EB                    1649 _uart_get_string:
   06EB AA 82              1650 	mov	r2,dpl
   06ED AB 83              1651 	mov	r3,dph
   06EF AC F0              1652 	mov	r4,b
                           1653 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:61: while(((*s)=uart_get_char())!=13)s++;
   06F1                    1654 00101$:
   06F1 C0 02              1655 	push	ar2
   06F3 C0 03              1656 	push	ar3
   06F5 C0 04              1657 	push	ar4
   06F7 12 06 A8           1658 	lcall	_uart_get_char
   06FA AD 82              1659 	mov	r5,dpl
   06FC D0 04              1660 	pop	ar4
   06FE D0 03              1661 	pop	ar3
   0700 D0 02              1662 	pop	ar2
   0702 8A 82              1663 	mov	dpl,r2
   0704 8B 83              1664 	mov	dph,r3
   0706 8C F0              1665 	mov	b,r4
   0708 ED                 1666 	mov	a,r5
   0709 12 0C 91           1667 	lcall	__gptrput
   070C BD 0D 02           1668 	cjne	r5,#0x0D,00109$
   070F 80 07              1669 	sjmp	00103$
   0711                    1670 00109$:
   0711 0A                 1671 	inc	r2
   0712 BA 00 DC           1672 	cjne	r2,#0x00,00101$
   0715 0B                 1673 	inc	r3
   0716 80 D9              1674 	sjmp	00101$
   0718                    1675 00103$:
                           1676 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:62: *s=0;
   0718 8A 82              1677 	mov	dpl,r2
   071A 8B 83              1678 	mov	dph,r3
   071C 8C F0              1679 	mov	b,r4
   071E E4                 1680 	clr	a
   071F 02 0C 91           1681 	ljmp	__gptrput
                           1682 ;------------------------------------------------------------
                           1683 ;Allocation info for local variables in function 'uart_i2s'
                           1684 ;------------------------------------------------------------
                           1685 ;s                         Allocated to stack - offset -5
                           1686 ;i                         Allocated to stack - offset 1
                           1687 ;sign                      Allocated to stack - offset 3
                           1688 ;len                       Allocated to registers r6 
                           1689 ;p                         Allocated to stack - offset 4
                           1690 ;sloc0                     Allocated to stack - offset 8
                           1691 ;sloc1                     Allocated to stack - offset 7
                           1692 ;sloc2                     Allocated to stack - offset 8
                           1693 ;------------------------------------------------------------
                           1694 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:65: void uart_i2s(int i,char *s)	// Convert Integer to String
                           1695 ;	-----------------------------------------
                           1696 ;	 function uart_i2s
                           1697 ;	-----------------------------------------
   0722                    1698 _uart_i2s:
   0722 C0 08              1699 	push	_bp
   0724 85 81 08           1700 	mov	_bp,sp
   0727 C0 82              1701 	push	dpl
   0729 C0 83              1702 	push	dph
   072B E5 81              1703 	mov	a,sp
   072D 24 0A              1704 	add	a,#0x0a
   072F F5 81              1705 	mov	sp,a
                           1706 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:68: sign='+';len=0;p=s;
   0731 E5 08              1707 	mov	a,_bp
   0733 24 03              1708 	add	a,#0x03
   0735 F8                 1709 	mov	r0,a
   0736 76 2B              1710 	mov	@r0,#0x2B
   0738 E5 08              1711 	mov	a,_bp
   073A 24 FB              1712 	add	a,#0xfb
   073C F8                 1713 	mov	r0,a
   073D E5 08              1714 	mov	a,_bp
   073F 24 04              1715 	add	a,#0x04
   0741 F9                 1716 	mov	r1,a
   0742 E6                 1717 	mov	a,@r0
   0743 F7                 1718 	mov	@r1,a
   0744 08                 1719 	inc	r0
   0745 09                 1720 	inc	r1
   0746 E6                 1721 	mov	a,@r0
   0747 F7                 1722 	mov	@r1,a
   0748 08                 1723 	inc	r0
   0749 09                 1724 	inc	r1
   074A E6                 1725 	mov	a,@r0
   074B F7                 1726 	mov	@r1,a
                           1727 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:69: if(i<0){sign='-';i=-i;}
   074C A8 08              1728 	mov	r0,_bp
   074E 08                 1729 	inc	r0
   074F 08                 1730 	inc	r0
   0750 E6                 1731 	mov	a,@r0
   0751 30 E7 12           1732 	jnb	acc.7,00115$
   0754 E5 08              1733 	mov	a,_bp
   0756 24 03              1734 	add	a,#0x03
   0758 F8                 1735 	mov	r0,a
   0759 76 2D              1736 	mov	@r0,#0x2D
   075B A8 08              1737 	mov	r0,_bp
   075D 08                 1738 	inc	r0
   075E C3                 1739 	clr	c
   075F E4                 1740 	clr	a
   0760 96                 1741 	subb	a,@r0
   0761 F6                 1742 	mov	@r0,a
   0762 08                 1743 	inc	r0
   0763 E4                 1744 	clr	a
   0764 96                 1745 	subb	a,@r0
   0765 F6                 1746 	mov	@r0,a
                           1747 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:70: do{*s=(i%10)+'0';s++;len++;i/=10;}while(i!=0);
   0766                    1748 00115$:
   0766 E5 08              1749 	mov	a,_bp
   0768 24 04              1750 	add	a,#0x04
   076A F8                 1751 	mov	r0,a
   076B 86 04              1752 	mov	ar4,@r0
   076D 08                 1753 	inc	r0
   076E 86 02              1754 	mov	ar2,@r0
   0770 08                 1755 	inc	r0
   0771 86 03              1756 	mov	ar3,@r0
   0773 7D 00              1757 	mov	r5,#0x00
   0775                    1758 00103$:
   0775 C0 02              1759 	push	ar2
   0777 C0 03              1760 	push	ar3
   0779 C0 04              1761 	push	ar4
   077B C0 05              1762 	push	ar5
   077D 74 0A              1763 	mov	a,#0x0A
   077F C0 E0              1764 	push	acc
   0781 E4                 1765 	clr	a
   0782 C0 E0              1766 	push	acc
   0784 A8 08              1767 	mov	r0,_bp
   0786 08                 1768 	inc	r0
   0787 86 82              1769 	mov	dpl,@r0
   0789 08                 1770 	inc	r0
   078A 86 83              1771 	mov	dph,@r0
   078C 12 0C E8           1772 	lcall	__modsint
   078F AE 82              1773 	mov	r6,dpl
   0791 15 81              1774 	dec	sp
   0793 15 81              1775 	dec	sp
   0795 D0 05              1776 	pop	ar5
   0797 D0 04              1777 	pop	ar4
   0799 D0 03              1778 	pop	ar3
   079B D0 02              1779 	pop	ar2
   079D 74 30              1780 	mov	a,#0x30
   079F 2E                 1781 	add	a,r6
   07A0 8C 82              1782 	mov	dpl,r4
   07A2 8A 83              1783 	mov	dph,r2
   07A4 8B F0              1784 	mov	b,r3
   07A6 12 0C 91           1785 	lcall	__gptrput
   07A9 A3                 1786 	inc	dptr
   07AA AC 82              1787 	mov	r4,dpl
   07AC AA 83              1788 	mov	r2,dph
   07AE 0D                 1789 	inc	r5
   07AF 8D 06              1790 	mov	ar6,r5
   07B1 C0 02              1791 	push	ar2
   07B3 C0 03              1792 	push	ar3
   07B5 C0 04              1793 	push	ar4
   07B7 C0 05              1794 	push	ar5
   07B9 74 0A              1795 	mov	a,#0x0A
   07BB C0 E0              1796 	push	acc
   07BD E4                 1797 	clr	a
   07BE C0 E0              1798 	push	acc
   07C0 A8 08              1799 	mov	r0,_bp
   07C2 08                 1800 	inc	r0
   07C3 86 82              1801 	mov	dpl,@r0
   07C5 08                 1802 	inc	r0
   07C6 86 83              1803 	mov	dph,@r0
   07C8 12 0D 25           1804 	lcall	__divsint
   07CB A8 08              1805 	mov	r0,_bp
   07CD 08                 1806 	inc	r0
   07CE A6 82              1807 	mov	@r0,dpl
   07D0 08                 1808 	inc	r0
   07D1 A6 83              1809 	mov	@r0,dph
   07D3 15 81              1810 	dec	sp
   07D5 15 81              1811 	dec	sp
   07D7 D0 05              1812 	pop	ar5
   07D9 D0 04              1813 	pop	ar4
   07DB D0 03              1814 	pop	ar3
   07DD D0 02              1815 	pop	ar2
   07DF A8 08              1816 	mov	r0,_bp
   07E1 08                 1817 	inc	r0
   07E2 E6                 1818 	mov	a,@r0
   07E3 08                 1819 	inc	r0
   07E4 46                 1820 	orl	a,@r0
   07E5 70 8E              1821 	jnz	00103$
                           1822 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:71: if(sign=='-'){*s='-';s++;len++;}
   07E7 8D 06              1823 	mov	ar6,r5
   07E9 E5 08              1824 	mov	a,_bp
   07EB 24 03              1825 	add	a,#0x03
   07ED F8                 1826 	mov	r0,a
   07EE B6 2D 0E           1827 	cjne	@r0,#0x2D,00119$
   07F1 8C 82              1828 	mov	dpl,r4
   07F3 8A 83              1829 	mov	dph,r2
   07F5 8B F0              1830 	mov	b,r3
   07F7 74 2D              1831 	mov	a,#0x2D
   07F9 12 0C 91           1832 	lcall	__gptrput
   07FC ED                 1833 	mov	a,r5
   07FD 04                 1834 	inc	a
   07FE FE                 1835 	mov	r6,a
                           1836 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:72: for(i=0;i<len/2;i++){p[len]=p[i];p[i]=p[len-1-i];p[len-1-i]=p[len];}
   07FF                    1837 00119$:
   07FF EE                 1838 	mov	a,r6
   0800 C3                 1839 	clr	c
   0801 13                 1840 	rrc	a
   0802 FA                 1841 	mov	r2,a
   0803 A8 08              1842 	mov	r0,_bp
   0805 08                 1843 	inc	r0
   0806 E4                 1844 	clr	a
   0807 F6                 1845 	mov	@r0,a
   0808 08                 1846 	inc	r0
   0809 F6                 1847 	mov	@r0,a
   080A                    1848 00108$:
   080A 8A 05              1849 	mov	ar5,r2
   080C 7F 00              1850 	mov	r7,#0x00
   080E A8 08              1851 	mov	r0,_bp
   0810 08                 1852 	inc	r0
   0811 C3                 1853 	clr	c
   0812 E6                 1854 	mov	a,@r0
   0813 9D                 1855 	subb	a,r5
   0814 08                 1856 	inc	r0
   0815 E6                 1857 	mov	a,@r0
   0816 64 80              1858 	xrl	a,#0x80
   0818 8F F0              1859 	mov	b,r7
   081A 63 F0 80           1860 	xrl	b,#0x80
   081D 95 F0              1861 	subb	a,b
   081F 40 03              1862 	jc	00126$
   0821 02 08 DB           1863 	ljmp	00111$
   0824                    1864 00126$:
   0824 C0 02              1865 	push	ar2
   0826 E5 08              1866 	mov	a,_bp
   0828 24 04              1867 	add	a,#0x04
   082A F8                 1868 	mov	r0,a
   082B EE                 1869 	mov	a,r6
   082C 26                 1870 	add	a,@r0
   082D FB                 1871 	mov	r3,a
   082E E4                 1872 	clr	a
   082F 08                 1873 	inc	r0
   0830 36                 1874 	addc	a,@r0
   0831 FC                 1875 	mov	r4,a
   0832 08                 1876 	inc	r0
   0833 86 05              1877 	mov	ar5,@r0
   0835 E5 08              1878 	mov	a,_bp
   0837 24 04              1879 	add	a,#0x04
   0839 F8                 1880 	mov	r0,a
   083A A9 08              1881 	mov	r1,_bp
   083C 09                 1882 	inc	r1
   083D E7                 1883 	mov	a,@r1
   083E 26                 1884 	add	a,@r0
   083F C0 E0              1885 	push	acc
   0841 09                 1886 	inc	r1
   0842 E7                 1887 	mov	a,@r1
   0843 08                 1888 	inc	r0
   0844 36                 1889 	addc	a,@r0
   0845 C0 E0              1890 	push	acc
   0847 08                 1891 	inc	r0
   0848 E6                 1892 	mov	a,@r0
   0849 C0 E0              1893 	push	acc
   084B E5 08              1894 	mov	a,_bp
   084D 24 0A              1895 	add	a,#0x0a
   084F F8                 1896 	mov	r0,a
   0850 D0 E0              1897 	pop	acc
   0852 F6                 1898 	mov	@r0,a
   0853 18                 1899 	dec	r0
   0854 D0 E0              1900 	pop	acc
   0856 F6                 1901 	mov	@r0,a
   0857 18                 1902 	dec	r0
   0858 D0 E0              1903 	pop	acc
   085A F6                 1904 	mov	@r0,a
   085B E5 08              1905 	mov	a,_bp
   085D 24 08              1906 	add	a,#0x08
   085F F8                 1907 	mov	r0,a
   0860 86 82              1908 	mov	dpl,@r0
   0862 08                 1909 	inc	r0
   0863 86 83              1910 	mov	dph,@r0
   0865 08                 1911 	inc	r0
   0866 86 F0              1912 	mov	b,@r0
   0868 E5 08              1913 	mov	a,_bp
   086A 24 07              1914 	add	a,#0x07
   086C F9                 1915 	mov	r1,a
   086D 12 0C CC           1916 	lcall	__gptrget
   0870 F7                 1917 	mov	@r1,a
   0871 8B 82              1918 	mov	dpl,r3
   0873 8C 83              1919 	mov	dph,r4
   0875 8D F0              1920 	mov	b,r5
   0877 E5 08              1921 	mov	a,_bp
   0879 24 07              1922 	add	a,#0x07
   087B F8                 1923 	mov	r0,a
   087C E6                 1924 	mov	a,@r0
   087D 12 0C 91           1925 	lcall	__gptrput
   0880 8E 07              1926 	mov	ar7,r6
   0882 7D 00              1927 	mov	r5,#0x00
   0884 1F                 1928 	dec	r7
   0885 BF FF 01           1929 	cjne	r7,#0xff,00127$
   0888 1D                 1930 	dec	r5
   0889                    1931 00127$:
   0889 A8 08              1932 	mov	r0,_bp
   088B 08                 1933 	inc	r0
   088C EF                 1934 	mov	a,r7
   088D C3                 1935 	clr	c
   088E 96                 1936 	subb	a,@r0
   088F FF                 1937 	mov	r7,a
   0890 ED                 1938 	mov	a,r5
   0891 08                 1939 	inc	r0
   0892 96                 1940 	subb	a,@r0
   0893 FD                 1941 	mov	r5,a
   0894 E5 08              1942 	mov	a,_bp
   0896 24 04              1943 	add	a,#0x04
   0898 F8                 1944 	mov	r0,a
   0899 EF                 1945 	mov	a,r7
   089A 26                 1946 	add	a,@r0
   089B FF                 1947 	mov	r7,a
   089C ED                 1948 	mov	a,r5
   089D 08                 1949 	inc	r0
   089E 36                 1950 	addc	a,@r0
   089F FD                 1951 	mov	r5,a
   08A0 08                 1952 	inc	r0
   08A1 86 02              1953 	mov	ar2,@r0
   08A3 8F 82              1954 	mov	dpl,r7
   08A5 8D 83              1955 	mov	dph,r5
   08A7 8A F0              1956 	mov	b,r2
   08A9 12 0C CC           1957 	lcall	__gptrget
   08AC FB                 1958 	mov	r3,a
   08AD E5 08              1959 	mov	a,_bp
   08AF 24 08              1960 	add	a,#0x08
   08B1 F8                 1961 	mov	r0,a
   08B2 86 82              1962 	mov	dpl,@r0
   08B4 08                 1963 	inc	r0
   08B5 86 83              1964 	mov	dph,@r0
   08B7 08                 1965 	inc	r0
   08B8 86 F0              1966 	mov	b,@r0
   08BA EB                 1967 	mov	a,r3
   08BB 12 0C 91           1968 	lcall	__gptrput
   08BE 8F 82              1969 	mov	dpl,r7
   08C0 8D 83              1970 	mov	dph,r5
   08C2 8A F0              1971 	mov	b,r2
   08C4 E5 08              1972 	mov	a,_bp
   08C6 24 07              1973 	add	a,#0x07
   08C8 F8                 1974 	mov	r0,a
   08C9 E6                 1975 	mov	a,@r0
   08CA 12 0C 91           1976 	lcall	__gptrput
   08CD A8 08              1977 	mov	r0,_bp
   08CF 08                 1978 	inc	r0
   08D0 06                 1979 	inc	@r0
   08D1 B6 00 02           1980 	cjne	@r0,#0x00,00128$
   08D4 08                 1981 	inc	r0
   08D5 06                 1982 	inc	@r0
   08D6                    1983 00128$:
   08D6 D0 02              1984 	pop	ar2
   08D8 02 08 0A           1985 	ljmp	00108$
   08DB                    1986 00111$:
                           1987 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:73: p[len]=0;
   08DB E5 08              1988 	mov	a,_bp
   08DD 24 04              1989 	add	a,#0x04
   08DF F8                 1990 	mov	r0,a
   08E0 EE                 1991 	mov	a,r6
   08E1 26                 1992 	add	a,@r0
   08E2 FE                 1993 	mov	r6,a
   08E3 E4                 1994 	clr	a
   08E4 08                 1995 	inc	r0
   08E5 36                 1996 	addc	a,@r0
   08E6 FA                 1997 	mov	r2,a
   08E7 08                 1998 	inc	r0
   08E8 86 03              1999 	mov	ar3,@r0
   08EA 8E 82              2000 	mov	dpl,r6
   08EC 8A 83              2001 	mov	dph,r2
   08EE 8B F0              2002 	mov	b,r3
   08F0 E4                 2003 	clr	a
   08F1 12 0C 91           2004 	lcall	__gptrput
   08F4 85 08 81           2005 	mov	sp,_bp
   08F7 D0 08              2006 	pop	_bp
   08F9 22                 2007 	ret
                           2008 ;------------------------------------------------------------
                           2009 ;Allocation info for local variables in function 'uart_s2i'
                           2010 ;------------------------------------------------------------
                           2011 ;s                         Allocated to registers r2 r3 r4 
                           2012 ;i                         Allocated to registers r5 r6 
                           2013 ;sign                      Allocated to stack - offset 1
                           2014 ;sloc0                     Allocated to stack - offset 7
                           2015 ;sloc1                     Allocated to stack - offset 2
                           2016 ;------------------------------------------------------------
                           2017 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:76: int uart_s2i(char *s)	// Convert String to Integer
                           2018 ;	-----------------------------------------
                           2019 ;	 function uart_s2i
                           2020 ;	-----------------------------------------
   08FA                    2021 _uart_s2i:
   08FA C0 08              2022 	push	_bp
   08FC E5 81              2023 	mov	a,sp
   08FE F5 08              2024 	mov	_bp,a
   0900 24 04              2025 	add	a,#0x04
   0902 F5 81              2026 	mov	sp,a
   0904 AA 82              2027 	mov	r2,dpl
   0906 AB 83              2028 	mov	r3,dph
   0908 AC F0              2029 	mov	r4,b
                           2030 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:78: int i=0;char sign='+';
   090A 7D 00              2031 	mov	r5,#0x00
   090C 7E 00              2032 	mov	r6,#0x00
   090E A8 08              2033 	mov	r0,_bp
   0910 08                 2034 	inc	r0
   0911 76 2B              2035 	mov	@r0,#0x2B
                           2036 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:79: if(*s=='-'){sign='-';s++;}
   0913 8A 82              2037 	mov	dpl,r2
   0915 8B 83              2038 	mov	dph,r3
   0917 8C F0              2039 	mov	b,r4
   0919 12 0C CC           2040 	lcall	__gptrget
   091C FF                 2041 	mov	r7,a
   091D BF 2D 0A           2042 	cjne	r7,#0x2D,00112$
   0920 A8 08              2043 	mov	r0,_bp
   0922 08                 2044 	inc	r0
   0923 76 2D              2045 	mov	@r0,#0x2D
   0925 0A                 2046 	inc	r2
   0926 BA 00 01           2047 	cjne	r2,#0x00,00117$
   0929 0B                 2048 	inc	r3
   092A                    2049 00117$:
                           2050 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:80: while(*s!=0){i=i*10+(*s-'0');s++;}
   092A                    2051 00112$:
   092A A8 08              2052 	mov	r0,_bp
   092C 08                 2053 	inc	r0
   092D 08                 2054 	inc	r0
   092E A6 02              2055 	mov	@r0,ar2
   0930 08                 2056 	inc	r0
   0931 A6 03              2057 	mov	@r0,ar3
   0933 08                 2058 	inc	r0
   0934 A6 04              2059 	mov	@r0,ar4
   0936                    2060 00103$:
   0936 A8 08              2061 	mov	r0,_bp
   0938 08                 2062 	inc	r0
   0939 08                 2063 	inc	r0
   093A 86 82              2064 	mov	dpl,@r0
   093C 08                 2065 	inc	r0
   093D 86 83              2066 	mov	dph,@r0
   093F 08                 2067 	inc	r0
   0940 86 F0              2068 	mov	b,@r0
   0942 12 0C CC           2069 	lcall	__gptrget
   0945 FB                 2070 	mov	r3,a
   0946 60 39              2071 	jz	00105$
   0948 C0 03              2072 	push	ar3
   094A C0 05              2073 	push	ar5
   094C C0 06              2074 	push	ar6
   094E 90 00 0A           2075 	mov	dptr,#0x000A
   0951 12 0C AA           2076 	lcall	__mulint
   0954 AF 82              2077 	mov	r7,dpl
   0956 AA 83              2078 	mov	r2,dph
   0958 15 81              2079 	dec	sp
   095A 15 81              2080 	dec	sp
   095C D0 03              2081 	pop	ar3
   095E EB                 2082 	mov	a,r3
   095F 33                 2083 	rlc	a
   0960 95 E0              2084 	subb	a,acc
   0962 FC                 2085 	mov	r4,a
   0963 EB                 2086 	mov	a,r3
   0964 24 D0              2087 	add	a,#0xd0
   0966 FB                 2088 	mov	r3,a
   0967 EC                 2089 	mov	a,r4
   0968 34 FF              2090 	addc	a,#0xff
   096A FC                 2091 	mov	r4,a
   096B EB                 2092 	mov	a,r3
   096C 2F                 2093 	add	a,r7
   096D FF                 2094 	mov	r7,a
   096E EC                 2095 	mov	a,r4
   096F 3A                 2096 	addc	a,r2
   0970 FA                 2097 	mov	r2,a
   0971 8F 05              2098 	mov	ar5,r7
   0973 8A 06              2099 	mov	ar6,r2
   0975 A8 08              2100 	mov	r0,_bp
   0977 08                 2101 	inc	r0
   0978 08                 2102 	inc	r0
   0979 06                 2103 	inc	@r0
   097A B6 00 02           2104 	cjne	@r0,#0x00,00119$
   097D 08                 2105 	inc	r0
   097E 06                 2106 	inc	@r0
   097F                    2107 00119$:
   097F 80 B5              2108 	sjmp	00103$
   0981                    2109 00105$:
                           2110 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:81: if(sign=='-')i=-i;
   0981 A8 08              2111 	mov	r0,_bp
   0983 08                 2112 	inc	r0
   0984 B6 2D 07           2113 	cjne	@r0,#0x2D,00107$
   0987 C3                 2114 	clr	c
   0988 E4                 2115 	clr	a
   0989 9D                 2116 	subb	a,r5
   098A FD                 2117 	mov	r5,a
   098B E4                 2118 	clr	a
   098C 9E                 2119 	subb	a,r6
   098D FE                 2120 	mov	r6,a
   098E                    2121 00107$:
                           2122 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:82: return i;
   098E 8D 82              2123 	mov	dpl,r5
   0990 8E 83              2124 	mov	dph,r6
   0992 85 08 81           2125 	mov	sp,_bp
   0995 D0 08              2126 	pop	_bp
   0997 22                 2127 	ret
                           2128 ;------------------------------------------------------------
                           2129 ;Allocation info for local variables in function 'uart_put_integer'
                           2130 ;------------------------------------------------------------
                           2131 ;i                         Allocated to registers r2 r3 
                           2132 ;s                         Allocated to stack - offset 1
                           2133 ;------------------------------------------------------------
                           2134 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:85: void uart_put_integer(int i)	// Put Integer to UART, Require uart_i2s(),uart_put_string()
                           2135 ;	-----------------------------------------
                           2136 ;	 function uart_put_integer
                           2137 ;	-----------------------------------------
   0998                    2138 _uart_put_integer:
   0998 C0 08              2139 	push	_bp
   099A E5 81              2140 	mov	a,sp
   099C F5 08              2141 	mov	_bp,a
   099E 24 07              2142 	add	a,#0x07
   09A0 F5 81              2143 	mov	sp,a
   09A2 AA 82              2144 	mov	r2,dpl
   09A4 AB 83              2145 	mov	r3,dph
                           2146 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:88: uart_i2s(i,s);uart_put_string(s);
   09A6 AC 08              2147 	mov	r4,_bp
   09A8 0C                 2148 	inc	r4
   09A9 8C 05              2149 	mov	ar5,r4
   09AB 7E 00              2150 	mov	r6,#0x00
   09AD 7F 40              2151 	mov	r7,#0x40
   09AF C0 04              2152 	push	ar4
   09B1 C0 05              2153 	push	ar5
   09B3 C0 06              2154 	push	ar6
   09B5 C0 07              2155 	push	ar7
   09B7 8A 82              2156 	mov	dpl,r2
   09B9 8B 83              2157 	mov	dph,r3
   09BB 12 07 22           2158 	lcall	_uart_i2s
   09BE 15 81              2159 	dec	sp
   09C0 15 81              2160 	dec	sp
   09C2 15 81              2161 	dec	sp
   09C4 D0 04              2162 	pop	ar4
   09C6 7A 00              2163 	mov	r2,#0x00
   09C8 7B 40              2164 	mov	r3,#0x40
   09CA 8C 82              2165 	mov	dpl,r4
   09CC 8A 83              2166 	mov	dph,r2
   09CE 8B F0              2167 	mov	b,r3
   09D0 12 06 C0           2168 	lcall	_uart_put_string
   09D3 85 08 81           2169 	mov	sp,_bp
   09D6 D0 08              2170 	pop	_bp
   09D8 22                 2171 	ret
                           2172 ;------------------------------------------------------------
                           2173 ;Allocation info for local variables in function 'uart_get_integer'
                           2174 ;------------------------------------------------------------
                           2175 ;s                         Allocated to stack - offset 1
                           2176 ;------------------------------------------------------------
                           2177 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:91: int uart_get_integer()		// Get Integer from UART, Require uart_get_string(),uart_s2i()
                           2178 ;	-----------------------------------------
                           2179 ;	 function uart_get_integer
                           2180 ;	-----------------------------------------
   09D9                    2181 _uart_get_integer:
   09D9 C0 08              2182 	push	_bp
   09DB E5 81              2183 	mov	a,sp
   09DD F5 08              2184 	mov	_bp,a
   09DF 24 07              2185 	add	a,#0x07
   09E1 F5 81              2186 	mov	sp,a
                           2187 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:94: uart_get_string(s);
   09E3 AA 08              2188 	mov	r2,_bp
   09E5 0A                 2189 	inc	r2
   09E6 8A 03              2190 	mov	ar3,r2
   09E8 7C 00              2191 	mov	r4,#0x00
   09EA 7D 40              2192 	mov	r5,#0x40
   09EC 8B 82              2193 	mov	dpl,r3
   09EE 8C 83              2194 	mov	dph,r4
   09F0 8D F0              2195 	mov	b,r5
   09F2 C0 02              2196 	push	ar2
   09F4 12 06 EB           2197 	lcall	_uart_get_string
   09F7 D0 02              2198 	pop	ar2
                           2199 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:95: return uart_s2i(s);
   09F9 7B 00              2200 	mov	r3,#0x00
   09FB 7C 40              2201 	mov	r4,#0x40
   09FD 8A 82              2202 	mov	dpl,r2
   09FF 8B 83              2203 	mov	dph,r3
   0A01 8C F0              2204 	mov	b,r4
   0A03 12 08 FA           2205 	lcall	_uart_s2i
   0A06 85 08 81           2206 	mov	sp,_bp
   0A09 D0 08              2207 	pop	_bp
   0A0B 22                 2208 	ret
                           2209 ;------------------------------------------------------------
                           2210 ;Allocation info for local variables in function 'uart_put_byte'
                           2211 ;------------------------------------------------------------
                           2212 ;byte_data                 Allocated to registers r2 
                           2213 ;------------------------------------------------------------
                           2214 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:98: void uart_put_byte(unsigned char byte_data)
                           2215 ;	-----------------------------------------
                           2216 ;	 function uart_put_byte
                           2217 ;	-----------------------------------------
   0A0C                    2218 _uart_put_byte:
                           2219 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:100: uart_put_char(uart_ASCII[byte_data/16]);uart_put_char(uart_ASCII[byte_data%16]);
   0A0C E5 82              2220 	mov	a,dpl
   0A0E FA                 2221 	mov	r2,a
   0A0F C4                 2222 	swap	a
   0A10 54 0F              2223 	anl	a,#0x0f
   0A12 90 0D ED           2224 	mov	dptr,#_uart_ASCII
   0A15 93                 2225 	movc	a,@a+dptr
   0A16 F5 82              2226 	mov	dpl,a
   0A18 C0 02              2227 	push	ar2
   0A1A 12 06 9F           2228 	lcall	_uart_put_char
   0A1D D0 02              2229 	pop	ar2
   0A1F 74 0F              2230 	mov	a,#0x0F
   0A21 5A                 2231 	anl	a,r2
   0A22 90 0D ED           2232 	mov	dptr,#_uart_ASCII
   0A25 93                 2233 	movc	a,@a+dptr
   0A26 F5 82              2234 	mov	dpl,a
   0A28 02 06 9F           2235 	ljmp	_uart_put_char
                           2236 ;------------------------------------------------------------
                           2237 ;Allocation info for local variables in function 'uart_put_word'
                           2238 ;------------------------------------------------------------
                           2239 ;word_data                 Allocated to registers r2 r3 
                           2240 ;------------------------------------------------------------
                           2241 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:103: void uart_put_word(unsigned int word_data)
                           2242 ;	-----------------------------------------
                           2243 ;	 function uart_put_word
                           2244 ;	-----------------------------------------
   0A2B                    2245 _uart_put_word:
   0A2B AA 82              2246 	mov	r2,dpl
   0A2D AB 83              2247 	mov	r3,dph
                           2248 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:105: uart_put_byte(word_data/256);uart_put_byte(word_data%256);
   0A2F 8B 04              2249 	mov	ar4,r3
   0A31 8C 82              2250 	mov	dpl,r4
   0A33 C0 02              2251 	push	ar2
   0A35 C0 03              2252 	push	ar3
   0A37 12 0A 0C           2253 	lcall	_uart_put_byte
   0A3A D0 03              2254 	pop	ar3
   0A3C D0 02              2255 	pop	ar2
   0A3E 8A 82              2256 	mov	dpl,r2
   0A40 02 0A 0C           2257 	ljmp	_uart_put_byte
                           2258 ;------------------------------------------------------------
                           2259 ;Allocation info for local variables in function 'uart_get_nibble'
                           2260 ;------------------------------------------------------------
                           2261 ;c                         Allocated to registers r2 
                           2262 ;------------------------------------------------------------
                           2263 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:108: char uart_get_nibble()
                           2264 ;	-----------------------------------------
                           2265 ;	 function uart_get_nibble
                           2266 ;	-----------------------------------------
   0A43                    2267 _uart_get_nibble:
                           2268 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:111: c=uart_get_char_echo();
   0A43 12 06 B1           2269 	lcall	_uart_get_char_echo
   0A46 AA 82              2270 	mov	r2,dpl
                           2271 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:112: if('0'<=c && c<='9')return(c-'0');
   0A48 C3                 2272 	clr	c
   0A49 EA                 2273 	mov	a,r2
   0A4A 64 80              2274 	xrl	a,#0x80
   0A4C 94 B0              2275 	subb	a,#0xb0
   0A4E 40 11              2276 	jc	00102$
   0A50 74 B9              2277 	mov	a,#(0x39 ^ 0x80)
   0A52 8A F0              2278 	mov	b,r2
   0A54 63 F0 80           2279 	xrl	b,#0x80
   0A57 95 F0              2280 	subb	a,b
   0A59 40 06              2281 	jc	00102$
   0A5B EA                 2282 	mov	a,r2
   0A5C 24 D0              2283 	add	a,#0xd0
   0A5E F5 82              2284 	mov	dpl,a
   0A60 22                 2285 	ret
   0A61                    2286 00102$:
                           2287 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:113: if('A'<=c && c<='F')return(10+c-'A');
   0A61 C3                 2288 	clr	c
   0A62 EA                 2289 	mov	a,r2
   0A63 64 80              2290 	xrl	a,#0x80
   0A65 94 C1              2291 	subb	a,#0xc1
   0A67 40 11              2292 	jc	00105$
   0A69 74 C6              2293 	mov	a,#(0x46 ^ 0x80)
   0A6B 8A F0              2294 	mov	b,r2
   0A6D 63 F0 80           2295 	xrl	b,#0x80
   0A70 95 F0              2296 	subb	a,b
   0A72 40 06              2297 	jc	00105$
   0A74 74 C9              2298 	mov	a,#0xC9
   0A76 2A                 2299 	add	a,r2
   0A77 F5 82              2300 	mov	dpl,a
   0A79 22                 2301 	ret
   0A7A                    2302 00105$:
                           2303 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:114: if('a'<=c && c<='f')return(10+c-'a');
   0A7A C3                 2304 	clr	c
   0A7B EA                 2305 	mov	a,r2
   0A7C 64 80              2306 	xrl	a,#0x80
   0A7E 94 E1              2307 	subb	a,#0xe1
   0A80 40 11              2308 	jc	00108$
   0A82 74 E6              2309 	mov	a,#(0x66 ^ 0x80)
   0A84 8A F0              2310 	mov	b,r2
   0A86 63 F0 80           2311 	xrl	b,#0x80
   0A89 95 F0              2312 	subb	a,b
   0A8B 40 06              2313 	jc	00108$
   0A8D 74 A9              2314 	mov	a,#0xA9
   0A8F 2A                 2315 	add	a,r2
   0A90 F5 82              2316 	mov	dpl,a
                           2317 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:115: return(0);
   0A92 22                 2318 	ret
   0A93                    2319 00108$:
   0A93 75 82 00           2320 	mov	dpl,#0x00
   0A96 22                 2321 	ret
                           2322 ;------------------------------------------------------------
                           2323 ;Allocation info for local variables in function 'uart_get_byte'
                           2324 ;------------------------------------------------------------
                           2325 ;------------------------------------------------------------
                           2326 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:118: unsigned char uart_get_byte()
                           2327 ;	-----------------------------------------
                           2328 ;	 function uart_get_byte
                           2329 ;	-----------------------------------------
   0A97                    2330 _uart_get_byte:
                           2331 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:120: return(16*uart_get_nibble()+uart_get_nibble());
   0A97 12 0A 43           2332 	lcall	_uart_get_nibble
   0A9A E5 82              2333 	mov	a,dpl
   0A9C C4                 2334 	swap	a
   0A9D 54 F0              2335 	anl	a,#0xf0
   0A9F FA                 2336 	mov	r2,a
   0AA0 C0 02              2337 	push	ar2
   0AA2 12 0A 43           2338 	lcall	_uart_get_nibble
   0AA5 AB 82              2339 	mov	r3,dpl
   0AA7 D0 02              2340 	pop	ar2
   0AA9 EB                 2341 	mov	a,r3
   0AAA 2A                 2342 	add	a,r2
   0AAB F5 82              2343 	mov	dpl,a
   0AAD 22                 2344 	ret
                           2345 ;------------------------------------------------------------
                           2346 ;Allocation info for local variables in function 'uart_get_word'
                           2347 ;------------------------------------------------------------
                           2348 ;------------------------------------------------------------
                           2349 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:123: unsigned int uart_get_word()
                           2350 ;	-----------------------------------------
                           2351 ;	 function uart_get_word
                           2352 ;	-----------------------------------------
   0AAE                    2353 _uart_get_word:
                           2354 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\/uart.c:125: return(256*uart_get_byte()+uart_get_byte());
   0AAE 12 0A 97           2355 	lcall	_uart_get_byte
   0AB1 AB 82              2356 	mov	r3,dpl
   0AB3 7A 00              2357 	mov	r2,#0x00
   0AB5 C0 02              2358 	push	ar2
   0AB7 C0 03              2359 	push	ar3
   0AB9 12 0A 97           2360 	lcall	_uart_get_byte
   0ABC AC 82              2361 	mov	r4,dpl
   0ABE D0 03              2362 	pop	ar3
   0AC0 D0 02              2363 	pop	ar2
   0AC2 7D 00              2364 	mov	r5,#0x00
   0AC4 EC                 2365 	mov	a,r4
   0AC5 2A                 2366 	add	a,r2
   0AC6 F5 82              2367 	mov	dpl,a
   0AC8 ED                 2368 	mov	a,r5
   0AC9 3B                 2369 	addc	a,r3
   0ACA F5 83              2370 	mov	dph,a
   0ACC 22                 2371 	ret
                           2372 ;------------------------------------------------------------
                           2373 ;Allocation info for local variables in function 'main'
                           2374 ;------------------------------------------------------------
                           2375 ;s                         Allocated to registers r2 
                           2376 ;addr                      Allocated to registers r3 r4 
                           2377 ;val                       Allocated to registers r5 
                           2378 ;------------------------------------------------------------
                           2379 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:15: void main() {
                           2380 ;	-----------------------------------------
                           2381 ;	 function main
                           2382 ;	-----------------------------------------
   0ACD                    2383 _main:
                           2384 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:19: uart_initialize();
   0ACD 12 06 86           2385 	lcall	_uart_initialize
                           2386 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:20: clcd_initialize();
   0AD0 12 00 64           2387 	lcall	_clcd_initialize
                           2388 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:22: while (1) {
   0AD3                    2389 00106$:
                           2390 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:23: clcd_set_cursor(0, 0);
   0AD3 E4                 2391 	clr	a
   0AD4 C0 E0              2392 	push	acc
   0AD6 C0 E0              2393 	push	acc
   0AD8 90 00 00           2394 	mov	dptr,#0x0000
   0ADB 12 00 A8           2395 	lcall	_clcd_set_cursor
   0ADE 15 81              2396 	dec	sp
   0AE0 15 81              2397 	dec	sp
                           2398 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:24: uart_put_string("\n[ Write:0 |  Read:1 ]");
   0AE2 90 0D FE           2399 	mov	dptr,#__str_0
   0AE5 75 F0 80           2400 	mov	b,#0x80
   0AE8 12 06 C0           2401 	lcall	_uart_put_string
                           2402 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:25: s = uart_get_char_echo();
   0AEB 12 06 B1           2403 	lcall	_uart_get_char_echo
   0AEE AA 82              2404 	mov	r2,dpl
                           2405 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:26: uart_put_string("\r\n");
   0AF0 90 0E 15           2406 	mov	dptr,#__str_1
   0AF3 75 F0 80           2407 	mov	b,#0x80
   0AF6 C0 02              2408 	push	ar2
   0AF8 12 06 C0           2409 	lcall	_uart_put_string
   0AFB D0 02              2410 	pop	ar2
                           2411 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:27: if (s == '0') {
   0AFD BA 30 02           2412 	cjne	r2,#0x30,00113$
   0B00 80 03              2413 	sjmp	00114$
   0B02                    2414 00113$:
   0B02 02 0B AC           2415 	ljmp	00102$
   0B05                    2416 00114$:
                           2417 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:28: clcd_set_cursor(0, 0);
   0B05 C0 02              2418 	push	ar2
   0B07 E4                 2419 	clr	a
   0B08 C0 E0              2420 	push	acc
   0B0A C0 E0              2421 	push	acc
   0B0C 90 00 00           2422 	mov	dptr,#0x0000
   0B0F 12 00 A8           2423 	lcall	_clcd_set_cursor
   0B12 15 81              2424 	dec	sp
   0B14 15 81              2425 	dec	sp
                           2426 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:29: clcd_put_string("Write       ");
   0B16 90 0E 18           2427 	mov	dptr,#__str_2
   0B19 75 F0 80           2428 	mov	b,#0x80
   0B1C 12 00 E6           2429 	lcall	_clcd_put_string
                           2430 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:31: uart_put_string("Address: ");
   0B1F 90 0E 25           2431 	mov	dptr,#__str_3
   0B22 75 F0 80           2432 	mov	b,#0x80
   0B25 12 06 C0           2433 	lcall	_uart_put_string
                           2434 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:32: addr = uart_get_word();
   0B28 12 0A AE           2435 	lcall	_uart_get_word
   0B2B AB 82              2436 	mov	r3,dpl
   0B2D AC 83              2437 	mov	r4,dph
                           2438 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:33: uart_put_string("\r\n");
   0B2F 90 0E 15           2439 	mov	dptr,#__str_1
   0B32 75 F0 80           2440 	mov	b,#0x80
   0B35 C0 03              2441 	push	ar3
   0B37 C0 04              2442 	push	ar4
   0B39 12 06 C0           2443 	lcall	_uart_put_string
                           2444 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:34: uart_put_string("Data: ");
   0B3C 90 0E 2F           2445 	mov	dptr,#__str_4
   0B3F 75 F0 80           2446 	mov	b,#0x80
   0B42 12 06 C0           2447 	lcall	_uart_put_string
                           2448 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:35: val = uart_get_byte();
   0B45 12 0A 97           2449 	lcall	_uart_get_byte
   0B48 AD 82              2450 	mov	r5,dpl
                           2451 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:36: uart_put_string("\r\n");
   0B4A 90 0E 15           2452 	mov	dptr,#__str_1
   0B4D 75 F0 80           2453 	mov	b,#0x80
   0B50 C0 05              2454 	push	ar5
   0B52 12 06 C0           2455 	lcall	_uart_put_string
   0B55 D0 05              2456 	pop	ar5
   0B57 D0 04              2457 	pop	ar4
   0B59 D0 03              2458 	pop	ar3
                           2459 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:37: seeprom_write_byte(0, addr, val);
   0B5B C0 03              2460 	push	ar3
   0B5D C0 04              2461 	push	ar4
   0B5F C0 05              2462 	push	ar5
   0B61 C0 05              2463 	push	ar5
   0B63 C0 03              2464 	push	ar3
   0B65 C0 04              2465 	push	ar4
   0B67 75 82 00           2466 	mov	dpl,#0x00
   0B6A 12 03 D4           2467 	lcall	_seeprom_write_byte
   0B6D 15 81              2468 	dec	sp
   0B6F 15 81              2469 	dec	sp
   0B71 15 81              2470 	dec	sp
                           2471 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:41: clcd_set_cursor(1, 0);
   0B73 E4                 2472 	clr	a
   0B74 C0 E0              2473 	push	acc
   0B76 C0 E0              2474 	push	acc
   0B78 90 00 01           2475 	mov	dptr,#0x0001
   0B7B 12 00 A8           2476 	lcall	_clcd_set_cursor
   0B7E 15 81              2477 	dec	sp
   0B80 15 81              2478 	dec	sp
                           2479 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:42: clcd_put_string("A: ");
   0B82 90 0E 36           2480 	mov	dptr,#__str_5
   0B85 75 F0 80           2481 	mov	b,#0x80
   0B88 12 00 E6           2482 	lcall	_clcd_put_string
   0B8B D0 05              2483 	pop	ar5
   0B8D D0 04              2484 	pop	ar4
   0B8F D0 03              2485 	pop	ar3
                           2486 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:43: clcd_put_int(addr);
   0B91 8B 82              2487 	mov	dpl,r3
   0B93 8C 83              2488 	mov	dph,r4
   0B95 C0 05              2489 	push	ar5
   0B97 12 03 20           2490 	lcall	_clcd_put_int
                           2491 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:44: clcd_put_string("|D: ");
   0B9A 90 0E 3A           2492 	mov	dptr,#__str_6
   0B9D 75 F0 80           2493 	mov	b,#0x80
   0BA0 12 00 E6           2494 	lcall	_clcd_put_string
   0BA3 D0 05              2495 	pop	ar5
                           2496 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:45: clcd_put_byte(val);
   0BA5 8D 82              2497 	mov	dpl,r5
   0BA7 12 01 11           2498 	lcall	_clcd_put_byte
   0BAA D0 02              2499 	pop	ar2
   0BAC                    2500 00102$:
                           2501 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:47: if (s == '1') {
   0BAC BA 31 02           2502 	cjne	r2,#0x31,00115$
   0BAF 80 03              2503 	sjmp	00116$
   0BB1                    2504 00115$:
   0BB1 02 0C 55           2505 	ljmp	00104$
   0BB4                    2506 00116$:
                           2507 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:48: clcd_set_cursor(0, 0);
   0BB4 E4                 2508 	clr	a
   0BB5 C0 E0              2509 	push	acc
   0BB7 C0 E0              2510 	push	acc
   0BB9 90 00 00           2511 	mov	dptr,#0x0000
   0BBC 12 00 A8           2512 	lcall	_clcd_set_cursor
   0BBF 15 81              2513 	dec	sp
   0BC1 15 81              2514 	dec	sp
                           2515 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:49: clcd_put_string("Read ");
   0BC3 90 0E 3F           2516 	mov	dptr,#__str_7
   0BC6 75 F0 80           2517 	mov	b,#0x80
   0BC9 12 00 E6           2518 	lcall	_clcd_put_string
                           2519 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:50: uart_put_string("Address: ");
   0BCC 90 0E 25           2520 	mov	dptr,#__str_3
   0BCF 75 F0 80           2521 	mov	b,#0x80
   0BD2 12 06 C0           2522 	lcall	_uart_put_string
                           2523 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:51: addr = uart_get_word();
   0BD5 12 0A AE           2524 	lcall	_uart_get_word
   0BD8 AA 82              2525 	mov	r2,dpl
   0BDA AD 83              2526 	mov	r5,dph
   0BDC 8A 03              2527 	mov	ar3,r2
   0BDE 8D 04              2528 	mov	ar4,r5
                           2529 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:52: uart_put_string("\r\n");
   0BE0 90 0E 15           2530 	mov	dptr,#__str_1
   0BE3 75 F0 80           2531 	mov	b,#0x80
   0BE6 C0 03              2532 	push	ar3
   0BE8 C0 04              2533 	push	ar4
   0BEA 12 06 C0           2534 	lcall	_uart_put_string
                           2535 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:53: uart_put_string("Data: ");
   0BED 90 0E 2F           2536 	mov	dptr,#__str_4
   0BF0 75 F0 80           2537 	mov	b,#0x80
   0BF3 12 06 C0           2538 	lcall	_uart_put_string
   0BF6 D0 04              2539 	pop	ar4
   0BF8 D0 03              2540 	pop	ar3
                           2541 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:54: uart_put_byte(seeprom_read_byte(0, addr));
   0BFA C0 03              2542 	push	ar3
   0BFC C0 04              2543 	push	ar4
   0BFE C0 03              2544 	push	ar3
   0C00 C0 04              2545 	push	ar4
   0C02 75 82 00           2546 	mov	dpl,#0x00
   0C05 12 04 FC           2547 	lcall	_seeprom_read_byte
   0C08 15 81              2548 	dec	sp
   0C0A 15 81              2549 	dec	sp
   0C0C 12 0A 0C           2550 	lcall	_uart_put_byte
                           2551 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:55: uart_put_string("\r\n");
   0C0F 90 0E 15           2552 	mov	dptr,#__str_1
   0C12 75 F0 80           2553 	mov	b,#0x80
   0C15 12 06 C0           2554 	lcall	_uart_put_string
                           2555 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:58: clcd_set_cursor(1, 0);
   0C18 E4                 2556 	clr	a
   0C19 C0 E0              2557 	push	acc
   0C1B C0 E0              2558 	push	acc
   0C1D 90 00 01           2559 	mov	dptr,#0x0001
   0C20 12 00 A8           2560 	lcall	_clcd_set_cursor
   0C23 15 81              2561 	dec	sp
   0C25 15 81              2562 	dec	sp
                           2563 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:59: clcd_put_string("A: ");
   0C27 90 0E 36           2564 	mov	dptr,#__str_5
   0C2A 75 F0 80           2565 	mov	b,#0x80
   0C2D 12 00 E6           2566 	lcall	_clcd_put_string
   0C30 D0 04              2567 	pop	ar4
   0C32 D0 03              2568 	pop	ar3
                           2569 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:60: clcd_put_int(addr);
   0C34 8B 82              2570 	mov	dpl,r3
   0C36 8C 83              2571 	mov	dph,r4
   0C38 C0 03              2572 	push	ar3
   0C3A C0 04              2573 	push	ar4
   0C3C 12 03 20           2574 	lcall	_clcd_put_int
                           2575 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:61: clcd_put_string("|D: ");
   0C3F 90 0E 3A           2576 	mov	dptr,#__str_6
   0C42 75 F0 80           2577 	mov	b,#0x80
   0C45 12 00 E6           2578 	lcall	_clcd_put_string
                           2579 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:62: clcd_put_byte(seeprom_read_byte(0, addr));
   0C48 75 82 00           2580 	mov	dpl,#0x00
   0C4B 12 04 FC           2581 	lcall	_seeprom_read_byte
   0C4E 15 81              2582 	dec	sp
   0C50 15 81              2583 	dec	sp
   0C52 12 01 11           2584 	lcall	_clcd_put_byte
   0C55                    2585 00104$:
                           2586 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:64: delay(590);
   0C55 90 02 4E           2587 	mov	dptr,#0x024E
   0C58 12 0C 5E           2588 	lcall	_delay
   0C5B 02 0A D3           2589 	ljmp	00106$
                           2590 ;------------------------------------------------------------
                           2591 ;Allocation info for local variables in function 'delay'
                           2592 ;------------------------------------------------------------
                           2593 ;x                         Allocated to registers r2 r3 
                           2594 ;n                         Allocated to registers r4 r5 
                           2595 ;------------------------------------------------------------
                           2596 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:67: void delay(int x) {
                           2597 ;	-----------------------------------------
                           2598 ;	 function delay
                           2599 ;	-----------------------------------------
   0C5E                    2600 _delay:
   0C5E AA 82              2601 	mov	r2,dpl
   0C60 AB 83              2602 	mov	r3,dph
                           2603 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:69: while (x > 0) {
   0C62                    2604 00104$:
   0C62 C3                 2605 	clr	c
   0C63 E4                 2606 	clr	a
   0C64 9A                 2607 	subb	a,r2
   0C65 74 80              2608 	mov	a,#(0x00 ^ 0x80)
   0C67 8B F0              2609 	mov	b,r3
   0C69 63 F0 80           2610 	xrl	b,#0x80
   0C6C 95 F0              2611 	subb	a,b
   0C6E 50 20              2612 	jnc	00107$
                           2613 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:71: while (n > 0)
   0C70 7C 78              2614 	mov	r4,#0x78
   0C72 7D 00              2615 	mov	r5,#0x00
   0C74                    2616 00101$:
   0C74 C3                 2617 	clr	c
   0C75 E4                 2618 	clr	a
   0C76 9C                 2619 	subb	a,r4
   0C77 74 80              2620 	mov	a,#(0x00 ^ 0x80)
   0C79 8D F0              2621 	mov	b,r5
   0C7B 63 F0 80           2622 	xrl	b,#0x80
   0C7E 95 F0              2623 	subb	a,b
   0C80 50 07              2624 	jnc	00103$
                           2625 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:72: n--;
   0C82 1C                 2626 	dec	r4
   0C83 BC FF EE           2627 	cjne	r4,#0xff,00101$
   0C86 1D                 2628 	dec	r5
   0C87 80 EB              2629 	sjmp	00101$
   0C89                    2630 00103$:
                           2631 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW18\SEEPRO~1.C:73: x--;
   0C89 1A                 2632 	dec	r2
   0C8A BA FF D5           2633 	cjne	r2,#0xff,00104$
   0C8D 1B                 2634 	dec	r3
   0C8E 80 D2              2635 	sjmp	00104$
   0C90                    2636 00107$:
   0C90 22                 2637 	ret
                           2638 	.area CSEG    (CODE)
                           2639 	.area CONST   (CODE)
   0DDC                    2640 _ASCII:
   0DDC 30 31 32 33 34 35  2641 	.ascii "0123456789ABCDEF"
        36 37 38 39 41 42
        43 44 45 46
   0DEC 00                 2642 	.db 0x00
   0DED                    2643 _uart_ASCII:
   0DED 30 31 32 33 34 35  2644 	.ascii "0123456789ABCDEF"
        36 37 38 39 41 42
        43 44 45 46
   0DFD 00                 2645 	.db 0x00
   0DFE                    2646 __str_0:
   0DFE 0A                 2647 	.db 0x0A
   0DFF 5B 20 57 72 69 74  2648 	.ascii "[ Write:0 |  Read:1 ]"
        65 3A 30 20 7C 20
        20 52 65 61 64 3A
        31 20 5D
   0E14 00                 2649 	.db 0x00
   0E15                    2650 __str_1:
   0E15 0D                 2651 	.db 0x0D
   0E16 0A                 2652 	.db 0x0A
   0E17 00                 2653 	.db 0x00
   0E18                    2654 __str_2:
   0E18 57 72 69 74 65 20  2655 	.ascii "Write       "
        20 20 20 20 20 20
   0E24 00                 2656 	.db 0x00
   0E25                    2657 __str_3:
   0E25 41 64 64 72 65 73  2658 	.ascii "Address: "
        73 3A 20
   0E2E 00                 2659 	.db 0x00
   0E2F                    2660 __str_4:
   0E2F 44 61 74 61 3A 20  2661 	.ascii "Data: "
   0E35 00                 2662 	.db 0x00
   0E36                    2663 __str_5:
   0E36 41 3A 20           2664 	.ascii "A: "
   0E39 00                 2665 	.db 0x00
   0E3A                    2666 __str_6:
   0E3A 7C 44 3A 20        2667 	.ascii "|D: "
   0E3E 00                 2668 	.db 0x00
   0E3F                    2669 __str_7:
   0E3F 52 65 61 64 20     2670 	.ascii "Read "
   0E44 00                 2671 	.db 0x00
                           2672 	.area XINIT   (CODE)
                           2673 	.area CABS    (ABS,CODE)
