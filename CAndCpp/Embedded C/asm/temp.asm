;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
; This file was generated Sat Dec 18 22:24:27 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
	.file	"temp.c"
	list	p=16f627
	radix dec
	include "p16f627.inc"
;--------------------------------------------------------
; config word 
;--------------------------------------------------------
	__config 0x3f3b
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_CCP1CON_bits
	extern	_CMCON_bits
	extern	_EECON1_bits
	extern	_INTCON_bits
	extern	_OPTION_REG_bits
	extern	_PCON_bits
	extern	_PIE1_bits
	extern	_PIR1_bits
	extern	_PORTA_bits
	extern	_PORTB_bits
	extern	_RCSTA_bits
	extern	_STATUS_bits
	extern	_T1CON_bits
	extern	_T2CON_bits
	extern	_TRISA_bits
	extern	_TRISB_bits
	extern	_TXSTA_bits
	extern	_VRCON_bits
	extern	_INDF
	extern	_TMR0
	extern	_PCL
	extern	_STATUS
	extern	_FSR
	extern	_PORTA
	extern	_PORTB
	extern	_PCLATH
	extern	_INTCON
	extern	_PIR1
	extern	_TMR1L
	extern	_TMR1H
	extern	_T1CON
	extern	_TMR2
	extern	_T2CON
	extern	_CCPR1L
	extern	_CCPR1H
	extern	_CCP1CON
	extern	_RCSTA
	extern	_TXREG
	extern	_RCREG
	extern	_CMCON
	extern	_OPTION_REG
	extern	_TRISA
	extern	_TRISB
	extern	_PIE1
	extern	_PCON
	extern	_PR2
	extern	_TXSTA
	extern	_SPBRG
	extern	_EEDATA
	extern	_EEADR
	extern	_EECON1
	extern	_EECON2
	extern	_VRCON
	extern	__sdcc_gsinit_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_main

	global PSAVE
	global SSAVE
	global WSAVE
	global STK12
	global STK11
	global STK10
	global STK09
	global STK08
	global STK07
	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0070
PSAVE	res 1
SSAVE	res 1
WSAVE	res 1
STK12	res 1
STK11	res 1
STK10	res 1
STK09	res 1
STK08	res 1
STK07	res 1
STK06	res 1
STK05	res 1
STK04	res 1
STK03	res 1
STK02	res 1
STK01	res 1
STK00	res 1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	nop
	pagesel __sdcc_gsinit_startup
	goto	__sdcc_gsinit_startup
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_temp	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
;; gen.c:2261:resultRemat *{*
;; gen.c:2597:genLabel *{*
;; ***	genLabel  2600
;; gen.c:2261:resultRemat *{*
;; gen.c:2283:genFunction *{*
;; ***	genFunction  2285 curr label offset=0previous max_key=0 
_main	;Function start
; 2 exit points
;; gen.c:2261:resultRemat *{*
;; gen.c:6332:genAssign *{*
;; ***	genAssign  6333
;; ***	aopForSym 350
;;	361 sym->rname = _TRISB, size = 1
;; 	line = 6342 result AOP_DIR=_TRISB, size=1, left -=-, size=0, right AOP_LIT=0xfd, size=1
;; ***	genAssign  6434
; >>> gen.c:6439:genAssign
	.line	35; "temp.c"	TRISB = B_OUTPUTS; 
	MOVLW	0xfd
; >>> gen.c:6441:genAssign
;;	1013
;;	1029  _TRISB   offset=0
	BANKSEL	_TRISB
	MOVWF	_TRISB
;; gen.c:2261:resultRemat *{*
;; gen.c:2597:genLabel *{*
;; ***	genLabel  2600
;; gen.c:2261:resultRemat *{*
;; gen.c:3504:ifxForOp *{*
;; ***	ifxForOp  3506
;; gen.c:4227:genXor *{*
;; ***	genXor  4228
;; ***	aopForSym 350
;;	361 sym->rname = _PORTB, size = 1
;;	606
; >>> gen.c:4345:genXor
_00106_DS_
	.line	40; "temp.c"	PORTB = (PORTB ^ b1); 
	MOVLW	0x02
; >>> gen.c:4346:genXor
;;	1013
;;	1029  _PORTB   offset=0
	BANKSEL	_PORTB
	XORWF	_PORTB,F
;; gen.c:2261:resultRemat *{*
;; gen.c:2614:genGoto *{*
; >>> gen.c:2616:genGoto
;; ***	popGetLabel  key=2, label offset 4
	GOTO	_00106_DS_
;; gen.c:2261:resultRemat *{*
;; gen.c:2597:genLabel *{*
;; ***	genLabel  2600
;; gen.c:2261:resultRemat *{*
;; gen.c:2435:genEndFunction *{*
;; ***	genEndFunction  2437
	RETURN	
; exit point of _main


;	code size estimation:
;	    6+    2 =     8 instructions (   20 byte)

	end
