;******************************************************************************

; *

; Filename: toggle_led.asm *

; Date: 04.03.2004 *

; File Version: 1.0.0 *

; *

; Author: Micah Carrick *

; *

;******************************************************************************

; NOTES: *

; *

; *

;******************************************************************************

; CHANGE LOG: *

; *

; *

;******************************************************************************
list p=16f627 ; list directive to define processor

#include

 ; processor specific variable definitions__CONFIG _CP_OFF & _WDT_ON & _BODEN_ON & _PWRTE_ON & _ER_OSC_CLKOUT & _MCLRE_ON & _LVP_ON

; '__CONFIG' directive is used to embed configuration data within .asm file.

; The lables following the directive are located in the respective .inc file.

; See respective data sheet for additional information on configuration word.

;******************************************************************************

; VARIABLE DEFINITIONS *

;******************************************************************************

w_temp EQU 0x70 ; variable used for context saving

status_temp EQU 0x71 ; variable used for context saving

;******************************************************************************

; RESET VECTOR *

;******************************************************************************

ORG 0x000 ; processor reset vector

goto main

;******************************************************************************

; INTERRUPT VECTOR *

;******************************************************************************

ORG 0x004 ; interrupt vector location

movwf w_temp ; save off current W register contents

movf STATUS,w ; move status register into W register

movwf status_temp ; save off contents of STATUS register

; TODO: Place ISR (Interrupt Service Routine) here...

movf status_temp,w ; retrieve copy of STATUS register

movwf STATUS ; restore pre-isr STATUS register contents

swapf w_temp,f

swapf w_temp,w ; restore pre-isr W register contents

retfie ; return from interrupt

;******************************************************************************

; MAINLINE CODE *

;******************************************************************************

main

bsf STATUS, RP0 ; Select Bank 1

bcf TRISB ^ 0x080, 1 ; Enable RB1 for Output

bcf STATUS, RP0 ; Select Bank 0

toggle

bsf PORTB, 1

bcf PORTB, 1

goto toggle

END ; directive 'end of program'
