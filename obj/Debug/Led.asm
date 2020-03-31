;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Jun 20 2015) (MINGW32)
; This file was generated Tue Mar 31 02:49:31 2020
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
	.file	"Led.c"
	list	p=16f877a
	radix dec
	include "p16f877a.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	__print_format
	extern	_printf_small
	extern	_printf
	extern	_vprintf
	extern	_sprintf
	extern	_vsprintf
	extern	_puts
	extern	_gets
	extern	_getchar
	extern	_putchar
	extern	_calloc
	extern	_malloc
	extern	_realloc
	extern	_free
	extern	_abs
	extern	_labs
	extern	_atof
	extern	_atoi
	extern	_atol
	extern	__uitoa
	extern	__itoa
	extern	__ultoa
	extern	__ltoa
	extern	_rand
	extern	_srand
	extern	_STATUSbits
	extern	_PORTAbits
	extern	_PORTBbits
	extern	_PORTCbits
	extern	_PORTDbits
	extern	_PORTEbits
	extern	_INTCONbits
	extern	_PIR1bits
	extern	_PIR2bits
	extern	_T1CONbits
	extern	_T2CONbits
	extern	_SSPCONbits
	extern	_CCP1CONbits
	extern	_RCSTAbits
	extern	_CCP2CONbits
	extern	_ADCON0bits
	extern	_OPTION_REGbits
	extern	_TRISAbits
	extern	_TRISBbits
	extern	_TRISCbits
	extern	_TRISDbits
	extern	_TRISEbits
	extern	_PIE1bits
	extern	_PIE2bits
	extern	_PCONbits
	extern	_SSPCON2bits
	extern	_SSPSTATbits
	extern	_TXSTAbits
	extern	_CMCONbits
	extern	_CVRCONbits
	extern	_ADCON1bits
	extern	_EECON1bits
	extern	_INDF
	extern	_TMR0
	extern	_PCL
	extern	_STATUS
	extern	_FSR
	extern	_PORTA
	extern	_PORTB
	extern	_PORTC
	extern	_PORTD
	extern	_PORTE
	extern	_PCLATH
	extern	_INTCON
	extern	_PIR1
	extern	_PIR2
	extern	_TMR1
	extern	_TMR1L
	extern	_TMR1H
	extern	_T1CON
	extern	_TMR2
	extern	_T2CON
	extern	_SSPBUF
	extern	_SSPCON
	extern	_CCPR1
	extern	_CCPR1L
	extern	_CCPR1H
	extern	_CCP1CON
	extern	_RCSTA
	extern	_TXREG
	extern	_RCREG
	extern	_CCPR2
	extern	_CCPR2L
	extern	_CCPR2H
	extern	_CCP2CON
	extern	_ADRESH
	extern	_ADCON0
	extern	_OPTION_REG
	extern	_TRISA
	extern	_TRISB
	extern	_TRISC
	extern	_TRISD
	extern	_TRISE
	extern	_PIE1
	extern	_PIE2
	extern	_PCON
	extern	_SSPCON2
	extern	_PR2
	extern	_SSPADD
	extern	_SSPSTAT
	extern	_TXSTA
	extern	_SPBRG
	extern	_CMCON
	extern	_CVRCON
	extern	_ADRESL
	extern	_ADCON1
	extern	_EEDATA
	extern	_EEADR
	extern	_EEDATH
	extern	_EEADRH
	extern	_EECON1
	extern	_EECON2

	extern PSAVE
	extern SSAVE
	extern WSAVE
	extern STK12
	extern STK11
	extern STK10
	extern STK09
	extern STK08
	extern STK07
	extern STK06
	extern STK05
	extern STK04
	extern STK03
	extern STK02
	extern STK01
	extern STK00
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_LED_Update
	global	_LED_GetState
	global	_LED_SetState
	global	_LED_Init
	global	_LED_Toggle

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_Led_0	udata
r0x1008	res	1
r0x1009	res	1
r0x100A	res	1
r0x1006	res	1
r0x1003	res	1
r0x1004	res	1
r0x1005	res	1
r0x1000	res	1
r0x1001	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_Led	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _LED_Update	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=27previous max_key=3 
_LED_Update	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
	.line	98; "Led.c"	}
	RETURN	
