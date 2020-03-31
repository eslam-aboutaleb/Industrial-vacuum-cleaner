;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Jun 20 2015) (MINGW32)
; This file was generated Tue Mar 31 02:49:32 2020
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
	.file	"SW.c"
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
	extern	_TMR_Init
	extern	_TMR_Start
	extern	_TMR_CheckOverFlow
	extern	_TMR_Stop
	extern	_TMR_Update
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
	extern	__mulchar

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
	global	_SW_Update
	global	_SW_GetState
	global	_SW_Init

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_SW_0	udata
r0x1017	res	1
r0x1018	res	1
r0x1019	res	1
r0x101A	res	1
r0x101B	res	1
r0x1013	res	1
r0x1014	res	1
r0x1015	res	1
r0x1016	res	1
r0x100B	res	1
r0x100C	res	1
r0x100D	res	1
r0x100E	res	1
r0x100F	res	1
r0x1010	res	1
r0x1011	res	1
r0x1012	res	1
_SWs_Info	res	9
_SW_Update_SW_counter_1_41	res	2
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
code_SW	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _SW_Update	;Function start
; 2 exit points
;has an exit
;functions called:
;   __mulchar
;   __mulchar
;   __mulchar
;   __mulchar
;9 compiler assigned registers:
;   r0x100B
;   STK00
;   r0x100C
;   r0x100D
;   r0x100E
;   r0x100F
;   r0x1010
;   r0x1011
;   r0x1012
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=10previous max_key=0 
_SW_Update	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;; ***	aopForSym 315
;;	327 sym->rname = _SW_Update_SW_counter_1_41, size = 2
;;	575
;; 	line = 618 result AOP_DIR=_SW_Update_SW_counter_1_41, size=2, left AOP_DIR=_SW_Update_SW_counter_1_41, size=2, right AOP_LIT=0x0a, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  156
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;; hi = 0	genAddLit  328
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:344:genAddLit
	.line	77; "SW.c"	SW_counter += TMR_TICK_MS;
	MOVLW	0x0a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:345:genAddLit
