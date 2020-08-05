opt subtitle "Microchip Technology Omniscient Code Generator v1.35 (Free mode) build 201507080246"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
INDF equ 00h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 63 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PCL equ 02h ;# 
# 69 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
STATUS equ 03h ;# 
# 156 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
FSR equ 04h ;# 
# 162 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PORTA equ 05h ;# 
# 211 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PORTB equ 06h ;# 
# 272 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PORTC equ 07h ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PORTD equ 08h ;# 
# 394 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PORTE equ 09h ;# 
# 425 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 444 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 521 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 582 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 621 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 627 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 633 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 639 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
T1CON equ 010h ;# 
# 713 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 719 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
T2CON equ 012h ;# 
# 789 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 795 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 864 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 870 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 876 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 882 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 939 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1033 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1039 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1045 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1051 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1057 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1063 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1120 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1126 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1221 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1290 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1339 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1400 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1461 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1522 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1578 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1639 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1678 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1711 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1772 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1778 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1784 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1952 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2038 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2107 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2171 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2177 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2235 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2241 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2247 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2253 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2259 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2303 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_LCD_CLR
	FNCALL	_main,_LCD_Set_Line
	FNCALL	_main,_LCD_write
	FNCALL	_main,_LCD_write_int
	FNCALL	_main,_init_ADC
	FNCALL	_main,_read_ADC
	FNCALL	_main,_setup_LCD
	FNCALL	_main,_setup_uart
	FNCALL	_main,_tx
	FNCALL	_tx,_tx_char
	FNCALL	_setup_LCD,_LCD_cmd
	FNCALL	_setup_LCD,_LCD_cmd_hf
	FNCALL	_LCD_cmd_hf,_pulse
	FNCALL	_read_ADC,_init_ADC
	FNCALL	_read_ADC,_set_ch
	FNCALL	_LCD_write_int,_LCD_data
	FNCALL	_LCD_write_int,___awdiv
	FNCALL	_LCD_write_int,___awmod
	FNCALL	_LCD_write,_LCD_data
	FNCALL	_LCD_data,_pulse
	FNCALL	_LCD_Set_Line,_LCD_cmd
	FNCALL	_LCD_CLR,_LCD_cmd
	FNCALL	_LCD_cmd,_pulse
	FNROOT	_main
	global	_comp
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\main.c"
	line	39

;initializer for _comp
	retlw	034h
	retlw	03h

	global	_y1
	global	_y2
	global	_y3
	global	_y4
	global	_y5
	global	_yu
	global	_ADRESH
_ADRESH	set	0x1E
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_RCREG
_RCREG	set	0x1A
	global	_TXREG
_TXREG	set	0x19
	global	_ADCS0
_ADCS0	set	0xFE
	global	_ADCS1
_ADCS1	set	0xFF
	global	_ADON
_ADON	set	0xF8
	global	_CHS0
_CHS0	set	0xFB
	global	_CHS1
_CHS1	set	0xFC
	global	_CHS2
_CHS2	set	0xFD
	global	_CREN
_CREN	set	0xC4
	global	_GO_nDONE
_GO_nDONE	set	0xFA
	global	_RB0
_RB0	set	0x30
	global	_RB2
_RB2	set	0x32
	global	_RB3
_RB3	set	0x33
	global	_RCIF
_RCIF	set	0x65
	global	_SPEN
_SPEN	set	0xC7
	global	_TXIF
_TXIF	set	0x64
	global	_ADRESL
_ADRESL	set	0x9E
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
	global	_ADFM
_ADFM	set	0x4FF
	global	_BRGH
_BRGH	set	0x4C2
	global	_SYNC
_SYNC	set	0x4C4
	global	_TRISC6
_TRISC6	set	0x43E
	global	_TRISC7
_TRISC7	set	0x43F
	global	_TXEN
_TXEN	set	0x4C5
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 2 bytes each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
	global __stringbase
__stringbase:
	global    __end_of__stringtab
__end_of__stringtab:
psect	stringtext,class=STRCODE,delta=2,reloc=256,noexec
global __pstringtext
__pstringtext:
	
STR_36:	
	retlw	71	;'G'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	78	;'N'
	retlw	79	;'O'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	77	;'M'
	retlw	80	;'P'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext
	
STR_24:	
	retlw	73	;'I'
	retlw	32	;' '
	retlw	78	;'N'
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	87	;'W'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext
	
STR_27:	
	retlw	73	;'I'
	retlw	32	;' '
	retlw	78	;'N'
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	79	;'O'
	retlw	67	;'C'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext
	
STR_21:	
	retlw	72	;'H'
	retlw	65	;'A'
	retlw	86	;'V'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	32	;' '
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	65	;'A'
	retlw	89	;'Y'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext
	
STR_25:	
	retlw	73	;'I'
	retlw	32	;' '
	retlw	78	;'N'
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	87	;'W'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	0
psect	stringtext
	
STR_30:	
	retlw	80	;'P'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	80	;'P'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext
	
STR_15:	
	retlw	71	;'G'
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	70	;'F'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	78	;'N'
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext
	
STR_37:	
	retlw	78	;'N'
	retlw	79	;'O'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	77	;'M'
	retlw	80	;'P'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	0
psect	stringtext
	
STR_22:	
	retlw	72	;'H'
	retlw	65	;'A'
	retlw	86	;'V'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	32	;' '
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	65	;'A'
	retlw	89	;'Y'
	retlw	0
psect	stringtext
	
STR_12:	
	retlw	71	;'G'
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext
	
STR_31:	
	retlw	80	;'P'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	80	;'P'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	0
psect	stringtext
	
STR_16:	
	retlw	71	;'G'
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	70	;'F'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	78	;'N'
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	stringtext
	
STR_9:	
	retlw	72	;'H'
	retlw	79	;'O'
	retlw	87	;'W'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	89	;'Y'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext
	
STR_18:	
	retlw	71	;'G'
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	72	;'H'
	retlw	84	;'T'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext
	
STR_1:	
	retlw	72	;'H'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	71	;'G'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	0
psect	stringtext
	
STR_13:	
	retlw	71	;'G'
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	0
psect	stringtext
	
STR_28:	
	retlw	73	;'I'
	retlw	32	;' '
	retlw	78	;'N'
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	79	;'O'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	0
psect	stringtext
	
STR_33:	
	retlw	69	;'E'
	retlw	88	;'X'
	retlw	67	;'C'
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	71	;'G'
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	stringtext
	
STR_10:	
	retlw	72	;'H'
	retlw	79	;'O'
	retlw	87	;'W'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	89	;'Y'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	0
psect	stringtext
	
STR_19:	
	retlw	71	;'G'
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	72	;'H'
	retlw	84	;'T'
	retlw	0
psect	stringtext
	
STR_34:	
	retlw	69	;'E'
	retlw	88	;'X'
	retlw	67	;'C'
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	72	;'H'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext
	
STR_96:	
	retlw	66	;'B'
	retlw	89	;'Y'
	retlw	69	;'E'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext
	
STR_7:	
	retlw	72	;'H'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	0
psect	stringtext
	
STR_65:	
	retlw	50	;'2'
	retlw	48	;'0'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_95:	
	retlw	51	;'3'
	retlw	48	;'0'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_38:	
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_68:	
	retlw	50	;'2'
	retlw	49	;'1'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_98:	
	retlw	51	;'3'
	retlw	49	;'1'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_41:	
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_71:	
	retlw	50	;'2'
	retlw	50	;'2'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_44:	
	retlw	49	;'1'
	retlw	51	;'3'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_74:	
	retlw	50	;'2'
	retlw	51	;'3'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_47:	
	retlw	49	;'1'
	retlw	52	;'4'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_77:	
	retlw	50	;'2'
	retlw	52	;'4'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_50:	
	retlw	49	;'1'
	retlw	53	;'5'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_80:	
	retlw	50	;'2'
	retlw	53	;'5'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_53:	
	retlw	49	;'1'
	retlw	54	;'6'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_83:	
	retlw	50	;'2'
	retlw	54	;'6'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_56:	
	retlw	49	;'1'
	retlw	55	;'7'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_86:	
	retlw	50	;'2'
	retlw	55	;'7'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_59:	
	retlw	49	;'1'
	retlw	56	;'8'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_62:	
	retlw	49	;'1'
	retlw	57	;'9'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_92:	
	retlw	50	;'2'
	retlw	57	;'9'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_97:	
	retlw	66	;'B'
	retlw	89	;'Y'
	retlw	69	;'E'
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_35:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_89:	
	retlw	50	;'2'
	retlw	56	;'8'
	retlw	0
psect	stringtext
STR_40	equ	STR_37+0
STR_43	equ	STR_37+0
STR_46	equ	STR_37+0
STR_49	equ	STR_37+0
STR_52	equ	STR_37+0
STR_55	equ	STR_37+0
STR_58	equ	STR_37+0
STR_61	equ	STR_37+0
STR_64	equ	STR_37+0
STR_67	equ	STR_37+0
STR_70	equ	STR_37+0
STR_73	equ	STR_37+0
STR_76	equ	STR_37+0
STR_79	equ	STR_37+0
STR_82	equ	STR_37+0
STR_85	equ	STR_37+0
STR_88	equ	STR_37+0
STR_91	equ	STR_37+0
STR_94	equ	STR_37+0
STR_32	equ	STR_62+1
STR_29	equ	STR_59+1
STR_26	equ	STR_56+1
STR_23	equ	STR_53+1
STR_20	equ	STR_50+1
STR_17	equ	STR_47+1
STR_14	equ	STR_44+1
STR_11	equ	STR_41+1
STR_8	equ	STR_38+1
STR_4	equ	STR_3+0
STR_5	equ	STR_3+0
STR_39	equ	STR_36+0
STR_42	equ	STR_36+0
STR_45	equ	STR_36+0
STR_48	equ	STR_36+0
STR_51	equ	STR_36+0
STR_54	equ	STR_36+0
STR_57	equ	STR_36+0
STR_60	equ	STR_36+0
STR_63	equ	STR_36+0
STR_66	equ	STR_36+0
STR_69	equ	STR_36+0
STR_72	equ	STR_36+0
STR_75	equ	STR_36+0
STR_78	equ	STR_36+0
STR_81	equ	STR_36+0
STR_84	equ	STR_36+0
STR_87	equ	STR_36+0
STR_90	equ	STR_36+0
STR_93	equ	STR_36+0
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$OFF
__CFG_PWRTE$OFF equ 0x0
global __CFG_CP$ON
__CFG_CP$ON equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_DEBUG$OFF
__CFG_DEBUG$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$ON
__CFG_CPD$ON equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\output\main.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\main.c"
	line	39
_comp:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_y1:
       ds      2

_y2:
       ds      2

_y3:
       ds      2

_y4:
       ds      2

_y5:
       ds      2

_yu:
       ds      2

	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\output\main.as"
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
	line	#
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_pulse:	; 0 bytes @ 0x0
??_pulse:	; 0 bytes @ 0x0
?_LCD_data:	; 0 bytes @ 0x0
?_LCD_cmd_hf:	; 0 bytes @ 0x0
?_LCD_cmd:	; 0 bytes @ 0x0
?_LCD_CLR:	; 0 bytes @ 0x0
?_setup_LCD:	; 0 bytes @ 0x0
?_setup_uart:	; 0 bytes @ 0x0
??_setup_uart:	; 0 bytes @ 0x0
?_tx_char:	; 0 bytes @ 0x0
??_tx_char:	; 0 bytes @ 0x0
?_init_ADC:	; 0 bytes @ 0x0
??_init_ADC:	; 0 bytes @ 0x0
?_set_ch:	; 0 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	tx_char@data
tx_char@data:	; 1 bytes @ 0x0
	global	set_ch@channel
set_ch@channel:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
?_tx:	; 0 bytes @ 0x1
	global	tx@data
tx@data:	; 2 bytes @ 0x1
	ds	1
??_LCD_data:	; 0 bytes @ 0x2
??_LCD_cmd_hf:	; 0 bytes @ 0x2
??_LCD_cmd:	; 0 bytes @ 0x2
??_set_ch:	; 0 bytes @ 0x2
	global	?_read_ADC
?_read_ADC:	; 2 bytes @ 0x2
	global	read_ADC@ch
read_ADC@ch:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
??_tx:	; 0 bytes @ 0x3
	global	LCD_cmd_hf@cmd
LCD_cmd_hf@cmd:	; 1 bytes @ 0x3
	ds	1
??_read_ADC:	; 0 bytes @ 0x4
??___awdiv:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
	global	LCD_data@data
LCD_data@data:	; 1 bytes @ 0x4
	global	LCD_cmd@cmd
LCD_cmd@cmd:	; 1 bytes @ 0x4
	ds	1
?_LCD_Set_Line:	; 0 bytes @ 0x5
??_LCD_CLR:	; 0 bytes @ 0x5
??_setup_LCD:	; 0 bytes @ 0x5
?_LCD_write:	; 0 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	LCD_Set_Line@line
LCD_Set_Line@line:	; 2 bytes @ 0x5
	global	LCD_write@a
LCD_write@a:	; 2 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	global	tx@g
tx@g:	; 2 bytes @ 0x6
	global	read_ADC@a
read_ADC@a:	; 2 bytes @ 0x6
	ds	1
??_LCD_Set_Line:	; 0 bytes @ 0x7
??_LCD_write:	; 0 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
?_LCD_write_int:	; 0 bytes @ 0x9
	global	LCD_write_int@a
LCD_write_int@a:	; 2 bytes @ 0x9
	ds	1
	global	LCD_write@g
LCD_write@g:	; 2 bytes @ 0xA
	ds	1
??_LCD_write_int:	; 0 bytes @ 0xB
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	LCD_write_int@d
LCD_write_int@d:	; 2 bytes @ 0x0
	ds	2
	global	LCD_write_int@c
LCD_write_int@c:	; 2 bytes @ 0x2
	ds	2
	global	LCD_write_int@b
LCD_write_int@b:	; 2 bytes @ 0x4
	ds	2
??_main:	; 0 bytes @ 0x6
	ds	3