; exit point of _LED_Update

;***
;  pBlock Stats: dbName = C
;***
;entry:  _LED_GetState	;Function start
; 2 exit points
;has an exit
;3 compiler assigned registers:
;   r0x1000
;   r0x1001
;   r0x1002
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=19previous max_key=4 
_LED_GetState	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genReceive *{*
;; ***	genReceive  7359
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1907:assignResultValue *{*
;; ***	assignResultValue  1909
;; 	line = 1911 result -=-, size=0, left AOP_REG=r0x1050, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x1050 
	.line	77; "Led.c"	tLED_State LED_GetState(tLED led)
	BANKSEL	r0x1000
	MOVWF	r0x1000
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6927:genAssign *{*
;; ***	genAssign  6928
;;	694 register type nRegs=1
;; 	line = 6937 result AOP_REG=r0x1051, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7035:genAssign
;;	1109 rIdx = r0x1051 
	.line	79; "Led.c"	tLED_State ret = LED_OFF;
	CLRF	r0x1001
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x1052, size=1, left -=-, size=0, right AOP_REG=r0x1050, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1109 rIdx = r0x1050 
	.line	82; "Led.c"	switch (led)
	MOVF	r0x1000,W
;;1	MOVWF	r0x1002
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3678:genCmpEq
;; ***	popGetLabel  key=3, label offset 27
	GOTO	_00130_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;; ***	aopForSym 315
;;	327 sym->rname = _PORTB, size = 1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x1050, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x08, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4190:genAnd
	.line	85; "Led.c"	ret = GPIO_ReadPortPin(LED_1_PORT_DR, LED_1_PIN);
	MOVLW	0x08
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4191:genAnd
;;	1009
;;	1028  _PORTB   offset=0
	BANKSEL	_PORTB
	ANDWF	_PORTB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4192:genAnd
;;	1109 rIdx = r0x1050 
	BANKSEL	r0x1000
	MOVWF	r0x1000
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5418:genGenericShift *{*
;; ***	genGenericShift  5421
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;;shiftRight_Left2ResultLit:5273: shCount=1, size=1, sign=0, same=0, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5283:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5297:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1050 
	RRF	r0x1000,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5298:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1051 
	MOVWF	r0x1001
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;shiftRight_Left2ResultLit:5273: shCount=1, size=1, sign=0, same=1, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5283:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5293:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1051 
	RRF	r0x1001,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;shiftRight_Left2ResultLit:5273: shCount=1, size=1, sign=0, same=1, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5283:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5293:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1051 
	RRF	r0x1001,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2683:genRet *{*
;; ***	genRet  2685
;;	575
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1051 
_00130_DS_
	.line	91; "Led.c"	return ret;
	BANKSEL	r0x1001
	MOVF	r0x1001,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
	RETURN	
; exit point of _LED_GetState
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;entry:  _LED_SetState	;Function start
; 2 exit points
;has an exit
;4 compiler assigned registers:
;   r0x1003
;   STK00
;   r0x1004
;   r0x1005
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=11previous max_key=4 
_LED_SetState	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genReceive *{*
;; ***	genReceive  7359
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1907:assignResultValue *{*
;; ***	assignResultValue  1909
;; 	line = 1911 result -=-, size=0, left AOP_REG=r0x104D, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x104D 
	.line	58; "Led.c"	void LED_SetState(tLED led, tLED_State state)
	BANKSEL	r0x1003
	MOVWF	r0x1003
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genReceive *{*
;; ***	genReceive  7359
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1907:assignResultValue *{*
;; ***	assignResultValue  1909
;; 	line = 1911 result -=-, size=0, left AOP_REG=r0x104E, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1423:get_returnvalue
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVF	STK00,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x104E 
	MOVWF	r0x1004
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x104F, size=1, left -=-, size=0, right AOP_REG=r0x104D, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1109 rIdx = r0x104D 
	.line	61; "Led.c"	switch (led)
	MOVF	r0x1003,W
	MOVWF	r0x1005
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3678:genCmpEq
;; ***	popGetLabel  key=4, label offset 19
	GOTO	_00123_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;; ***	aopForSym 315
;;	327 sym->rname = _PORTB, size = 1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x104D, size=1, left -=-, size=0, right AOP_DIR=_PORTB, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1009
;;	1028  _PORTB   offset=0
	.line	64; "Led.c"	GPIO_WritePortPin(LED_1_PORT_DR, LED_1_PIN, state);
	BANKSEL	_PORTB
	MOVF	_PORTB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x104D 
	BANKSEL	r0x1003
	MOVWF	r0x1003
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x104D, size=1, left AOP_REG=r0x104D, size=1, right AOP_LIT=0xf7, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4122:genAnd
	BCF	r0x1003,3
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5418:genGenericShift *{*
;; ***	genGenericShift  5421
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5183:shiftLeft_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5192:shiftLeft_Left2ResultLit
;;	1109 rIdx = r0x104E 
	RLF	r0x1004,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5193:shiftLeft_Left2ResultLit
;;	1109 rIdx = r0x104F 
	MOVWF	r0x1005
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5183:shiftLeft_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5188:shiftLeft_Left2ResultLit
;;	1109 rIdx = r0x104F 
	RLF	r0x1005,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5183:shiftLeft_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5188:shiftLeft_Left2ResultLit
;;	1109 rIdx = r0x104F 
	RLF	r0x1005,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x104E, size=1, left -=-, size=0, right AOP_REG=r0x104F, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1109 rIdx = r0x104F 
	MOVF	r0x1005,W
	MOVWF	r0x1004
	IORWF	r0x1003,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4481:genOr
;;	1009
;;	1028  _PORTB   offset=0
	BANKSEL	_PORTB
	MOVWF	_PORTB
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
_00123_DS_
	.line	69; "Led.c"	}
	RETURN	
; exit point of _LED_SetState
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;entry:  _LED_Toggle	;Function start
; 2 exit points
;has an exit
;functions called:
;   _LED_GetState
;   _LED_SetState
;   _LED_SetState
;   _LED_GetState
;   _LED_SetState
;   _LED_SetState
;3 compiler assigned registers:
;   r0x1006
;   r0x1007
;   STK00
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=4previous max_key=3 
_LED_Toggle	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genReceive *{*
;; ***	genReceive  7359
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1907:assignResultValue *{*
;; ***	assignResultValue  1909
;; 	line = 1911 result -=-, size=0, left AOP_REG=r0x104B, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x104B 
	.line	39; "Led.c"	void LED_Toggle(tLED led)
	BANKSEL	r0x1006
	MOVWF	r0x1006
	.line	42; "Led.c"	if (LED_GetState(led) == LED_ON)
	PAGESEL	_LED_GetState
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2175:genCall
	CALL	_LED_GetState
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2181:genCall
	PAGESEL	$
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1907:assignResultValue *{*
;; ***	assignResultValue  1909
;; 	line = 1911 result -=-, size=0, left AOP_REG=r0x104C, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x104C 
;;1	MOVWF	r0x1007
	XORLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3687:genCmpEq
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3690:genCmpEq
;; ***	popGetLabel  key=2, label offset 11
	GOTO	_00113_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2086:genCall *{*
;; ***	genCall  2088
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1801:saveRegisters *{*
;; ***	saveRegisters  1803
;;	694 register type nRegs=1
;; 	2135 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1361:mov2w_op
	.line	44; "Led.c"	LED_SetState(led, LED_OFF);
	MOVLW	0x00
;;	694 register type nRegs=1
;; 	2135 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2143:genCall
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVWF	STK00
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104B 
	BANKSEL	r0x1006
	MOVF	r0x1006,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	_LED_SetState
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2175:genCall
	CALL	_LED_SetState
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2181:genCall
	PAGESEL	$
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1845:unsaveRegisters *{*
;; ***	unsaveRegisters  1847
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=4, label offset 11
	GOTO	_00115_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2086:genCall *{*
;; ***	genCall  2088
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1801:saveRegisters *{*
;; ***	saveRegisters  1803
;;	694 register type nRegs=1
;; 	2135 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1361:mov2w_op
_00113_DS_
	.line	47; "Led.c"	LED_SetState(led, LED_ON);
	MOVLW	0x01
;;	694 register type nRegs=1
;; 	2135 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2143:genCall
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVWF	STK00
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104B 
	BANKSEL	r0x1006
	MOVF	r0x1006,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	_LED_SetState
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2175:genCall
	CALL	_LED_SetState
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2181:genCall
	PAGESEL	$
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1845:unsaveRegisters *{*
;; ***	unsaveRegisters  1847
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
_00115_DS_
	RETURN	
; exit point of _LED_Toggle
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;entry:  _LED_Init	;Function start
; 2 exit points
;has an exit
;functions called:
;   _LED_SetState
;   _LED_SetState
;4 compiler assigned registers:
;   r0x1008
;   STK00
;   r0x1009
;   r0x100A
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=0previous max_key=0 
_LED_Init	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genReceive *{*
;; ***	genReceive  7359
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1907:assignResultValue *{*
;; ***	assignResultValue  1909
;; 	line = 1911 result -=-, size=0, left AOP_REG=r0x1048, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x1048 
	.line	16; "Led.c"	void LED_Init(tLED led, tLED_State state)
	BANKSEL	r0x1008
	MOVWF	r0x1008
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genReceive *{*
;; ***	genReceive  7359
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1907:assignResultValue *{*
;; ***	assignResultValue  1909
;; 	line = 1911 result -=-, size=0, left AOP_REG=r0x1049, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1423:get_returnvalue
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVF	STK00,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x1049 
	MOVWF	r0x1009
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x104A, size=1, left -=-, size=0, right AOP_REG=r0x1048, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1109 rIdx = r0x1048 
	.line	19; "Led.c"	switch (led)
	MOVF	r0x1008,W
	MOVWF	r0x100A
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3678:genCmpEq
;; ***	popGetLabel  key=3, label offset 4
	GOTO	_00107_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;; ***	aopForSym 315
;;	327 sym->rname = _TRISB, size = 1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x104A, size=1, left -=-, size=0, right AOP_DIR=_TRISB, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1009
;;	1028  _TRISB   offset=0
	.line	22; "Led.c"	GPIO_InitPortPin(LED_1_PORT_CR, LED_1_PIN, GPIO_OUT);
	BANKSEL	_TRISB
	MOVF	_TRISB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x104A 
	BANKSEL	r0x100A
	MOVWF	r0x100A
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;; ***	aopForSym 315
;;	327 sym->rname = _TRISB, size = 1
;; 	line = 3955 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0xf7, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4190:genAnd
	MOVLW	0xf7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4191:genAnd
;;	1109 rIdx = r0x104A 
	ANDWF	r0x100A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4192:genAnd
;;	1009
;;	1028  _TRISB   offset=0
	BANKSEL	_TRISB
	MOVWF	_TRISB
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2086:genCall *{*
;; ***	genCall  2088
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1801:saveRegisters *{*
;; ***	saveRegisters  1803
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	2135 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1049 
_00107_DS_
	.line	30; "Led.c"	LED_SetState(led, state);
	BANKSEL	r0x1009
	MOVF	r0x1009,W
;;	694 register type nRegs=1
;; 	2135 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2143:genCall
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVWF	STK00
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1048 
	MOVF	r0x1008,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	_LED_SetState
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2175:genCall
	CALL	_LED_SetState
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2181:genCall
	PAGESEL	$
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1845:unsaveRegisters *{*
;; ***	unsaveRegisters  1847
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
	RETURN	
; exit point of _LED_Init
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*


;	code size estimation:
;	   72+   24 =    96 instructions (  240 byte)

	end