;;	1009
;;	1028  _SW_Update_SW_counter_1_41   offset=0
	BANKSEL	_SW_Update_SW_counter_1_41
	ADDWF	_SW_Update_SW_counter_1_41,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:346:genAddLit
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:347:genAddLit
;;	1009
;;	1028  _SW_Update_SW_counter_1_41   offset=1
	INCF	(_SW_Update_SW_counter_1_41 + 1),F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3619:genCmpEq *{*
;; ***	genCmpEq  3620
;; ifx is non-null
;; ***	aopForSym 315
;;	327 sym->rname = _SW_Update_SW_counter_1_41, size = 2
;; 	line = 3631 result AOP_CRY=0x00, size=0, left AOP_DIR=_SW_Update_SW_counter_1_41, size=2, right AOP_LIT=0x14, size=2
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1009
;;	1028  _SW_Update_SW_counter_1_41   offset=0
	.line	79; "SW.c"	if (SW_counter != SW_PERIOD_MS){
	MOVF	_SW_Update_SW_counter_1_41,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3685:genCmpEq
	XORLW	0x14
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3687:genCmpEq
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3690:genCmpEq
;; ***	popGetLabel  key=69, label offset 14
	GOTO	_00183_DS_
;; ***	mov2w  1381  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1009
;;	1028  _SW_Update_SW_counter_1_41   offset=1
	MOVF	(_SW_Update_SW_counter_1_41 + 1),W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3685:genCmpEq
	.line	80; "SW.c"	return;
	XORLW	0x00
	.line	83; "SW.c"	SW_counter = 0;
	BTFSS	STATUS,2
_00183_DS_
	GOTO	_00144_DS_
	BANKSEL	_SW_Update_SW_counter_1_41
	CLRF	_SW_Update_SW_counter_1_41
	CLRF	(_SW_Update_SW_counter_1_41 + 1)
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6927:genAssign *{*
;; ***	genAssign  6928
;;	694 register type nRegs=1
;; 	line = 6937 result AOP_REG=r0x1053, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7035:genAssign
;;	1109 rIdx = r0x1053 
	.line	86; "SW.c"	for (index = SW_PLUS; index < N_SWITCHES; index++)
	BANKSEL	r0x100B
	CLRF	r0x100B
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2878:genMult *{*
;; ***	genMult  2880
;;	694 register type nRegs=1
;;	694 register type nRegs=2
;; 	line = 2886 result AOP_REG=r0x1054, size=2, left AOP_REG=r0x1053, size=1, right AOP_LIT=0x03, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2816:genMultOneByte *{*
;; ***	genMultOneByte  2818
;; 	line = 2819 result AOP_REG=r0x1054, size=2, left AOP_REG=r0x1053, size=1, right AOP_LIT=0x03, size=1
;; 	line = 2820, signs: result AOP_REG=u, left AOP_REG=u, right AOP_LIT=u
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1384:mov2w
_00142_DS_
	.line	89; "SW.c"	SWs_Info[index].sw_samples[0] = SWs_Info[index].sw_samples[1];
	MOVLW	0x03
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2840:genMultOneByte
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVWF	STK00
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1053 
	BANKSEL	r0x100B
	MOVF	r0x100B,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1433:call_libraryfunc
	PAGESEL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1435:call_libraryfunc
	CALL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:call_libraryfunc
	PAGESEL	$
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x1054 
	BANKSEL	r0x100C
	MOVWF	r0x100C
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:881:addSign
;;	1109 rIdx = r0x1055 
	CLRF	r0x100D
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	613
;;	aopForRemat 392
;;	418: rname _SWs_Info, val 0, const = 0
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; 	line = 618 result AOP_REG=r0x1056, size=2, left AOP_PCODE=_SWs_Info, size=2, right AOP_REG=r0x1054, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  717
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:726:genPlus
;;	1109 rIdx = r0x1054 
	MOVF	r0x100C,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:735:genPlus
	ADDLW	(_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:736:genPlus
;;	1109 rIdx = r0x1056 
	MOVWF	r0x100E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:771:genPlus
	MOVLW	high (_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:772:genPlus
;;	1109 rIdx = r0x1057 
	MOVWF	r0x100F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:774:genPlus
;;	1109 rIdx = r0x1055 
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:775:genPlus
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:776:genPlus
;;	1109 rIdx = r0x1055 
	INCFSZ	r0x100D,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:777:genPlus
;;	1109 rIdx = r0x1057 
	ADDWF	r0x100F,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	613
;;	aopForRemat 392
;;	418: rname _SWs_Info, val 0, const = 0
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; 	line = 618 result AOP_REG=r0x1054, size=2, left AOP_PCODE=_SWs_Info, size=2, right AOP_REG=r0x1054, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  717
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:726:genPlus
;;	1109 rIdx = r0x1054 
	MOVF	r0x100C,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:735:genPlus
	ADDLW	(_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:736:genPlus
;;	1109 rIdx = r0x1054 
	MOVWF	r0x100C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:749:genPlus
;;	1109 rIdx = r0x1055 
	MOVF	r0x100D,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:750:genPlus
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:751:genPlus
;;	1109 rIdx = r0x1055 
	INCFSZ	r0x100D,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:752:genPlus
	ADDLW	high (_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:753:genPlus
;;	1109 rIdx = r0x1055 
	MOVWF	r0x100D
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x1054, size=2, left AOP_REG=r0x1054, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
;;	1109 rIdx = r0x1054 
	INCF	r0x100C,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:172:genPlusIncr
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:173:genPlusIncr
;;	1109 rIdx = r0x1055 
	INCF	r0x100D,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1054 
	MOVF	r0x100C,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BANKSEL	r0x100D
	BTFSC	r0x100D,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	BANKSEL	INDF
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x1058 
	BANKSEL	r0x1010
	MOVWF	r0x1010
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;;	694 register type nRegs=1
;; 	line = 6523 result AOP_REG=r0x1056, size=2, left -=-, size=0, right AOP_REG=r0x1058, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1056 
	MOVF	r0x100E,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BANKSEL	r0x100F
	BTFSC	r0x100F,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6564:genNearPointerSet
;;	1109 rIdx = r0x1058 
	MOVF	r0x1010,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	BANKSEL	INDF
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6759:genIfx *{*
;; ***	genIfx  6760
;;	694 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1522:pic14_toBoolean
	.line	91; "SW.c"	if (index == SW_PLUS)
	BANKSEL	r0x100B
	MOVF	r0x100B,W
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6809:genIfx
;; ***	popGetLabel  key=9, label offset 14
	GOTO	_00123_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;; ***	aopForSym 315
;;	327 sym->rname = _PORTB, size = 1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x1056, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x01, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4190:genAnd
	.line	93; "SW.c"	SWs_Info[index].sw_samples[1] = GPIO_ReadPortPin(SW_PLUS_PORT_DR, SW_PLUS_PIN);
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4191:genAnd
;;	1009
;;	1024  _PORTB   offset=0 - had to alloc by reg name
	BANKSEL	_PORTB
	ANDWF	_PORTB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4192:genAnd
;;	1109 rIdx = r0x1056 
	BANKSEL	r0x100E
	MOVWF	r0x100E
	MOVWF	r0x100F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x1054, size=2, left -=-, size=0, right AOP_REG=r0x1057, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1054 
	MOVF	r0x100C,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BANKSEL	r0x100D
	BTFSC	r0x100D,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6564:genNearPointerSet
;;	1109 rIdx = r0x1057 
	MOVF	r0x100F,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	BANKSEL	INDF
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=10, label offset 14
	GOTO	_00124_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3619:genCmpEq *{*
;; ***	genCmpEq  3620
;; ifx is non-null
;;	694 register type nRegs=1
;; 	line = 3631 result AOP_CRY=0x00, size=0, left AOP_REG=r0x1053, size=1, right AOP_LIT=0x01, size=1
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1053 
_00123_DS_
	.line	94; "SW.c"	} else if (index == SW_MINUS)
	BANKSEL	r0x100B
	MOVF	r0x100B,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3685:genCmpEq
	XORLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3687:genCmpEq
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3690:genCmpEq
;; ***	popGetLabel  key=6, label offset 14
	GOTO	_00120_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;; ***	aopForSym 315
;;	327 sym->rname = _PORTB, size = 1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x1056, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x02, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4190:genAnd
	.line	96; "SW.c"	SWs_Info[index].sw_samples[1] = GPIO_ReadPortPin(SW_MINUS_PORT_DR, SW_MINUS_PIN);
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4191:genAnd
;;	1009
;;	1028  _PORTB   offset=0
	BANKSEL	_PORTB
	ANDWF	_PORTB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4192:genAnd
;;	1109 rIdx = r0x1056 
	BANKSEL	r0x100E
	MOVWF	r0x100E
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5418:genGenericShift *{*
;; ***	genGenericShift  5421
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;;shiftRight_Left2ResultLit:5273: shCount=1, size=1, sign=0, same=0, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5283:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5297:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1056 
	RRF	r0x100E,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5298:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1057 
	MOVWF	r0x100F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x1054, size=2, left -=-, size=0, right AOP_REG=r0x1057, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1054 
	MOVF	r0x100C,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BANKSEL	r0x100D
	BTFSC	r0x100D,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6564:genNearPointerSet
;;	1109 rIdx = r0x1057 
	MOVF	r0x100F,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	BANKSEL	INDF
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=10, label offset 14
	GOTO	_00124_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3619:genCmpEq *{*
;; ***	genCmpEq  3620
;; ifx is non-null
;;	694 register type nRegs=1
;; 	line = 3631 result AOP_CRY=0x00, size=0, left AOP_REG=r0x1053, size=1, right AOP_LIT=0x02, size=1
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1053 
_00120_DS_
	.line	97; "SW.c"	} else if (index == SW_D)
	BANKSEL	r0x100B
	MOVF	r0x100B,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3685:genCmpEq
	XORLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3687:genCmpEq
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3690:genCmpEq
;; ***	popGetLabel  key=10, label offset 14
	GOTO	_00124_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;; ***	aopForSym 315
;;	327 sym->rname = _PORTB, size = 1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x1056, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x04, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4190:genAnd
	.line	99; "SW.c"	SWs_Info[index].sw_samples[1] = GPIO_ReadPortPin(SW_D_PORT_DR, SW_D_PIN);
	MOVLW	0x04
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4191:genAnd
;;	1009
;;	1028  _PORTB   offset=0
	BANKSEL	_PORTB
	ANDWF	_PORTB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4192:genAnd
;;	1109 rIdx = r0x1056 
	BANKSEL	r0x100E
	MOVWF	r0x100E
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5418:genGenericShift *{*
;; ***	genGenericShift  5421
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;;shiftRight_Left2ResultLit:5273: shCount=1, size=1, sign=0, same=0, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5283:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5297:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1056 
	RRF	r0x100E,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5298:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1057 
	MOVWF	r0x100F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;shiftRight_Left2ResultLit:5273: shCount=1, size=1, sign=0, same=1, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5283:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5293:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1057 
	RRF	r0x100F,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x1054, size=2, left -=-, size=0, right AOP_REG=r0x1057, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1054 
	MOVF	r0x100C,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BANKSEL	r0x100D
	BTFSC	r0x100D,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6564:genNearPointerSet
;;	1109 rIdx = r0x1057 
	MOVF	r0x100F,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	BANKSEL	INDF
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2878:genMult *{*
;; ***	genMult  2880
;;	694 register type nRegs=1
;;	694 register type nRegs=2
;; 	line = 2886 result AOP_REG=r0x1054, size=2, left AOP_REG=r0x1053, size=1, right AOP_LIT=0x03, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2816:genMultOneByte *{*
;; ***	genMultOneByte  2818
;; 	line = 2819 result AOP_REG=r0x1054, size=2, left AOP_REG=r0x1053, size=1, right AOP_LIT=0x03, size=1
;; 	line = 2820, signs: result AOP_REG=u, left AOP_REG=u, right AOP_LIT=u
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1384:mov2w
_00124_DS_
	.line	106; "SW.c"	switch(SWs_Info[index].sw_state)
	MOVLW	0x03
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2840:genMultOneByte
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVWF	STK00
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1053 
	BANKSEL	r0x100B
	MOVF	r0x100B,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1433:call_libraryfunc
	PAGESEL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1435:call_libraryfunc
	CALL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:call_libraryfunc
	PAGESEL	$
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x1054 
	BANKSEL	r0x100C
	MOVWF	r0x100C
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:881:addSign
;;	1109 rIdx = r0x1055 
	CLRF	r0x100D
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	613
;;	aopForRemat 392
;;	418: rname _SWs_Info, val 0, const = 0
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; 	line = 618 result AOP_REG=r0x1054, size=2, left AOP_PCODE=_SWs_Info, size=2, right AOP_REG=r0x1054, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  717
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:726:genPlus
;;	1109 rIdx = r0x1054 
	MOVF	r0x100C,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:735:genPlus
	ADDLW	(_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:736:genPlus
;;	1109 rIdx = r0x1054 
	MOVWF	r0x100C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:749:genPlus
;;	1109 rIdx = r0x1055 
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:750:genPlus
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:751:genPlus
;;	1109 rIdx = r0x1055 
	INCFSZ	r0x100D,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:752:genPlus
	ADDLW	high (_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:753:genPlus
;;	1109 rIdx = r0x1055 
	MOVWF	r0x100D
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x1056, size=2, left AOP_REG=r0x1054, size=2, right AOP_LIT=0x02, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; 	genPlusIncr  180
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;;  left and result aren't same	genAddLit  514
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:546:genAddLit
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:547:genAddLit
;;	1109 rIdx = r0x1054 
	ADDWF	r0x100C,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:257:emitMOVWF
;;	1109 rIdx = r0x1056 
	MOVWF	r0x100E
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:584:genAddLit
;;	1109 rIdx = r0x1057 
	CLRF	r0x100F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:585:genAddLit
;;	1109 rIdx = r0x1057 
	RLF	r0x100F,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:586:genAddLit
;;	1109 rIdx = r0x1055 
	MOVF	r0x100D,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:587:genAddLit
;;	1109 rIdx = r0x1057 
	ADDWF	r0x100F,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1056 
	MOVF	r0x100E,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BANKSEL	r0x100F
	BTFSC	r0x100F,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	BANKSEL	INDF
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x1058 
	BANKSEL	r0x1010
	MOVWF	r0x1010
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3547:genCmpGt *{*
;; ***	genCmpGt  3548
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3294:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x4=4), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3265:pic14_mov2w_regOrLit
	MOVLW	0x04
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3432:genCmp
;;	1109 rIdx = r0x1058 
	SUBWF	r0x1010,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3237:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3242:genSkipc
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3246:genSkipc
;; ***	popGetLabel  key=29, label offset 14
	GOTO	_00143_DS_
;;genSkipc:3247: created from rifx:027A5DF4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7071:genJumpTab *{*
;; ***	genJumpTab  7072
;;	694 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7087:genJumpTab
;; ***	popGetLabel  key=71, label offset 14
	MOVLW	HIGH(_00185_DS_)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7088:genJumpTab
	BANKSEL	PCLATH
	MOVWF	PCLATH
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7089:genJumpTab
;; ***	popGetLabel  key=71, label offset 14
	MOVLW	_00185_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7090:genJumpTab
;;	1109 rIdx = r0x1058 
	BANKSEL	r0x1010
	ADDWF	r0x1010,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7091:genJumpTab
	BTFSS	STATUS,0
	GOTO	_00001_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7092:genJumpTab
	BANKSEL	PCLATH
	INCF	PCLATH,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7093:genJumpTab
_00001_DS_
	MOVWF	PCL
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=11, label offset 14
_00185_DS_
	GOTO	_00125_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=15, label offset 14
	GOTO	_00129_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=18, label offset 14
	GOTO	_00132_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=22, label offset 14
	GOTO	_00136_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1054 
_00125_DS_
	.line	111; "SW.c"	if ((SWs_Info[index].sw_samples[0] == SW_PRESSED_LEVEL) &&
	BANKSEL	r0x100C
	MOVF	r0x100C,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BANKSEL	r0x100D
	BTFSC	r0x100D,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	BANKSEL	INDF
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x1058 
	BANKSEL	r0x1010
	MOVWF	r0x1010
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6759:genIfx *{*
;; ***	genIfx  6760
;;	694 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1522:pic14_toBoolean
	MOVF	r0x1010,W
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6809:genIfx
;; ***	popGetLabel  key=29, label offset 14
	GOTO	_00143_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x1058, size=2, left AOP_REG=r0x1054, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; 	genPlusIncr  180
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;;  left and result aren't same	genAddLit  514
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:546:genAddLit
	.line	112; "SW.c"	(SWs_Info[index].sw_samples[1] == SW_PRESSED_LEVEL))
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:547:genAddLit
;;	1109 rIdx = r0x1054 
	ADDWF	r0x100C,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:257:emitMOVWF
;;	1109 rIdx = r0x1058 
	MOVWF	r0x1010
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:584:genAddLit
;;	1109 rIdx = r0x1059 
	CLRF	r0x1011
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:585:genAddLit
;;	1109 rIdx = r0x1059 
	RLF	r0x1011,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:586:genAddLit
;;	1109 rIdx = r0x1055 
	MOVF	r0x100D,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:587:genAddLit
;;	1109 rIdx = r0x1059 
	ADDWF	r0x1011,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1058 
	MOVF	r0x1010,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BANKSEL	r0x1011
	BTFSC	r0x1011,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	BANKSEL	INDF
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x105A 
	BANKSEL	r0x1012
	MOVWF	r0x1012
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6759:genIfx *{*
;; ***	genIfx  6760
;;	694 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1522:pic14_toBoolean
	MOVF	r0x1012,W
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6809:genIfx
;; ***	popGetLabel  key=29, label offset 14
	GOTO	_00143_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x1056, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1056 
	.line	114; "SW.c"	SWs_Info[index].sw_state = SW_PRE_PRESSED;
	MOVF	r0x100E,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BANKSEL	r0x100F
	BTFSC	r0x100F,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	BANKSEL	INDF
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=29, label offset 14
	.line	119; "SW.c"	break;
	GOTO	_00143_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x1058, size=2, left AOP_REG=r0x1054, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; 	genPlusIncr  180
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;;  left and result aren't same	genAddLit  514
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:546:genAddLit
_00129_DS_
	.line	122; "SW.c"	if (SWs_Info[index].sw_samples[1] == SW_PRESSED_LEVEL)
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:547:genAddLit
;;	1109 rIdx = r0x1054 
	BANKSEL	r0x100C
	ADDWF	r0x100C,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:257:emitMOVWF
;;	1109 rIdx = r0x1058 
	MOVWF	r0x1010
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:584:genAddLit
;;	1109 rIdx = r0x1059 
	CLRF	r0x1011
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:585:genAddLit
;;	1109 rIdx = r0x1059 
	RLF	r0x1011,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:586:genAddLit
;;	1109 rIdx = r0x1055 
	MOVF	r0x100D,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:587:genAddLit
;;	1109 rIdx = r0x1059 
	ADDWF	r0x1011,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1058 
	MOVF	r0x1010,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BANKSEL	r0x1011
	BTFSC	r0x1011,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	BANKSEL	INDF
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x105A 
	BANKSEL	r0x1012
	MOVWF	r0x1012
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6759:genIfx *{*
;; ***	genIfx  6760
;;	694 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1522:pic14_toBoolean
	MOVF	r0x1012,W
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6809:genIfx
;; ***	popGetLabel  key=29, label offset 14
	GOTO	_00143_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x1056, size=2, left -=-, size=0, right AOP_LIT=0x02, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1056 
	.line	124; "SW.c"	SWs_Info[index].sw_state = SW_PRESSED;
	MOVF	r0x100E,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BANKSEL	r0x100F
	BTFSC	r0x100F,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	BANKSEL	INDF
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=29, label offset 14
	.line	129; "SW.c"	break;
	GOTO	_00143_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1054 
_00132_DS_
	.line	132; "SW.c"	if ((SWs_Info[index].sw_samples[0] == SW_RELEASED_LEVEL) &&
	BANKSEL	r0x100C
	MOVF	r0x100C,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BANKSEL	r0x100D
	BTFSC	r0x100D,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	BANKSEL	INDF
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x1058 
	BANKSEL	r0x1010
	MOVWF	r0x1010
	XORLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3687:genCmpEq
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3690:genCmpEq
;; ***	popGetLabel  key=29, label offset 14
	GOTO	_00143_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x1058, size=2, left AOP_REG=r0x1054, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; 	genPlusIncr  180
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;;  left and result aren't same	genAddLit  514
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:546:genAddLit
	.line	133; "SW.c"	(SWs_Info[index].sw_samples[1] == SW_RELEASED_LEVEL))
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:547:genAddLit
;;	1109 rIdx = r0x1054 
	ADDWF	r0x100C,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:257:emitMOVWF
;;	1109 rIdx = r0x1058 
	MOVWF	r0x1010
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:584:genAddLit
;;	1109 rIdx = r0x1059 
	CLRF	r0x1011
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:585:genAddLit
;;	1109 rIdx = r0x1059 
	RLF	r0x1011,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:586:genAddLit
;;	1109 rIdx = r0x1055 
	MOVF	r0x100D,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:587:genAddLit
;;	1109 rIdx = r0x1059 
	ADDWF	r0x1011,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1058 
	MOVF	r0x1010,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BANKSEL	r0x1011
	BTFSC	r0x1011,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	BANKSEL	INDF
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x105A 
	BANKSEL	r0x1012
	MOVWF	r0x1012
	XORLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3687:genCmpEq
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3690:genCmpEq
;; ***	popGetLabel  key=29, label offset 14
	GOTO	_00143_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x1056, size=2, left -=-, size=0, right AOP_LIT=0x03, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1056 
	.line	135; "SW.c"	SWs_Info[index].sw_state = SW_PRE_RELEASED;
	MOVF	r0x100E,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BANKSEL	r0x100F
	BTFSC	r0x100F,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x03
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	BANKSEL	INDF
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=29, label offset 14
	.line	141; "SW.c"	break;
	GOTO	_00143_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x1054, size=2, left AOP_REG=r0x1054, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
;;	1109 rIdx = r0x1054 
_00136_DS_
	.line	144; "SW.c"	if (SWs_Info[index].sw_samples[1] == SW_RELEASED_LEVEL)
	BANKSEL	r0x100C
	INCF	r0x100C,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:172:genPlusIncr
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:173:genPlusIncr
;;	1109 rIdx = r0x1055 
	INCF	r0x100D,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1054 
	MOVF	r0x100C,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BANKSEL	r0x100D
	BTFSC	r0x100D,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	BANKSEL	INDF
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x1058 
	BANKSEL	r0x1010
	MOVWF	r0x1010
	XORLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3687:genCmpEq
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3690:genCmpEq
;; ***	popGetLabel  key=29, label offset 14
	GOTO	_00143_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x1056, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1056 
	.line	146; "SW.c"	SWs_Info[index].sw_state = SW_RELEASED;
	MOVF	r0x100E,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BANKSEL	r0x100F
	BTFSC	r0x100F,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	BANKSEL	INDF
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=1
;;	575
;; 	line = 618 result AOP_REG=r0x1053, size=1, left AOP_REG=r0x1053, size=1, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
;;	1109 rIdx = r0x1053 
_00143_DS_
	.line	86; "SW.c"	for (index = SW_PLUS; index < N_SWITCHES; index++)
	BANKSEL	r0x100B
	INCF	r0x100B,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3583:genCmpLt *{*
;; ***	genCmpLt  3584
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3294:genCmp *{*
;;unsigned compare: left < lit(0x3=3), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3265:pic14_mov2w_regOrLit
	MOVLW	0x03
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3432:genCmp
;;	1109 rIdx = r0x1053 
	SUBWF	r0x100B,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3237:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3244:genSkipc
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3246:genSkipc
;; ***	popGetLabel  key=28, label offset 14
	GOTO	_00142_DS_
;;genSkipc:3247: created from rifx:027A5DF4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
_00144_DS_
	RETURN	
; exit point of _SW_Update
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;entry:  _SW_GetState	;Function start
; 2 exit points
;has an exit
;functions called:
;   __mulchar
;   __mulchar
;5 compiler assigned registers:
;   r0x1013
;   STK00
;   r0x1014
;   r0x1015
;   r0x1016
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=4previous max_key=2 
_SW_GetState	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genReceive *{*
;; ***	genReceive  7359
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1907:assignResultValue *{*
;; ***	assignResultValue  1909
;; 	line = 1911 result -=-, size=0, left AOP_REG=r0x104E, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x104E 
	.line	64; "SW.c"	tSW_State SW_GetState(tSW sw)
	BANKSEL	r0x1013
	MOVWF	r0x1013
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2878:genMult *{*
;; ***	genMult  2880
;;	694 register type nRegs=1
;;	694 register type nRegs=2
;; 	line = 2886 result AOP_REG=r0x104F, size=2, left AOP_REG=r0x104E, size=1, right AOP_LIT=0x03, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2816:genMultOneByte *{*
;; ***	genMultOneByte  2818
;; 	line = 2819 result AOP_REG=r0x104F, size=2, left AOP_REG=r0x104E, size=1, right AOP_LIT=0x03, size=1
;; 	line = 2820, signs: result AOP_REG=u, left AOP_REG=u, right AOP_LIT=u
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1384:mov2w
	.line	67; "SW.c"	return SWs_Info[sw].sw_state;
	MOVLW	0x03
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2840:genMultOneByte
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVWF	STK00
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104E 
	MOVF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1433:call_libraryfunc
	PAGESEL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1435:call_libraryfunc
	CALL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:call_libraryfunc
	PAGESEL	$
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x104F 
	BANKSEL	r0x1014
	MOVWF	r0x1014
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:881:addSign
;;	1109 rIdx = r0x1050 
	CLRF	r0x1015
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	613
;;	aopForRemat 392
;;	418: rname _SWs_Info, val 0, const = 0
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; 	line = 618 result AOP_REG=r0x104E, size=2, left AOP_PCODE=_SWs_Info, size=2, right AOP_REG=r0x104F, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  717
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:726:genPlus
;;	1109 rIdx = r0x104F 
	MOVF	r0x1014,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:735:genPlus
	ADDLW	(_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:736:genPlus
;;	1109 rIdx = r0x104E 
	MOVWF	r0x1013
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:771:genPlus
	MOVLW	high (_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:772:genPlus
;;	1109 rIdx = r0x1051 
	MOVWF	r0x1016
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:774:genPlus
;;	1109 rIdx = r0x1050 
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:775:genPlus
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:776:genPlus
;;	1109 rIdx = r0x1050 
	INCFSZ	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:777:genPlus
;;	1109 rIdx = r0x1051 
	ADDWF	r0x1016,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x104E, size=2, left AOP_REG=r0x104E, size=2, right AOP_LIT=0x02, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; 	genPlusIncr  180
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;; hi = 0	genAddLit  328
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:344:genAddLit
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:345:genAddLit
;;	1109 rIdx = r0x104E 
	ADDWF	r0x1013,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:346:genAddLit
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:347:genAddLit
;;	1109 rIdx = r0x1051 
	INCF	r0x1016,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104E 
	MOVF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BANKSEL	r0x1016
	BTFSC	r0x1016,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	BANKSEL	INDF
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x104F 
	BANKSEL	r0x1014
	MOVWF	r0x1014
	RETURN	
; exit point of _SW_GetState
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;entry:  _SW_Init	;Function start
; 2 exit points
;has an exit
;functions called:
;   __mulchar
;   __mulchar
;6 compiler assigned registers:
;   r0x1017
;   STK00
;   r0x1018
;   r0x1019
;   r0x101A
;   r0x101B
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=0previous max_key=0 
_SW_Init	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;; ***	aopForSym 315
;;	327 sym->rname = _TRISB, size = 1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_DIR=_TRISB, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1009
;;	1028  _TRISB   offset=0
	.line	46; "SW.c"	GPIO_InitPortPin(SW_PLUS_PORT_CR, SW_PLUS_PIN, GPIO_IN);
	BANKSEL	_TRISB
	MOVF	_TRISB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x1048 
	BANKSEL	r0x1017
	MOVWF	r0x1017
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x1048, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0xfe, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4122:genAnd
	BCF	r0x1017,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4220:genOr *{*
;; ***	genOr  4221
;;	694 register type nRegs=1
;; ***	aopForSym 315
;;	327 sym->rname = _TRISB, size = 1
;; 	line = 4227 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x01, size=1
;; 	line = 4253 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x01, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4470:genOr
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4471:genOr
;;	1109 rIdx = r0x1048 
	IORWF	r0x1017,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4472:genOr
;;	1009
;;	1028  _TRISB   offset=0
	BANKSEL	_TRISB
	MOVWF	_TRISB
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;; ***	aopForSym 315
;;	327 sym->rname = _TRISB, size = 1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_DIR=_TRISB, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1009
;;	1028  _TRISB   offset=0
	.line	47; "SW.c"	GPIO_InitPortPin(SW_MINUS_PORT_CR, SW_MINUS_PIN, GPIO_IN);
	MOVF	_TRISB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x1048 
	BANKSEL	r0x1017
	MOVWF	r0x1017
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x1048, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0xfd, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4122:genAnd
	BCF	r0x1017,1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4220:genOr *{*
;; ***	genOr  4221
;;	694 register type nRegs=1
;; ***	aopForSym 315
;;	327 sym->rname = _TRISB, size = 1
;; 	line = 4227 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x02, size=1
;; 	line = 4253 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x02, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4470:genOr
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4471:genOr
;;	1109 rIdx = r0x1048 
	IORWF	r0x1017,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4472:genOr
;;	1009
;;	1028  _TRISB   offset=0
	BANKSEL	_TRISB
	MOVWF	_TRISB
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;; ***	aopForSym 315
;;	327 sym->rname = _TRISB, size = 1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_DIR=_TRISB, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1009
;;	1028  _TRISB   offset=0
	.line	48; "SW.c"	GPIO_InitPortPin(SW_D_PORT_CR, SW_D_PIN, GPIO_IN);
	MOVF	_TRISB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x1048 
	BANKSEL	r0x1017
	MOVWF	r0x1017
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x1048, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0xfb, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4122:genAnd
	BCF	r0x1017,2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4220:genOr *{*
;; ***	genOr  4221
;;	694 register type nRegs=1
;; ***	aopForSym 315
;;	327 sym->rname = _TRISB, size = 1
;; 	line = 4227 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x04, size=1
;; 	line = 4253 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x04, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4470:genOr
	MOVLW	0x04
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4471:genOr
;;	1109 rIdx = r0x1048 
	IORWF	r0x1017,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4472:genOr
;;	1009
;;	1028  _TRISB   offset=0
	BANKSEL	_TRISB
	MOVWF	_TRISB
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6927:genAssign *{*
;; ***	genAssign  6928
;;	694 register type nRegs=1
;; 	line = 6937 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7035:genAssign
;;	1109 rIdx = r0x1048 
	.line	51; "SW.c"	for (index = SW_PLUS; index < N_SWITCHES; index++)
	BANKSEL	r0x1017
	CLRF	r0x1017
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2878:genMult *{*
;; ***	genMult  2880
;;	694 register type nRegs=1
;;	694 register type nRegs=2
;; 	line = 2886 result AOP_REG=r0x1049, size=2, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x03, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2816:genMultOneByte *{*
;; ***	genMultOneByte  2818
;; 	line = 2819 result AOP_REG=r0x1049, size=2, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x03, size=1
;; 	line = 2820, signs: result AOP_REG=u, left AOP_REG=u, right AOP_LIT=u
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1384:mov2w
_00106_DS_
	.line	54; "SW.c"	SWs_Info[index].sw_samples[0] = SW_RELEASED_LEVEL;
	MOVLW	0x03
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2840:genMultOneByte
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVWF	STK00
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1048 
	BANKSEL	r0x1017
	MOVF	r0x1017,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1433:call_libraryfunc
	PAGESEL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1435:call_libraryfunc
	CALL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:call_libraryfunc
	PAGESEL	$
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x1049 
	BANKSEL	r0x1018
	MOVWF	r0x1018
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:881:addSign
;;	1109 rIdx = r0x104A 
	CLRF	r0x1019
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	613
;;	aopForRemat 392
;;	418: rname _SWs_Info, val 0, const = 0
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; 	line = 618 result AOP_REG=r0x104B, size=2, left AOP_PCODE=_SWs_Info, size=2, right AOP_REG=r0x1049, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  717
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:726:genPlus
;;	1109 rIdx = r0x1049 
	MOVF	r0x1018,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:735:genPlus
	ADDLW	(_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:736:genPlus
;;	1109 rIdx = r0x104B 
	MOVWF	r0x101A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:771:genPlus
	MOVLW	high (_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:772:genPlus
;;	1109 rIdx = r0x104C 
	MOVWF	r0x101B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:774:genPlus
;;	1109 rIdx = r0x104A 
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:775:genPlus
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:776:genPlus
;;	1109 rIdx = r0x104A 
	INCFSZ	r0x1019,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:777:genPlus
;;	1109 rIdx = r0x104C 
	ADDWF	r0x101B,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x104B, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104B 
	MOVF	r0x101A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BANKSEL	r0x101B
	BTFSC	r0x101B,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	BANKSEL	INDF
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	613
;;	aopForRemat 392
;;	418: rname _SWs_Info, val 0, const = 0
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; 	line = 618 result AOP_REG=r0x104B, size=2, left AOP_PCODE=_SWs_Info, size=2, right AOP_REG=r0x1049, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  717
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:726:genPlus
;;	1109 rIdx = r0x1049 
	.line	55; "SW.c"	SWs_Info[index].sw_samples[1] = SW_RELEASED_LEVEL;
	BANKSEL	r0x1018
	MOVF	r0x1018,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:735:genPlus
	ADDLW	(_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:736:genPlus
;;	1109 rIdx = r0x104B 
	MOVWF	r0x101A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:771:genPlus
	MOVLW	high (_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:772:genPlus
;;	1109 rIdx = r0x104C 
	MOVWF	r0x101B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:774:genPlus
;;	1109 rIdx = r0x104A 
	MOVF	r0x1019,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:775:genPlus
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:776:genPlus
;;	1109 rIdx = r0x104A 
	INCFSZ	r0x1019,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:777:genPlus
;;	1109 rIdx = r0x104C 
	ADDWF	r0x101B,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x104B, size=2, left AOP_REG=r0x104B, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
;;	1109 rIdx = r0x104B 
	INCF	r0x101A,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:172:genPlusIncr
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:173:genPlusIncr
;;	1109 rIdx = r0x104C 
	INCF	r0x101B,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x104B, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104B 
	MOVF	r0x101A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BANKSEL	r0x101B
	BTFSC	r0x101B,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	BANKSEL	INDF
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	613
;;	aopForRemat 392
;;	418: rname _SWs_Info, val 0, const = 0
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; 	line = 618 result AOP_REG=r0x1049, size=2, left AOP_PCODE=_SWs_Info, size=2, right AOP_REG=r0x1049, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  717
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:726:genPlus
;;	1109 rIdx = r0x1049 
	.line	58; "SW.c"	SWs_Info[index].sw_state = SW_RELEASED;
	BANKSEL	r0x1018
	MOVF	r0x1018,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:735:genPlus
	ADDLW	(_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:736:genPlus
;;	1109 rIdx = r0x1049 
	MOVWF	r0x1018
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:749:genPlus
;;	1109 rIdx = r0x104A 
	MOVF	r0x1019,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:750:genPlus
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:751:genPlus
;;	1109 rIdx = r0x104A 
	INCFSZ	r0x1019,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:752:genPlus
	ADDLW	high (_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:753:genPlus
;;	1109 rIdx = r0x104A 
	MOVWF	r0x1019
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x1049, size=2, left AOP_REG=r0x1049, size=2, right AOP_LIT=0x02, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; 	genPlusIncr  180
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;; hi = 0	genAddLit  328
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:344:genAddLit
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:345:genAddLit
;;	1109 rIdx = r0x1049 
	ADDWF	r0x1018,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:346:genAddLit
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:347:genAddLit
;;	1109 rIdx = r0x104A 
	INCF	r0x1019,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x1049, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1049 
	MOVF	r0x1018,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BANKSEL	r0x1019
	BTFSC	r0x1019,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	BANKSEL	INDF
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=1
;;	575
;; 	line = 618 result AOP_REG=r0x1048, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
;;	1109 rIdx = r0x1048 
	.line	51; "SW.c"	for (index = SW_PLUS; index < N_SWITCHES; index++)
	BANKSEL	r0x1017
	INCF	r0x1017,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3583:genCmpLt *{*
;; ***	genCmpLt  3584
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3294:genCmp *{*
;;unsigned compare: left < lit(0x3=3), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3265:pic14_mov2w_regOrLit
	MOVLW	0x03
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3432:genCmp
;;	1109 rIdx = r0x1048 
	SUBWF	r0x1017,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3237:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3244:genSkipc
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3246:genSkipc
;; ***	popGetLabel  key=2, label offset 4
	GOTO	_00106_DS_
;;genSkipc:3247: created from rifx:027A5DF4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
	RETURN	
; exit point of _SW_Init
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*


;	code size estimation:
;	  385+  116 =   501 instructions ( 1234 byte)

	end
