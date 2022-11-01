                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
                              4 ; This file was generated Tue Nov 01 23:14:43 2022
                              5 ;--------------------------------------------------------
                              6 	.module hw
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _CY
                             14 	.globl _AC
                             15 	.globl _F0
                             16 	.globl _RS1
                             17 	.globl _RS0
                             18 	.globl _OV
                             19 	.globl _F1
                             20 	.globl _P
                             21 	.globl _PS
                             22 	.globl _PT1
                             23 	.globl _PX1
                             24 	.globl _PT0
                             25 	.globl _PX0
                             26 	.globl _RD
                             27 	.globl _WR
                             28 	.globl _T1
                             29 	.globl _T0
                             30 	.globl _INT1
                             31 	.globl _INT0
                             32 	.globl _TXD
                             33 	.globl _RXD
                             34 	.globl _P3_7
                             35 	.globl _P3_6
                             36 	.globl _P3_5
                             37 	.globl _P3_4
                             38 	.globl _P3_3
                             39 	.globl _P3_2
                             40 	.globl _P3_1
                             41 	.globl _P3_0
                             42 	.globl _EA
                             43 	.globl _ES
                             44 	.globl _ET1
                             45 	.globl _EX1
                             46 	.globl _ET0
                             47 	.globl _EX0
                             48 	.globl _P2_7
                             49 	.globl _P2_6
                             50 	.globl _P2_5
                             51 	.globl _P2_4
                             52 	.globl _P2_3
                             53 	.globl _P2_2
                             54 	.globl _P2_1
                             55 	.globl _P2_0
                             56 	.globl _SM0
                             57 	.globl _SM1
                             58 	.globl _SM2
                             59 	.globl _REN
                             60 	.globl _TB8
                             61 	.globl _RB8
                             62 	.globl _TI
                             63 	.globl _RI
                             64 	.globl _P1_7
                             65 	.globl _P1_6
                             66 	.globl _P1_5
                             67 	.globl _P1_4
                             68 	.globl _P1_3
                             69 	.globl _P1_2
                             70 	.globl _P1_1
                             71 	.globl _P1_0
                             72 	.globl _TF1
                             73 	.globl _TR1
                             74 	.globl _TF0
                             75 	.globl _TR0
                             76 	.globl _IE1
                             77 	.globl _IT1
                             78 	.globl _IE0
                             79 	.globl _IT0
                             80 	.globl _P0_7
                             81 	.globl _P0_6
                             82 	.globl _P0_5
                             83 	.globl _P0_4
                             84 	.globl _P0_3
                             85 	.globl _P0_2
                             86 	.globl _P0_1
                             87 	.globl _P0_0
                             88 	.globl _B
                             89 	.globl _ACC
                             90 	.globl _PSW
                             91 	.globl _IP
                             92 	.globl _P3
                             93 	.globl _IE
                             94 	.globl _P2
                             95 	.globl _SBUF
                             96 	.globl _SCON
                             97 	.globl _P1
                             98 	.globl _TH1
                             99 	.globl _TH0
                            100 	.globl _TL1
                            101 	.globl _TL0
                            102 	.globl _TMOD
                            103 	.globl _TCON
                            104 	.globl _PCON
                            105 	.globl _DPH
                            106 	.globl _DPL
                            107 	.globl _SP
                            108 	.globl _P0
                            109 	.globl _INT0_ISR
                            110 	.globl _T0_ISR
                            111 	.globl _INT1_ISR
                            112 	.globl _T1_ISR
                            113 	.globl _UART_ISR
                            114 ;--------------------------------------------------------
                            115 ; special function registers
                            116 ;--------------------------------------------------------
                            117 	.area RSEG    (ABS,DATA)
   0000                     118 	.org 0x0000
                    0080    119 _P0	=	0x0080
                    0081    120 _SP	=	0x0081
                    0082    121 _DPL	=	0x0082
                    0083    122 _DPH	=	0x0083
                    0087    123 _PCON	=	0x0087
                    0088    124 _TCON	=	0x0088
                    0089    125 _TMOD	=	0x0089
                    008A    126 _TL0	=	0x008a
                    008B    127 _TL1	=	0x008b
                    008C    128 _TH0	=	0x008c
                    008D    129 _TH1	=	0x008d
                    0090    130 _P1	=	0x0090
                    0098    131 _SCON	=	0x0098
                    0099    132 _SBUF	=	0x0099
                    00A0    133 _P2	=	0x00a0
                    00A8    134 _IE	=	0x00a8
                    00B0    135 _P3	=	0x00b0
                    00B8    136 _IP	=	0x00b8
                    00D0    137 _PSW	=	0x00d0
                    00E0    138 _ACC	=	0x00e0
                    00F0    139 _B	=	0x00f0
                            140 ;--------------------------------------------------------
                            141 ; special function bits
                            142 ;--------------------------------------------------------
                            143 	.area RSEG    (ABS,DATA)
   0000                     144 	.org 0x0000
                    0080    145 _P0_0	=	0x0080
                    0081    146 _P0_1	=	0x0081
                    0082    147 _P0_2	=	0x0082
                    0083    148 _P0_3	=	0x0083
                    0084    149 _P0_4	=	0x0084
                    0085    150 _P0_5	=	0x0085
                    0086    151 _P0_6	=	0x0086
                    0087    152 _P0_7	=	0x0087
                    0088    153 _IT0	=	0x0088
                    0089    154 _IE0	=	0x0089
                    008A    155 _IT1	=	0x008a
                    008B    156 _IE1	=	0x008b
                    008C    157 _TR0	=	0x008c
                    008D    158 _TF0	=	0x008d
                    008E    159 _TR1	=	0x008e
                    008F    160 _TF1	=	0x008f
                    0090    161 _P1_0	=	0x0090
                    0091    162 _P1_1	=	0x0091
                    0092    163 _P1_2	=	0x0092
                    0093    164 _P1_3	=	0x0093
                    0094    165 _P1_4	=	0x0094
                    0095    166 _P1_5	=	0x0095
                    0096    167 _P1_6	=	0x0096
                    0097    168 _P1_7	=	0x0097
                    0098    169 _RI	=	0x0098
                    0099    170 _TI	=	0x0099
                    009A    171 _RB8	=	0x009a
                    009B    172 _TB8	=	0x009b
                    009C    173 _REN	=	0x009c
                    009D    174 _SM2	=	0x009d
                    009E    175 _SM1	=	0x009e
                    009F    176 _SM0	=	0x009f
                    00A0    177 _P2_0	=	0x00a0
                    00A1    178 _P2_1	=	0x00a1
                    00A2    179 _P2_2	=	0x00a2
                    00A3    180 _P2_3	=	0x00a3
                    00A4    181 _P2_4	=	0x00a4
                    00A5    182 _P2_5	=	0x00a5
                    00A6    183 _P2_6	=	0x00a6
                    00A7    184 _P2_7	=	0x00a7
                    00A8    185 _EX0	=	0x00a8
                    00A9    186 _ET0	=	0x00a9
                    00AA    187 _EX1	=	0x00aa
                    00AB    188 _ET1	=	0x00ab
                    00AC    189 _ES	=	0x00ac
                    00AF    190 _EA	=	0x00af
                    00B0    191 _P3_0	=	0x00b0
                    00B1    192 _P3_1	=	0x00b1
                    00B2    193 _P3_2	=	0x00b2
                    00B3    194 _P3_3	=	0x00b3
                    00B4    195 _P3_4	=	0x00b4
                    00B5    196 _P3_5	=	0x00b5
                    00B6    197 _P3_6	=	0x00b6
                    00B7    198 _P3_7	=	0x00b7
                    00B0    199 _RXD	=	0x00b0
                    00B1    200 _TXD	=	0x00b1
                    00B2    201 _INT0	=	0x00b2
                    00B3    202 _INT1	=	0x00b3
                    00B4    203 _T0	=	0x00b4
                    00B5    204 _T1	=	0x00b5
                    00B6    205 _WR	=	0x00b6
                    00B7    206 _RD	=	0x00b7
                    00B8    207 _PX0	=	0x00b8
                    00B9    208 _PT0	=	0x00b9
                    00BA    209 _PX1	=	0x00ba
                    00BB    210 _PT1	=	0x00bb
                    00BC    211 _PS	=	0x00bc
                    00D0    212 _P	=	0x00d0
                    00D1    213 _F1	=	0x00d1
                    00D2    214 _OV	=	0x00d2
                    00D3    215 _RS0	=	0x00d3
                    00D4    216 _RS1	=	0x00d4
                    00D5    217 _F0	=	0x00d5
                    00D6    218 _AC	=	0x00d6
                    00D7    219 _CY	=	0x00d7
                            220 ;--------------------------------------------------------
                            221 ; overlayable register banks
                            222 ;--------------------------------------------------------
                            223 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     224 	.ds 8
                            225 ;--------------------------------------------------------
                            226 ; internal ram data
                            227 ;--------------------------------------------------------
                            228 	.area DSEG    (DATA)
                            229 ;--------------------------------------------------------
                            230 ; overlayable items in internal ram 
                            231 ;--------------------------------------------------------
                            232 	.area OSEG    (OVR,DATA)
                            233 ;--------------------------------------------------------
                            234 ; Stack segment in internal ram 
                            235 ;--------------------------------------------------------
                            236 	.area	SSEG	(DATA)
   0008                     237 __start__stack:
   0008                     238 	.ds	1
                            239 
                            240 ;--------------------------------------------------------
                            241 ; indirectly addressable internal ram data
                            242 ;--------------------------------------------------------
                            243 	.area ISEG    (DATA)
                            244 ;--------------------------------------------------------
                            245 ; absolute internal ram data
                            246 ;--------------------------------------------------------
                            247 	.area IABS    (ABS,DATA)
                            248 	.area IABS    (ABS,DATA)
                            249 ;--------------------------------------------------------
                            250 ; bit data
                            251 ;--------------------------------------------------------
                            252 	.area BSEG    (BIT)
                            253 ;--------------------------------------------------------
                            254 ; paged external ram data
                            255 ;--------------------------------------------------------
                            256 	.area PSEG    (PAG,XDATA)
                            257 ;--------------------------------------------------------
                            258 ; external ram data
                            259 ;--------------------------------------------------------
                            260 	.area XSEG    (XDATA)
                            261 ;--------------------------------------------------------
                            262 ; absolute external ram data
                            263 ;--------------------------------------------------------
                            264 	.area XABS    (ABS,XDATA)
                            265 ;--------------------------------------------------------
                            266 ; external initialized ram data
                            267 ;--------------------------------------------------------
                            268 	.area XISEG   (XDATA)
                            269 	.area HOME    (CODE)
                            270 	.area GSINIT0 (CODE)
                            271 	.area GSINIT1 (CODE)
                            272 	.area GSINIT2 (CODE)
                            273 	.area GSINIT3 (CODE)
                            274 	.area GSINIT4 (CODE)
                            275 	.area GSINIT5 (CODE)
                            276 	.area GSINIT  (CODE)
                            277 	.area GSFINAL (CODE)
                            278 	.area CSEG    (CODE)
                            279 ;--------------------------------------------------------
                            280 ; interrupt vector 
                            281 ;--------------------------------------------------------
                            282 	.area HOME    (CODE)
   0000                     283 __interrupt_vect:
   0000 02 00 2B            284 	ljmp	__sdcc_gsinit_startup
   0003 02 00 AD            285 	ljmp	_INT0_ISR
   0006                     286 	.ds	5
   000B 02 00 AE            287 	ljmp	_T0_ISR
   000E                     288 	.ds	5
   0013 02 00 AF            289 	ljmp	_INT1_ISR
   0016                     290 	.ds	5
   001B 02 00 B0            291 	ljmp	_T1_ISR
   001E                     292 	.ds	5
   0023 02 00 B1            293 	ljmp	_UART_ISR
                            294 ;--------------------------------------------------------
                            295 ; global & static initialisations
                            296 ;--------------------------------------------------------
                            297 	.area HOME    (CODE)
                            298 	.area GSINIT  (CODE)
                            299 	.area GSFINAL (CODE)
                            300 	.area GSINIT  (CODE)
                            301 	.globl __sdcc_gsinit_startup
                            302 	.globl __sdcc_program_startup
                            303 	.globl __start__stack
                            304 	.globl __mcs51_genXINIT
                            305 	.globl __mcs51_genXRAMCLEAR
                            306 	.globl __mcs51_genRAMCLEAR
                            307 	.area GSFINAL (CODE)
   0084 02 00 26            308 	ljmp	__sdcc_program_startup
                            309 ;--------------------------------------------------------
                            310 ; Home
                            311 ;--------------------------------------------------------
                            312 	.area HOME    (CODE)
                            313 	.area HOME    (CODE)
   0026                     314 __sdcc_program_startup:
   0026 12 00 87            315 	lcall	_main
                            316 ;	return from main will lock up
   0029 80 FE               317 	sjmp .
                            318 ;--------------------------------------------------------
                            319 ; code
                            320 ;--------------------------------------------------------
                            321 	.area CSEG    (CODE)
                            322 ;------------------------------------------------------------
                            323 ;Allocation info for local variables in function 'main'
                            324 ;------------------------------------------------------------
                            325 ;i                         Allocated to registers r2 r3 
                            326 ;a                         Allocated to registers 
                            327 ;------------------------------------------------------------
                            328 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\1024\HW\hw.c:12: void main(void) {
                            329 ;	-----------------------------------------
                            330 ;	 function main
                            331 ;	-----------------------------------------
   0087                     332 _main:
                    0002    333 	ar2 = 0x02
                    0003    334 	ar3 = 0x03
                    0004    335 	ar4 = 0x04
                    0005    336 	ar5 = 0x05
                    0006    337 	ar6 = 0x06
                    0007    338 	ar7 = 0x07
                    0000    339 	ar0 = 0x00
                    0001    340 	ar1 = 0x01
                            341 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\1024\HW\hw.c:16: for(i = 0 ; i < 10 ; i++){
   0087 7A 00               342 	mov	r2,#0x00
   0089 7B 00               343 	mov	r3,#0x00
   008B                     344 00106$:
   008B C3                  345 	clr	c
   008C EA                  346 	mov	a,r2
   008D 94 0A               347 	subb	a,#0x0A
   008F EB                  348 	mov	a,r3
   0090 64 80               349 	xrl	a,#0x80
   0092 94 80               350 	subb	a,#0x80
   0094 50 16               351 	jnc	00110$
                            352 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\1024\HW\hw.c:17: if(i > 5){
   0096 C3                  353 	clr	c
   0097 74 05               354 	mov	a,#0x05
   0099 9A                  355 	subb	a,r2
   009A 74 80               356 	mov	a,#(0x00 ^ 0x80)
   009C 8B F0               357 	mov	b,r3
   009E 63 F0 80            358 	xrl	b,#0x80
   00A1 95 F0               359 	subb	a,b
   00A3 E4                  360 	clr	a
   00A4 33                  361 	rlc	a
                            362 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\1024\HW\hw.c:16: for(i = 0 ; i < 10 ; i++){
   00A5 0A                  363 	inc	r2
   00A6 BA 00 E2            364 	cjne	r2,#0x00,00106$
   00A9 0B                  365 	inc	r3
   00AA 80 DF               366 	sjmp	00106$
   00AC                     367 00110$:
   00AC 22                  368 	ret
                            369 ;------------------------------------------------------------
                            370 ;Allocation info for local variables in function 'INT0_ISR'
                            371 ;------------------------------------------------------------
                            372 ;------------------------------------------------------------
                            373 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\1024\HW\hw.c:25: void INT0_ISR(void) __interrupt 0 {}
                            374 ;	-----------------------------------------
                            375 ;	 function INT0_ISR
                            376 ;	-----------------------------------------
   00AD                     377 _INT0_ISR:
   00AD 32                  378 	reti
                            379 ;	eliminated unneeded push/pop psw
                            380 ;	eliminated unneeded push/pop dpl
                            381 ;	eliminated unneeded push/pop dph
                            382 ;	eliminated unneeded push/pop b
                            383 ;	eliminated unneeded push/pop acc
                            384 ;------------------------------------------------------------
                            385 ;Allocation info for local variables in function 'T0_ISR'
                            386 ;------------------------------------------------------------
                            387 ;------------------------------------------------------------
                            388 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\1024\HW\hw.c:26: void T0_ISR(void) __interrupt 1 {}
                            389 ;	-----------------------------------------
                            390 ;	 function T0_ISR
                            391 ;	-----------------------------------------
   00AE                     392 _T0_ISR:
   00AE 32                  393 	reti
                            394 ;	eliminated unneeded push/pop psw
                            395 ;	eliminated unneeded push/pop dpl
                            396 ;	eliminated unneeded push/pop dph
                            397 ;	eliminated unneeded push/pop b
                            398 ;	eliminated unneeded push/pop acc
                            399 ;------------------------------------------------------------
                            400 ;Allocation info for local variables in function 'INT1_ISR'
                            401 ;------------------------------------------------------------
                            402 ;------------------------------------------------------------
                            403 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\1024\HW\hw.c:27: void INT1_ISR(void) __interrupt 2 {}
                            404 ;	-----------------------------------------
                            405 ;	 function INT1_ISR
                            406 ;	-----------------------------------------
   00AF                     407 _INT1_ISR:
   00AF 32                  408 	reti
                            409 ;	eliminated unneeded push/pop psw
                            410 ;	eliminated unneeded push/pop dpl
                            411 ;	eliminated unneeded push/pop dph
                            412 ;	eliminated unneeded push/pop b
                            413 ;	eliminated unneeded push/pop acc
                            414 ;------------------------------------------------------------
                            415 ;Allocation info for local variables in function 'T1_ISR'
                            416 ;------------------------------------------------------------
                            417 ;------------------------------------------------------------
                            418 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\1024\HW\hw.c:28: void T1_ISR(void) __interrupt 3 {}
                            419 ;	-----------------------------------------
                            420 ;	 function T1_ISR
                            421 ;	-----------------------------------------
   00B0                     422 _T1_ISR:
   00B0 32                  423 	reti
                            424 ;	eliminated unneeded push/pop psw
                            425 ;	eliminated unneeded push/pop dpl
                            426 ;	eliminated unneeded push/pop dph
                            427 ;	eliminated unneeded push/pop b
                            428 ;	eliminated unneeded push/pop acc
                            429 ;------------------------------------------------------------
                            430 ;Allocation info for local variables in function 'UART_ISR'
                            431 ;------------------------------------------------------------
                            432 ;------------------------------------------------------------
                            433 ;	C:\Users\dht98\DOWNLO~1\NKUST\NKUST_~2\1024\HW\hw.c:29: void UART_ISR(void) __interrupt 4 {}
                            434 ;	-----------------------------------------
                            435 ;	 function UART_ISR
                            436 ;	-----------------------------------------
   00B1                     437 _UART_ISR:
   00B1 32                  438 	reti
                            439 ;	eliminated unneeded push/pop psw
                            440 ;	eliminated unneeded push/pop dpl
                            441 ;	eliminated unneeded push/pop dph
                            442 ;	eliminated unneeded push/pop b
                            443 ;	eliminated unneeded push/pop acc
                            444 	.area CSEG    (CODE)
                            445 	.area CONST   (CODE)
                            446 	.area XINIT   (CODE)
                            447 	.area CABS    (ABS,CODE)