;!
;!Data Sizes:
;!    Strings     447
;!    Constant    0
;!    Data        2
;!    BSS         12
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     12      14
;!    BANK0            80      9      21
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    tx@data	PTR unsigned char  size(2) Largest target is 26
;!		 -> STR_96(CODE[6]), STR_93(CODE[26]), STR_90(CODE[26]), STR_87(CODE[26]), 
;!		 -> STR_84(CODE[26]), STR_81(CODE[26]), STR_78(CODE[26]), STR_75(CODE[26]), 
;!		 -> STR_72(CODE[26]), STR_69(CODE[26]), STR_66(CODE[26]), STR_63(CODE[26]), 
;!		 -> STR_60(CODE[26]), STR_57(CODE[26]), STR_54(CODE[26]), STR_51(CODE[26]), 
;!		 -> STR_48(CODE[26]), STR_45(CODE[26]), STR_42(CODE[26]), STR_39(CODE[26]), 
;!		 -> STR_36(CODE[26]), STR_33(CODE[12]), STR_30(CODE[17]), STR_27(CODE[18]), 
;!		 -> STR_24(CODE[20]), STR_21(CODE[18]), STR_18(CODE[13]), STR_15(CODE[17]), 
;!		 -> STR_12(CODE[15]), STR_9(CODE[14]), STR_6(CODE[8]), 
;!
;!    LCD_write@a	PTR unsigned char  size(2) Largest target is 18
;!		 -> STR_98(CODE[4]), STR_97(CODE[4]), STR_95(CODE[4]), STR_94(CODE[16]), 
;!		 -> STR_92(CODE[4]), STR_91(CODE[16]), STR_89(CODE[3]), STR_88(CODE[16]), 
;!		 -> STR_86(CODE[4]), STR_85(CODE[16]), STR_83(CODE[4]), STR_82(CODE[16]), 
;!		 -> STR_80(CODE[4]), STR_79(CODE[16]), STR_77(CODE[4]), STR_76(CODE[16]), 
;!		 -> STR_74(CODE[4]), STR_73(CODE[16]), STR_71(CODE[4]), STR_70(CODE[16]), 
;!		 -> STR_68(CODE[4]), STR_67(CODE[16]), STR_65(CODE[4]), STR_64(CODE[16]), 
;!		 -> STR_62(CODE[4]), STR_61(CODE[16]), STR_59(CODE[4]), STR_58(CODE[16]), 
;!		 -> STR_56(CODE[4]), STR_55(CODE[16]), STR_53(CODE[4]), STR_52(CODE[16]), 
;!		 -> STR_50(CODE[4]), STR_49(CODE[16]), STR_47(CODE[4]), STR_46(CODE[16]), 
;!		 -> STR_44(CODE[4]), STR_43(CODE[16]), STR_41(CODE[4]), STR_40(CODE[16]), 
;!		 -> STR_38(CODE[4]), STR_37(CODE[16]), STR_35(CODE[3]), STR_34(CODE[10]), 
;!		 -> STR_32(CODE[3]), STR_31(CODE[15]), STR_29(CODE[3]), STR_28(CODE[13]), 
;!		 -> STR_26(CODE[3]), STR_25(CODE[18]), STR_23(CODE[3]), STR_22(CODE[16]), 
;!		 -> STR_20(CODE[3]), STR_19(CODE[11]), STR_17(CODE[3]), STR_16(CODE[15]), 
;!		 -> STR_14(CODE[3]), STR_13(CODE[13]), STR_11(CODE[3]), STR_10(CODE[12]), 
;!		 -> STR_8(CODE[3]), STR_7(CODE[6]), STR_5(CODE[3]), STR_4(CODE[3]), 
;!		 -> STR_3(CODE[3]), STR_2(CODE[12]), STR_1(CODE[13]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_LCD_write
;!    _tx->_tx_char
;!    _setup_LCD->_LCD_cmd
;!    _LCD_cmd_hf->_pulse
;!    _read_ADC->_set_ch
;!    _LCD_write_int->___awdiv
;!    _LCD_write->_LCD_data
;!    _LCD_data->_pulse
;!    _LCD_Set_Line->_LCD_cmd
;!    _LCD_CLR->_LCD_cmd
;!    _LCD_cmd->_pulse
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_LCD_write_int
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 3     3      0   11134
;!                                              6 BANK0      3     3      0
;!                            _LCD_CLR
;!                       _LCD_Set_Line
;!                          _LCD_write
;!                      _LCD_write_int
;!                           _init_ADC
;!                           _read_ADC
;!                          _setup_LCD
;!                         _setup_uart
;!                                 _tx
;! ---------------------------------------------------------------------------------
;! (1) _tx                                                   7     5      2    1755
;!                                              1 COMMON     7     5      2
;!                            _tx_char
;! ---------------------------------------------------------------------------------
;! (2) _tx_char                                              1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _setup_uart                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _setup_LCD                                            2     2      0      66
;!                                              5 COMMON     2     2      0
;!                            _LCD_cmd
;!                         _LCD_cmd_hf
;! ---------------------------------------------------------------------------------
;! (2) _LCD_cmd_hf                                           2     2      0      22
;!                                              2 COMMON     2     2      0
;!                              _pulse
;! ---------------------------------------------------------------------------------
;! (1) _read_ADC                                             6     4      2     920
;!                                              2 COMMON     6     4      2
;!                           _init_ADC
;!                             _set_ch
;! ---------------------------------------------------------------------------------
;! (2) _set_ch                                               2     0      2     276
;!                                              0 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! (2) _init_ADC                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _LCD_write_int                                        8     6      2    2827
;!                                              9 COMMON     2     0      2
;!                                              0 BANK0      6     6      0
;!                           _LCD_data
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              7     3      4     932
;!                                              0 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (2) ___awdiv                                              9     5      4     936
;!                                              0 COMMON     9     5      4
;! ---------------------------------------------------------------------------------
;! (1) _LCD_write                                            7     5      2    3685
;!                                              5 COMMON     7     5      2
;!                           _LCD_data
;! ---------------------------------------------------------------------------------
;! (2) _LCD_data                                             3     3      0      44
;!                                              2 COMMON     3     3      0
;!                              _pulse
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Set_Line                                         2     0      2    1837
;!                                              5 COMMON     2     0      2
;!                            _LCD_cmd
;! ---------------------------------------------------------------------------------
;! (1) _LCD_CLR                                              0     0      0      44
;!                            _LCD_cmd
;! ---------------------------------------------------------------------------------
;! (2) _LCD_cmd                                              3     3      0      44
;!                                              2 COMMON     3     3      0
;!                              _pulse
;! ---------------------------------------------------------------------------------
;! (3) _pulse                                                2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _LCD_CLR
;!     _LCD_cmd
;!       _pulse
;!   _LCD_Set_Line
;!     _LCD_cmd
;!       _pulse
;!   _LCD_write
;!     _LCD_data
;!       _pulse
;!   _LCD_write_int
;!     _LCD_data
;!       _pulse
;!     ___awdiv
;!     ___awmod
;!   _init_ADC
;!   _read_ADC
;!     _init_ADC
;!     _set_ch
;!   _setup_LCD
;!     _LCD_cmd
;!       _pulse
;!     _LCD_cmd_hf
;!       _pulse
;!   _setup_uart
;!   _tx
;!     _tx_char
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      9      15       5       26.3%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      C       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      23      12        0.0%
;!ABS                  0      0      23       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 41 in file "D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  174[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCD_CLR
;;		_LCD_Set_Line
;;		_LCD_write
;;		_LCD_write_int
;;		_init_ADC
;;		_read_ADC
;;		_setup_LCD
;;		_setup_uart
;;		_tx
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\main.c"
	line	41
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\main.c"
	line	41
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	43
	
l2085:	
	opt asmopt_off
movlw  2
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	4
movwf	((??_main+0)+0+1),f
	movlw	186
movwf	((??_main+0)+0),f
u4197:
	decfsz	((??_main+0)+0),f
	goto	u4197
	decfsz	((??_main+0)+0+1),f
	goto	u4197
	decfsz	((??_main+0)+0+2),f
	goto	u4197
	nop
opt asmopt_on

	line	44
	movlw	low(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	45
	
l2087:	
	clrf	(134)^080h	;volatile
	line	46
	
l2089:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	47
	
l2091:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	48
	
l2093:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	49
	
l2095:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	50
	
l2097:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	53
	
l2099:	
	fcall	_setup_uart
	line	54
	
l2101:	
	fcall	_setup_LCD
	line	55
	
l2103:	
	fcall	_init_ADC
	line	56
	
l2105:	
	fcall	_LCD_CLR
	line	57
	
l2107:	
	movlw	low(((STR_1)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_1)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	58
	
l2109:	
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	59
	
l2111:	
	movlw	low(((STR_2)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_2)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	goto	l2113
	line	61
	
l175:	
	line	64
	
l2113:	
	fcall	_LCD_CLR
	line	65
	
l2115:	
	movlw	0
	movwf	(read_ADC@ch)
	movwf	(read_ADC@ch+1)
	fcall	_read_ADC
	movf	(1+(?_read_ADC)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_yu+1)
	movf	(0+(?_read_ADC)),w
	movwf	(_yu)
	line	66
	
l2117:	
	movlw	0
	movwf	(read_ADC@ch)
	movwf	(read_ADC@ch+1)
	fcall	_read_ADC
	movf	(1+(?_read_ADC)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_y1+1)
	movf	(0+(?_read_ADC)),w
	movwf	(_y1)
	line	67
	
l2119:	
	movf	(_yu+1),w
	movwf	(LCD_write_int@a+1)
	movf	(_yu),w
	movwf	(LCD_write_int@a)
	fcall	_LCD_write_int
	line	68
	
l2121:	
	movlw	low(((STR_3)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_3)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	69
	
l2123:	
	movlw	01h
	movwf	(read_ADC@ch)
	movlw	0
	movwf	((read_ADC@ch))+1
	fcall	_read_ADC
	movf	(1+(?_read_ADC)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_yu+1)
	movf	(0+(?_read_ADC)),w
	movwf	(_yu)
	line	70
	
l2125:	
	movlw	01h
	movwf	(read_ADC@ch)
	movlw	0
	movwf	((read_ADC@ch))+1
	fcall	_read_ADC
	movf	(1+(?_read_ADC)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_y2+1)
	movf	(0+(?_read_ADC)),w
	movwf	(_y2)
	line	71
	
l2127:	
	movf	(_yu+1),w
	movwf	(LCD_write_int@a+1)
	movf	(_yu),w
	movwf	(LCD_write_int@a)
	fcall	_LCD_write_int
	line	72
	
l2129:	
	movlw	low(((STR_4)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_4)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	73
	
l2131:	
	movlw	02h
	movwf	(read_ADC@ch)
	movlw	0
	movwf	((read_ADC@ch))+1
	fcall	_read_ADC
	movf	(1+(?_read_ADC)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_yu+1)
	movf	(0+(?_read_ADC)),w
	movwf	(_yu)
	line	74
	
l2133:	
	movlw	02h
	movwf	(read_ADC@ch)
	movlw	0
	movwf	((read_ADC@ch))+1
	fcall	_read_ADC
	movf	(1+(?_read_ADC)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_y3+1)
	movf	(0+(?_read_ADC)),w
	movwf	(_y3)
	line	75
	
l2135:	
	movf	(_yu+1),w
	movwf	(LCD_write_int@a+1)
	movf	(_yu),w
	movwf	(LCD_write_int@a)
	fcall	_LCD_write_int
	line	76
	
l2137:	
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	77
	
l2139:	
	movlw	03h
	movwf	(read_ADC@ch)
	movlw	0
	movwf	((read_ADC@ch))+1
	fcall	_read_ADC
	movf	(1+(?_read_ADC)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_yu+1)
	movf	(0+(?_read_ADC)),w
	movwf	(_yu)
	line	78
	
l2141:	
	movlw	03h
	movwf	(read_ADC@ch)
	movlw	0
	movwf	((read_ADC@ch))+1
	fcall	_read_ADC
	movf	(1+(?_read_ADC)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_y4+1)
	movf	(0+(?_read_ADC)),w
	movwf	(_y4)
	line	79
	
l2143:	
	movf	(_yu+1),w
	movwf	(LCD_write_int@a+1)
	movf	(_yu),w
	movwf	(LCD_write_int@a)
	fcall	_LCD_write_int
	line	80
	
l2145:	
	movlw	low(((STR_5)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_5)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	81
	
l2147:	
	movlw	04h
	movwf	(read_ADC@ch)
	movlw	0
	movwf	((read_ADC@ch))+1
	fcall	_read_ADC
	movf	(1+(?_read_ADC)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_yu+1)
	movf	(0+(?_read_ADC)),w
	movwf	(_yu)
	line	82
	
l2149:	
	movlw	04h
	movwf	(read_ADC@ch)
	movlw	0
	movwf	((read_ADC@ch))+1
	fcall	_read_ADC
	movf	(1+(?_read_ADC)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_y5+1)
	movf	(0+(?_read_ADC)),w
	movwf	(_y5)
	line	83
	
l2151:	
	movf	(_yu+1),w
	movwf	(LCD_write_int@a+1)
	movf	(_yu),w
	movwf	(LCD_write_int@a)
	fcall	_LCD_write_int
	line	84
	
l2153:	
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u4207:
	decfsz	((??_main+0)+0),f
	goto	u4207
	decfsz	((??_main+0)+0+1),f
	goto	u4207
	decfsz	((??_main+0)+0+2),f
	goto	u4207
	nop2
opt asmopt_on

	line	86
	
l2155:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y1+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2595
	movf	(_comp),w
	subwf	(_y1),w
u2595:

	skipnc
	goto	u2591
	goto	u2590
u2591:
	goto	l2167
u2590:
	
l2157:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y2+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2605
	movf	(_comp),w
	subwf	(_y2),w
u2605:

	skipnc
	goto	u2601
	goto	u2600
u2601:
	goto	l2167
u2600:
	
l2159:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y3+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2615
	movf	(_comp),w
	subwf	(_y3),w
u2615:

	skipnc
	goto	u2611
	goto	u2610
u2611:
	goto	l2167
u2610:
	
l2161:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y4+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2625
	movf	(_comp),w
	subwf	(_y4),w
u2625:

	skipnc
	goto	u2621
	goto	u2620
u2621:
	goto	l2167
u2620:
	
l2163:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y5+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2635
	movf	(_comp),w
	subwf	(_y5),w
u2635:

	skipnc
	goto	u2631
	goto	u2630
u2631:
	goto	l2167
u2630:
	goto	l2113
	line	88
	
l2165:	
	goto	l2113
	line	89
	
l176:	
	
l2167:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y1+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2645
	movf	(_y1),w
	subwf	(_comp),w
u2645:

	skipnc
	goto	u2641
	goto	u2640
u2641:
	goto	l2191
u2640:
	
l2169:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y2+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2655
	movf	(_y2),w
	subwf	(_comp),w
u2655:

	skipnc
	goto	u2651
	goto	u2650
u2651:
	goto	l2191
u2650:
	
l2171:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y3+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2665
	movf	(_y3),w
	subwf	(_comp),w
u2665:

	skipnc
	goto	u2661
	goto	u2660
u2661:
	goto	l2191
u2660:
	
l2173:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y4+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2675
	movf	(_y4),w
	subwf	(_comp),w
u2675:

	skipnc
	goto	u2671
	goto	u2670
u2671:
	goto	l2191
u2670:
	
l2175:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y5+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2685
	movf	(_y5),w
	subwf	(_comp),w
u2685:

	skipnc
	goto	u2681
	goto	u2680
u2681:
	goto	l2191
u2680:
	line	91
	
l2177:	
	fcall	_LCD_CLR
	line	92
	
l2179:	
	movlw	low(((STR_6)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_6)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	93
	
l2181:	
	movlw	low(((STR_7)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_7)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	94
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	95
	
l2183:	
	movlw	low(((STR_8)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_8)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	96
	
l2185:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	97
	
l2187:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4217:
	decfsz	((??_main+0)+0),f
	goto	u4217
	decfsz	((??_main+0)+0+1),f
	goto	u4217
	decfsz	((??_main+0)+0+2),f
	goto	u4217
opt asmopt_on

	line	98
	
l2189:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	99
	goto	l2113
	line	100
	
l178:	
	
l2191:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y1+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2695
	movf	(_y1),w
	subwf	(_comp),w
u2695:

	skipnc
	goto	u2691
	goto	u2690
u2691:
	goto	l2215
u2690:
	
l2193:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y2+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2705
	movf	(_y2),w
	subwf	(_comp),w
u2705:

	skipnc
	goto	u2701
	goto	u2700
u2701:
	goto	l2215
u2700:
	
l2195:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y3+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2715
	movf	(_y3),w
	subwf	(_comp),w
u2715:

	skipnc
	goto	u2711
	goto	u2710
u2711:
	goto	l2215
u2710:
	
l2197:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y4+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2725
	movf	(_y4),w
	subwf	(_comp),w
u2725:

	skipnc
	goto	u2721
	goto	u2720
u2721:
	goto	l2215
u2720:
	
l2199:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y5+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2735
	movf	(_comp),w
	subwf	(_y5),w
u2735:

	skipnc
	goto	u2731
	goto	u2730
u2731:
	goto	l2215
u2730:
	line	102
	
l2201:	
	fcall	_LCD_CLR
	line	103
	
l2203:	
	movlw	low(((STR_9)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_9)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	104
	
l2205:	
	movlw	low(((STR_10)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_10)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	105
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	106
	
l2207:	
	movlw	low(((STR_11)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_11)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	107
	
l2209:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	108
	
l2211:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4227:
	decfsz	((??_main+0)+0),f
	goto	u4227
	decfsz	((??_main+0)+0+1),f
	goto	u4227
	decfsz	((??_main+0)+0+2),f
	goto	u4227
opt asmopt_on

	line	109
	
l2213:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	111
	goto	l2113
	line	112
	
l180:	
	
l2215:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y1+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2745
	movf	(_y1),w
	subwf	(_comp),w
u2745:

	skipnc
	goto	u2741
	goto	u2740
u2741:
	goto	l2239
u2740:
	
l2217:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y2+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2755
	movf	(_y2),w
	subwf	(_comp),w
u2755:

	skipnc
	goto	u2751
	goto	u2750
u2751:
	goto	l2239
u2750:
	
l2219:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y3+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2765
	movf	(_y3),w
	subwf	(_comp),w
u2765:

	skipnc
	goto	u2761
	goto	u2760
u2761:
	goto	l2239
u2760:
	
l2221:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y4+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2775
	movf	(_comp),w
	subwf	(_y4),w
u2775:

	skipnc
	goto	u2771
	goto	u2770
u2771:
	goto	l2239
u2770:
	
l2223:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y5+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2785
	movf	(_y5),w
	subwf	(_comp),w
u2785:

	skipnc
	goto	u2781
	goto	u2780
u2781:
	goto	l2239
u2780:
	line	114
	
l2225:	
	fcall	_LCD_CLR
	line	115
	
l2227:	
	movlw	low(((STR_12)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_12)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	116
	
l2229:	
	movlw	low(((STR_13)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_13)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	117
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	118
	
l2231:	
	movlw	low(((STR_14)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_14)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	119
	
l2233:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	120
	
l2235:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4237:
	decfsz	((??_main+0)+0),f
	goto	u4237
	decfsz	((??_main+0)+0+1),f
	goto	u4237
	decfsz	((??_main+0)+0+2),f
	goto	u4237
opt asmopt_on

	line	121
	
l2237:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	123
	goto	l2113
	line	124
	
l182:	
	
l2239:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y1+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2795
	movf	(_y1),w
	subwf	(_comp),w
u2795:

	skipnc
	goto	u2791
	goto	u2790
u2791:
	goto	l2263
u2790:
	
l2241:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y2+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2805
	movf	(_y2),w
	subwf	(_comp),w
u2805:

	skipnc
	goto	u2801
	goto	u2800
u2801:
	goto	l2263
u2800:
	
l2243:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y3+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2815
	movf	(_y3),w
	subwf	(_comp),w
u2815:

	skipnc
	goto	u2811
	goto	u2810
u2811:
	goto	l2263
u2810:
	
l2245:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y4+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2825
	movf	(_comp),w
	subwf	(_y4),w
u2825:

	skipnc
	goto	u2821
	goto	u2820
u2821:
	goto	l2263
u2820:
	
l2247:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y5+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2835
	movf	(_comp),w
	subwf	(_y5),w
u2835:

	skipnc
	goto	u2831
	goto	u2830
u2831:
	goto	l2263
u2830:
	line	126
	
l2249:	
	fcall	_LCD_CLR
	line	127
	
l2251:	
	movlw	low(((STR_15)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_15)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	128
	
l2253:	
	movlw	low(((STR_16)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_16)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	129
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	130
	
l2255:	
	movlw	low(((STR_17)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_17)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	131
	
l2257:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	132
	
l2259:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4247:
	decfsz	((??_main+0)+0),f
	goto	u4247
	decfsz	((??_main+0)+0+1),f
	goto	u4247
	decfsz	((??_main+0)+0+2),f
	goto	u4247
opt asmopt_on

	line	133
	
l2261:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	135
	goto	l2113
	line	136
	
l184:	
	
l2263:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y1+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2845
	movf	(_y1),w
	subwf	(_comp),w
u2845:

	skipnc
	goto	u2841
	goto	u2840
u2841:
	goto	l2287
u2840:
	
l2265:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y2+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2855
	movf	(_y2),w
	subwf	(_comp),w
u2855:

	skipnc
	goto	u2851
	goto	u2850
u2851:
	goto	l2287
u2850:
	
l2267:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y3+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2865
	movf	(_comp),w
	subwf	(_y3),w
u2865:

	skipnc
	goto	u2861
	goto	u2860
u2861:
	goto	l2287
u2860:
	
l2269:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y4+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2875
	movf	(_y4),w
	subwf	(_comp),w
u2875:

	skipnc
	goto	u2871
	goto	u2870
u2871:
	goto	l2287
u2870:
	
l2271:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y5+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2885
	movf	(_y5),w
	subwf	(_comp),w
u2885:

	skipnc
	goto	u2881
	goto	u2880
u2881:
	goto	l2287
u2880:
	line	138
	
l2273:	
	fcall	_LCD_CLR
	line	139
	
l2275:	
	movlw	low(((STR_18)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_18)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	140
	
l2277:	
	movlw	low(((STR_19)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_19)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	141
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	142
	
l2279:	
	movlw	low(((STR_20)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_20)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	143
	
l2281:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	144
	
l2283:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4257:
	decfsz	((??_main+0)+0),f
	goto	u4257
	decfsz	((??_main+0)+0+1),f
	goto	u4257
	decfsz	((??_main+0)+0+2),f
	goto	u4257
opt asmopt_on

	line	145
	
l2285:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	147
	goto	l2113
	line	148
	
l186:	
	
l2287:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y1+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2895
	movf	(_y1),w
	subwf	(_comp),w
u2895:

	skipnc
	goto	u2891
	goto	u2890
u2891:
	goto	l2311
u2890:
	
l2289:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y2+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2905
	movf	(_y2),w
	subwf	(_comp),w
u2905:

	skipnc
	goto	u2901
	goto	u2900
u2901:
	goto	l2311
u2900:
	
l2291:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y3+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2915
	movf	(_comp),w
	subwf	(_y3),w
u2915:

	skipnc
	goto	u2911
	goto	u2910
u2911:
	goto	l2311
u2910:
	
l2293:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y4+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2925
	movf	(_y4),w
	subwf	(_comp),w
u2925:

	skipnc
	goto	u2921
	goto	u2920
u2921:
	goto	l2311
u2920:
	
l2295:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y5+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2935
	movf	(_comp),w
	subwf	(_y5),w
u2935:

	skipnc
	goto	u2931
	goto	u2930
u2931:
	goto	l2311
u2930:
	line	150
	
l2297:	
	fcall	_LCD_CLR
	line	151
	
l2299:	
	movlw	low(((STR_21)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_21)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	152
	
l2301:	
	movlw	low(((STR_22)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_22)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	153
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	154
	
l2303:	
	movlw	low(((STR_23)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_23)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	155
	
l2305:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	156
	
l2307:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4267:
	decfsz	((??_main+0)+0),f
	goto	u4267
	decfsz	((??_main+0)+0+1),f
	goto	u4267
	decfsz	((??_main+0)+0+2),f
	goto	u4267
opt asmopt_on

	line	157
	
l2309:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	159
	goto	l2113
	line	160
	
l188:	
	
l2311:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y1+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2945
	movf	(_y1),w
	subwf	(_comp),w
u2945:

	skipnc
	goto	u2941
	goto	u2940
u2941:
	goto	l2335
u2940:
	
l2313:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y2+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2955
	movf	(_y2),w
	subwf	(_comp),w
u2955:

	skipnc
	goto	u2951
	goto	u2950
u2951:
	goto	l2335
u2950:
	
l2315:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y3+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2965
	movf	(_comp),w
	subwf	(_y3),w
u2965:

	skipnc
	goto	u2961
	goto	u2960
u2961:
	goto	l2335
u2960:
	
l2317:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y4+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2975
	movf	(_comp),w
	subwf	(_y4),w
u2975:

	skipnc
	goto	u2971
	goto	u2970
u2971:
	goto	l2335
u2970:
	
l2319:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y5+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2985
	movf	(_y5),w
	subwf	(_comp),w
u2985:

	skipnc
	goto	u2981
	goto	u2980
u2981:
	goto	l2335
u2980:
	line	162
	
l2321:	
	fcall	_LCD_CLR
	line	163
	
l2323:	
	movlw	low(((STR_24)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_24)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	164
	
l2325:	
	movlw	low(((STR_25)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_25)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	165
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	166
	
l2327:	
	movlw	low(((STR_26)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_26)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	167
	
l2329:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	168
	
l2331:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4277:
	decfsz	((??_main+0)+0),f
	goto	u4277
	decfsz	((??_main+0)+0+1),f
	goto	u4277
	decfsz	((??_main+0)+0+2),f
	goto	u4277
opt asmopt_on

	line	169
	
l2333:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	171
	goto	l2113
	line	172
	
l190:	
	
l2335:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y1+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2995
	movf	(_y1),w
	subwf	(_comp),w
u2995:

	skipnc
	goto	u2991
	goto	u2990
u2991:
	goto	l2359
u2990:
	
l2337:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y2+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3005
	movf	(_y2),w
	subwf	(_comp),w
u3005:

	skipnc
	goto	u3001
	goto	u3000
u3001:
	goto	l2359
u3000:
	
l2339:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y3+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3015
	movf	(_comp),w
	subwf	(_y3),w
u3015:

	skipnc
	goto	u3011
	goto	u3010
u3011:
	goto	l2359
u3010:
	
l2341:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y4+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3025
	movf	(_comp),w
	subwf	(_y4),w
u3025:

	skipnc
	goto	u3021
	goto	u3020
u3021:
	goto	l2359
u3020:
	
l2343:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y5+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3035
	movf	(_comp),w
	subwf	(_y5),w
u3035:

	skipnc
	goto	u3031
	goto	u3030
u3031:
	goto	l2359
u3030:
	line	174
	
l2345:	
	fcall	_LCD_CLR
	line	175
	
l2347:	
	movlw	low(((STR_27)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_27)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	176
	
l2349:	
	movlw	low(((STR_28)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_28)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	177
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	178
	
l2351:	
	movlw	low(((STR_29)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_29)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	179
	
l2353:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	180
	
l2355:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4287:
	decfsz	((??_main+0)+0),f
	goto	u4287
	decfsz	((??_main+0)+0+1),f
	goto	u4287
	decfsz	((??_main+0)+0+2),f
	goto	u4287
opt asmopt_on

	line	181
	
l2357:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	183
	goto	l2113
	line	184
	
l192:	
	
l2359:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y1+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3045
	movf	(_y1),w
	subwf	(_comp),w
u3045:

	skipnc
	goto	u3041
	goto	u3040
u3041:
	goto	l2383
u3040:
	
l2361:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y2+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3055
	movf	(_comp),w
	subwf	(_y2),w
u3055:

	skipnc
	goto	u3051
	goto	u3050
u3051:
	goto	l2383
u3050:
	
l2363:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y3+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3065
	movf	(_y3),w
	subwf	(_comp),w
u3065:

	skipnc
	goto	u3061
	goto	u3060
u3061:
	goto	l2383
u3060:
	
l2365:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y4+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3075
	movf	(_y4),w
	subwf	(_comp),w
u3075:

	skipnc
	goto	u3071
	goto	u3070
u3071:
	goto	l2383
u3070:
	
l2367:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y5+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3085
	movf	(_y5),w
	subwf	(_comp),w
u3085:

	skipnc
	goto	u3081
	goto	u3080
u3081:
	goto	l2383
u3080:
	line	186
	
l2369:	
	fcall	_LCD_CLR
	line	187
	
l2371:	
	movlw	low(((STR_30)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_30)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	188
	
l2373:	
	movlw	low(((STR_31)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_31)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	189
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	190
	
l2375:	
	movlw	low(((STR_32)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_32)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	191
	
l2377:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	192
	
l2379:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4297:
	decfsz	((??_main+0)+0),f
	goto	u4297
	decfsz	((??_main+0)+0+1),f
	goto	u4297
	decfsz	((??_main+0)+0+2),f
	goto	u4297
opt asmopt_on

	line	193
	
l2381:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	195
	goto	l2113
	line	196
	
l194:	
	
l2383:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y1+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3095
	movf	(_y1),w
	subwf	(_comp),w
u3095:

	skipnc
	goto	u3091
	goto	u3090
u3091:
	goto	l2407
u3090:
	
l2385:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y2+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3105
	movf	(_comp),w
	subwf	(_y2),w
u3105:

	skipnc
	goto	u3101
	goto	u3100
u3101:
	goto	l2407
u3100:
	
l2387:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y3+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3115
	movf	(_y3),w
	subwf	(_comp),w
u3115:

	skipnc
	goto	u3111
	goto	u3110
u3111:
	goto	l2407
u3110:
	
l2389:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y4+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3125
	movf	(_y4),w
	subwf	(_comp),w
u3125:

	skipnc
	goto	u3121
	goto	u3120
u3121:
	goto	l2407
u3120:
	
l2391:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y5+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3135
	movf	(_comp),w
	subwf	(_y5),w
u3135:

	skipnc
	goto	u3131
	goto	u3130
u3131:
	goto	l2407
u3130:
	line	198
	
l2393:	
	fcall	_LCD_CLR
	line	199
	
l2395:	
	movlw	low(((STR_33)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_33)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	200
	
l2397:	
	movlw	low(((STR_34)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_34)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	201
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	202
	
l2399:	
	movlw	low(((STR_35)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_35)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	203
	
l2401:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	204
	
l2403:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4307:
	decfsz	((??_main+0)+0),f
	goto	u4307
	decfsz	((??_main+0)+0+1),f
	goto	u4307
	decfsz	((??_main+0)+0+2),f
	goto	u4307
opt asmopt_on

	line	205
	
l2405:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	207
	goto	l2113
	line	208
	
l196:	
	
l2407:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y1+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3145
	movf	(_y1),w
	subwf	(_comp),w
u3145:

	skipnc
	goto	u3141
	goto	u3140
u3141:
	goto	l2431
u3140:
	
l2409:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y2+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3155
	movf	(_comp),w
	subwf	(_y2),w
u3155:

	skipnc
	goto	u3151
	goto	u3150
u3151:
	goto	l2431
u3150:
	
l2411:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y3+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3165
	movf	(_y3),w
	subwf	(_comp),w
u3165:

	skipnc
	goto	u3161
	goto	u3160
u3161:
	goto	l2431
u3160:
	
l2413:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y4+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3175
	movf	(_comp),w
	subwf	(_y4),w
u3175:

	skipnc
	goto	u3171
	goto	u3170
u3171:
	goto	l2431
u3170:
	
l2415:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y5+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3185
	movf	(_y5),w
	subwf	(_comp),w
u3185:

	skipnc
	goto	u3181
	goto	u3180
u3181:
	goto	l2431
u3180:
	line	210
	
l2417:	
	fcall	_LCD_CLR
	line	211
	
l2419:	
	movlw	low(((STR_36)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_36)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	212
	
l2421:	
	movlw	low(((STR_37)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_37)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	213
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	214
	
l2423:	
	movlw	low(((STR_38)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_38)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	215
	
l2425:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	216
	
l2427:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4317:
	decfsz	((??_main+0)+0),f
	goto	u4317
	decfsz	((??_main+0)+0+1),f
	goto	u4317
	decfsz	((??_main+0)+0+2),f
	goto	u4317
opt asmopt_on

	line	217
	
l2429:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	219
	goto	l2113
	line	220
	
l198:	
	
l2431:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y1+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3195
	movf	(_y1),w
	subwf	(_comp),w
u3195:

	skipnc
	goto	u3191
	goto	u3190
u3191:
	goto	l2455
u3190:
	
l2433:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y2+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3205
	movf	(_comp),w
	subwf	(_y2),w
u3205:

	skipnc
	goto	u3201
	goto	u3200
u3201:
	goto	l2455
u3200:
	
l2435:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y3+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3215
	movf	(_y3),w
	subwf	(_comp),w
u3215:

	skipnc
	goto	u3211
	goto	u3210
u3211:
	goto	l2455
u3210:
	
l2437:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y4+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3225
	movf	(_comp),w
	subwf	(_y4),w
u3225:

	skipnc
	goto	u3221
	goto	u3220
u3221:
	goto	l2455
u3220:
	
l2439:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y5+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3235
	movf	(_comp),w
	subwf	(_y5),w
u3235:

	skipnc
	goto	u3231
	goto	u3230
u3231:
	goto	l2455
u3230:
	line	222
	
l2441:	
	fcall	_LCD_CLR
	line	223
	
l2443:	
	movlw	low(((STR_39)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_39)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	224
	
l2445:	
	movlw	low(((STR_40)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_40)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	225
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	226
	
l2447:	
	movlw	low(((STR_41)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_41)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	227
	
l2449:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	228
	
l2451:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4327:
	decfsz	((??_main+0)+0),f
	goto	u4327
	decfsz	((??_main+0)+0+1),f
	goto	u4327
	decfsz	((??_main+0)+0+2),f
	goto	u4327
opt asmopt_on

	line	229
	
l2453:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	231
	goto	l2113
	line	232
	
l200:	
	
l2455:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y1+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3245
	movf	(_y1),w
	subwf	(_comp),w
u3245:

	skipnc
	goto	u3241
	goto	u3240
u3241:
	goto	l2479
u3240:
	
l2457:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y2+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3255
	movf	(_comp),w
	subwf	(_y2),w
u3255:

	skipnc
	goto	u3251
	goto	u3250
u3251:
	goto	l2479
u3250:
	
l2459:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y3+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3265
	movf	(_comp),w
	subwf	(_y3),w
u3265:

	skipnc
	goto	u3261
	goto	u3260
u3261:
	goto	l2479
u3260:
	
l2461:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y4+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3275
	movf	(_y4),w
	subwf	(_comp),w
u3275:

	skipnc
	goto	u3271
	goto	u3270
u3271:
	goto	l2479
u3270:
	
l2463:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y5+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3285
	movf	(_y5),w
	subwf	(_comp),w
u3285:

	skipnc
	goto	u3281
	goto	u3280
u3281:
	goto	l2479
u3280:
	line	234
	
l2465:	
	fcall	_LCD_CLR
	line	235
	
l2467:	
	movlw	low(((STR_42)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_42)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	236
	
l2469:	
	movlw	low(((STR_43)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_43)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	237
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	238
	
l2471:	
	movlw	low(((STR_44)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_44)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	239
	
l2473:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	240
	
l2475:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4337:
	decfsz	((??_main+0)+0),f
	goto	u4337
	decfsz	((??_main+0)+0+1),f
	goto	u4337
	decfsz	((??_main+0)+0+2),f
	goto	u4337
opt asmopt_on

	line	241
	
l2477:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	243
	goto	l2113
	line	244
	
l202:	
	
l2479:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y1+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3295
	movf	(_y1),w
	subwf	(_comp),w
u3295:

	skipnc
	goto	u3291
	goto	u3290
u3291:
	goto	l2503
u3290:
	
l2481:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y2+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3305
	movf	(_comp),w
	subwf	(_y2),w
u3305:

	skipnc
	goto	u3301
	goto	u3300
u3301:
	goto	l2503
u3300:
	
l2483:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y3+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3315
	movf	(_comp),w
	subwf	(_y3),w
u3315:

	skipnc
	goto	u3311
	goto	u3310
u3311:
	goto	l2503
u3310:
	
l2485:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y4+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3325
	movf	(_y4),w
	subwf	(_comp),w
u3325:

	skipnc
	goto	u3321
	goto	u3320
u3321:
	goto	l2503
u3320:
	
l2487:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y5+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3335
	movf	(_comp),w
	subwf	(_y5),w
u3335:

	skipnc
	goto	u3331
	goto	u3330
u3331:
	goto	l2503
u3330:
	line	246
	
l2489:	
	fcall	_LCD_CLR
	line	247
	
l2491:	
	movlw	low(((STR_45)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_45)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	248
	
l2493:	
	movlw	low(((STR_46)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_46)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	249
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	250
	
l2495:	
	movlw	low(((STR_47)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_47)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	251
	
l2497:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	252
	
l2499:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4347:
	decfsz	((??_main+0)+0),f
	goto	u4347
	decfsz	((??_main+0)+0+1),f
	goto	u4347
	decfsz	((??_main+0)+0+2),f
	goto	u4347
opt asmopt_on

	line	253
	
l2501:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	255
	goto	l2113
	line	256
	
l204:	
	
l2503:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y1+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3345
	movf	(_y1),w
	subwf	(_comp),w
u3345:

	skipnc
	goto	u3341
	goto	u3340
u3341:
	goto	l2527
u3340:
	
l2505:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y2+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3355
	movf	(_comp),w
	subwf	(_y2),w
u3355:

	skipnc
	goto	u3351
	goto	u3350
u3351:
	goto	l2527
u3350:
	
l2507:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y3+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3365
	movf	(_comp),w
	subwf	(_y3),w
u3365:

	skipnc
	goto	u3361
	goto	u3360
u3361:
	goto	l2527
u3360:
	
l2509:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y4+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3375
	movf	(_comp),w
	subwf	(_y4),w
u3375:

	skipnc
	goto	u3371
	goto	u3370
u3371:
	goto	l2527
u3370:
	
l2511:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y5+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3385
	movf	(_y5),w
	subwf	(_comp),w
u3385:

	skipnc
	goto	u3381
	goto	u3380
u3381:
	goto	l2527
u3380:
	line	258
	
l2513:	
	fcall	_LCD_CLR
	line	259
	
l2515:	
	movlw	low(((STR_48)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_48)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	260
	
l2517:	
	movlw	low(((STR_49)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_49)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	261
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	262
	
l2519:	
	movlw	low(((STR_50)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_50)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	263
	
l2521:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	264
	
l2523:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4357:
	decfsz	((??_main+0)+0),f
	goto	u4357
	decfsz	((??_main+0)+0+1),f
	goto	u4357
	decfsz	((??_main+0)+0+2),f
	goto	u4357
opt asmopt_on

	line	265
	
l2525:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	267
	goto	l2113
	line	268
	
l206:	
	
l2527:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y1+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3395
	movf	(_y1),w
	subwf	(_comp),w
u3395:

	skipnc
	goto	u3391
	goto	u3390
u3391:
	goto	l2551
u3390:
	
l2529:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y2+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3405
	movf	(_comp),w
	subwf	(_y2),w
u3405:

	skipnc
	goto	u3401
	goto	u3400
u3401:
	goto	l2551
u3400:
	
l2531:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y3+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3415
	movf	(_comp),w
	subwf	(_y3),w
u3415:

	skipnc
	goto	u3411
	goto	u3410
u3411:
	goto	l2551
u3410:
	
l2533:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y4+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3425
	movf	(_comp),w
	subwf	(_y4),w
u3425:

	skipnc
	goto	u3421
	goto	u3420
u3421:
	goto	l2551
u3420:
	
l2535:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y5+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3435
	movf	(_comp),w
	subwf	(_y5),w
u3435:

	skipnc
	goto	u3431
	goto	u3430
u3431:
	goto	l2551
u3430:
	line	270
	
l2537:	
	fcall	_LCD_CLR
	line	271
	
l2539:	
	movlw	low(((STR_51)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_51)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	272
	
l2541:	
	movlw	low(((STR_52)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_52)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	273
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	274
	
l2543:	
	movlw	low(((STR_53)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_53)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	275
	
l2545:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	276
	
l2547:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4367:
	decfsz	((??_main+0)+0),f
	goto	u4367
	decfsz	((??_main+0)+0+1),f
	goto	u4367
	decfsz	((??_main+0)+0+2),f
	goto	u4367
opt asmopt_on

	line	277
	
l2549:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	279
	goto	l2113
	line	280
	
l208:	
	
l2551:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y1+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3445
	movf	(_comp),w
	subwf	(_y1),w
u3445:

	skipnc
	goto	u3441
	goto	u3440
u3441:
	goto	l2575
u3440:
	
l2553:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y2+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3455
	movf	(_y2),w
	subwf	(_comp),w
u3455:

	skipnc
	goto	u3451
	goto	u3450
u3451:
	goto	l2575
u3450:
	
l2555:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y3+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3465
	movf	(_y3),w
	subwf	(_comp),w
u3465:

	skipnc
	goto	u3461
	goto	u3460
u3461:
	goto	l2575
u3460:
	
l2557:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y4+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3475
	movf	(_y4),w
	subwf	(_comp),w
u3475:

	skipnc
	goto	u3471
	goto	u3470
u3471:
	goto	l2575
u3470:
	
l2559:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y5+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3485
	movf	(_y5),w
	subwf	(_comp),w
u3485:

	skipnc
	goto	u3481
	goto	u3480
u3481:
	goto	l2575
u3480:
	line	282
	
l2561:	
	fcall	_LCD_CLR
	line	283
	
l2563:	
	movlw	low(((STR_54)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_54)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	284
	
l2565:	
	movlw	low(((STR_55)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_55)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	285
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	286
	
l2567:	
	movlw	low(((STR_56)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_56)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	287
	
l2569:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	288
	
l2571:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4377:
	decfsz	((??_main+0)+0),f
	goto	u4377
	decfsz	((??_main+0)+0+1),f
	goto	u4377
	decfsz	((??_main+0)+0+2),f
	goto	u4377
opt asmopt_on

	line	289
	
l2573:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	291
	goto	l2113
	line	292
	
l210:	
	
l2575:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y1+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3495
	movf	(_comp),w
	subwf	(_y1),w
u3495:

	skipnc
	goto	u3491
	goto	u3490
u3491:
	goto	l2599
u3490:
	
l2577:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y2+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3505
	movf	(_y2),w
	subwf	(_comp),w
u3505:

	skipnc
	goto	u3501
	goto	u3500
u3501:
	goto	l2599
u3500:
	
l2579:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y3+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3515
	movf	(_y3),w
	subwf	(_comp),w
u3515:

	skipnc
	goto	u3511
	goto	u3510
u3511:
	goto	l2599
u3510:
	
l2581:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y4+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3525
	movf	(_y4),w
	subwf	(_comp),w
u3525:

	skipnc
	goto	u3521
	goto	u3520
u3521:
	goto	l2599
u3520:
	
l2583:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y5+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3535
	movf	(_comp),w
	subwf	(_y5),w
u3535:

	skipnc
	goto	u3531
	goto	u3530
u3531:
	goto	l2599
u3530:
	line	294
	
l2585:	
	fcall	_LCD_CLR
	line	295
	
l2587:	
	movlw	low(((STR_57)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_57)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	296
	
l2589:	
	movlw	low(((STR_58)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_58)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	297
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	298
	
l2591:	
	movlw	low(((STR_59)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_59)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	299
	
l2593:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	300
	
l2595:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4387:
	decfsz	((??_main+0)+0),f
	goto	u4387
	decfsz	((??_main+0)+0+1),f
	goto	u4387
	decfsz	((??_main+0)+0+2),f
	goto	u4387
opt asmopt_on

	line	301
	
l2597:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	303
	goto	l2113
	line	304
	
l212:	
	
l2599:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y1+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3545
	movf	(_comp),w
	subwf	(_y1),w
u3545:

	skipnc
	goto	u3541
	goto	u3540
u3541:
	goto	l2623
u3540:
	
l2601:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y2+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3555
	movf	(_y2),w
	subwf	(_comp),w
u3555:

	skipnc
	goto	u3551
	goto	u3550
u3551:
	goto	l2623
u3550:
	
l2603:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y3+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3565
	movf	(_y3),w
	subwf	(_comp),w
u3565:

	skipnc
	goto	u3561
	goto	u3560
u3561:
	goto	l2623
u3560:
	
l2605:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y4+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3575
	movf	(_comp),w
	subwf	(_y4),w
u3575:

	skipnc
	goto	u3571
	goto	u3570
u3571:
	goto	l2623
u3570:
	
l2607:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y5+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3585
	movf	(_y5),w
	subwf	(_comp),w
u3585:

	skipnc
	goto	u3581
	goto	u3580
u3581:
	goto	l2623
u3580:
	line	306
	
l2609:	
	fcall	_LCD_CLR
	line	307
	
l2611:	
	movlw	low(((STR_60)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_60)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	308
	
l2613:	
	movlw	low(((STR_61)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_61)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	309
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	310
	
l2615:	
	movlw	low(((STR_62)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_62)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	311
	
l2617:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	312
	
l2619:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4397:
	decfsz	((??_main+0)+0),f
	goto	u4397
	decfsz	((??_main+0)+0+1),f
	goto	u4397
	decfsz	((??_main+0)+0+2),f
	goto	u4397
opt asmopt_on

	line	313
	
l2621:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	315
	goto	l2113
	line	316
	
l214:	
	
l2623:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y1+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3595
	movf	(_comp),w
	subwf	(_y1),w
u3595:

	skipnc
	goto	u3591
	goto	u3590
u3591:
	goto	l2647
u3590:
	
l2625:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y2+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3605
	movf	(_y2),w
	subwf	(_comp),w
u3605:

	skipnc
	goto	u3601
	goto	u3600
u3601:
	goto	l2647
u3600:
	
l2627:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y3+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3615
	movf	(_y3),w
	subwf	(_comp),w
u3615:

	skipnc
	goto	u3611
	goto	u3610
u3611:
	goto	l2647
u3610:
	
l2629:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y4+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3625
	movf	(_comp),w
	subwf	(_y4),w
u3625:

	skipnc
	goto	u3621
	goto	u3620
u3621:
	goto	l2647
u3620:
	
l2631:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y5+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3635
	movf	(_comp),w
	subwf	(_y5),w
u3635:

	skipnc
	goto	u3631
	goto	u3630
u3631:
	goto	l2647
u3630:
	line	318
	
l2633:	
	fcall	_LCD_CLR
	line	319
	
l2635:	
	movlw	low(((STR_63)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_63)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	320
	
l2637:	
	movlw	low(((STR_64)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_64)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	321
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	322
	
l2639:	
	movlw	low(((STR_65)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_65)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	323
	
l2641:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	324
	
l2643:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4407:
	decfsz	((??_main+0)+0),f
	goto	u4407
	decfsz	((??_main+0)+0+1),f
	goto	u4407
	decfsz	((??_main+0)+0+2),f
	goto	u4407
opt asmopt_on

	line	325
	
l2645:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	327
	goto	l2113
	line	328
	
l216:	
	
l2647:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y1+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3645
	movf	(_comp),w
	subwf	(_y1),w
u3645:

	skipnc
	goto	u3641
	goto	u3640
u3641:
	goto	l2671
u3640:
	
l2649:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y2+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3655
	movf	(_y2),w
	subwf	(_comp),w
u3655:

	skipnc
	goto	u3651
	goto	u3650
u3651:
	goto	l2671
u3650:
	
l2651:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y3+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3665
	movf	(_comp),w
	subwf	(_y3),w
u3665:

	skipnc
	goto	u3661
	goto	u3660
u3661:
	goto	l2671
u3660:
	
l2653:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y4+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3675
	movf	(_y4),w
	subwf	(_comp),w
u3675:

	skipnc
	goto	u3671
	goto	u3670
u3671:
	goto	l2671
u3670:
	
l2655:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y5+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3685
	movf	(_y5),w
	subwf	(_comp),w
u3685:

	skipnc
	goto	u3681
	goto	u3680
u3681:
	goto	l2671
u3680:
	line	330
	
l2657:	
	fcall	_LCD_CLR
	line	331
	
l2659:	
	movlw	low(((STR_66)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_66)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	332
	
l2661:	
	movlw	low(((STR_67)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_67)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	333
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	334
	
l2663:	
	movlw	low(((STR_68)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_68)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	335
	
l2665:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	336
	
l2667:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4417:
	decfsz	((??_main+0)+0),f
	goto	u4417
	decfsz	((??_main+0)+0+1),f
	goto	u4417
	decfsz	((??_main+0)+0+2),f
	goto	u4417
opt asmopt_on

	line	337
	
l2669:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	339
	goto	l2113
	line	340
	
l218:	
	
l2671:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y1+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3695
	movf	(_comp),w
	subwf	(_y1),w
u3695:

	skipnc
	goto	u3691
	goto	u3690
u3691:
	goto	l2695
u3690:
	
l2673:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y2+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3705
	movf	(_y2),w
	subwf	(_comp),w
u3705:

	skipnc
	goto	u3701
	goto	u3700
u3701:
	goto	l2695
u3700:
	
l2675:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y3+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3715
	movf	(_comp),w
	subwf	(_y3),w
u3715:

	skipnc
	goto	u3711
	goto	u3710
u3711:
	goto	l2695
u3710:
	
l2677:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y4+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3725
	movf	(_y4),w
	subwf	(_comp),w
u3725:

	skipnc
	goto	u3721
	goto	u3720
u3721:
	goto	l2695
u3720:
	
l2679:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y5+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3735
	movf	(_comp),w
	subwf	(_y5),w
u3735:

	skipnc
	goto	u3731
	goto	u3730
u3731:
	goto	l2695
u3730:
	line	342
	
l2681:	
	fcall	_LCD_CLR
	line	343
	
l2683:	
	movlw	low(((STR_69)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_69)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	344
	
l2685:	
	movlw	low(((STR_70)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_70)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	345
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	346
	
l2687:	
	movlw	low(((STR_71)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_71)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	347
	
l2689:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	348
	
l2691:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4427:
	decfsz	((??_main+0)+0),f
	goto	u4427
	decfsz	((??_main+0)+0+1),f
	goto	u4427
	decfsz	((??_main+0)+0+2),f
	goto	u4427
opt asmopt_on

	line	349
	
l2693:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	351
	goto	l2113
	line	352
	
l220:	
	
l2695:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y1+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3745
	movf	(_comp),w
	subwf	(_y1),w
u3745:

	skipnc
	goto	u3741
	goto	u3740
u3741:
	goto	l2719
u3740:
	
l2697:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y2+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3755
	movf	(_y2),w
	subwf	(_comp),w
u3755:

	skipnc
	goto	u3751
	goto	u3750
u3751:
	goto	l2719
u3750:
	
l2699:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y3+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3765
	movf	(_comp),w
	subwf	(_y3),w
u3765:

	skipnc
	goto	u3761
	goto	u3760
u3761:
	goto	l2719
u3760:
	
l2701:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y4+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3775
	movf	(_comp),w
	subwf	(_y4),w
u3775:

	skipnc
	goto	u3771
	goto	u3770
u3771:
	goto	l2719
u3770:
	
l2703:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y5+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3785
	movf	(_y5),w
	subwf	(_comp),w
u3785:

	skipnc
	goto	u3781
	goto	u3780
u3781:
	goto	l2719
u3780:
	line	354
	
l2705:	
	fcall	_LCD_CLR
	line	355
	
l2707:	
	movlw	low(((STR_72)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_72)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	356
	
l2709:	
	movlw	low(((STR_73)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_73)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	357
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	358
	
l2711:	
	movlw	low(((STR_74)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_74)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	359
	
l2713:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	360
	
l2715:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4437:
	decfsz	((??_main+0)+0),f
	goto	u4437
	decfsz	((??_main+0)+0+1),f
	goto	u4437
	decfsz	((??_main+0)+0+2),f
	goto	u4437
opt asmopt_on

	line	361
	
l2717:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	363
	goto	l2113
	line	364
	
l222:	
	
l2719:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y1+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3795
	movf	(_comp),w
	subwf	(_y1),w
u3795:

	skipnc
	goto	u3791
	goto	u3790
u3791:
	goto	l2743
u3790:
	
l2721:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y2+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3805
	movf	(_y2),w
	subwf	(_comp),w
u3805:

	skipnc
	goto	u3801
	goto	u3800
u3801:
	goto	l2743
u3800:
	
l2723:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y3+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3815
	movf	(_comp),w
	subwf	(_y3),w
u3815:

	skipnc
	goto	u3811
	goto	u3810
u3811:
	goto	l2743
u3810:
	
l2725:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y4+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3825
	movf	(_comp),w
	subwf	(_y4),w
u3825:

	skipnc
	goto	u3821
	goto	u3820
u3821:
	goto	l2743
u3820:
	
l2727:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y5+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3835
	movf	(_comp),w
	subwf	(_y5),w
u3835:

	skipnc
	goto	u3831
	goto	u3830
u3831:
	goto	l2743
u3830:
	line	366
	
l2729:	
	fcall	_LCD_CLR
	line	367
	
l2731:	
	movlw	low(((STR_75)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_75)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	368
	
l2733:	
	movlw	low(((STR_76)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_76)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	369
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	370
	
l2735:	
	movlw	low(((STR_77)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_77)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	371
	
l2737:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	372
	
l2739:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4447:
	decfsz	((??_main+0)+0),f
	goto	u4447
	decfsz	((??_main+0)+0+1),f
	goto	u4447
	decfsz	((??_main+0)+0+2),f
	goto	u4447
opt asmopt_on

	line	373
	
l2741:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	375
	goto	l2113
	line	376
	
l224:	
	
l2743:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y1+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3845
	movf	(_comp),w
	subwf	(_y1),w
u3845:

	skipnc
	goto	u3841
	goto	u3840
u3841:
	goto	l2767
u3840:
	
l2745:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y2+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3855
	movf	(_comp),w
	subwf	(_y2),w
u3855:

	skipnc
	goto	u3851
	goto	u3850
u3851:
	goto	l2767
u3850:
	
l2747:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y3+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3865
	movf	(_y3),w
	subwf	(_comp),w
u3865:

	skipnc
	goto	u3861
	goto	u3860
u3861:
	goto	l2767
u3860:
	
l2749:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y4+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3875
	movf	(_y4),w
	subwf	(_comp),w
u3875:

	skipnc
	goto	u3871
	goto	u3870
u3871:
	goto	l2767
u3870:
	
l2751:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y5+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3885
	movf	(_y5),w
	subwf	(_comp),w
u3885:

	skipnc
	goto	u3881
	goto	u3880
u3881:
	goto	l2767
u3880:
	line	378
	
l2753:	
	fcall	_LCD_CLR
	line	379
	
l2755:	
	movlw	low(((STR_78)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_78)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	380
	
l2757:	
	movlw	low(((STR_79)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_79)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	381
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	382
	
l2759:	
	movlw	low(((STR_80)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_80)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	383
	
l2761:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	384
	
l2763:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4457:
	decfsz	((??_main+0)+0),f
	goto	u4457
	decfsz	((??_main+0)+0+1),f
	goto	u4457
	decfsz	((??_main+0)+0+2),f
	goto	u4457
opt asmopt_on

	line	385
	
l2765:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	387
	goto	l2113
	line	388
	
l226:	
	
l2767:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y1+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3895
	movf	(_comp),w
	subwf	(_y1),w
u3895:

	skipnc
	goto	u3891
	goto	u3890
u3891:
	goto	l2791
u3890:
	
l2769:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y2+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3905
	movf	(_comp),w
	subwf	(_y2),w
u3905:

	skipnc
	goto	u3901
	goto	u3900
u3901:
	goto	l2791
u3900:
	
l2771:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y3+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3915
	movf	(_y3),w
	subwf	(_comp),w
u3915:

	skipnc
	goto	u3911
	goto	u3910
u3911:
	goto	l2791
u3910:
	
l2773:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y4+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3925
	movf	(_y4),w
	subwf	(_comp),w
u3925:

	skipnc
	goto	u3921
	goto	u3920
u3921:
	goto	l2791
u3920:
	
l2775:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y5+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3935
	movf	(_comp),w
	subwf	(_y5),w
u3935:

	skipnc
	goto	u3931
	goto	u3930
u3931:
	goto	l2791
u3930:
	line	390
	
l2777:	
	fcall	_LCD_CLR
	line	391
	
l2779:	
	movlw	low(((STR_81)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_81)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	392
	
l2781:	
	movlw	low(((STR_82)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_82)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	393
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	394
	
l2783:	
	movlw	low(((STR_83)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_83)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	395
	
l2785:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	396
	
l2787:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4467:
	decfsz	((??_main+0)+0),f
	goto	u4467
	decfsz	((??_main+0)+0+1),f
	goto	u4467
	decfsz	((??_main+0)+0+2),f
	goto	u4467
opt asmopt_on

	line	397
	
l2789:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	399
	goto	l2113
	line	400
	
l228:	
	
l2791:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y1+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3945
	movf	(_comp),w
	subwf	(_y1),w
u3945:

	skipnc
	goto	u3941
	goto	u3940
u3941:
	goto	l2815
u3940:
	
l2793:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y2+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3955
	movf	(_comp),w
	subwf	(_y2),w
u3955:

	skipnc
	goto	u3951
	goto	u3950
u3951:
	goto	l2815
u3950:
	
l2795:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y3+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3965
	movf	(_y3),w
	subwf	(_comp),w
u3965:

	skipnc
	goto	u3961
	goto	u3960
u3961:
	goto	l2815
u3960:
	
l2797:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y4+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3975
	movf	(_comp),w
	subwf	(_y4),w
u3975:

	skipnc
	goto	u3971
	goto	u3970
u3971:
	goto	l2815
u3970:
	
l2799:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y5+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3985
	movf	(_y5),w
	subwf	(_comp),w
u3985:

	skipnc
	goto	u3981
	goto	u3980
u3981:
	goto	l2815
u3980:
	line	402
	
l2801:	
	fcall	_LCD_CLR
	line	403
	
l2803:	
	movlw	low(((STR_84)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_84)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	404
	
l2805:	
	movlw	low(((STR_85)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_85)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	405
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	406
	
l2807:	
	movlw	low(((STR_86)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_86)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	407
	
l2809:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	408
	
l2811:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4477:
	decfsz	((??_main+0)+0),f
	goto	u4477
	decfsz	((??_main+0)+0+1),f
	goto	u4477
	decfsz	((??_main+0)+0+2),f
	goto	u4477
opt asmopt_on

	line	409
	
l2813:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	411
	goto	l2113
	line	412
	
l230:	
	
l2815:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y1+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3995
	movf	(_comp),w
	subwf	(_y1),w
u3995:

	skipnc
	goto	u3991
	goto	u3990
u3991:
	goto	l2839
u3990:
	
l2817:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y2+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u4005
	movf	(_comp),w
	subwf	(_y2),w
u4005:

	skipnc
	goto	u4001
	goto	u4000
u4001:
	goto	l2839
u4000:
	
l2819:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y3+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u4015
	movf	(_y3),w
	subwf	(_comp),w
u4015:

	skipnc
	goto	u4011
	goto	u4010
u4011:
	goto	l2839
u4010:
	
l2821:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y4+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u4025
	movf	(_comp),w
	subwf	(_y4),w
u4025:

	skipnc
	goto	u4021
	goto	u4020
u4021:
	goto	l2839
u4020:
	
l2823:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y5+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u4035
	movf	(_comp),w
	subwf	(_y5),w
u4035:

	skipnc
	goto	u4031
	goto	u4030
u4031:
	goto	l2839
u4030:
	line	414
	
l2825:	
	fcall	_LCD_CLR
	line	415
	
l2827:	
	movlw	low(((STR_87)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_87)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	416
	
l2829:	
	movlw	low(((STR_88)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_88)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	417
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	418
	
l2831:	
	movlw	low(((STR_89)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_89)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	419
	
l2833:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	420
	
l2835:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4487:
	decfsz	((??_main+0)+0),f
	goto	u4487
	decfsz	((??_main+0)+0+1),f
	goto	u4487
	decfsz	((??_main+0)+0+2),f
	goto	u4487
opt asmopt_on

	line	421
	
l2837:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	423
	goto	l2113
	line	424
	
l232:	
	
l2839:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y1+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u4045
	movf	(_comp),w
	subwf	(_y1),w
u4045:

	skipnc
	goto	u4041
	goto	u4040
u4041:
	goto	l2863
u4040:
	
l2841:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y2+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u4055
	movf	(_comp),w
	subwf	(_y2),w
u4055:

	skipnc
	goto	u4051
	goto	u4050
u4051:
	goto	l2863
u4050:
	
l2843:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y3+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u4065
	movf	(_comp),w
	subwf	(_y3),w
u4065:

	skipnc
	goto	u4061
	goto	u4060
u4061:
	goto	l2863
u4060:
	
l2845:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y4+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u4075
	movf	(_y4),w
	subwf	(_comp),w
u4075:

	skipnc
	goto	u4071
	goto	u4070
u4071:
	goto	l2863
u4070:
	
l2847:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y5+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u4085
	movf	(_y5),w
	subwf	(_comp),w
u4085:

	skipnc
	goto	u4081
	goto	u4080
u4081:
	goto	l2863
u4080:
	line	426
	
l2849:	
	fcall	_LCD_CLR
	line	427
	
l2851:	
	movlw	low(((STR_90)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_90)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	428
	
l2853:	
	movlw	low(((STR_91)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_91)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	429
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	430
	
l2855:	
	movlw	low(((STR_92)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_92)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	431
	
l2857:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	432
	
l2859:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4497:
	decfsz	((??_main+0)+0),f
	goto	u4497
	decfsz	((??_main+0)+0+1),f
	goto	u4497
	decfsz	((??_main+0)+0+2),f
	goto	u4497
opt asmopt_on

	line	433
	
l2861:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	435
	goto	l2113
	line	436
	
l234:	
	
l2863:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y1+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u4095
	movf	(_comp),w
	subwf	(_y1),w
u4095:

	skipnc
	goto	u4091
	goto	u4090
u4091:
	goto	l2887
u4090:
	
l2865:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y2+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u4105
	movf	(_comp),w
	subwf	(_y2),w
u4105:

	skipnc
	goto	u4101
	goto	u4100
u4101:
	goto	l2887
u4100:
	
l2867:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y3+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u4115
	movf	(_comp),w
	subwf	(_y3),w
u4115:

	skipnc
	goto	u4111
	goto	u4110
u4111:
	goto	l2887
u4110:
	
l2869:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y4+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u4125
	movf	(_y4),w
	subwf	(_comp),w
u4125:

	skipnc
	goto	u4121
	goto	u4120
u4121:
	goto	l2887
u4120:
	
l2871:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y5+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u4135
	movf	(_comp),w
	subwf	(_y5),w
u4135:

	skipnc
	goto	u4131
	goto	u4130
u4131:
	goto	l2887
u4130:
	line	438
	
l2873:	
	fcall	_LCD_CLR
	line	439
	
l2875:	
	movlw	low(((STR_93)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_93)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	440
	
l2877:	
	movlw	low(((STR_94)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_94)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	441
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	442
	
l2879:	
	movlw	low(((STR_95)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_95)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	443
	
l2881:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	444
	
l2883:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4507:
	decfsz	((??_main+0)+0),f
	goto	u4507
	decfsz	((??_main+0)+0+1),f
	goto	u4507
	decfsz	((??_main+0)+0+2),f
	goto	u4507
opt asmopt_on

	line	445
	
l2885:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	447
	goto	l2113
	line	448
	
l236:	
	
l2887:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y1+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u4145
	movf	(_comp),w
	subwf	(_y1),w
u4145:

	skipnc
	goto	u4141
	goto	u4140
u4141:
	goto	l2113
u4140:
	
l2889:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y2+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u4155
	movf	(_comp),w
	subwf	(_y2),w
u4155:

	skipnc
	goto	u4151
	goto	u4150
u4151:
	goto	l2113
u4150:
	
l2891:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y3+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u4165
	movf	(_comp),w
	subwf	(_y3),w
u4165:

	skipnc
	goto	u4161
	goto	u4160
u4161:
	goto	l2113
u4160:
	
l2893:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y4+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_comp+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u4175
	movf	(_comp),w
	subwf	(_y4),w
u4175:

	skipnc
	goto	u4171
	goto	u4170
u4171:
	goto	l2113
u4170:
	
l2895:	
	movf	(_comp+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_y5+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u4185
	movf	(_y5),w
	subwf	(_comp),w
u4185:

	skipnc
	goto	u4181
	goto	u4180
u4181:
	goto	l2113
u4180:
	line	450
	
l2897:	
	fcall	_LCD_CLR
	line	451
	
l2899:	
	movlw	low(((STR_96)|8000h))
	movwf	(tx@data)
	movlw	high(((STR_96)|8000h))
	movwf	((tx@data))+1
	fcall	_tx
	line	452
	
l2901:	
	movlw	low(((STR_97)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_97)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	453
	movlw	02h
	movwf	(LCD_Set_Line@line)
	movlw	0
	movwf	((LCD_Set_Line@line))+1
	fcall	_LCD_Set_Line
	line	454
	
l2903:	
	movlw	low(((STR_98)|8000h))
	movwf	(LCD_write@a)
	movlw	high(((STR_98)|8000h))
	movwf	((LCD_write@a))+1
	fcall	_LCD_write
	line	455
	
l2905:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	456
	
l2907:	
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	150
movwf	((??_main+0)+0+1),f
	movlw	166
movwf	((??_main+0)+0),f
u4517:
	decfsz	((??_main+0)+0),f
	goto	u4517
	decfsz	((??_main+0)+0+1),f
	goto	u4517
	decfsz	((??_main+0)+0+2),f
	goto	u4517
opt asmopt_on

	line	457
	
l2909:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	goto	l2113
	line	459
	
l238:	
	goto	l2113
	line	463
	
l237:	
	goto	l2113
	
l235:	
	goto	l2113
	
l233:	
	goto	l2113
	
l231:	
	goto	l2113
	
l229:	
	goto	l2113
	
l227:	
	goto	l2113
	
l225:	
	goto	l2113
	
l223:	
	goto	l2113
	
l221:	
	goto	l2113
	
l219:	
	goto	l2113
	
l217:	
	goto	l2113
	
l215:	
	goto	l2113
	
l213:	
	goto	l2113
	
l211:	
	goto	l2113
	
l209:	
	goto	l2113
	
l207:	
	goto	l2113
	
l205:	
	goto	l2113
	
l203:	
	goto	l2113
	
l201:	
	goto	l2113
	
l199:	
	goto	l2113
	
l197:	
	goto	l2113
	
l195:	
	goto	l2113
	
l193:	
	goto	l2113
	
l191:	
	goto	l2113
	
l189:	
	goto	l2113
	
l187:	
	goto	l2113
	
l185:	
	goto	l2113
	
l183:	
	goto	l2113
	
l181:	
	goto	l2113
	
l179:	
	goto	l2113
	
l177:	
	goto	l2113
	
l239:	
	line	61
	goto	l2113
	
l240:	
	line	464
	
l241:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_tx

;; *************** function _tx *****************
;; Defined at:
;;		line 20 in file "D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\uart_877a.h"
;; Parameters:    Size  Location     Type
;;  data            2    1[COMMON] PTR unsigned char 
;;		 -> STR_96(6), STR_93(26), STR_90(26), STR_87(26), 
;;		 -> STR_84(26), STR_81(26), STR_78(26), STR_75(26), 
;;		 -> STR_72(26), STR_69(26), STR_66(26), STR_63(26), 
;;		 -> STR_60(26), STR_57(26), STR_54(26), STR_51(26), 
;;		 -> STR_48(26), STR_45(26), STR_42(26), STR_39(26), 
;;		 -> STR_36(26), STR_33(12), STR_30(17), STR_27(18), 
;;		 -> STR_24(20), STR_21(18), STR_18(13), STR_15(17), 
;;		 -> STR_12(15), STR_9(14), STR_6(8), 
;; Auto vars:     Size  Location     Type
;;  g               2    6[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_tx_char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\uart_877a.h"
	line	20
global __ptext1
__ptext1:	;psect for function _tx
psect	text1
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\uart_877a.h"
	line	20
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
	
_tx:	
;incstack = 0
	opt	stack 6
; Regs used in _tx: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	22
	
l2051:	
	clrf	(tx@g)
	clrf	(tx@g+1)
	line	23
	goto	l2057
	
l120:	
	line	25
	
l2053:	
	movf	(tx@g),w
	addwf	(tx@data),w
	movwf	(??_tx+1)+0
	movf	(tx@data+1),w
	movwf	(??_tx+0)+0
	skipnc
	incf	(??_tx+0)+0,f
	btfss	(tx@g),7
	goto	u2520
	decf	(??_tx+0)+0,f
u2520:
	movf	(??_tx+0)+0,w
	movwf	0+((??_tx+1)+0)+1
	movf	1+(??_tx+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	0+(??_tx+1)+0,w
	movwf	fsr0
	fcall	stringtab
	fcall	_tx_char
	line	26
	
l2055:	
	movlw	01h
	addwf	(tx@g),f
	skipnc
	incf	(tx@g+1),f
	movlw	0
	addwf	(tx@g+1),f
	goto	l2057
	line	27
	
l119:	
	line	23
	
l2057:	
	movf	(tx@g),w
	addwf	(tx@data),w
	movwf	(??_tx+1)+0
	movf	(tx@data+1),w
	movwf	(??_tx+0)+0
	skipnc
	incf	(??_tx+0)+0,f
	btfss	(tx@g),7
	goto	u2530
	decf	(??_tx+0)+0,f
u2530:
	movf	(??_tx+0)+0,w
	movwf	0+((??_tx+1)+0)+1
	movf	1+(??_tx+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	0+(??_tx+1)+0,w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipz
	goto	u2541
	goto	u2540
u2541:
	goto	l2053
u2540:
	goto	l122
	
l121:	
	line	28
	
l122:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
	signat	_tx,4216
	global	_tx_char

;; *************** function _tx_char *****************
;; Defined at:
;;		line 15 in file "D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\uart_877a.h"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_tx
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	15
global __ptext2
__ptext2:	;psect for function _tx_char
psect	text2
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\uart_877a.h"
	line	15
	global	__size_of_tx_char
	__size_of_tx_char	equ	__end_of_tx_char-_tx_char
	
_tx_char:	
;incstack = 0
	opt	stack 6
; Regs used in _tx_char: [wreg]
	movwf	(tx_char@data)
	line	17
	
l1849:	
	goto	l113
	
l114:	
	
l113:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7	;volatile
	goto	u2131
	goto	u2130
u2131:
	goto	l113
u2130:
	goto	l1851
	
l115:	
	line	18
	
l1851:	
	movf	(tx_char@data),w
	movwf	(25)	;volatile
	line	19
	
l116:	
	return
	opt stack 0
GLOBAL	__end_of_tx_char
	__end_of_tx_char:
	signat	_tx_char,4216
	global	_setup_uart

;; *************** function _setup_uart *****************
;; Defined at:
;;		line 2 in file "D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\uart_877a.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	2
global __ptext3
__ptext3:	;psect for function _setup_uart
psect	text3
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\uart_877a.h"
	line	2
	global	__size_of_setup_uart
	__size_of_setup_uart	equ	__end_of_setup_uart-_setup_uart
	
_setup_uart:	
;incstack = 0
	opt	stack 7
; Regs used in _setup_uart: [wreg]
	line	5
	
l2039:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1087/8)^080h,(1087)&7	;volatile
	line	6
	bsf	(1086/8)^080h,(1086)&7	;volatile
	line	7
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	8
	
l2041:	
	movlw	low(033h)
	movwf	(153)^080h	;volatile
	line	10
	
l2043:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7	;volatile
	line	11
	
l2045:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7	;volatile
	line	12
	
l2047:	
	bcf	(1220/8)^080h,(1220)&7	;volatile
	line	13
	
l2049:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7	;volatile
	line	14
	
l110:	
	return
	opt stack 0
GLOBAL	__end_of_setup_uart
	__end_of_setup_uart:
	signat	_setup_uart,88
	global	_setup_LCD

;; *************** function _setup_LCD *****************
;; Defined at:
;;		line 62 in file "D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\LCD.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCD_cmd
;;		_LCD_cmd_hf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\LCD.h"
	line	62
global __ptext4
__ptext4:	;psect for function _setup_LCD
psect	text4
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\LCD.h"
	line	62
	global	__size_of_setup_LCD
	__size_of_setup_LCD	equ	__end_of_setup_LCD-_setup_LCD
	
_setup_LCD:	
;incstack = 0
	opt	stack 5
; Regs used in _setup_LCD: [wreg+status,2+status,0+pclath+cstack]
	line	65
	
l1981:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	66
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	67
	
l1983:	
	bcf	(51/8),(51)&7	;volatile
	line	69
	
l1985:	
	bcf	(50/8),(50)&7	;volatile
	line	70
	
l1987:	
	opt asmopt_off
movlw	78
movwf	((??_setup_LCD+0)+0+1),f
	movlw	235
movwf	((??_setup_LCD+0)+0),f
u4527:
	decfsz	((??_setup_LCD+0)+0),f
	goto	u4527
	decfsz	((??_setup_LCD+0)+0+1),f
	goto	u4527
opt asmopt_on

	line	71
	
l1989:	
	movlw	low(030h)
	fcall	_LCD_cmd_hf
	line	72
	
l1991:	
	opt asmopt_off
movlw	26
movwf	((??_setup_LCD+0)+0+1),f
	movlw	248
movwf	((??_setup_LCD+0)+0),f
u4537:
	decfsz	((??_setup_LCD+0)+0),f
	goto	u4537
	decfsz	((??_setup_LCD+0)+0+1),f
	goto	u4537
	nop
opt asmopt_on

	line	73
	
l1993:	
	movlw	low(030h)
	fcall	_LCD_cmd_hf
	line	74
	
l1995:	
	opt asmopt_off
movlw	13
movwf	((??_setup_LCD+0)+0+1),f
	movlw	251
movwf	((??_setup_LCD+0)+0),f
u4547:
	decfsz	((??_setup_LCD+0)+0),f
	goto	u4547
	decfsz	((??_setup_LCD+0)+0+1),f
	goto	u4547
	nop2
opt asmopt_on

	line	75
	
l1997:	
	movlw	low(020h)
	fcall	_LCD_cmd_hf
	line	76
	
l1999:	
	opt asmopt_off
movlw	13
movwf	((??_setup_LCD+0)+0+1),f
	movlw	251
movwf	((??_setup_LCD+0)+0),f
u4557:
	decfsz	((??_setup_LCD+0)+0),f
	goto	u4557
	decfsz	((??_setup_LCD+0)+0+1),f
	goto	u4557
	nop2
opt asmopt_on

	line	77
	
l2001:	
	movlw	low(028h)
	fcall	_LCD_cmd
	line	78
	
l2003:	
	movlw	low(06h)
	fcall	_LCD_cmd
	line	79
	
l2005:	
	movlw	low(0Eh)
	fcall	_LCD_cmd
	line	80
	
l2007:	
	movlw	low(01h)
	fcall	_LCD_cmd
	line	83
	
l90:	
	return
	opt stack 0
GLOBAL	__end_of_setup_LCD
	__end_of_setup_LCD:
	signat	_setup_LCD,88
	global	_LCD_cmd_hf

;; *************** function _LCD_cmd_hf *****************
;; Defined at:
;;		line 26 in file "D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\LCD.h"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_setup_LCD
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	26
global __ptext5
__ptext5:	;psect for function _LCD_cmd_hf
psect	text5
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\LCD.h"
	line	26
	global	__size_of_LCD_cmd_hf
	__size_of_LCD_cmd_hf	equ	__end_of_LCD_cmd_hf-_LCD_cmd_hf
	
_LCD_cmd_hf:	
;incstack = 0
	opt	stack 5
; Regs used in _LCD_cmd_hf: [wreg+status,2+status,0+pclath+cstack]
	movwf	(LCD_cmd_hf@cmd)
	line	28
	
l1831:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7	;volatile
	line	29
	
l1833:	
	movlw	low(0Fh)
	movwf	(??_LCD_cmd_hf+0)+0
	movf	(??_LCD_cmd_hf+0)+0,w
	andwf	(6),f	;volatile
	line	30
	movf	(LCD_cmd_hf@cmd),w
	andlw	0F0h
	movwf	(??_LCD_cmd_hf+0)+0
	movf	(??_LCD_cmd_hf+0)+0,w
	iorwf	(6),f	;volatile
	line	31
	
l1835:	
	fcall	_pulse
	line	32
	
l75:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_cmd_hf
	__end_of_LCD_cmd_hf:
	signat	_LCD_cmd_hf,4216
	global	_read_ADC

;; *************** function _read_ADC *****************
;; Defined at:
;;		line 39 in file "D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\ADC.h"
;; Parameters:    Size  Location     Type
;;  ch              2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  a               2    6[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_init_ADC
;;		_set_ch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\ADC.h"
	line	39
global __ptext6
__ptext6:	;psect for function _read_ADC
psect	text6
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\ADC.h"
	line	39
	global	__size_of_read_ADC
	__size_of_read_ADC	equ	__end_of_read_ADC-_read_ADC
	
_read_ADC:	
;incstack = 0
	opt	stack 6
; Regs used in _read_ADC: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	41
	
l2059:	
	fcall	_init_ADC
	line	42
	
l2061:	
	movf	(read_ADC@ch+1),w
	movwf	(set_ch@channel+1)
	movf	(read_ADC@ch),w
	movwf	(set_ch@channel)
	fcall	_set_ch
	line	43
	
l2063:	
	opt asmopt_off
movlw	3
movwf	((??_read_ADC+0)+0+1),f
	movlw	151
movwf	((??_read_ADC+0)+0),f
u4567:
	decfsz	((??_read_ADC+0)+0),f
	goto	u4567
	decfsz	((??_read_ADC+0)+0+1),f
	goto	u4567
	nop2
opt asmopt_on

	line	44
	
l2065:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	45
	goto	l149
	
l150:	
	
l149:	
	btfsc	(250/8),(250)&7	;volatile
	goto	u2551
	goto	u2550
u2551:
	goto	l149
u2550:
	goto	l2067
	
l151:	
	line	46
	
l2067:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_read_ADC+0)+0
	clrf	(??_read_ADC+0)+0+1
	movf	0+(??_read_ADC+0)+0,w
	movwf	(read_ADC@a)
	movf	1+(??_read_ADC+0)+0,w
	movwf	(read_ADC@a+1)
	line	47
	
l2069:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		decf	((30)),w	;volatile
	btfss	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l2073
u2560:
	line	49
	
l2071:	
	movf	(read_ADC@a),w
	addlw	low(0100h)
	movwf	(read_ADC@a)
	movf	(read_ADC@a+1),w
	skipnc
	addlw	1
	addlw	high(0100h)
	movwf	1+(read_ADC@a)
	line	50
	goto	l2081
	line	51
	
l152:	
	
l2073:	
		movlw	2
	xorwf	((30)),w	;volatile
	btfss	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l2077
u2570:
	line	53
	
l2075:	
	movf	(read_ADC@a),w
	addlw	low(0200h)
	movwf	(read_ADC@a)
	movf	(read_ADC@a+1),w
	skipnc
	addlw	1
	addlw	high(0200h)
	movwf	1+(read_ADC@a)
	line	54
	goto	l2081
	line	55
	
l154:	
	
l2077:	
		movlw	3
	xorwf	((30)),w	;volatile
	btfss	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l2081
u2580:
	line	57
	
l2079:	
	movf	(read_ADC@a),w
	addlw	low(0300h)
	movwf	(read_ADC@a)
	movf	(read_ADC@a+1),w
	skipnc
	addlw	1
	addlw	high(0300h)
	movwf	1+(read_ADC@a)
	line	58
	goto	l2081
	line	59
	
l156:	
	goto	l2081
	line	60
	
l157:	
	goto	l2081
	
l155:	
	goto	l2081
	
l153:	
	line	61
	
l2081:	
	movf	(read_ADC@a+1),w
	movwf	(?_read_ADC+1)
	movf	(read_ADC@a),w
	movwf	(?_read_ADC)
	goto	l158
	
l2083:	
	line	62
	
l158:	
	return
	opt stack 0
GLOBAL	__end_of_read_ADC
	__end_of_read_ADC:
	signat	_read_ADC,4218
	global	_set_ch

;; *************** function _set_ch *****************
;; Defined at:
;;		line 16 in file "D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\ADC.h"
;; Parameters:    Size  Location     Type
;;  channel         2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_read_ADC
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	16
global __ptext7
__ptext7:	;psect for function _set_ch
psect	text7
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\ADC.h"
	line	16
	global	__size_of_set_ch
	__size_of_set_ch	equ	__end_of_set_ch-_set_ch
	
_set_ch:	
;incstack = 0
	opt	stack 6
; Regs used in _set_ch: [wreg+status,2+status,0+btemp+1]
	line	18
	
l1865:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(251/8),(251)&7	;volatile
	line	19
	bcf	(252/8),(252)&7	;volatile
	line	20
	bcf	(253/8),(253)&7	;volatile
	line	22
	
l1867:	
		movlw	4
	xorwf	((set_ch@channel)),w
iorwf	((set_ch@channel+1)),w
	btfsc	status,2
	goto	u2141
	goto	u2140
u2141:
	goto	l1871
u2140:
	
l1869:	
	movf	(set_ch@channel+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u2155
	movlw	05h
	subwf	(set_ch@channel),w
u2155:

	skipc
	goto	u2151
	goto	u2150
u2151:
	goto	l139
u2150:
	goto	l1871
	
l141:	
	
l1871:	
	movf	(set_ch@channel+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u2165
	movlw	08h
	subwf	(set_ch@channel),w
u2165:

	skipnc
	goto	u2161
	goto	u2160
u2161:
	goto	l139
u2160:
	line	24
	
l1873:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(253/8),(253)&7	;volatile
	line	25
	
l1875:	
	movf	(set_ch@channel),w
	addlw	low(-4)
	movwf	(set_ch@channel)
	movf	(set_ch@channel+1),w
	skipnc
	addlw	1
	addlw	high(-4)
	movwf	1+(set_ch@channel)
	line	26
	
l139:	
	line	27
		movlw	2
	xorwf	((set_ch@channel)),w
iorwf	((set_ch@channel+1)),w
	btfsc	status,2
	goto	u2171
	goto	u2170
u2171:
	goto	l1879
u2170:
	
l1877:	
	movf	(set_ch@channel+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u2185
	movlw	03h
	subwf	(set_ch@channel),w
u2185:

	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l142
u2180:
	goto	l1879
	
l144:	
	
l1879:	
	movf	(set_ch@channel+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u2195
	movlw	04h
	subwf	(set_ch@channel),w
u2195:

	skipnc
	goto	u2191
	goto	u2190
u2191:
	goto	l142
u2190:
	line	29
	
l1881:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(252/8),(252)&7	;volatile
	line	30
	
l1883:	
	movf	(set_ch@channel),w
	addlw	low(-2)
	movwf	(set_ch@channel)
	movf	(set_ch@channel+1),w
	skipnc
	addlw	1
	addlw	high(-2)
	movwf	1+(set_ch@channel)
	line	31
	
l142:	
	line	32
		decf	((set_ch@channel)),w
iorwf	((set_ch@channel+1)),w
	btfss	status,2
	goto	u2201
	goto	u2200
u2201:
	goto	l146
u2200:
	line	34
	
l1885:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(251/8),(251)&7	;volatile
	line	35
	
l1887:	
	movf	(set_ch@channel),w
	addlw	low(-1)
	movwf	(set_ch@channel)
	movf	(set_ch@channel+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(set_ch@channel)
	goto	l146
	line	36
	
l145:	
	line	38
	
l146:	
	return
	opt stack 0
GLOBAL	__end_of_set_ch
	__end_of_set_ch:
	signat	_set_ch,4216
	global	_init_ADC

;; *************** function _init_ADC *****************
;; Defined at:
;;		line 1 in file "D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\ADC.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_read_ADC
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	1
global __ptext8
__ptext8:	;psect for function _init_ADC
psect	text8
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\ADC.h"
	line	1
	global	__size_of_init_ADC
	__size_of_init_ADC	equ	__end_of_init_ADC-_init_ADC
	
_init_ADC:	
;incstack = 0
	opt	stack 6
; Regs used in _init_ADC: [wreg]
	line	3
	
l1853:	
	movlw	low(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	4
	
l1855:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(254/8),(254)&7	;volatile
	line	5
	
l1857:	
	bcf	(255/8),(255)&7	;volatile
	line	6
	
l1859:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1279/8)^080h,(1279)&7	;volatile
	line	7
	
l1861:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(248/8),(248)&7	;volatile
	line	8
	
l1863:	
	bcf	(250/8),(250)&7	;volatile
	line	15
	
l136:	
	return
	opt stack 0
GLOBAL	__end_of_init_ADC
	__end_of_init_ADC:
	signat	_init_ADC,88
	global	_LCD_write_int

;; *************** function _LCD_write_int *****************
;; Defined at:
;;		line 93 in file "D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\LCD.h"
;; Parameters:    Size  Location     Type
;;  a               2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  b               2    4[BANK0 ] int 
;;  c               2    2[BANK0 ] int 
;;  d               2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       6       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCD_data
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\LCD.h"
	line	93
global __ptext9
__ptext9:	;psect for function _LCD_write_int
psect	text9
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\LCD.h"
	line	93
	global	__size_of_LCD_write_int
	__size_of_LCD_write_int	equ	__end_of_LCD_write_int-_LCD_write_int
	
_LCD_write_int:	
;incstack = 0
	opt	stack 5
; Regs used in _LCD_write_int: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	96
	
l2017:	
	movf	(LCD_write_int@a+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u2455
	movlw	0Ah
	subwf	(LCD_write_int@a),w
u2455:

	skipnc
	goto	u2451
	goto	u2450
u2451:
	goto	l2021
u2450:
	line	98
	
l2019:	
	movf	(LCD_write_int@a),w
	addlw	030h
	fcall	_LCD_data
	line	99
	goto	l107
	line	100
	
l99:	
	
l2021:	
	movf	(LCD_write_int@a+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u2465
	movlw	0Ah
	subwf	(LCD_write_int@a),w
u2465:

	skipc
	goto	u2461
	goto	u2460
u2461:
	goto	l2027
u2460:
	
l2023:	
	movf	(LCD_write_int@a+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u2475
	movlw	064h
	subwf	(LCD_write_int@a),w
u2475:

	skipnc
	goto	u2471
	goto	u2470
u2471:
	goto	l2027
u2470:
	line	102
	
l2025:	
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(LCD_write_int@a+1),w
	movwf	(___awmod@dividend+1)
	movf	(LCD_write_int@a),w
	movwf	(___awmod@dividend)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_write_int@b+1)
	movf	(0+(?___awmod)),w
	movwf	(LCD_write_int@b)
	line	103
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(LCD_write_int@a+1),w
	movwf	(___awdiv@dividend+1)
	movf	(LCD_write_int@a),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(LCD_write_int@a+1)
	movf	(0+(?___awdiv)),w
	movwf	(LCD_write_int@a)
	line	104
	movf	(LCD_write_int@a),w
	addlw	030h
	fcall	_LCD_data
	line	105
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCD_write_int@b),w
	addlw	030h
	fcall	_LCD_data
	line	106
	goto	l107
	line	107
	
l101:	
	
l2027:	
	movf	(LCD_write_int@a+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u2485
	movlw	064h
	subwf	(LCD_write_int@a),w
u2485:

	skipc
	goto	u2481
	goto	u2480
u2481:
	goto	l2033
u2480:
	
l2029:	
	movf	(LCD_write_int@a+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(03h)^80h
	subwf	btemp+1,w
	skipz
	goto	u2495
	movlw	0E8h
	subwf	(LCD_write_int@a),w
u2495:

	skipnc
	goto	u2491
	goto	u2490
u2491:
	goto	l2033
u2490:
	line	109
	
l2031:	
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(LCD_write_int@a+1),w
	movwf	(___awmod@dividend+1)
	movf	(LCD_write_int@a),w
	movwf	(___awmod@dividend)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_write_int@b+1)
	movf	(0+(?___awmod)),w
	movwf	(LCD_write_int@b)
	line	110
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(LCD_write_int@a+1),w
	movwf	(___awdiv@dividend+1)
	movf	(LCD_write_int@a),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(LCD_write_int@a+1)
	movf	(0+(?___awdiv)),w
	movwf	(LCD_write_int@a)
	line	111
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(LCD_write_int@a+1),w
	movwf	(___awmod@dividend+1)
	movf	(LCD_write_int@a),w
	movwf	(___awmod@dividend)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_write_int@c+1)
	movf	(0+(?___awmod)),w
	movwf	(LCD_write_int@c)
	line	112
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(LCD_write_int@a+1),w
	movwf	(___awdiv@dividend+1)
	movf	(LCD_write_int@a),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(LCD_write_int@a+1)
	movf	(0+(?___awdiv)),w
	movwf	(LCD_write_int@a)
	line	113
	movf	(LCD_write_int@a),w
	addlw	030h
	fcall	_LCD_data
	line	114
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCD_write_int@c),w
	addlw	030h
	fcall	_LCD_data
	line	115
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCD_write_int@b),w
	addlw	030h
	fcall	_LCD_data
	line	117
	goto	l107
	line	118
	
l103:	
	
l2033:	
	movf	(LCD_write_int@a+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(03h)^80h
	subwf	btemp+1,w
	skipz
	goto	u2505
	movlw	0E8h
	subwf	(LCD_write_int@a),w
u2505:

	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l107
u2500:
	
l2035:	
	movf	(LCD_write_int@a+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(027h)^80h
	subwf	btemp+1,w
	skipz
	goto	u2515
	movlw	010h
	subwf	(LCD_write_int@a),w
u2515:

	skipnc
	goto	u2511
	goto	u2510
u2511:
	goto	l107
u2510:
	line	120
	
l2037:	
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(LCD_write_int@a+1),w
	movwf	(___awmod@dividend+1)
	movf	(LCD_write_int@a),w
	movwf	(___awmod@dividend)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_write_int@b+1)
	movf	(0+(?___awmod)),w
	movwf	(LCD_write_int@b)
	line	121
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(LCD_write_int@a+1),w
	movwf	(___awdiv@dividend+1)
	movf	(LCD_write_int@a),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(LCD_write_int@a+1)
	movf	(0+(?___awdiv)),w
	movwf	(LCD_write_int@a)
	line	122
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(LCD_write_int@a+1),w
	movwf	(___awmod@dividend+1)
	movf	(LCD_write_int@a),w
	movwf	(___awmod@dividend)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_write_int@c+1)
	movf	(0+(?___awmod)),w
	movwf	(LCD_write_int@c)
	line	123
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(LCD_write_int@a+1),w
	movwf	(___awdiv@dividend+1)
	movf	(LCD_write_int@a),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(LCD_write_int@a+1)
	movf	(0+(?___awdiv)),w
	movwf	(LCD_write_int@a)
	line	124
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(LCD_write_int@a+1),w
	movwf	(___awmod@dividend+1)
	movf	(LCD_write_int@a),w
	movwf	(___awmod@dividend)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_write_int@d+1)
	movf	(0+(?___awmod)),w
	movwf	(LCD_write_int@d)
	line	125
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(LCD_write_int@a+1),w
	movwf	(___awdiv@dividend+1)
	movf	(LCD_write_int@a),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(LCD_write_int@a+1)
	movf	(0+(?___awdiv)),w
	movwf	(LCD_write_int@a)
	line	126
	movf	(LCD_write_int@a),w
	addlw	030h
	fcall	_LCD_data
	line	127
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCD_write_int@d),w
	addlw	030h
	fcall	_LCD_data
	line	128
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCD_write_int@c),w
	addlw	030h
	fcall	_LCD_data
	line	129
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCD_write_int@b),w
	addlw	030h
	fcall	_LCD_data
	line	130
	goto	l107
	line	131
	
l105:	
	goto	l107
	line	132
	
l106:	
	goto	l107
	
l104:	
	goto	l107
	
l102:	
	goto	l107
	
l100:	
	line	134
	
l107:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_write_int
	__end_of_LCD_write_int:
	signat	_LCD_write_int,4216
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_write_int
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\awmod.c"
	line	6
global __ptext10
__ptext10:	;psect for function ___awmod
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l1933:	
	clrf	(___awmod@sign)
	line	14
	
l1935:	
	btfss	(___awmod@dividend+1),7
	goto	u2311
	goto	u2310
u2311:
	goto	l1941
u2310:
	line	15
	
l1937:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l1939:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l1941
	line	17
	
l460:	
	line	18
	
l1941:	
	btfss	(___awmod@divisor+1),7
	goto	u2321
	goto	u2320
u2321:
	goto	l1945
u2320:
	line	19
	
l1943:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l1945
	
l461:	
	line	20
	
l1945:	
	movf	((___awmod@divisor)),w
iorwf	((___awmod@divisor+1)),w
	btfsc	status,2
	goto	u2331
	goto	u2330
u2331:
	goto	l1963
u2330:
	line	21
	
l1947:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l1953
	
l464:	
	line	23
	
l1949:	
	movlw	01h
	
u2345:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2345
	line	24
	
l1951:	
	movlw	low(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l1953
	line	25
	
l463:	
	line	22
	
l1953:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l1949
u2350:
	goto	l1955
	
l465:	
	goto	l1955
	line	26
	
l466:	
	line	27
	
l1955:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2365
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2365:
	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l1959
u2360:
	line	28
	
l1957:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l1959
	
l467:	
	line	29
	
l1959:	
	movlw	01h
	
u2375:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2375
	line	30
	
l1961:	
	movlw	01h
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2381
	goto	u2380
u2381:
	goto	l1955
u2380:
	goto	l1963
	
l468:	
	goto	l1963
	line	31
	
l462:	
	line	32
	
l1963:	
	movf	((___awmod@sign)),w
	btfsc	status,2
	goto	u2391
	goto	u2390
u2391:
	goto	l1967
u2390:
	line	33
	
l1965:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l1967
	
l469:	
	line	34
	
l1967:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	goto	l470
	
l1969:	
	line	35
	
l470:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_write_int
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\awdiv.c"
	line	6
global __ptext11
__ptext11:	;psect for function ___awdiv
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l1889:	
	clrf	(___awdiv@sign)
	line	15
	
l1891:	
	btfss	(___awdiv@divisor+1),7
	goto	u2211
	goto	u2210
u2211:
	goto	l1897
u2210:
	line	16
	
l1893:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l1895:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l1897
	line	18
	
l447:	
	line	19
	
l1897:	
	btfss	(___awdiv@dividend+1),7
	goto	u2221
	goto	u2220
u2221:
	goto	l1903
u2220:
	line	20
	
l1899:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l1901:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l1903
	line	22
	
l448:	
	line	23
	
l1903:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l1905:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u2231
	goto	u2230
u2231:
	goto	l1925
u2230:
	line	25
	
l1907:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l1913
	
l451:	
	line	27
	
l1909:	
	movlw	01h
	
u2245:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2245
	line	28
	
l1911:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1913
	line	29
	
l450:	
	line	26
	
l1913:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l1909
u2250:
	goto	l1915
	
l452:	
	goto	l1915
	line	30
	
l453:	
	line	31
	
l1915:	
	movlw	01h
	
u2265:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2265
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2275
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2275:
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l1921
u2270:
	line	33
	
l1917:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l1919:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1921
	line	35
	
l454:	
	line	36
	
l1921:	
	movlw	01h
	
u2285:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2285
	line	37
	
l1923:	
	movlw	01h
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l1915
u2290:
	goto	l1925
	
l455:	
	goto	l1925
	line	38
	
l449:	
	line	39
	
l1925:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u2301
	goto	u2300
u2301:
	goto	l1929
u2300:
	line	40
	
l1927:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1929
	
l456:	
	line	41
	
l1929:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	goto	l457
	
l1931:	
	line	42
	
l457:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_LCD_write

;; *************** function _LCD_write *****************
;; Defined at:
;;		line 84 in file "D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\LCD.h"
;; Parameters:    Size  Location     Type
;;  a               2    5[COMMON] PTR unsigned char 
;;		 -> STR_98(4), STR_97(4), STR_95(4), STR_94(16), 
;;		 -> STR_92(4), STR_91(16), STR_89(3), STR_88(16), 
;;		 -> STR_86(4), STR_85(16), STR_83(4), STR_82(16), 
;;		 -> STR_80(4), STR_79(16), STR_77(4), STR_76(16), 
;;		 -> STR_74(4), STR_73(16), STR_71(4), STR_70(16), 
;;		 -> STR_68(4), STR_67(16), STR_65(4), STR_64(16), 
;;		 -> STR_62(4), STR_61(16), STR_59(4), STR_58(16), 
;;		 -> STR_56(4), STR_55(16), STR_53(4), STR_52(16), 
;;		 -> STR_50(4), STR_49(16), STR_47(4), STR_46(16), 
;;		 -> STR_44(4), STR_43(16), STR_41(4), STR_40(16), 
;;		 -> STR_38(4), STR_37(16), STR_35(3), STR_34(10), 
;;		 -> STR_32(3), STR_31(15), STR_29(3), STR_28(13), 
;;		 -> STR_26(3), STR_25(18), STR_23(3), STR_22(16), 
;;		 -> STR_20(3), STR_19(11), STR_17(3), STR_16(15), 
;;		 -> STR_14(3), STR_13(13), STR_11(3), STR_10(12), 
;;		 -> STR_8(3), STR_7(6), STR_5(3), STR_4(3), 
;;		 -> STR_3(3), STR_2(12), STR_1(13), 
;; Auto vars:     Size  Location     Type
;;  g               2   10[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCD_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\LCD.h"
	line	84
global __ptext12
__ptext12:	;psect for function _LCD_write
psect	text12
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\LCD.h"
	line	84
	global	__size_of_LCD_write
	__size_of_LCD_write	equ	__end_of_LCD_write-_LCD_write
	
_LCD_write:	
;incstack = 0
	opt	stack 5
; Regs used in _LCD_write: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	86
	
l2009:	
	clrf	(LCD_write@g)
	clrf	(LCD_write@g+1)
	line	87
	goto	l2015
	
l94:	
	line	89
	
l2011:	
	movf	(LCD_write@g),w
	addwf	(LCD_write@a),w
	movwf	(??_LCD_write+1)+0
	movf	(LCD_write@a+1),w
	movwf	(??_LCD_write+0)+0
	skipnc
	incf	(??_LCD_write+0)+0,f
	btfss	(LCD_write@g),7
	goto	u2420
	decf	(??_LCD_write+0)+0,f
u2420:
	movf	(??_LCD_write+0)+0,w
	movwf	0+((??_LCD_write+1)+0)+1
	movf	1+(??_LCD_write+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	0+(??_LCD_write+1)+0,w
	movwf	fsr0
	fcall	stringtab
	fcall	_LCD_data
	line	90
	
l2013:	
	movlw	01h
	addwf	(LCD_write@g),f
	skipnc
	incf	(LCD_write@g+1),f
	movlw	0
	addwf	(LCD_write@g+1),f
	goto	l2015
	line	91
	
l93:	
	line	87
	
l2015:	
	movf	(LCD_write@g),w
	addwf	(LCD_write@a),w
	movwf	(??_LCD_write+1)+0
	movf	(LCD_write@a+1),w
	movwf	(??_LCD_write+0)+0
	skipnc
	incf	(??_LCD_write+0)+0,f
	btfss	(LCD_write@g),7
	goto	u2430
	decf	(??_LCD_write+0)+0,f
u2430:
	movf	(??_LCD_write+0)+0,w
	movwf	0+((??_LCD_write+1)+0)+1
	movf	1+(??_LCD_write+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	0+(??_LCD_write+1)+0,w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l2011
u2440:
	goto	l96
	
l95:	
	line	92
	
l96:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_write
	__end_of_LCD_write:
	signat	_LCD_write,4216
	global	_LCD_data

;; *************** function _LCD_data *****************
;; Defined at:
;;		line 13 in file "D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\LCD.h"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_LCD_write
;;		_LCD_write_int
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	line	13
global __ptext13
__ptext13:	;psect for function _LCD_data
psect	text13
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\LCD.h"
	line	13
	global	__size_of_LCD_data
	__size_of_LCD_data	equ	__end_of_LCD_data-_LCD_data
	
_LCD_data:	
;incstack = 0
	opt	stack 5
; Regs used in _LCD_data: [wreg+status,2+status,0+pclath+cstack]
	movwf	(LCD_data@data)
	line	15
	
l1819:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7	;volatile
	line	16
	
l1821:	
	movlw	low(0Fh)
	movwf	(??_LCD_data+0)+0
	movf	(??_LCD_data+0)+0,w
	andwf	(6),f	;volatile
	line	17
	movf	(LCD_data@data),w
	andlw	0F0h
	movwf	(??_LCD_data+0)+0
	movf	(??_LCD_data+0)+0,w
	iorwf	(6),f	;volatile
	line	18
	
l1823:	
	fcall	_pulse
	line	21
	
l1825:	
	movlw	low(0Fh)
	movwf	(??_LCD_data+0)+0
	movf	(??_LCD_data+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	22
	
l1827:	
	movf	(LCD_data@data),w
	andlw	0Fh
	movwf	(??_LCD_data+0)+0
	movlw	(04h)-1
u2115:
	clrc
	rlf	(??_LCD_data+0)+0,f
	addlw	-1
	skipz
	goto	u2115
	clrc
	rlf	(??_LCD_data+0)+0,w
	movwf	(??_LCD_data+1)+0
	movf	(??_LCD_data+1)+0,w
	iorwf	(6),f	;volatile
	line	23
	
l1829:	
	fcall	_pulse
	line	25
	
l72:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_data
	__end_of_LCD_data:
	signat	_LCD_data,4216
	global	_LCD_Set_Line

;; *************** function _LCD_Set_Line *****************
;; Defined at:
;;		line 45 in file "D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\LCD.h"
;; Parameters:    Size  Location     Type
;;  line            2    5[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCD_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	45
global __ptext14
__ptext14:	;psect for function _LCD_Set_Line
psect	text14
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\LCD.h"
	line	45
	global	__size_of_LCD_Set_Line
	__size_of_LCD_Set_Line	equ	__end_of_LCD_Set_Line-_LCD_Set_Line
	
_LCD_Set_Line:	
;incstack = 0
	opt	stack 5
; Regs used in _LCD_Set_Line: [wreg+status,2+status,0+pclath+cstack]
	line	47
	
l1971:	
		decf	((LCD_Set_Line@line)),w
iorwf	((LCD_Set_Line@line+1)),w
	btfss	status,2
	goto	u2401
	goto	u2400
u2401:
	goto	l1975
u2400:
	line	49
	
l1973:	
	movlw	low(080h)
	fcall	_LCD_cmd
	line	51
	goto	l84
	line	52
	
l81:	
	
l1975:	
		movlw	2
	xorwf	((LCD_Set_Line@line)),w
iorwf	((LCD_Set_Line@line+1)),w
	btfss	status,2
	goto	u2411
	goto	u2410
u2411:
	goto	l84
u2410:
	line	54
	
l1977:	
	movlw	low(0C0h)
	fcall	_LCD_cmd
	goto	l84
	line	55
	
l83:	
	goto	l84
	line	56
	
l82:	
	
l84:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Set_Line
	__end_of_LCD_Set_Line:
	signat	_LCD_Set_Line,4216
	global	_LCD_CLR

;; *************** function _LCD_CLR *****************
;; Defined at:
;;		line 57 in file "D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\LCD.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCD_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	57
global __ptext15
__ptext15:	;psect for function _LCD_CLR
psect	text15
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\LCD.h"
	line	57
	global	__size_of_LCD_CLR
	__size_of_LCD_CLR	equ	__end_of_LCD_CLR-_LCD_CLR
	
_LCD_CLR:	
;incstack = 0
	opt	stack 5
; Regs used in _LCD_CLR: [wreg+status,2+status,0+pclath+cstack]
	line	59
	
l1979:	
	movlw	low(01h)
	fcall	_LCD_cmd
	line	60
	movlw	low(080h)
	fcall	_LCD_cmd
	line	61
	
l87:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_CLR
	__end_of_LCD_CLR:
	signat	_LCD_CLR,88
	global	_LCD_cmd

;; *************** function _LCD_cmd *****************
;; Defined at:
;;		line 33 in file "D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\LCD.h"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_LCD_Set_Line
;;		_LCD_CLR
;;		_setup_LCD
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	33
global __ptext16
__ptext16:	;psect for function _LCD_cmd
psect	text16
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\LCD.h"
	line	33
	global	__size_of_LCD_cmd
	__size_of_LCD_cmd	equ	__end_of_LCD_cmd-_LCD_cmd
	
_LCD_cmd:	
;incstack = 0
	opt	stack 5
; Regs used in _LCD_cmd: [wreg+status,2+status,0+pclath+cstack]
	movwf	(LCD_cmd@cmd)
	line	35
	
l1837:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7	;volatile
	line	36
	
l1839:	
	movlw	low(0Fh)
	movwf	(??_LCD_cmd+0)+0
	movf	(??_LCD_cmd+0)+0,w
	andwf	(6),f	;volatile
	line	37
	movf	(LCD_cmd@cmd),w
	andlw	0F0h
	movwf	(??_LCD_cmd+0)+0
	movf	(??_LCD_cmd+0)+0,w
	iorwf	(6),f	;volatile
	line	38
	
l1841:	
	fcall	_pulse
	line	41
	
l1843:	
	movlw	low(0Fh)
	movwf	(??_LCD_cmd+0)+0
	movf	(??_LCD_cmd+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	42
	
l1845:	
	movf	(LCD_cmd@cmd),w
	andlw	0Fh
	movwf	(??_LCD_cmd+0)+0
	movlw	(04h)-1
u2125:
	clrc
	rlf	(??_LCD_cmd+0)+0,f
	addlw	-1
	skipz
	goto	u2125
	clrc
	rlf	(??_LCD_cmd+0)+0,w
	movwf	(??_LCD_cmd+1)+0
	movf	(??_LCD_cmd+1)+0,w
	iorwf	(6),f	;volatile
	line	43
	
l1847:	
	fcall	_pulse
	line	44
	
l78:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_cmd
	__end_of_LCD_cmd:
	signat	_LCD_cmd,4216
	global	_pulse

;; *************** function _pulse *****************
;; Defined at:
;;		line 5 in file "D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\LCD.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_data
;;		_LCD_cmd_hf
;;		_LCD_cmd
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	line	5
global __ptext17
__ptext17:	;psect for function _pulse
psect	text17
	file	"D:\Shirish\Collage_Projects\2018_19\1053_hand_gesture_to_voice\code\LCD.h"
	line	5
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
;incstack = 0
	opt	stack 5
; Regs used in _pulse: [wreg]
	line	7
	
l1813:	
	opt asmopt_off
movlw	3
movwf	((??_pulse+0)+0+1),f
	movlw	151
movwf	((??_pulse+0)+0),f
u4577:
	decfsz	((??_pulse+0)+0),f
	goto	u4577
	decfsz	((??_pulse+0)+0+1),f
	goto	u4577
	nop2
opt asmopt_on

	line	8
	
l1815:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7	;volatile
	line	9
	opt asmopt_off
movlw	3
movwf	((??_pulse+0)+0+1),f
	movlw	151
movwf	((??_pulse+0)+0),f
u4587:
	decfsz	((??_pulse+0)+0),f
	goto	u4587
	decfsz	((??_pulse+0)+0+1),f
	goto	u4587
	nop2
opt asmopt_on

	line	10
	
l1817:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7	;volatile
	line	12
	
l69:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
	signat	_pulse,88
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
