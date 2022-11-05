                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
                              4 ; This file was generated Thu Nov 03 12:06:29 2022
                              5 ;--------------------------------------------------------
                              6 	.module hw6
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _delayms
                             14 	.globl _CY
                             15 	.globl _AC
                             16 	.globl _F0
                             17 	.globl _RS1
                             18 	.globl _RS0
                             19 	.globl _OV
                             20 	.globl _F1
                             21 	.globl _P
                             22 	.globl _PS
                             23 	.globl _PT1
                             24 	.globl _PX1
                             25 	.globl _PT0
                             26 	.globl _PX0
                             27 	.globl _RD
                             28 	.globl _WR
                             29 	.globl _T1
                             30 	.globl _T0
                             31 	.globl _INT1
                             32 	.globl _INT0
                             33 	.globl _TXD
                             34 	.globl _RXD
                             35 	.globl _P3_7
                             36 	.globl _P3_6
                             37 	.globl _P3_5
                             38 	.globl _P3_4
                             39 	.globl _P3_3
                             40 	.globl _P3_2
                             41 	.globl _P3_1
                             42 	.globl _P3_0
                             43 	.globl _EA
                             44 	.globl _ES
                             45 	.globl _ET1
                             46 	.globl _EX1
                             47 	.globl _ET0
                             48 	.globl _EX0
                             49 	.globl _P2_7
                             50 	.globl _P2_6
                             51 	.globl _P2_5
                             52 	.globl _P2_4
                             53 	.globl _P2_3
                             54 	.globl _P2_2
                             55 	.globl _P2_1
                             56 	.globl _P2_0
                             57 	.globl _SM0
                             58 	.globl _SM1
                             59 	.globl _SM2
                             60 	.globl _REN
                             61 	.globl _TB8
                             62 	.globl _RB8
                             63 	.globl _TI
                             64 	.globl _RI
                             65 	.globl _P1_7
                             66 	.globl _P1_6
                             67 	.globl _P1_5
                             68 	.globl _P1_4
                             69 	.globl _P1_3
                             70 	.globl _P1_2
                             71 	.globl _P1_1
                             72 	.globl _P1_0
                             73 	.globl _TF1
                             74 	.globl _TR1
                             75 	.globl _TF0
                             76 	.globl _TR0
                             77 	.globl _IE1
                             78 	.globl _IT1
                             79 	.globl _IE0
                             80 	.globl _IT0
                             81 	.globl _P0_7
                             82 	.globl _P0_6
                             83 	.globl _P0_5
                             84 	.globl _P0_4
                             85 	.globl _P0_3
                             86 	.globl _P0_2
                             87 	.globl _P0_1
                             88 	.globl _P0_0
                             89 	.globl _B
                             90 	.globl _ACC
                             91 	.globl _PSW
                             92 	.globl _IP
                             93 	.globl _P3
                             94 	.globl _IE
                             95 	.globl _P2
                             96 	.globl _SBUF
                             97 	.globl _SCON
                             98 	.globl _P1
                             99 	.globl _TH1
                            100 	.globl _TH0
                            101 	.globl _TL1
                            102 	.globl _TL0
                            103 	.globl _TMOD
                            104 	.globl _TCON
                            105 	.globl _PCON
                            106 	.globl _DPH
                            107 	.globl _DPL
                            108 	.globl _SP
                            109 	.globl _P0
                            110 	.globl _NIBBLE
                            111 	.globl _FONT
                            112 	.globl _LED_DATA
                            113 	.globl _INT0_ISR
                            114 	.globl _T0_ISR
                            115 	.globl _INT1_ISR
                            116 	.globl _T1_ISR
                            117 	.globl _UART_ISR
                            118 ;--------------------------------------------------------
                            119 ; special function registers
                            120 ;--------------------------------------------------------
                            121 	.area RSEG    (ABS,DATA)
   0000                     122 	.org 0x0000
                    0080    123 _P0	=	0x0080
                    0081    124 _SP	=	0x0081
                    0082    125 _DPL	=	0x0082
                    0083    126 _DPH	=	0x0083
                    0087    127 _PCON	=	0x0087
                    0088    128 _TCON	=	0x0088
                    0089    129 _TMOD	=	0x0089
                    008A    130 _TL0	=	0x008a
                    008B    131 _TL1	=	0x008b
                    008C    132 _TH0	=	0x008c
                    008D    133 _TH1	=	0x008d
                    0090    134 _P1	=	0x0090
                    0098    135 _SCON	=	0x0098
                    0099    136 _SBUF	=	0x0099
                    00A0    137 _P2	=	0x00a0
                    00A8    138 _IE	=	0x00a8
                    00B0    139 _P3	=	0x00b0
                    00B8    140 _IP	=	0x00b8
                    00D0    141 _PSW	=	0x00d0
                    00E0    142 _ACC	=	0x00e0
                    00F0    143 _B	=	0x00f0
                            144 ;--------------------------------------------------------
                            145 ; special function bits
                            146 ;--------------------------------------------------------
                            147 	.area RSEG    (ABS,DATA)
   0000                     148 	.org 0x0000
                    0080    149 _P0_0	=	0x0080
                    0081    150 _P0_1	=	0x0081
                    0082    151 _P0_2	=	0x0082
                    0083    152 _P0_3	=	0x0083
                    0084    153 _P0_4	=	0x0084
                    0085    154 _P0_5	=	0x0085
                    0086    155 _P0_6	=	0x0086
                    0087    156 _P0_7	=	0x0087
                    0088    157 _IT0	=	0x0088
                    0089    158 _IE0	=	0x0089
                    008A    159 _IT1	=	0x008a
                    008B    160 _IE1	=	0x008b
                    008C    161 _TR0	=	0x008c
                    008D    162 _TF0	=	0x008d
                    008E    163 _TR1	=	0x008e
                    008F    164 _TF1	=	0x008f
                    0090    165 _P1_0	=	0x0090
                    0091    166 _P1_1	=	0x0091
                    0092    167 _P1_2	=	0x0092
                    0093    168 _P1_3	=	0x0093
                    0094    169 _P1_4	=	0x0094
                    0095    170 _P1_5	=	0x0095
                    0096    171 _P1_6	=	0x0096
                    0097    172 _P1_7	=	0x0097
                    0098    173 _RI	=	0x0098
                    0099    174 _TI	=	0x0099
                    009A    175 _RB8	=	0x009a
                    009B    176 _TB8	=	0x009b
                    009C    177 _REN	=	0x009c
                    009D    178 _SM2	=	0x009d
                    009E    179 _SM1	=	0x009e
                    009F    180 _SM0	=	0x009f
                    00A0    181 _P2_0	=	0x00a0
                    00A1    182 _P2_1	=	0x00a1
                    00A2    183 _P2_2	=	0x00a2
                    00A3    184 _P2_3	=	0x00a3
                    00A4    185 _P2_4	=	0x00a4
                    00A5    186 _P2_5	=	0x00a5
                    00A6    187 _P2_6	=	0x00a6
                    00A7    188 _P2_7	=	0x00a7
                    00A8    189 _EX0	=	0x00a8
                    00A9    190 _ET0	=	0x00a9
                    00AA    191 _EX1	=	0x00aa
                    00AB    192 _ET1	=	0x00ab
                    00AC    193 _ES	=	0x00ac
                    00AF    194 _EA	=	0x00af
                    00B0    195 _P3_0	=	0x00b0
                    00B1    196 _P3_1	=	0x00b1
                    00B2    197 _P3_2	=	0x00b2
                    00B3    198 _P3_3	=	0x00b3
                    00B4    199 _P3_4	=	0x00b4
                    00B5    200 _P3_5	=	0x00b5
                    00B6    201 _P3_6	=	0x00b6
                    00B7    202 _P3_7	=	0x00b7
                    00B0    203 _RXD	=	0x00b0
                    00B1    204 _TXD	=	0x00b1
                    00B2    205 _INT0	=	0x00b2
                    00B3    206 _INT1	=	0x00b3
                    00B4    207 _T0	=	0x00b4
                    00B5    208 _T1	=	0x00b5
                    00B6    209 _WR	=	0x00b6
                    00B7    210 _RD	=	0x00b7
                    00B8    211 _PX0	=	0x00b8
                    00B9    212 _PT0	=	0x00b9
                    00BA    213 _PX1	=	0x00ba
                    00BB    214 _PT1	=	0x00bb
                    00BC    215 _PS	=	0x00bc
                    00D0    216 _P	=	0x00d0
                    00D1    217 _F1	=	0x00d1
                    00D2    218 _OV	=	0x00d2
                    00D3    219 _RS0	=	0x00d3
                    00D4    220 _RS1	=	0x00d4
                    00D5    221 _F0	=	0x00d5
                    00D6    222 _AC	=	0x00d6
                    00D7    223 _CY	=	0x00d7
                            224 ;--------------------------------------------------------
                            225 ; overlayable register banks
                            226 ;--------------------------------------------------------
                            227 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     228 	.ds 8
                            229 ;--------------------------------------------------------
                            230 ; internal ram data
                            231 ;--------------------------------------------------------
                            232 	.area DSEG    (DATA)
   0008                     233 _LED_DATA::
   0008                     234 	.ds 1
   0009                     235 _FONT::
   0009                     236 	.ds 16
                            237 ;--------------------------------------------------------
                            238 ; overlayable items in internal ram 
                            239 ;--------------------------------------------------------
                            240 	.area OSEG    (OVR,DATA)
                            241 ;--------------------------------------------------------
                            242 ; Stack segment in internal ram 
                            243 ;--------------------------------------------------------
                            244 	.area	SSEG	(DATA)
   0021                     245 __start__stack:
   0021                     246 	.ds	1
                            247 
                            248 ;--------------------------------------------------------
                            249 ; indirectly addressable internal ram data
                            250 ;--------------------------------------------------------
                            251 	.area ISEG    (DATA)
                            252 ;--------------------------------------------------------
                            253 ; absolute internal ram data
                            254 ;--------------------------------------------------------
                            255 	.area IABS    (ABS,DATA)
                            256 	.area IABS    (ABS,DATA)
                            257 ;--------------------------------------------------------
                            258 ; bit data
                            259 ;--------------------------------------------------------
                            260 	.area BSEG    (BIT)
   0000                     261 _NIBBLE::
   0000                     262 	.ds 1
                            263 ;--------------------------------------------------------
                            264 ; paged external ram data
                            265 ;--------------------------------------------------------
                            266 	.area PSEG    (PAG,XDATA)
                            267 ;--------------------------------------------------------
                            268 ; external ram data
                            269 ;--------------------------------------------------------
                            270 	.area XSEG    (XDATA)
                            271 ;--------------------------------------------------------
                            272 ; absolute external ram data
                            273 ;--------------------------------------------------------
                            274 	.area XABS    (ABS,XDATA)
                            275 ;--------------------------------------------------------
                            276 ; external initialized ram data
                            277 ;--------------------------------------------------------
                            278 	.area XISEG   (XDATA)
                            279 	.area HOME    (CODE)
                            280 	.area GSINIT0 (CODE)
                            281 	.area GSINIT1 (CODE)
                            282 	.area GSINIT2 (CODE)
                            283 	.area GSINIT3 (CODE)
                            284 	.area GSINIT4 (CODE)
                            285 	.area GSINIT5 (CODE)
                            286 	.area GSINIT  (CODE)
                            287 	.area GSFINAL (CODE)
                            288 	.area CSEG    (CODE)
                            289 ;--------------------------------------------------------
                            290 ; interrupt vector 
                            291 ;--------------------------------------------------------
                            292 	.area HOME    (CODE)
   0000                     293 __interrupt_vect:
   0000 02 00 2B            294 	ljmp	__sdcc_gsinit_startup
   0003 02 00 EA            295 	ljmp	_INT0_ISR
   0006                     296 	.ds	5
   000B 02 00 EB            297 	ljmp	_T0_ISR
   000E                     298 	.ds	5
   0013 02 01 34            299 	ljmp	_INT1_ISR
   0016                     300 	.ds	5
   001B 02 01 35            301 	ljmp	_T1_ISR
   001E                     302 	.ds	5
   0023 02 01 36            303 	ljmp	_UART_ISR
                            304 ;--------------------------------------------------------
                            305 ; global & static initialisations
                            306 ;--------------------------------------------------------
                            307 	.area HOME    (CODE)
                            308 	.area GSINIT  (CODE)
                            309 	.area GSFINAL (CODE)
                            310 	.area GSINIT  (CODE)
                            311 	.globl __sdcc_gsinit_startup
                            312 	.globl __sdcc_program_startup
                            313 	.globl __start__stack
                            314 	.globl __mcs51_genXINIT
                            315 	.globl __mcs51_genXRAMCLEAR
                            316 	.globl __mcs51_genRAMCLEAR
                            317 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:12: char FONT[16]={	0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,
   0084 75 09 C0            318 	mov	_FONT,#0xC0
   0087 75 0A F9            319 	mov	(_FONT + 0x0001),#0xF9
   008A 75 0B A4            320 	mov	(_FONT + 0x0002),#0xA4
   008D 75 0C B0            321 	mov	(_FONT + 0x0003),#0xB0
   0090 75 0D 99            322 	mov	(_FONT + 0x0004),#0x99
   0093 75 0E 92            323 	mov	(_FONT + 0x0005),#0x92
   0096 75 0F 82            324 	mov	(_FONT + 0x0006),#0x82
   0099 75 10 F8            325 	mov	(_FONT + 0x0007),#0xF8
   009C 75 11 80            326 	mov	(_FONT + 0x0008),#0x80
   009F 75 12 90            327 	mov	(_FONT + 0x0009),#0x90
   00A2 75 13 88            328 	mov	(_FONT + 0x000a),#0x88
   00A5 75 14 83            329 	mov	(_FONT + 0x000b),#0x83
   00A8 75 15 A7            330 	mov	(_FONT + 0x000c),#0xA7
   00AB 75 16 A1            331 	mov	(_FONT + 0x000d),#0xA1
   00AE 75 17 86            332 	mov	(_FONT + 0x000e),#0x86
   00B1 75 18 8E            333 	mov	(_FONT + 0x000f),#0x8E
                            334 	.area GSFINAL (CODE)
   00B4 02 00 26            335 	ljmp	__sdcc_program_startup
                            336 ;--------------------------------------------------------
                            337 ; Home
                            338 ;--------------------------------------------------------
                            339 	.area HOME    (CODE)
                            340 	.area HOME    (CODE)
   0026                     341 __sdcc_program_startup:
   0026 12 00 D6            342 	lcall	_main
                            343 ;	return from main will lock up
   0029 80 FE               344 	sjmp .
                            345 ;--------------------------------------------------------
                            346 ; code
                            347 ;--------------------------------------------------------
                            348 	.area CSEG    (CODE)
                            349 ;------------------------------------------------------------
                            350 ;Allocation info for local variables in function 'delayms'
                            351 ;------------------------------------------------------------
                            352 ;time                      Allocated to registers r2 r3 
                            353 ;n                         Allocated to registers r4 r5 
                            354 ;------------------------------------------------------------
                            355 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:22: void delayms(unsigned int time)
                            356 ;	-----------------------------------------
                            357 ;	 function delayms
                            358 ;	-----------------------------------------
   00B7                     359 _delayms:
                    0002    360 	ar2 = 0x02
                    0003    361 	ar3 = 0x03
                    0004    362 	ar4 = 0x04
                    0005    363 	ar5 = 0x05
                    0006    364 	ar6 = 0x06
                    0007    365 	ar7 = 0x07
                    0000    366 	ar0 = 0x00
                    0001    367 	ar1 = 0x01
   00B7 AA 82               368 	mov	r2,dpl
   00B9 AB 83               369 	mov	r3,dph
                            370 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:25: while (time>0)
   00BB                     371 00104$:
   00BB EA                  372 	mov	a,r2
   00BC 4B                  373 	orl	a,r3
   00BD 60 16               374 	jz	00107$
                            375 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:28: while(n>0) n--;
   00BF 7C 78               376 	mov	r4,#0x78
   00C1 7D 00               377 	mov	r5,#0x00
   00C3                     378 00101$:
   00C3 EC                  379 	mov	a,r4
   00C4 4D                  380 	orl	a,r5
   00C5 60 07               381 	jz	00103$
   00C7 1C                  382 	dec	r4
   00C8 BC FF F8            383 	cjne	r4,#0xff,00101$
   00CB 1D                  384 	dec	r5
   00CC 80 F5               385 	sjmp	00101$
   00CE                     386 00103$:
                            387 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:29: time--;
   00CE 1A                  388 	dec	r2
   00CF BA FF E9            389 	cjne	r2,#0xff,00104$
   00D2 1B                  390 	dec	r3
   00D3 80 E6               391 	sjmp	00104$
   00D5                     392 00107$:
   00D5 22                  393 	ret
                            394 ;------------------------------------------------------------
                            395 ;Allocation info for local variables in function 'main'
                            396 ;------------------------------------------------------------
                            397 ;------------------------------------------------------------
                            398 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:33: void main(void)
                            399 ;	-----------------------------------------
                            400 ;	 function main
                            401 ;	-----------------------------------------
   00D6                     402 _main:
                            403 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:36: TMOD=0x11;		// Set Timer to work in Mode 1 (16-bit Timer)
   00D6 75 89 11            404 	mov	_TMOD,#0x11
                            405 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:37: ET0=1;			// Enable Timer 0 Interrupt
   00D9 D2 A9               406 	setb	_ET0
                            407 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:38: EA=1;			// Enable Interrupt
   00DB D2 AF               408 	setb	_EA
                            409 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:39: TR0=1;			// Start Timer 0
   00DD D2 8C               410 	setb	_TR0
                            411 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:40: BUTTON=1;		// Set the output latch of BUTTON to 1
   00DF D2 90               412 	setb	_P1_0
                            413 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:41: LED_DATA++;
   00E1 75 08 01            414 	mov	_LED_DATA,#0x01
                            415 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:42: delayms(1000);
   00E4 90 03 E8            416 	mov	dptr,#0x03E8
   00E7 02 00 B7            417 	ljmp	_delayms
                            418 ;------------------------------------------------------------
                            419 ;Allocation info for local variables in function 'INT0_ISR'
                            420 ;------------------------------------------------------------
                            421 ;------------------------------------------------------------
                            422 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:45: void INT0_ISR(void)	interrupt 0
                            423 ;	-----------------------------------------
                            424 ;	 function INT0_ISR
                            425 ;	-----------------------------------------
   00EA                     426 _INT0_ISR:
                            427 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:46: {}
   00EA 32                  428 	reti
                            429 ;	eliminated unneeded push/pop psw
                            430 ;	eliminated unneeded push/pop dpl
                            431 ;	eliminated unneeded push/pop dph
                            432 ;	eliminated unneeded push/pop b
                            433 ;	eliminated unneeded push/pop acc
                            434 ;------------------------------------------------------------
                            435 ;Allocation info for local variables in function 'T0_ISR'
                            436 ;------------------------------------------------------------
                            437 ;------------------------------------------------------------
                            438 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:47: void T0_ISR(void)	interrupt 1
                            439 ;	-----------------------------------------
                            440 ;	 function T0_ISR
                            441 ;	-----------------------------------------
   00EB                     442 _T0_ISR:
   00EB C0 E0               443 	push	acc
   00ED C0 00               444 	push	ar0
   00EF C0 D0               445 	push	psw
   00F1 75 D0 00            446 	mov	psw,#0x00
                            447 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:49: TH0=0xFC;	// Timer 0 Interrupt will be generated
   00F4 75 8C FC            448 	mov	_TH0,#0xFC
                            449 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:50: TL0=0x18;	// for every 1mS
   00F7 75 8A 18            450 	mov	_TL0,#0x18
                            451 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:51: NIBBLE=!NIBBLE;
   00FA B2 00               452 	cpl	_NIBBLE
                            453 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:52: if(NIBBLE==1)
   00FC 30 00 1A            454 	jnb	_NIBBLE,00102$
                            455 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:55: LOW_NIBBLE=1;
   00FF D2 A0               456 	setb	_P2_0
                            457 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:56: ACC=LED_DATA;
   0101 85 08 E0            458 	mov	_ACC,_LED_DATA
                            459 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:57: ACC=ACC>>4;
   0104 E5 E0               460 	mov	a,_ACC
   0106 C4                  461 	swap	a
   0107 54 0F               462 	anl	a,#0x0f
   0109 F5 E0               463 	mov	_ACC,a
                            464 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:58: ACC=FONT[ACC];
   010B E5 E0               465 	mov	a,_ACC
   010D 24 09               466 	add	a,#_FONT
   010F F8                  467 	mov	r0,a
   0110 86 E0               468 	mov	_ACC,@r0
                            469 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:59: LED_PORT=ACC;
   0112 85 E0 80            470 	mov	_P0,_ACC
                            471 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:60: HIGH_NIBBLE=0;
   0115 C2 A1               472 	clr	_P2_1
   0117 80 14               473 	sjmp	00104$
   0119                     474 00102$:
                            475 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:65: HIGH_NIBBLE=1;
   0119 D2 A1               476 	setb	_P2_1
                            477 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:66: ACC=LED_DATA;
   011B 85 08 E0            478 	mov	_ACC,_LED_DATA
                            479 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:67: ACC=ACC&0X0F;
   011E 53 E0 0F            480 	anl	_ACC,#0x0F
                            481 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:68: ACC=FONT[ACC];
   0121 E5 E0               482 	mov	a,_ACC
   0123 24 09               483 	add	a,#_FONT
   0125 F8                  484 	mov	r0,a
   0126 86 E0               485 	mov	_ACC,@r0
                            486 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:69: LED_PORT=ACC;
   0128 85 E0 80            487 	mov	_P0,_ACC
                            488 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:70: LOW_NIBBLE=0;
   012B C2 A0               489 	clr	_P2_0
   012D                     490 00104$:
   012D D0 D0               491 	pop	psw
   012F D0 00               492 	pop	ar0
   0131 D0 E0               493 	pop	acc
   0133 32                  494 	reti
                            495 ;	eliminated unneeded push/pop ar1
                            496 ;	eliminated unneeded push/pop dpl
                            497 ;	eliminated unneeded push/pop dph
                            498 ;	eliminated unneeded push/pop b
                            499 ;------------------------------------------------------------
                            500 ;Allocation info for local variables in function 'INT1_ISR'
                            501 ;------------------------------------------------------------
                            502 ;------------------------------------------------------------
                            503 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:73: void INT1_ISR(void)	interrupt 2
                            504 ;	-----------------------------------------
                            505 ;	 function INT1_ISR
                            506 ;	-----------------------------------------
   0134                     507 _INT1_ISR:
                            508 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:74: {}
   0134 32                  509 	reti
                            510 ;	eliminated unneeded push/pop psw
                            511 ;	eliminated unneeded push/pop dpl
                            512 ;	eliminated unneeded push/pop dph
                            513 ;	eliminated unneeded push/pop b
                            514 ;	eliminated unneeded push/pop acc
                            515 ;------------------------------------------------------------
                            516 ;Allocation info for local variables in function 'T1_ISR'
                            517 ;------------------------------------------------------------
                            518 ;------------------------------------------------------------
                            519 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:75: void T1_ISR(void)	interrupt 3
                            520 ;	-----------------------------------------
                            521 ;	 function T1_ISR
                            522 ;	-----------------------------------------
   0135                     523 _T1_ISR:
                            524 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:76: {}
   0135 32                  525 	reti
                            526 ;	eliminated unneeded push/pop psw
                            527 ;	eliminated unneeded push/pop dpl
                            528 ;	eliminated unneeded push/pop dph
                            529 ;	eliminated unneeded push/pop b
                            530 ;	eliminated unneeded push/pop acc
                            531 ;------------------------------------------------------------
                            532 ;Allocation info for local variables in function 'UART_ISR'
                            533 ;------------------------------------------------------------
                            534 ;------------------------------------------------------------
                            535 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:77: void UART_ISR(void) interrupt 4
                            536 ;	-----------------------------------------
                            537 ;	 function UART_ISR
                            538 ;	-----------------------------------------
   0136                     539 _UART_ISR:
                            540 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\HW6\hw6.c:78: {}
   0136 32                  541 	reti
                            542 ;	eliminated unneeded push/pop psw
                            543 ;	eliminated unneeded push/pop dpl
                            544 ;	eliminated unneeded push/pop dph
                            545 ;	eliminated unneeded push/pop b
                            546 ;	eliminated unneeded push/pop acc
                            547 	.area CSEG    (CODE)
                            548 	.area CONST   (CODE)
                            549 	.area XINIT   (CODE)
                            550 	.area CABS    (ABS,CODE)
