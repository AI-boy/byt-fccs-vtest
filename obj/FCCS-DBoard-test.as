opt subtitle "Microchip Technology Omniscient Code Generator (PRO mode) build 55553"

opt pagewidth 120

	opt pm

	processor	16F1946
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
pushw	macro
	movwi fsr1++
	endm
popw	macro
	moviw --fsr1
	endm
indf	equ	0
indf0	equ	0
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1946.h"
TOSH equ 0FEFh ;# 
DABS 1,800,16	;_uart1_tx_buf
DABS 1,672,80	;_uart1_tx_buf
DABS 1,620,4	;_uart1_tx_buf
DABS 1,544,76	;_uart1_rx_buf
DABS 1,472,24	;_uart1_rx_buf
	FNCALL	_main,_application_init
	FNCALL	_main,_delay_ms
	FNCALL	_main,_driver_init
	FNCALL	_main,_handle_uart1_buf
	FNCALL	_main,_handle_uart2_buf
	FNCALL	_main,_middle_init
	FNCALL	_main,_read_node
	FNCALL	_main,_write_node
	FNCALL	_middle_init,_get_slave_address
	FNCALL	_handle_uart2_buf,_uart2_send_nbyte
	FNCALL	_uart2_send_nbyte,_uart2_send_byte
	FNCALL	_handle_uart1_buf,_uart1_send_nbyte
	FNCALL	_uart1_send_nbyte,_uart1_send_byte
	FNCALL	_driver_init,_init_input
	FNCALL	_driver_init,_init_interrupt
	FNCALL	_driver_init,_init_led
	FNCALL	_driver_init,_init_osc
	FNCALL	_driver_init,_init_output
	FNCALL	_driver_init,_init_port
	FNCALL	_driver_init,_init_timer1
	FNCALL	_driver_init,_init_uart1
	FNCALL	_driver_init,_init_uart2
	FNROOT	_main
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_slave_address
	global	_uart1_receive_byte_count
	global	_uart1_receive_flag
	global	_uart1_time_count
	global	_uart2_rx_buf
	global	__sys_tick_count
	global	_input_node_level
	global	_read_input_node_tick
	global	_read_input_node_event
	global	_uart2_receive_byte_count
	global	_uart2_receive_flag
	global	_uart2_time_count
	global	_uart2_tx_buf
	global	_uart1_rx_buf
	global	_uart1_tx_buf
	global	_T1CON
_T1CON	set	0x18
	global	_TMR1H
_TMR1H	set	0x17
	global	_TMR1L
_TMR1L	set	0x16
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_RA0
_RA0	set	0x60
	global	_RA1
_RA1	set	0x61
	global	_RA2
_RA2	set	0x62
	global	_RA3
_RA3	set	0x63
	global	_RC1IF
_RC1IF	set	0x8D
	global	_RC2IF
_RC2IF	set	0xA5
	global	_RE0
_RE0	set	0x80
	global	_RE1
_RE1	set	0x81
	global	_RE2
_RE2	set	0x82
	global	_RE3
_RE3	set	0x83
	global	_RE4
_RE4	set	0x84
	global	_RE5
_RE5	set	0x85
	global	_RE6
_RE6	set	0x86
	global	_RE7
_RE7	set	0x87
	global	_TMR1IF
_TMR1IF	set	0x88
	global	_TMR1ON
_TMR1ON	set	0xC0
	global	_OSCCON
_OSCCON	set	0x99
	global	_TRISAbits
_TRISAbits	set	0x8C
	global	_TRISBbits
_TRISBbits	set	0x8D
	global	_TRISCbits
_TRISCbits	set	0x8E
	global	_TRISDbits
_TRISDbits	set	0x8F
	global	_TRISEbits
_TRISEbits	set	0x90
	global	_WDTCONbits
_WDTCONbits	set	0x97
	global	_RC1IE
_RC1IE	set	0x48D
	global	_RC2IE
_RC2IE	set	0x4A5
	global	_RCIE
_RCIE	set	0x48D
	global	_TMR1IE
_TMR1IE	set	0x488
	global	_LATCbits
_LATCbits	set	0x10E
	global	_LATA4
_LATA4	set	0x864
	global	_LATA5
_LATA5	set	0x865
	global	_LATB0
_LATB0	set	0x868
	global	_LATB1
_LATB1	set	0x869
	global	_LATB2
_LATB2	set	0x86A
	global	_LATB3
_LATB3	set	0x86B
	global	_LATB4
_LATB4	set	0x86C
	global	_LATB5
_LATB5	set	0x86D
	global	_LATD0
_LATD0	set	0x878
	global	_LATD1
_LATD1	set	0x879
	global	_LATD2
_LATD2	set	0x87A
	global	_LATD3
_LATD3	set	0x87B
	global	_LATD4
_LATD4	set	0x87C
	global	_LATD5
_LATD5	set	0x87D
	global	_LATD6
_LATD6	set	0x87E
	global	_LATD7
_LATD7	set	0x87F
	global	_ANSELA
_ANSELA	set	0x18C
	global	_ANSELE
_ANSELE	set	0x190
	global	_BAUD1CON
_BAUD1CON	set	0x19F
	global	_RC1REG
_RC1REG	set	0x199
	global	_RC1STA
_RC1STA	set	0x19D
	global	_RC1STAbits
_RC1STAbits	set	0x19D
	global	_SP1BRGH
_SP1BRGH	set	0x19C
	global	_SP1BRGL
_SP1BRGL	set	0x19B
	global	_TX1REG
_TX1REG	set	0x19A
	global	_TX1STA
_TX1STA	set	0x19E
	global	_TX1STAbits
_TX1STAbits	set	0x19E
	global	_RF1
_RF1	set	0x1461
	global	_RF2
_RF2	set	0x1462
	global	_RF3
_RF3	set	0x1463
	global	_RF4
_RF4	set	0x1464
	global	_RF5
_RF5	set	0x1465
	global	_RF6
_RF6	set	0x1466
	global	_RF7
_RF7	set	0x1467
	global	_RG4
_RG4	set	0x146C
	global	_TRISFbits
_TRISFbits	set	0x30C
	global	_TRISGbits
_TRISGbits	set	0x30D
	global	_LATGbits
_LATGbits	set	0x38D
	global	_ANSELF
_ANSELF	set	0x40C
	global	_ANSELG
_ANSELG	set	0x40D
	global	_BAUD2CON
_BAUD2CON	set	0x497
	global	_RC2REG
_RC2REG	set	0x491
	global	_RC2STA
_RC2STA	set	0x495
	global	_RC2STAbits
_RC2STAbits	set	0x495
	global	_SP2BRGH
_SP2BRGH	set	0x494
	global	_SP2BRGL
_SP2BRGL	set	0x493
	global	_TX2REG
_TX2REG	set	0x492
	global	_TX2STA
_TX2STA	set	0x496
	global	_TX2STAbits
_TX2STAbits	set	0x496
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
; #config settings
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_IESO$ON
__CFG_IESO$ON equ 0x0
global __CFG_FOSC$INTOSC
__CFG_FOSC$INTOSC equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_WDTE$ON
__CFG_WDTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_PWRTE$OFF
__CFG_PWRTE$OFF equ 0x0
global __CFG_CLKOUTEN$OFF
__CFG_CLKOUTEN$OFF equ 0x0
global __CFG_PLLEN$OFF
__CFG_PLLEN$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_BORV$LO
__CFG_BORV$LO equ 0x0
global __CFG_VCAPEN$OFF
__CFG_VCAPEN$OFF equ 0x0
global __CFG_LVP$ON
__CFG_LVP$ON equ 0x0
	file	"FCCS-DBoard-test.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
DABS 1,8488,0,_uart1_rx_buf	;BIGRAM
DABS 1,8588,0,_uart1_tx_buf	;BIGRAM
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_slave_address:
       ds      1

_uart1_receive_byte_count:
       ds      1

_uart1_receive_flag:
       ds      1

_uart1_time_count:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_uart2_rx_buf:
       ds      32

__sys_tick_count:
       ds      2

_input_node_level:
       ds      2

_read_input_node_tick:
       ds      2

_read_input_node_event:
       ds      1

_uart2_receive_byte_count:
       ds      1

_uart2_receive_flag:
       ds      1

_uart2_time_count:
       ds      1

_uart2_tx_buf:
       ds      32

	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR0 containing the base address, and
;	btemp/btemp+1 has the size to clear
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	movlw	1
	subwf	btemp,f
	movlw	0
	subwfb btemp+1,f
	movf btemp+1,w
	iorwf btemp,w
	skipz
	goto clrloop0	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to BIGRAM
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBIGRAM
	movlw	low(__pbssBIGRAM)
	movwf	fsr0l
	movlw	high(__pbssBIGRAM)
	movwf	fsr0h
	movlw	low(0C8h)
	movwf	btemp
	movlw	high(0C8h)
	movwf	btemp+1
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	low(04Ah)
	movwf	btemp
	movlw	high(04Ah)
	movwf	btemp+1
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_init_timer1:	; 0 bytes @ 0x0
?_init_uart1:	; 0 bytes @ 0x0
?_init_uart2:	; 0 bytes @ 0x0
?_init_output:	; 0 bytes @ 0x0
?_write_node:	; 0 bytes @ 0x0
?_handle_uart1_buf:	; 0 bytes @ 0x0
?_handle_uart2_buf:	; 0 bytes @ 0x0
?_get_slave_address:	; 0 bytes @ 0x0
?_init_input:	; 0 bytes @ 0x0
?_read_node:	; 0 bytes @ 0x0
?_isr:	; 0 bytes @ 0x0
??_isr:	; 0 bytes @ 0x0
?_init_interrupt:	; 0 bytes @ 0x0
?_init_led:	; 0 bytes @ 0x0
?_init_osc:	; 0 bytes @ 0x0
?_init_port:	; 0 bytes @ 0x0
?_driver_init:	; 0 bytes @ 0x0
?_middle_init:	; 0 bytes @ 0x0
?_application_init:	; 0 bytes @ 0x0
?_uart1_send_byte:	; 0 bytes @ 0x0
?_uart2_send_byte:	; 0 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	ds	2
	global	isr@r1_data
isr@r1_data:	; 1 bytes @ 0x2
	ds	1
	global	isr@r2_data
isr@r2_data:	; 1 bytes @ 0x3
	ds	1
??_init_timer1:	; 0 bytes @ 0x4
??_init_uart1:	; 0 bytes @ 0x4
??_init_uart2:	; 0 bytes @ 0x4
??_init_output:	; 0 bytes @ 0x4
??_write_node:	; 0 bytes @ 0x4
?_delay_ms:	; 0 bytes @ 0x4
??_get_slave_address:	; 0 bytes @ 0x4
??_init_input:	; 0 bytes @ 0x4
??_read_node:	; 0 bytes @ 0x4
??_init_interrupt:	; 0 bytes @ 0x4
??_init_led:	; 0 bytes @ 0x4
??_init_osc:	; 0 bytes @ 0x4
??_init_port:	; 0 bytes @ 0x4
??_driver_init:	; 0 bytes @ 0x4
??_application_init:	; 0 bytes @ 0x4
??_uart1_send_byte:	; 0 bytes @ 0x4
??_uart2_send_byte:	; 0 bytes @ 0x4
	global	get_slave_address@switch_tmp
get_slave_address@switch_tmp:	; 1 bytes @ 0x4
	global	uart1_send_byte@data
uart1_send_byte@data:	; 1 bytes @ 0x4
	global	uart2_send_byte@data
uart2_send_byte@data:	; 1 bytes @ 0x4
	global	delay_ms@count
delay_ms@count:	; 2 bytes @ 0x4
	ds	1
??_uart1_send_nbyte:	; 0 bytes @ 0x5
??_uart2_send_nbyte:	; 0 bytes @ 0x5
??_handle_uart1_buf:	; 0 bytes @ 0x5
??_middle_init:	; 0 bytes @ 0x5
	global	uart2_send_nbyte@data
uart2_send_nbyte@data:	; 1 bytes @ 0x5
	ds	1
??_delay_ms:	; 0 bytes @ 0x6
??_handle_uart2_buf:	; 0 bytes @ 0x6
??_main:	; 0 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_uart1_send_nbyte:	; 0 bytes @ 0x0
?_uart2_send_nbyte:	; 0 bytes @ 0x0
	global	delay_ms@i
delay_ms@i:	; 2 bytes @ 0x0
	global	read_node@input_tmp
read_node@input_tmp:	; 2 bytes @ 0x0
	global	write_node@output_tmp
write_node@output_tmp:	; 2 bytes @ 0x0
	global	uart1_send_nbyte@data
uart1_send_nbyte@data:	; 2 bytes @ 0x0
	global	uart2_send_nbyte@size
uart2_send_nbyte@size:	; 2 bytes @ 0x0
	ds	2
	global	delay_ms@j
delay_ms@j:	; 2 bytes @ 0x2
	global	uart1_send_nbyte@size
uart1_send_nbyte@size:	; 2 bytes @ 0x2
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         78
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      10
;!    BANK0            80      4      78
;!    BANK1            80      0       0
;!    BANK2            80      0       0
;!    BANK3            56      0       0
;!    BANK4             0      0       0
;!    BANK5             0      0       0
;!    BANK6             0      0       0

;!
;!Pointer List with Targets:
;!
;!    uart2_send_nbyte@data	PTR unsigned char  size(1) Largest target is 32
;!		 -> uart2_tx_buf(BANK0[32]), 
;!
;!    uart1_send_nbyte@data	PTR unsigned char  size(2) Largest target is 100
;!		 -> uart1_tx_buf(BIGRAM[100]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_delay_ms
;!    _main->_handle_uart1_buf
;!    _main->_read_node
;!    _main->_write_node
;!    _middle_init->_get_slave_address
;!    _handle_uart2_buf->_uart2_send_nbyte
;!    _uart2_send_nbyte->_uart2_send_byte
;!    _uart1_send_nbyte->_uart1_send_byte
;!
;!Critical Paths under _isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_delay_ms
;!    _handle_uart2_buf->_uart2_send_nbyte
;!    _handle_uart1_buf->_uart1_send_nbyte
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _isr in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _isr in BANK6
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    1305
;!                   _application_init
;!                           _delay_ms
;!                        _driver_init
;!                   _handle_uart1_buf
;!                   _handle_uart2_buf
;!                        _middle_init
;!                          _read_node
;!                         _write_node
;! ---------------------------------------------------------------------------------
;! (1) _write_node                                           4     4      0     502
;!                                              4 COMMON     2     2      0
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _read_node                                            4     4      0      82
;!                                              4 COMMON     2     2      0
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _middle_init                                          0     0      0     115
;!                  _get_slave_address
;! ---------------------------------------------------------------------------------
;! (2) _get_slave_address                                    1     1      0     115
;!                                              4 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _handle_uart2_buf                                     0     0      0     185
;!                   _uart2_send_nbyte
;! ---------------------------------------------------------------------------------
;! (2) _uart2_send_nbyte                                     3     1      2     185
;!                                              5 COMMON     1     1      0
;!                                              0 BANK0      2     0      2
;!                    _uart2_send_byte
;! ---------------------------------------------------------------------------------
;! (3) _uart2_send_byte                                      1     1      0      22
;!                                              4 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _handle_uart1_buf                                     1     1      0     220
;!                                              5 COMMON     1     1      0
;!                   _uart1_send_nbyte
;! ---------------------------------------------------------------------------------
;! (2) _uart1_send_nbyte                                     4     0      4     220
;!                                              0 BANK0      4     0      4
;!                    _uart1_send_byte
;! ---------------------------------------------------------------------------------
;! (3) _uart1_send_byte                                      1     1      0      22
;!                                              4 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _driver_init                                          0     0      0       0
;!                         _init_input
;!                     _init_interrupt
;!                           _init_led
;!                           _init_osc
;!                        _init_output
;!                          _init_port
;!                        _init_timer1
;!                         _init_uart1
;!                         _init_uart2
;! ---------------------------------------------------------------------------------
;! (2) _init_uart2                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_uart1                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_timer1                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_port                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_output                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_osc                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_led                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_interrupt                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_input                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _delay_ms                                             6     4      2     201
;!                                              4 COMMON     2     0      2
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _application_init                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _isr                                                  4     4      0      46
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _application_init
;!   _delay_ms
;!   _driver_init
;!     _init_input
;!     _init_interrupt
;!     _init_led
;!     _init_osc
;!     _init_output
;!     _init_port
;!     _init_timer1
;!     _init_uart1
;!     _init_uart2
;!   _handle_uart1_buf
;!     _uart1_send_nbyte
;!       _uart1_send_byte
;!   _handle_uart2_buf
;!     _uart2_send_nbyte
;!       _uart2_send_byte
;!   _middle_init
;!     _get_slave_address
;!   _read_node
;!   _write_node
;!
;! _isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             1F0      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      6       A       2       71.4%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0      58       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50      4      4E       6       97.5%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BITBANK1            50      0       0       7        0.0%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BANK1               50      0       0       8        0.0%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BITBANK2            50      0       0       9        0.0%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BANK2               50      0       0      10        0.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BITBANK3            50      0       0      11        0.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!BANK3               38      0       0      12        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BITBANK4            50      0       0      13        0.0%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BANK4                0      0       0      14        0.0%
;!BITBANK5            50      0       0      15        0.0%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BANK5                0      0       0      16        0.0%
;!BITBANK6            10      0       0      17        0.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BANK6                0      0       0      18        0.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!DATA                 0      0      58      19        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 200 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  279[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_application_init
;;		_delay_ms
;;		_driver_init
;;		_handle_uart1_buf
;;		_handle_uart2_buf
;;		_middle_init
;;		_read_node
;;		_write_node
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\main.c"
	line	200
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\main.c"
	line	200
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 12
; Regs used in _main: [wreg-fsr1h+status,2+status,0+btemp+1+pclath+cstack]
	line	202
	
l1728:	
;main.c: 202: delay_ms(100);
	movlw	064h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	203
;main.c: 203: driver_init();
	fcall	_driver_init
	line	204
;main.c: 204: middle_init();
	fcall	_middle_init
	line	205
	
l1730:	
;main.c: 205: application_init();
	fcall	_application_init
	line	207
;main.c: 207: while(1)
	
l280:	
	line	209
# 209 "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\main.c"
clrwdt ;# 
psect	maintext
	line	211
;main.c: 211: if(read_input_node_event==0x01)
	movlb 0	; select bank0
	decf	(_read_input_node_event),w
	skipz
	goto	u1961
	goto	u1960
u1961:
	goto	l1738
u1960:
	line	213
	
l1732:	
;main.c: 212: {
;main.c: 213: read_node();
	fcall	_read_node
	line	214
	
l1734:	
;main.c: 214: write_node();
	fcall	_write_node
	line	215
	
l1736:	
;main.c: 215: read_input_node_event=0x00;
	movlb 0	; select bank0
	clrf	(_read_input_node_event)
	line	218
	
l1738:	
;main.c: 216: }
;main.c: 218: if(RC2STAbits.FERR || RC2STAbits.OERR)
	movlb 9	; select bank9
	btfsc	(1173)^0480h,2	;volatile
	goto	u1971
	goto	u1970
u1971:
	goto	l284
u1970:
	
l1740:	
	btfss	(1173)^0480h,1	;volatile
	goto	u1981
	goto	u1980
u1981:
	goto	l282
u1980:
	
l284:	
	line	220
;main.c: 219: {
;main.c: 220: RC2STAbits.CREN = 0x00;
	bcf	(1173)^0480h,4	;volatile
	line	221
;main.c: 221: RC2STAbits.SPEN = 0x00;
	bcf	(1173)^0480h,7	;volatile
	line	222
;main.c: 222: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	223
;main.c: 223: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	224
;main.c: 224: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	225
;main.c: 225: RC2STAbits.CREN = 0x01;
	movlb 9	; select bank9
	bsf	(1173)^0480h,4	;volatile
	line	226
;main.c: 226: RC2STAbits.SPEN = 0x01;
	bsf	(1173)^0480h,7	;volatile
	line	227
	
l282:	
	line	229
;main.c: 227: }
;main.c: 229: if (RC1STAbits.FERR || RC1STAbits.OERR)
	movlb 3	; select bank3
	btfsc	(413)^0180h,2	;volatile
	goto	u1991
	goto	u1990
u1991:
	goto	l287
u1990:
	
l1742:	
	btfss	(413)^0180h,1	;volatile
	goto	u2001
	goto	u2000
u2001:
	goto	l1744
u2000:
	
l287:	
	line	231
;main.c: 230: {
;main.c: 231: RC1STAbits.CREN = 0x00;
	bcf	(413)^0180h,4	;volatile
	line	232
;main.c: 232: RC1STAbits.SPEN = 0x00;
	bcf	(413)^0180h,7	;volatile
	line	233
;main.c: 233: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	234
;main.c: 234: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	235
;main.c: 235: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	236
;main.c: 236: RC1STAbits.CREN = 0x01;
	movlb 3	; select bank3
	bsf	(413)^0180h,4	;volatile
	line	237
;main.c: 237: RC1STAbits.SPEN = 0x01;
	bsf	(413)^0180h,7	;volatile
	line	240
	
l1744:	
;main.c: 238: }
;main.c: 240: if(uart1_receive_flag==TRUE)
	decf	(_uart1_receive_flag),w
	skipz
	goto	u2011
	goto	u2010
u2011:
	goto	l1756
u2010:
	line	242
	
l1746:	
;main.c: 241: {
;main.c: 242: (LATCbits.LATC3 ^= 0x01);
	movlw	1<<3
	movlb 2	; select bank2
	xorwf	(270)^0100h,f	;volatile
	line	244
	
l1748:	
;main.c: 244: handle_uart1_buf();
	fcall	_handle_uart1_buf
	line	246
	
l1750:	
;main.c: 246: if (RC1STAbits.FERR || RC1STAbits.OERR)
	movlb 3	; select bank3
	btfsc	(413)^0180h,2	;volatile
	goto	u2021
	goto	u2020
u2021:
	goto	l291
u2020:
	
l1752:	
	btfss	(413)^0180h,1	;volatile
	goto	u2031
	goto	u2030
u2031:
	goto	l1754
u2030:
	
l291:	
	line	248
;main.c: 247: {
;main.c: 248: RC1STAbits.CREN = 0x00;
	bcf	(413)^0180h,4	;volatile
	line	249
;main.c: 249: RC1STAbits.SPEN = 0x00;
	bcf	(413)^0180h,7	;volatile
	line	250
;main.c: 250: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	251
;main.c: 251: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	252
;main.c: 252: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	253
;main.c: 253: RC1STAbits.CREN = 0x01;
	movlb 3	; select bank3
	bsf	(413)^0180h,4	;volatile
	line	254
;main.c: 254: RC1STAbits.SPEN = 0x01;
	bsf	(413)^0180h,7	;volatile
	line	256
	
l1754:	
;main.c: 255: }
;main.c: 256: uart1_receive_byte_count=0x00;
	clrf	(_uart1_receive_byte_count)
	line	258
;main.c: 258: uart1_receive_flag=FALSE;
	clrf	(_uart1_receive_flag)
	line	261
	
l1756:	
;main.c: 259: }
;main.c: 261: if(uart2_receive_flag==TRUE)
	movlb 0	; select bank0
	decf	(_uart2_receive_flag),w
	skipz
	goto	u2041
	goto	u2040
u2041:
	goto	l280
u2040:
	line	263
	
l1758:	
;main.c: 262: {
;main.c: 263: (LATCbits.LATC4 ^= 0x01);
	movlw	1<<4
	movlb 2	; select bank2
	xorwf	(270)^0100h,f	;volatile
	line	265
	
l1760:	
;main.c: 265: handle_uart2_buf();
	fcall	_handle_uart2_buf
	line	267
	
l1762:	
;main.c: 267: if (RC2STAbits.FERR || RC2STAbits.OERR)
	movlb 9	; select bank9
	btfsc	(1173)^0480h,2	;volatile
	goto	u2051
	goto	u2050
u2051:
	goto	l295
u2050:
	
l1764:	
	btfss	(1173)^0480h,1	;volatile
	goto	u2061
	goto	u2060
u2061:
	goto	l1766
u2060:
	
l295:	
	line	269
;main.c: 268: {
;main.c: 269: RC2STAbits.CREN = 0x00;
	bcf	(1173)^0480h,4	;volatile
	line	270
;main.c: 270: RC2STAbits.SPEN = 0x00;
	bcf	(1173)^0480h,7	;volatile
	line	271
;main.c: 271: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	272
;main.c: 272: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	273
;main.c: 273: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	274
;main.c: 274: RC2STAbits.CREN = 0x01;
	movlb 9	; select bank9
	bsf	(1173)^0480h,4	;volatile
	line	275
;main.c: 275: RC2STAbits.SPEN = 0x01;
	bsf	(1173)^0480h,7	;volatile
	line	278
	
l1766:	
;main.c: 276: }
;main.c: 278: uart2_receive_byte_count=0x00;
	movlb 0	; select bank0
	clrf	(_uart2_receive_byte_count)
	line	280
;main.c: 280: uart2_receive_flag=FALSE;
	clrf	(_uart2_receive_flag)
	goto	l280
	global	start
	ljmp	start
	opt stack 0
	line	283
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_write_node

;; *************** function _write_node *****************
;; Defined at:
;;		line 65 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\output.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  output_tmp      2    0[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/2
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0
;;      Totals:         2       2       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\output.c"
	line	65
global __ptext1
__ptext1:	;psect for function _write_node
psect	text1
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\output.c"
	line	65
	global	__size_of_write_node
	__size_of_write_node	equ	__end_of_write_node-_write_node
	
_write_node:	
;incstack = 0
	opt	stack 14
; Regs used in _write_node: [wreg+status,2+status,0]
	line	69
	
l1768:	
	line	71
	
l1770:	
;output.c: 71: output_tmp = input_node_level;
	movf	(_input_node_level+1),w
	movwf	(write_node@output_tmp+1)
	movf	(_input_node_level),w
	movwf	(write_node@output_tmp)
	line	73
	
l1772:	
;output.c: 73: LATB5 = ((output_tmp>>0)&0x01)?(0:1);
	btfss	(write_node@output_tmp),(0)&7
	goto	u2071
	goto	u2070
	
u2071:
	movlb 2	; select bank2
	bsf	(2157/8)^0100h,(2157)&7	;volatile
	goto	u2084
u2070:
	movlb 2	; select bank2
	bcf	(2157/8)^0100h,(2157)&7	;volatile
u2084:
	line	74
	
l1774:	
;output.c: 74: LATB4 = ((output_tmp>>1)&0x01)?(0:1);
	movlb 0	; select bank0
	movf	(write_node@output_tmp),w
	movwf	(??_write_node+0)+0
	lsrf	(??_write_node+0)+0,f
	btfss	0+(??_write_node+0)+0,(0)&7
	goto	u2091
	goto	u2090
	
u2091:
	movlb 2	; select bank2
	bsf	(2156/8)^0100h,(2156)&7	;volatile
	goto	u2104
u2090:
	movlb 2	; select bank2
	bcf	(2156/8)^0100h,(2156)&7	;volatile
u2104:
	line	75
	
l1776:	
;output.c: 75: LATB3 = ((output_tmp>>2)&0x01)?(0:1);
	movlb 0	; select bank0
	movf	(write_node@output_tmp),w
	movwf	(??_write_node+0)+0
	lsrf	(??_write_node+0)+0,f
	lsrf	(??_write_node+0)+0,f
	btfss	0+(??_write_node+0)+0,(0)&7
	goto	u2111
	goto	u2110
	
u2111:
	movlb 2	; select bank2
	bsf	(2155/8)^0100h,(2155)&7	;volatile
	goto	u2124
u2110:
	movlb 2	; select bank2
	bcf	(2155/8)^0100h,(2155)&7	;volatile
u2124:
	line	76
	
l1778:	
;output.c: 76: LATB2 = ((output_tmp>>3)&0x01)?(0:1);
	movlb 0	; select bank0
	movf	(write_node@output_tmp),w
	movwf	(??_write_node+0)+0
	lsrf	(??_write_node+0)+0,f
	lsrf	(??_write_node+0)+0,f
	lsrf	(??_write_node+0)+0,f
	btfss	0+(??_write_node+0)+0,(0)&7
	goto	u2131
	goto	u2130
	
u2131:
	movlb 2	; select bank2
	bsf	(2154/8)^0100h,(2154)&7	;volatile
	goto	u2144
u2130:
	movlb 2	; select bank2
	bcf	(2154/8)^0100h,(2154)&7	;volatile
u2144:
	line	77
	
l1780:	
;output.c: 77: LATB1 = ((output_tmp>>4)&0x01)?(0:1);
	movlb 0	; select bank0
	movf	(write_node@output_tmp),w
	movwf	(??_write_node+0)+0
	movlw	04h
u2155:
	lsrf	(??_write_node+0)+0,f
	decfsz	wreg,f
	goto	u2155
	btfss	0+(??_write_node+0)+0,(0)&7
	goto	u2161
	goto	u2160
	
u2161:
	movlb 2	; select bank2
	bsf	(2153/8)^0100h,(2153)&7	;volatile
	goto	u2174
u2160:
	movlb 2	; select bank2
	bcf	(2153/8)^0100h,(2153)&7	;volatile
u2174:
	line	78
	
l1782:	
;output.c: 78: LATB0 = ((output_tmp>>5)&0x01)?(0:1);
	movlb 0	; select bank0
	movf	(write_node@output_tmp),w
	movwf	(??_write_node+0)+0
	movlw	05h
u2185:
	lsrf	(??_write_node+0)+0,f
	decfsz	wreg,f
	goto	u2185
	btfss	0+(??_write_node+0)+0,(0)&7
	goto	u2191
	goto	u2190
	
u2191:
	movlb 2	; select bank2
	bsf	(2152/8)^0100h,(2152)&7	;volatile
	goto	u2204
u2190:
	movlb 2	; select bank2
	bcf	(2152/8)^0100h,(2152)&7	;volatile
u2204:
	line	79
	
l1784:	
;output.c: 79: LATA4 = ((output_tmp>>6)&0x01)?(0:1);
	movlb 0	; select bank0
	movf	(write_node@output_tmp),w
	movwf	(??_write_node+0)+0
	movlw	06h
u2215:
	lsrf	(??_write_node+0)+0,f
	decfsz	wreg,f
	goto	u2215
	btfss	0+(??_write_node+0)+0,(0)&7
	goto	u2221
	goto	u2220
	
u2221:
	movlb 2	; select bank2
	bsf	(2148/8)^0100h,(2148)&7	;volatile
	goto	u2234
u2220:
	movlb 2	; select bank2
	bcf	(2148/8)^0100h,(2148)&7	;volatile
u2234:
	line	80
	
l1786:	
;output.c: 80: LATA5 = ((output_tmp>>7)&0x01)?(0:1);
	movlb 0	; select bank0
	movf	(write_node@output_tmp),w
	movwf	(??_write_node+0)+0
	movlw	07h
u2245:
	lsrf	(??_write_node+0)+0,f
	decfsz	wreg,f
	goto	u2245
	btfss	0+(??_write_node+0)+0,(0)&7
	goto	u2251
	goto	u2250
	
u2251:
	movlb 2	; select bank2
	bsf	(2149/8)^0100h,(2149)&7	;volatile
	goto	u2264
u2250:
	movlb 2	; select bank2
	bcf	(2149/8)^0100h,(2149)&7	;volatile
u2264:
	line	82
	
l1788:	
;output.c: 82: LATD0 = ((output_tmp>>8)&0x01)?(0:1);
	movlb 0	; select bank0
	movf	(write_node@output_tmp+1),w
	movwf	(??_write_node+0)+0+1
	movf	(write_node@output_tmp),w
	movwf	(??_write_node+0)+0
	movf	(??_write_node+0)+1,w
	movwf	(??_write_node+0)+0
	clrf	(??_write_node+0)+1
	btfss	0+(??_write_node+0)+0,(0)&7
	goto	u2271
	goto	u2270
	
u2271:
	movlb 2	; select bank2
	bsf	(2168/8)^0100h,(2168)&7	;volatile
	goto	u2284
u2270:
	movlb 2	; select bank2
	bcf	(2168/8)^0100h,(2168)&7	;volatile
u2284:
	line	83
	
l1790:	
;output.c: 83: LATD1 = ((output_tmp>>9)&0x01)?(0:1);
	movlb 0	; select bank0
	movf	(write_node@output_tmp+1),w
	movwf	(??_write_node+0)+0+1
	movf	(write_node@output_tmp),w
	movwf	(??_write_node+0)+0
	movlw	09h
u2295:
	lsrf	(??_write_node+0)+1,f
	rrf	(??_write_node+0)+0,f
	decfsz	wreg,f
	goto	u2295
	btfss	0+(??_write_node+0)+0,(0)&7
	goto	u2301
	goto	u2300
	
u2301:
	movlb 2	; select bank2
	bsf	(2169/8)^0100h,(2169)&7	;volatile
	goto	u2314
u2300:
	movlb 2	; select bank2
	bcf	(2169/8)^0100h,(2169)&7	;volatile
u2314:
	line	84
	
l1792:	
;output.c: 84: LATD2 = ((output_tmp>>10)&0x01)?(0:1);
	movlb 0	; select bank0
	movf	(write_node@output_tmp+1),w
	movwf	(??_write_node+0)+0+1
	movf	(write_node@output_tmp),w
	movwf	(??_write_node+0)+0
	movlw	0Ah
u2325:
	lsrf	(??_write_node+0)+1,f
	rrf	(??_write_node+0)+0,f
	decfsz	wreg,f
	goto	u2325
	btfss	0+(??_write_node+0)+0,(0)&7
	goto	u2331
	goto	u2330
	
u2331:
	movlb 2	; select bank2
	bsf	(2170/8)^0100h,(2170)&7	;volatile
	goto	u2344
u2330:
	movlb 2	; select bank2
	bcf	(2170/8)^0100h,(2170)&7	;volatile
u2344:
	line	85
	
l1794:	
;output.c: 85: LATD3 = ((output_tmp>>11)&0x01)?(0:1);
	movlb 0	; select bank0
	movf	(write_node@output_tmp+1),w
	movwf	(??_write_node+0)+0+1
	movf	(write_node@output_tmp),w
	movwf	(??_write_node+0)+0
	movlw	0Bh
u2355:
	lsrf	(??_write_node+0)+1,f
	rrf	(??_write_node+0)+0,f
	decfsz	wreg,f
	goto	u2355
	btfss	0+(??_write_node+0)+0,(0)&7
	goto	u2361
	goto	u2360
	
u2361:
	movlb 2	; select bank2
	bsf	(2171/8)^0100h,(2171)&7	;volatile
	goto	u2374
u2360:
	movlb 2	; select bank2
	bcf	(2171/8)^0100h,(2171)&7	;volatile
u2374:
	line	86
	
l1796:	
;output.c: 86: LATD4 = ((output_tmp>>12)&0x01)?(0:1);
	movlb 0	; select bank0
	movf	(write_node@output_tmp+1),w
	movwf	(??_write_node+0)+0+1
	movf	(write_node@output_tmp),w
	movwf	(??_write_node+0)+0
	swapf	(??_write_node+0)+1,w
	andlw	0fh
	movwf	(??_write_node+0)+0
	clrf	(??_write_node+0)+1
	btfss	0+(??_write_node+0)+0,(0)&7
	goto	u2381
	goto	u2380
	
u2381:
	movlb 2	; select bank2
	bsf	(2172/8)^0100h,(2172)&7	;volatile
	goto	u2394
u2380:
	movlb 2	; select bank2
	bcf	(2172/8)^0100h,(2172)&7	;volatile
u2394:
	line	87
	
l1798:	
;output.c: 87: LATD5 = ((output_tmp>>13)&0x01)?(0:1);
	movlb 0	; select bank0
	movf	(write_node@output_tmp+1),w
	movwf	(??_write_node+0)+0+1
	movf	(write_node@output_tmp),w
	movwf	(??_write_node+0)+0
	movlw	0Dh
u2405:
	lsrf	(??_write_node+0)+1,f
	rrf	(??_write_node+0)+0,f
	decfsz	wreg,f
	goto	u2405
	btfss	0+(??_write_node+0)+0,(0)&7
	goto	u2411
	goto	u2410
	
u2411:
	movlb 2	; select bank2
	bsf	(2173/8)^0100h,(2173)&7	;volatile
	goto	u2424
u2410:
	movlb 2	; select bank2
	bcf	(2173/8)^0100h,(2173)&7	;volatile
u2424:
	line	88
	
l1800:	
;output.c: 88: LATD6 = ((output_tmp>>14)&0x01)?(0:1);
	movlb 0	; select bank0
	movf	(write_node@output_tmp+1),w
	movwf	(??_write_node+0)+0+1
	movf	(write_node@output_tmp),w
	movwf	(??_write_node+0)+0
	movlw	0Eh
u2435:
	lsrf	(??_write_node+0)+1,f
	rrf	(??_write_node+0)+0,f
	decfsz	wreg,f
	goto	u2435
	btfss	0+(??_write_node+0)+0,(0)&7
	goto	u2441
	goto	u2440
	
u2441:
	movlb 2	; select bank2
	bsf	(2174/8)^0100h,(2174)&7	;volatile
	goto	u2454
u2440:
	movlb 2	; select bank2
	bcf	(2174/8)^0100h,(2174)&7	;volatile
u2454:
	line	89
	
l1802:	
;output.c: 89: LATD7 = ((output_tmp>>15)&0x01)?(0:1);
	movlb 0	; select bank0
	movf	(write_node@output_tmp+1),w
	movwf	(??_write_node+0)+0+1
	movf	(write_node@output_tmp),w
	movwf	(??_write_node+0)+0
	movlw	0Fh
u2465:
	lsrf	(??_write_node+0)+1,f
	rrf	(??_write_node+0)+0,f
	decfsz	wreg,f
	goto	u2465
	btfss	0+(??_write_node+0)+0,(0)&7
	goto	u2471
	goto	u2470
	
u2471:
	movlb 2	; select bank2
	bsf	(2175/8)^0100h,(2175)&7	;volatile
	goto	u2484
u2470:
	movlb 2	; select bank2
	bcf	(2175/8)^0100h,(2175)&7	;volatile
u2484:
	line	92
	
l344:	
	return
	opt stack 0
GLOBAL	__end_of_write_node
	__end_of_write_node:
	signat	_write_node,88
	global	_read_node

;; *************** function _read_node *****************
;; Defined at:
;;		line 54 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\input.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  input_tmp       2    0[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0
;;      Totals:         2       2       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\input.c"
	line	54
global __ptext2
__ptext2:	;psect for function _read_node
psect	text2
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\input.c"
	line	54
	global	__size_of_read_node
	__size_of_read_node	equ	__end_of_read_node-_read_node
	
_read_node:	
;incstack = 0
	opt	stack 14
; Regs used in _read_node: [wreg+status,2+status,0+btemp+1]
	line	58
	
l1692:	
;input.c: 56: unsigned int input_tmp;
;input.c: 58: input_tmp=0x00;
	clrf	(read_node@input_tmp)
	clrf	(read_node@input_tmp+1)
	line	60
	
l1694:	
;input.c: 60: input_tmp = input_tmp|(RE0<<0);
	clrc
	btfsc	(128/8),(128)&7	;volatile
	setc
	movlw	0
	addwfc	wreg,w
	iorwf	(read_node@input_tmp),f
	line	61
	
l1696:	
;input.c: 61: input_tmp = input_tmp|(RE1<<1);
	clrc
	btfsc	(129/8),(129)&7	;volatile
	setc
	movlw	0
	addwfc	wreg,w
	movwf	(??_read_node+0)+0
	clrf	(??_read_node+0)+0+1
	lslf	(??_read_node+0)+0,f
	rlf	(??_read_node+0)+1,f
	movf	0+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp),f
	movf	1+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp+1),f
	line	62
	
l1698:	
;input.c: 62: input_tmp = input_tmp|(RE2<<2);
	clrc
	btfsc	(130/8),(130)&7	;volatile
	setc
	movlw	0
	addwfc	wreg,w
	movwf	(??_read_node+0)+0
	clrf	(??_read_node+0)+0+1
	lslf	(??_read_node+0)+0,f
	rlf	(??_read_node+0)+1,f
	lslf	(??_read_node+0)+0,f
	rlf	(??_read_node+0)+1,f
	movf	0+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp),f
	movf	1+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp+1),f
	line	63
	
l1700:	
;input.c: 63: input_tmp = input_tmp|(RE3<<3);
	clrc
	btfsc	(131/8),(131)&7	;volatile
	setc
	movlw	0
	addwfc	wreg,w
	movwf	(??_read_node+0)+0
	clrf	(??_read_node+0)+0+1
	lslf	(??_read_node+0)+0,f
	rlf	(??_read_node+0)+1,f
	lslf	(??_read_node+0)+0,f
	rlf	(??_read_node+0)+1,f
	lslf	(??_read_node+0)+0,f
	rlf	(??_read_node+0)+1,f
	movf	0+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp),f
	movf	1+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp+1),f
	line	64
	
l1702:	
;input.c: 64: input_tmp = input_tmp|(RE4<<4);
	clrc
	btfsc	(132/8),(132)&7	;volatile
	setc
	movlw	0
	addwfc	wreg,w
	movwf	(??_read_node+0)+0
	clrf	(??_read_node+0)+0+1
	swapf	(??_read_node+0)+0,f
	swapf	(??_read_node+0)+1,f
	movlw	0f0h
	andwf	(??_read_node+0)+1,f
	movf	(??_read_node+0)+0,w
	andlw	0fh
	iorwf	(??_read_node+0)+1,f
	movlw	0f0h
	andwf	(??_read_node+0)+0,f
	movf	0+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp),f
	movf	1+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp+1),f
	line	65
	
l1704:	
;input.c: 65: input_tmp = input_tmp|(RE5<<5);
	clrc
	btfsc	(133/8),(133)&7	;volatile
	setc
	movlw	0
	addwfc	wreg,w
	movwf	(??_read_node+0)+0
	clrf	(??_read_node+0)+0+1
	movlw	05h
u1875:
	lslf	(??_read_node+0)+0,f
	rlf	(??_read_node+0)+1,f
	decfsz	wreg,f
	goto	u1875
	movf	0+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp),f
	movf	1+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp+1),f
	line	66
	
l1706:	
;input.c: 66: input_tmp = input_tmp|(RE6<<6);
	clrc
	btfsc	(134/8),(134)&7	;volatile
	setc
	movlw	0
	addwfc	wreg,w
	movwf	(??_read_node+0)+0
	clrf	(??_read_node+0)+0+1
	movlw	06h
u1885:
	lslf	(??_read_node+0)+0,f
	rlf	(??_read_node+0)+1,f
	decfsz	wreg,f
	goto	u1885
	movf	0+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp),f
	movf	1+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp+1),f
	line	67
	
l1708:	
;input.c: 67: input_tmp = input_tmp|(RE7<<7);
	clrc
	btfsc	(135/8),(135)&7	;volatile
	setc
	movlw	0
	addwfc	wreg,w
	movwf	(??_read_node+0)+0
	clrf	(??_read_node+0)+0+1
	movlw	07h
u1895:
	lslf	(??_read_node+0)+0,f
	rlf	(??_read_node+0)+1,f
	decfsz	wreg,f
	goto	u1895
	movf	0+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp),f
	movf	1+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp+1),f
	line	69
	
l1710:	
;input.c: 69: input_tmp = input_tmp|(RF1<<8);
	clrc
	movlb 5	; select bank5
	btfsc	(5217/8)^0280h,(5217)&7	;volatile
	setc
	movlw	0
	addwfc	wreg,w
	movwf	(??_read_node+0)+0
	clrf	(??_read_node+0)+0+1
	movf	(??_read_node+0)+0,w
	movwf	(??_read_node+0)+1
	clrf	(??_read_node+0)+0
	movf	0+(??_read_node+0)+0,w
	movlb 0	; select bank0
	iorwf	(read_node@input_tmp),f
	movf	1+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp+1),f
	line	70
	
l1712:	
;input.c: 70: input_tmp = input_tmp|(RF2<<9);
	clrc
	movlb 5	; select bank5
	btfsc	(5218/8)^0280h,(5218)&7	;volatile
	setc
	movlw	0
	addwfc	wreg,w
	movwf	(??_read_node+0)+0
	clrf	(??_read_node+0)+0+1
	movlw	09h
u1905:
	lslf	(??_read_node+0)+0,f
	rlf	(??_read_node+0)+1,f
	decfsz	wreg,f
	goto	u1905
	movf	0+(??_read_node+0)+0,w
	movlb 0	; select bank0
	iorwf	(read_node@input_tmp),f
	movf	1+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp+1),f
	line	71
	
l1714:	
;input.c: 71: input_tmp = input_tmp|(RF3<<10);
	clrc
	movlb 5	; select bank5
	btfsc	(5219/8)^0280h,(5219)&7	;volatile
	setc
	movlw	0
	addwfc	wreg,w
	movwf	(??_read_node+0)+0
	clrf	(??_read_node+0)+0+1
	movlw	0Ah
u1915:
	lslf	(??_read_node+0)+0,f
	rlf	(??_read_node+0)+1,f
	decfsz	wreg,f
	goto	u1915
	movf	0+(??_read_node+0)+0,w
	movlb 0	; select bank0
	iorwf	(read_node@input_tmp),f
	movf	1+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp+1),f
	line	72
	
l1716:	
;input.c: 72: input_tmp = input_tmp|(RF4<<11);
	clrc
	movlb 5	; select bank5
	btfsc	(5220/8)^0280h,(5220)&7	;volatile
	setc
	movlw	0
	addwfc	wreg,w
	movwf	(??_read_node+0)+0
	clrf	(??_read_node+0)+0+1
	movlw	0Bh
u1925:
	lslf	(??_read_node+0)+0,f
	rlf	(??_read_node+0)+1,f
	decfsz	wreg,f
	goto	u1925
	movf	0+(??_read_node+0)+0,w
	movlb 0	; select bank0
	iorwf	(read_node@input_tmp),f
	movf	1+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp+1),f
	line	73
	
l1718:	
;input.c: 73: input_tmp = input_tmp|(RF5<<12);
	clrc
	movlb 5	; select bank5
	btfsc	(5221/8)^0280h,(5221)&7	;volatile
	setc
	movlw	0
	addwfc	wreg,w
	movwf	(??_read_node+0)+0
	clrf	(??_read_node+0)+0+1
	swapf	(??_read_node+0)+0,w
	andlw	0f0h
	movwf	(??_read_node+0)+1
	clrf	(??_read_node+0)+0
	movf	0+(??_read_node+0)+0,w
	movlb 0	; select bank0
	iorwf	(read_node@input_tmp),f
	movf	1+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp+1),f
	line	74
	
l1720:	
;input.c: 74: input_tmp = input_tmp|(RF6<<13);
	clrc
	movlb 5	; select bank5
	btfsc	(5222/8)^0280h,(5222)&7	;volatile
	setc
	movlw	0
	addwfc	wreg,w
	movwf	(??_read_node+0)+0
	clrf	(??_read_node+0)+0+1
	movlw	0Dh
u1935:
	lslf	(??_read_node+0)+0,f
	rlf	(??_read_node+0)+1,f
	decfsz	wreg,f
	goto	u1935
	movf	0+(??_read_node+0)+0,w
	movlb 0	; select bank0
	iorwf	(read_node@input_tmp),f
	movf	1+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp+1),f
	line	75
	
l1722:	
;input.c: 75: input_tmp = input_tmp|(RF7<<14);
	clrc
	movlb 5	; select bank5
	btfsc	(5223/8)^0280h,(5223)&7	;volatile
	setc
	movlw	0
	addwfc	wreg,w
	movwf	(??_read_node+0)+0
	clrf	(??_read_node+0)+0+1
	movlw	0Eh
u1945:
	lslf	(??_read_node+0)+0,f
	rlf	(??_read_node+0)+1,f
	decfsz	wreg,f
	goto	u1945
	movf	0+(??_read_node+0)+0,w
	movlb 0	; select bank0
	iorwf	(read_node@input_tmp),f
	movf	1+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp+1),f
	line	76
	
l1724:	
;input.c: 76: input_tmp = input_tmp|(RG4<<15);
	clrc
	movlb 5	; select bank5
	btfsc	(5228/8)^0280h,(5228)&7	;volatile
	setc
	movlw	0
	addwfc	wreg,w
	movwf	(??_read_node+0)+0
	clrf	(??_read_node+0)+0+1
	movlw	0Fh
u1955:
	lslf	(??_read_node+0)+0,f
	rlf	(??_read_node+0)+1,f
	decfsz	wreg,f
	goto	u1955
	movf	0+(??_read_node+0)+0,w
	movlb 0	; select bank0
	iorwf	(read_node@input_tmp),f
	movf	1+(??_read_node+0)+0,w
	iorwf	(read_node@input_tmp+1),f
	line	78
	
l1726:	
;input.c: 78: input_node_level = input_tmp;
	movf	(read_node@input_tmp+1),w
	movwf	(_input_node_level+1)
	movf	(read_node@input_tmp),w
	movwf	(_input_node_level)
	line	79
	
l106:	
	return
	opt stack 0
GLOBAL	__end_of_read_node
	__end_of_read_node:
	signat	_read_node,88
	global	_middle_init

;; *************** function _middle_init *****************
;; Defined at:
;;		line 178 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_get_slave_address
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\main.c"
	line	178
global __ptext3
__ptext3:	;psect for function _middle_init
psect	text3
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\main.c"
	line	178
	global	__size_of_middle_init
	__size_of_middle_init	equ	__end_of_middle_init-_middle_init
	
_middle_init:	
;incstack = 0
	opt	stack 13
; Regs used in _middle_init: [wreg+status,2+status,0+pclath+cstack]
	line	180
	
l1468:	
;main.c: 180: get_slave_address();
	fcall	_get_slave_address
	line	181
	
l274:	
	return
	opt stack 0
GLOBAL	__end_of_middle_init
	__end_of_middle_init:
	signat	_middle_init,88
	global	_get_slave_address

;; *************** function _get_slave_address *****************
;; Defined at:
;;		line 158 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\handle_rs485.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  switch_tmp      1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_middle_init
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\handle_rs485.c"
	line	158
global __ptext4
__ptext4:	;psect for function _get_slave_address
psect	text4
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\handle_rs485.c"
	line	158
	global	__size_of_get_slave_address
	__size_of_get_slave_address	equ	__end_of_get_slave_address-_get_slave_address
	
_get_slave_address:	
;incstack = 0
	opt	stack 13
; Regs used in _get_slave_address: [wreg+status,2+status,0]
	line	162
	
l1352:	
;handle_rs485.c: 160: unsigned char switch_tmp;
;handle_rs485.c: 162: switch_tmp = 0x00;
	clrf	(get_slave_address@switch_tmp)
	line	164
	
l1354:	
;handle_rs485.c: 164: switch_tmp = (switch_tmp<<1)|RA0;
	clrc
	movlb 0	; select bank0
	btfsc	(96/8),(96)&7	;volatile
	setc
	rlf	(get_slave_address@switch_tmp),f
	line	165
	
l1356:	
;handle_rs485.c: 165: switch_tmp = (switch_tmp<<1)|RA1;
	clrc
	btfsc	(97/8),(97)&7	;volatile
	setc
	rlf	(get_slave_address@switch_tmp),f
	line	166
	
l1358:	
;handle_rs485.c: 166: switch_tmp = (switch_tmp<<1)|RA2;
	clrc
	btfsc	(98/8),(98)&7	;volatile
	setc
	rlf	(get_slave_address@switch_tmp),f
	line	167
	
l1360:	
;handle_rs485.c: 167: switch_tmp = (switch_tmp<<1)|RA3;
	clrc
	btfsc	(99/8),(99)&7	;volatile
	setc
	rlf	(get_slave_address@switch_tmp),f
	line	169
	
l1362:	
;handle_rs485.c: 169: slave_address=switch_tmp;
	movf	(get_slave_address@switch_tmp),w
	movwf	(_slave_address)
	line	171
	
l54:	
	return
	opt stack 0
GLOBAL	__end_of_get_slave_address
	__end_of_get_slave_address:
	signat	_get_slave_address,88
	global	_handle_uart2_buf

;; *************** function _handle_uart2_buf *****************
;; Defined at:
;;		line 130 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\handle_rs485.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_uart2_send_nbyte
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	130
global __ptext5
__ptext5:	;psect for function _handle_uart2_buf
psect	text5
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\handle_rs485.c"
	line	130
	global	__size_of_handle_uart2_buf
	__size_of_handle_uart2_buf	equ	__end_of_handle_uart2_buf-_handle_uart2_buf
	
_handle_uart2_buf:	
;incstack = 0
	opt	stack 12
; Regs used in _handle_uart2_buf: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	132
	
l1678:	
;handle_rs485.c: 132: uart2_tx_buf[0]=uart2_rx_buf[0];
	movlb 0	; select bank0
	movf	(_uart2_rx_buf),w
	movwf	(_uart2_tx_buf)
	line	134
;handle_rs485.c: 134: uart2_tx_buf[1]=uart2_rx_buf[1];
	movf	0+(_uart2_rx_buf)+01h,w
	movwf	0+(_uart2_tx_buf)+01h
	line	136
;handle_rs485.c: 136: uart2_tx_buf[2]=uart2_rx_buf[2];
	movf	0+(_uart2_rx_buf)+02h,w
	movwf	0+(_uart2_tx_buf)+02h
	line	138
;handle_rs485.c: 138: uart2_tx_buf[3]=uart2_rx_buf[3];
	movf	0+(_uart2_rx_buf)+03h,w
	movwf	0+(_uart2_tx_buf)+03h
	line	140
;handle_rs485.c: 140: uart2_tx_buf[4]=uart2_rx_buf[4];
	movf	0+(_uart2_rx_buf)+04h,w
	movwf	0+(_uart2_tx_buf)+04h
	line	142
;handle_rs485.c: 142: uart2_tx_buf[5]=uart2_rx_buf[5];
	movf	0+(_uart2_rx_buf)+05h,w
	movwf	0+(_uart2_tx_buf)+05h
	line	144
;handle_rs485.c: 144: uart2_tx_buf[6]=uart2_rx_buf[6];
	movf	0+(_uart2_rx_buf)+06h,w
	movwf	0+(_uart2_tx_buf)+06h
	line	146
;handle_rs485.c: 146: uart2_tx_buf[7]=uart2_rx_buf[7];
	movf	0+(_uart2_rx_buf)+07h,w
	movwf	0+(_uart2_tx_buf)+07h
	line	148
	
l1680:	
;handle_rs485.c: 148: uart2_send_nbyte(uart2_tx_buf,8);
	movlw	08h
	movwf	(uart2_send_nbyte@size)
	clrf	(uart2_send_nbyte@size+1)
	movlw	(_uart2_tx_buf)&0ffh
	fcall	_uart2_send_nbyte
	line	150
	
l51:	
	return
	opt stack 0
GLOBAL	__end_of_handle_uart2_buf
	__end_of_handle_uart2_buf:
	signat	_handle_uart2_buf,88
	global	_uart2_send_nbyte

;; *************** function _uart2_send_nbyte *****************
;; Defined at:
;;		line 194 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\uart.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     PTR unsigned char 
;;		 -> uart2_tx_buf(32), 
;;  size            2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  data            1    5[COMMON] PTR unsigned char 
;;		 -> uart2_tx_buf(32), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       2       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         1       2       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_uart2_send_byte
;; This function is called by:
;;		_handle_uart2_buf
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\uart.c"
	line	194
global __ptext6
__ptext6:	;psect for function _uart2_send_nbyte
psect	text6
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\uart.c"
	line	194
	global	__size_of_uart2_send_nbyte
	__size_of_uart2_send_nbyte	equ	__end_of_uart2_send_nbyte-_uart2_send_nbyte
	
_uart2_send_nbyte:	
;incstack = 0
	opt	stack 12
; Regs used in _uart2_send_nbyte: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;uart2_send_nbyte@data stored from wreg
	movwf	(uart2_send_nbyte@data)
	line	196
	
l1682:	
;uart.c: 196: while (size)
	goto	l1690
	line	198
	
l1684:	
;uart.c: 197: {
;uart.c: 198: uart2_send_byte(*data);
	movf	(uart2_send_nbyte@data),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	fcall	_uart2_send_byte
	line	199
	
l1686:	
;uart.c: 199: data++;
	incf	(uart2_send_nbyte@data),f
	line	200
	
l1688:	
;uart.c: 200: size--;
	movlw	low(01h)
	movlb 0	; select bank0
	subwf	(uart2_send_nbyte@size),f
	movlw	high(01h)
	subwfb	(uart2_send_nbyte@size+1),f
	line	196
	
l1690:	
	movf	((uart2_send_nbyte@size+1)),w
	iorwf	((uart2_send_nbyte@size)),w
	skipz
	goto	u1861
	goto	u1860
u1861:
	goto	l1684
u1860:
	line	202
	
l473:	
	return
	opt stack 0
GLOBAL	__end_of_uart2_send_nbyte
	__end_of_uart2_send_nbyte:
	signat	_uart2_send_nbyte,8312
	global	_uart2_send_byte

;; *************** function _uart2_send_byte *****************
;; Defined at:
;;		line 180 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\uart.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/7
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_uart2_send_nbyte
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	180
global __ptext7
__ptext7:	;psect for function _uart2_send_byte
psect	text7
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\uart.c"
	line	180
	global	__size_of_uart2_send_byte
	__size_of_uart2_send_byte	equ	__end_of_uart2_send_byte-_uart2_send_byte
	
_uart2_send_byte:	
;incstack = 0
	opt	stack 12
; Regs used in _uart2_send_byte: [wreg]
;uart2_send_byte@data stored from wreg
	movwf	(uart2_send_byte@data)
	line	182
	
l1554:	
;uart.c: 182: while (!TX2STAbits.TRMT);
	
l461:	
	movlb 9	; select bank9
	btfss	(1174)^0480h,1	;volatile
	goto	u1601
	goto	u1600
u1601:
	goto	l461
u1600:
	
l463:	
	line	183
;uart.c: 183: (LATGbits.LATG3 = 1);
	movlb 7	; select bank7
	bsf	(909)^0380h,3	;volatile
	line	184
	
l1556:	
;uart.c: 184: TX2REG = data;
	movf	(uart2_send_byte@data),w
	movlb 9	; select bank9
	movwf	(1170)^0480h	;volatile
	line	185
;uart.c: 185: while (!TX2STAbits.TRMT);
	
l464:	
	btfss	(1174)^0480h,1	;volatile
	goto	u1611
	goto	u1610
u1611:
	goto	l464
u1610:
	
l466:	
	line	186
;uart.c: 186: (LATGbits.LATG3 = 0);
	movlb 7	; select bank7
	bcf	(909)^0380h,3	;volatile
	line	187
	
l467:	
	return
	opt stack 0
GLOBAL	__end_of_uart2_send_byte
	__end_of_uart2_send_byte:
	signat	_uart2_send_byte,4216
	global	_handle_uart1_buf

;; *************** function _handle_uart1_buf *****************
;; Defined at:
;;		line 101 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\handle_rs485.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_uart1_send_nbyte
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\handle_rs485.c"
	line	101
global __ptext8
__ptext8:	;psect for function _handle_uart1_buf
psect	text8
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\handle_rs485.c"
	line	101
	global	__size_of_handle_uart1_buf
	__size_of_handle_uart1_buf	equ	__end_of_handle_uart1_buf-_handle_uart1_buf
	
_handle_uart1_buf:	
;incstack = 0
	opt	stack 12
; Regs used in _handle_uart1_buf: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	103
	
l1650:	
;handle_rs485.c: 103: uart1_tx_buf[0]=uart1_rx_buf[0];
	movlw	low(8588)
	movwf	fsr1l
	movlw	high(8588)
	movwf	fsr1h
	movlw	low(8488)
	movwf	fsr0l
	movlw	high(8488)
	movwf	fsr0h
	movf	indf0,w
	movwi	[0]fsr1
	line	105
	
l1652:	
;handle_rs485.c: 105: uart1_tx_buf[1]=uart1_rx_buf[1];
	movlw	low(8488)
	movwf	fsr1l
	movlw	high(8488)
	movwf	fsr1h
	addfsr	fsr1,01h
	movf	indf1,w
	movwf	(??_handle_uart1_buf+0)+0
	movlw	low(8588+01h)
	movwf	fsr1l
	movlw	high(8588+01h)
	movwf	fsr1h
	movf	(??_handle_uart1_buf+0)+0,w
	movwf	indf1
	line	107
	
l1654:	
;handle_rs485.c: 107: uart1_tx_buf[2]=uart1_rx_buf[2];
	movlw	low(8488)
	movwf	fsr1l
	movlw	high(8488)
	movwf	fsr1h
	addfsr	fsr1,02h
	movf	indf1,w
	movwf	(??_handle_uart1_buf+0)+0
	movlw	low(8588+02h)
	movwf	fsr1l
	movlw	high(8588+02h)
	movwf	fsr1h
	movf	(??_handle_uart1_buf+0)+0,w
	movwf	indf1
	line	109
	
l1656:	
;handle_rs485.c: 109: uart1_tx_buf[3]=uart1_rx_buf[3];
	movlw	low(8488)
	movwf	fsr1l
	movlw	high(8488)
	movwf	fsr1h
	addfsr	fsr1,03h
	movf	indf1,w
	movwf	(??_handle_uart1_buf+0)+0
	movlw	low(8588+03h)
	movwf	fsr1l
	movlw	high(8588+03h)
	movwf	fsr1h
	movf	(??_handle_uart1_buf+0)+0,w
	movwf	indf1
	line	111
	
l1658:	
;handle_rs485.c: 111: uart1_tx_buf[4]=uart1_rx_buf[4];
	movlw	low(8488)
	movwf	fsr1l
	movlw	high(8488)
	movwf	fsr1h
	addfsr	fsr1,04h
	movf	indf1,w
	movwf	(??_handle_uart1_buf+0)+0
	movlw	low(8588+04h)
	movwf	fsr1l
	movlw	high(8588+04h)
	movwf	fsr1h
	movf	(??_handle_uart1_buf+0)+0,w
	movwf	indf1
	line	113
	
l1660:	
;handle_rs485.c: 113: uart1_tx_buf[5]=uart1_rx_buf[5];
	movlw	low(8488)
	movwf	fsr1l
	movlw	high(8488)
	movwf	fsr1h
	addfsr	fsr1,05h
	movf	indf1,w
	movwf	(??_handle_uart1_buf+0)+0
	movlw	low(8588+05h)
	movwf	fsr1l
	movlw	high(8588+05h)
	movwf	fsr1h
	movf	(??_handle_uart1_buf+0)+0,w
	movwf	indf1
	line	115
	
l1662:	
;handle_rs485.c: 115: uart1_tx_buf[6]=uart1_rx_buf[6];
	movlw	low(8488)
	movwf	fsr1l
	movlw	high(8488)
	movwf	fsr1h
	addfsr	fsr1,06h
	movf	indf1,w
	movwf	(??_handle_uart1_buf+0)+0
	movlw	low(8588+06h)
	movwf	fsr1l
	movlw	high(8588+06h)
	movwf	fsr1h
	movf	(??_handle_uart1_buf+0)+0,w
	movwf	indf1
	line	117
	
l1664:	
;handle_rs485.c: 117: uart1_tx_buf[7]=uart1_rx_buf[7];
	movlw	low(8488)
	movwf	fsr1l
	movlw	high(8488)
	movwf	fsr1h
	addfsr	fsr1,07h
	movf	indf1,w
	movwf	(??_handle_uart1_buf+0)+0
	movlw	low(8588+07h)
	movwf	fsr1l
	movlw	high(8588+07h)
	movwf	fsr1h
	movf	(??_handle_uart1_buf+0)+0,w
	movwf	indf1
	line	119
	
l1666:	
;handle_rs485.c: 119: uart1_send_nbyte(uart1_tx_buf,8);
	movlw	low(8588)
	movlb 0	; select bank0
	movwf	(uart1_send_nbyte@data)
	movlw	high(8588)
	movwf	((uart1_send_nbyte@data))+1
	movlw	08h
	movwf	(uart1_send_nbyte@size)
	clrf	(uart1_send_nbyte@size+1)
	fcall	_uart1_send_nbyte
	line	121
	
l48:	
	return
	opt stack 0
GLOBAL	__end_of_handle_uart1_buf
	__end_of_handle_uart1_buf:
	signat	_handle_uart1_buf,88
	global	_uart1_send_nbyte

;; *************** function _uart1_send_nbyte *****************
;; Defined at:
;;		line 92 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\uart.c"
;; Parameters:    Size  Location     Type
;;  data            2    0[BANK0 ] PTR unsigned char 
;;		 -> uart1_tx_buf(100), 
;;  size            2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       4       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_uart1_send_byte
;; This function is called by:
;;		_handle_uart1_buf
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\uart.c"
	line	92
global __ptext9
__ptext9:	;psect for function _uart1_send_nbyte
psect	text9
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\uart.c"
	line	92
	global	__size_of_uart1_send_nbyte
	__size_of_uart1_send_nbyte	equ	__end_of_uart1_send_nbyte-_uart1_send_nbyte
	
_uart1_send_nbyte:	
;incstack = 0
	opt	stack 12
; Regs used in _uart1_send_nbyte: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	94
	
l1668:	
;uart.c: 94: while (size)
	goto	l1676
	line	96
	
l1670:	
;uart.c: 95: {
;uart.c: 96: uart1_send_byte(*data);
	movf	(uart1_send_nbyte@data),w
	movwf	fsr1l
	movf	(uart1_send_nbyte@data+1),w
	movwf	fsr1h

	movf	indf1,w
	fcall	_uart1_send_byte
	line	97
	
l1672:	
;uart.c: 97: data++;
	movlb 0	; select bank0
	incf	(uart1_send_nbyte@data),f
	skipnz
	incf	(uart1_send_nbyte@data+1),f
	line	98
	
l1674:	
;uart.c: 98: size--;
	movlw	low(01h)
	subwf	(uart1_send_nbyte@size),f
	movlw	high(01h)
	subwfb	(uart1_send_nbyte@size+1),f
	line	94
	
l1676:	
	movf	((uart1_send_nbyte@size+1)),w
	iorwf	((uart1_send_nbyte@size)),w
	skipz
	goto	u1851
	goto	u1850
u1851:
	goto	l1670
u1850:
	line	100
	
l443:	
	return
	opt stack 0
GLOBAL	__end_of_uart1_send_nbyte
	__end_of_uart1_send_nbyte:
	signat	_uart1_send_nbyte,8312
	global	_uart1_send_byte

;; *************** function _uart1_send_byte *****************
;; Defined at:
;;		line 77 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\uart.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/2
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_uart1_send_nbyte
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	77
global __ptext10
__ptext10:	;psect for function _uart1_send_byte
psect	text10
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\uart.c"
	line	77
	global	__size_of_uart1_send_byte
	__size_of_uart1_send_byte	equ	__end_of_uart1_send_byte-_uart1_send_byte
	
_uart1_send_byte:	
;incstack = 0
	opt	stack 12
; Regs used in _uart1_send_byte: [wreg]
;uart1_send_byte@data stored from wreg
	movwf	(uart1_send_byte@data)
	line	79
	
l1550:	
;uart.c: 79: while (!TX1STAbits.TRMT);
	
l431:	
	movlb 3	; select bank3
	btfss	(414)^0180h,1	;volatile
	goto	u1581
	goto	u1580
u1581:
	goto	l431
u1580:
	
l433:	
	line	80
;uart.c: 80: (LATCbits.LATC5 = 1);
	movlb 2	; select bank2
	bsf	(270)^0100h,5	;volatile
	line	81
	
l1552:	
;uart.c: 81: TX1REG = data;
	movf	(uart1_send_byte@data),w
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	82
;uart.c: 82: while (!TX1STAbits.TRMT);
	
l434:	
	btfss	(414)^0180h,1	;volatile
	goto	u1591
	goto	u1590
u1591:
	goto	l434
u1590:
	
l436:	
	line	83
;uart.c: 83: (LATCbits.LATC5 = 0);
	movlb 2	; select bank2
	bcf	(270)^0100h,5	;volatile
	line	84
	
l437:	
	return
	opt stack 0
GLOBAL	__end_of_uart1_send_byte
	__end_of_uart1_send_byte:
	signat	_uart1_send_byte,4216
	global	_driver_init

;; *************** function _driver_init *****************
;; Defined at:
;;		line 159 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/2
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_init_input
;;		_init_interrupt
;;		_init_led
;;		_init_osc
;;		_init_output
;;		_init_port
;;		_init_timer1
;;		_init_uart1
;;		_init_uart2
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\main.c"
	line	159
global __ptext11
__ptext11:	;psect for function _driver_init
psect	text11
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\main.c"
	line	159
	global	__size_of_driver_init
	__size_of_driver_init	equ	__end_of_driver_init-_driver_init
	
_driver_init:	
;incstack = 0
	opt	stack 13
; Regs used in _driver_init: [wreg+status,2+status,0+pclath+cstack]
	line	161
	
l1412:	
;main.c: 161: init_osc();
	fcall	_init_osc
	line	162
	
l1414:	
;main.c: 162: init_port();
	fcall	_init_port
	line	163
	
l1416:	
;main.c: 163: init_led();
	fcall	_init_led
	line	164
;main.c: 164: init_timer1();
	fcall	_init_timer1
	line	165
;main.c: 165: init_uart1();
	fcall	_init_uart1
	line	166
;main.c: 166: init_uart2();
	fcall	_init_uart2
	line	167
	
l1418:	
;main.c: 167: init_input();
	fcall	_init_input
	line	168
	
l1420:	
;main.c: 168: init_output();
	fcall	_init_output
	line	169
	
l1422:	
;main.c: 169: init_interrupt();
	fcall	_init_interrupt
	line	170
	
l271:	
	return
	opt stack 0
GLOBAL	__end_of_driver_init
	__end_of_driver_init:
	signat	_driver_init,88
	global	_init_uart2

;; *************** function _init_uart2 *****************
;; Defined at:
;;		line 143 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\uart.c"
	line	143
global __ptext12
__ptext12:	;psect for function _init_uart2
psect	text12
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\uart.c"
	line	143
	global	__size_of_init_uart2
	__size_of_init_uart2	equ	__end_of_init_uart2-_init_uart2
	
_init_uart2:	
;incstack = 0
	opt	stack 13
; Regs used in _init_uart2: [wreg+status,2]
	line	145
	
l1448:	
;uart.c: 145: (TRISGbits.TRISG3) = 0b0;
	movlb 6	; select bank6
	bcf	(781)^0300h,3	;volatile
	line	146
;uart.c: 146: (LATGbits.LATG3 = 0);
	movlb 7	; select bank7
	bcf	(909)^0380h,3	;volatile
	line	147
	
l1450:	
;uart.c: 147: SP2BRGL = 51;
	movlw	(033h)
	movlb 9	; select bank9
	movwf	(1171)^0480h	;volatile
	line	148
	
l1452:	
;uart.c: 148: SP2BRGH = 0;
	clrf	(1172)^0480h	;volatile
	line	149
	
l1454:	
;uart.c: 149: BAUD2CON = 0x08;
	movlw	(08h)
	movwf	(1175)^0480h	;volatile
	line	159
	
l1456:	
;uart.c: 159: (TRISGbits.TRISG1) = 0x00;
	movlb 6	; select bank6
	bcf	(781)^0300h,1	;volatile
	line	160
	
l1458:	
;uart.c: 160: (TRISGbits.TRISG2) = 0x01;
	bsf	(781)^0300h,2	;volatile
	line	161
	
l1460:	
;uart.c: 161: TX2STA = 0x20;
	movlw	(020h)
	movlb 9	; select bank9
	movwf	(1174)^0480h	;volatile
	line	170
	
l1462:	
;uart.c: 170: RC2STA = 0x90;
	movlw	(090h)
	movwf	(1173)^0480h	;volatile
	line	171
	
l1464:	
;uart.c: 171: RC2IE = 0x01;
	movlb 1	; select bank1
	bsf	(1189/8)^080h,(1189)&7	;volatile
	line	172
	
l458:	
	return
	opt stack 0
GLOBAL	__end_of_init_uart2
	__end_of_init_uart2:
	signat	_init_uart2,88
	global	_init_uart1

;; *************** function _init_uart1 *****************
;; Defined at:
;;		line 40 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	line	40
global __ptext13
__ptext13:	;psect for function _init_uart1
psect	text13
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\uart.c"
	line	40
	global	__size_of_init_uart1
	__size_of_init_uart1	equ	__end_of_init_uart1-_init_uart1
	
_init_uart1:	
;incstack = 0
	opt	stack 13
; Regs used in _init_uart1: [wreg+status,2]
	line	42
	
l1430:	
;uart.c: 42: (TRISCbits.TRISC5) = 0b0;
	movlb 1	; select bank1
	bcf	(142)^080h,5	;volatile
	line	43
;uart.c: 43: (LATCbits.LATC5 = 0);
	movlb 2	; select bank2
	bcf	(270)^0100h,5	;volatile
	line	44
	
l1432:	
;uart.c: 44: SP1BRGL = 51;
	movlw	(033h)
	movlb 3	; select bank3
	movwf	(411)^0180h	;volatile
	line	45
	
l1434:	
;uart.c: 45: SP1BRGH = 0;
	clrf	(412)^0180h	;volatile
	line	46
	
l1436:	
;uart.c: 46: BAUD1CON = 0x08;
	movlw	(08h)
	movwf	(415)^0180h	;volatile
	line	56
	
l1438:	
;uart.c: 56: (TRISCbits.TRISC6) = 0x00;
	movlb 1	; select bank1
	bcf	(142)^080h,6	;volatile
	line	57
	
l1440:	
;uart.c: 57: (TRISCbits.TRISC7) = 0x01;
	bsf	(142)^080h,7	;volatile
	line	58
	
l1442:	
;uart.c: 58: TX1STA = 0x20;
	movlw	(020h)
	movlb 3	; select bank3
	movwf	(414)^0180h	;volatile
	line	67
	
l1444:	
;uart.c: 67: RC1STA = 0x90;
	movlw	(090h)
	movwf	(413)^0180h	;volatile
	line	68
	
l1446:	
;uart.c: 68: RCIE = 0x01;
	movlb 1	; select bank1
	bsf	(1165/8)^080h,(1165)&7	;volatile
	line	69
	
l428:	
	return
	opt stack 0
GLOBAL	__end_of_init_uart1
	__end_of_init_uart1:
	signat	_init_uart1,88
	global	_init_timer1

;; *************** function _init_timer1 *****************
;; Defined at:
;;		line 15 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\timer.c"
	line	15
global __ptext14
__ptext14:	;psect for function _init_timer1
psect	text14
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\timer.c"
	line	15
	global	__size_of_init_timer1
	__size_of_init_timer1	equ	__end_of_init_timer1-_init_timer1
	
_init_timer1:	
;incstack = 0
	opt	stack 13
; Regs used in _init_timer1: [wreg]
	line	17
	
l1424:	
;timer.c: 17: TMR1H = 0xE0;
	movlw	(0E0h)
	movlb 0	; select bank0
	movwf	(23)	;volatile
	line	18
;timer.c: 18: TMR1L = 0xC0;
	movlw	(0C0h)
	movwf	(22)	;volatile
	line	19
;timer.c: 19: T1CON = 0x41;
	movlw	(041h)
	movwf	(24)	;volatile
	line	24
	
l1426:	
;timer.c: 24: TMR1IE = 0x01;
	movlb 1	; select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	25
	
l1428:	
;timer.c: 25: TMR1ON = 0x00;
	movlb 0	; select bank0
	bcf	(192/8),(192)&7	;volatile
	line	26
	
l357:	
	return
	opt stack 0
GLOBAL	__end_of_init_timer1
	__end_of_init_timer1:
	signat	_init_timer1,88
	global	_init_port

;; *************** function _init_port *****************
;; Defined at:
;;		line 144 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/8
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\main.c"
	line	144
global __ptext15
__ptext15:	;psect for function _init_port
psect	text15
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\main.c"
	line	144
	global	__size_of_init_port
	__size_of_init_port	equ	__end_of_init_port-_init_port
	
_init_port:	
;incstack = 0
	opt	stack 13
; Regs used in _init_port: [status,2]
	line	146
	
l1410:	
;main.c: 146: ANSELA = 0x00;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	147
;main.c: 147: ANSELE = 0x00;
	clrf	(400)^0180h	;volatile
	line	148
;main.c: 148: ANSELF = 0x00;
	movlb 8	; select bank8
	clrf	(1036)^0400h	;volatile
	line	149
;main.c: 149: ANSELG = 0x00;
	clrf	(1037)^0400h	;volatile
	line	150
	
l268:	
	return
	opt stack 0
GLOBAL	__end_of_init_port
	__end_of_init_port:
	signat	_init_port,88
	global	_init_output

;; *************** function _init_output *****************
;; Defined at:
;;		line 17 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\output.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/2
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\output.c"
	line	17
global __ptext16
__ptext16:	;psect for function _init_output
psect	text16
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\output.c"
	line	17
	global	__size_of_init_output
	__size_of_init_output	equ	__end_of_init_output-_init_output
	
_init_output:	
;incstack = 0
	opt	stack 13
; Regs used in _init_output: []
	line	20
	
l1466:	
;output.c: 20: (TRISBbits.TRISB5)=0;
	bcf	(141)^080h,5	;volatile
	line	21
;output.c: 21: (TRISBbits.TRISB4)=0;
	bcf	(141)^080h,4	;volatile
	line	22
;output.c: 22: (TRISBbits.TRISB3)=0;
	bcf	(141)^080h,3	;volatile
	line	23
;output.c: 23: (TRISBbits.TRISB2)=0;
	bcf	(141)^080h,2	;volatile
	line	24
;output.c: 24: (TRISBbits.TRISB1)=0;
	bcf	(141)^080h,1	;volatile
	line	25
;output.c: 25: (TRISBbits.TRISB0)=0;
	bcf	(141)^080h,0	;volatile
	line	26
;output.c: 26: (TRISAbits.TRISA4)=0;
	bcf	(140)^080h,4	;volatile
	line	27
;output.c: 27: (TRISAbits.TRISA5)=0;
	bcf	(140)^080h,5	;volatile
	line	29
;output.c: 29: (TRISDbits.TRISD0)=0;
	bcf	(143)^080h,0	;volatile
	line	30
;output.c: 30: (TRISDbits.TRISD1)=0;
	bcf	(143)^080h,1	;volatile
	line	31
;output.c: 31: (TRISDbits.TRISD2)=0;
	bcf	(143)^080h,2	;volatile
	line	32
;output.c: 32: (TRISDbits.TRISD3)=0;
	bcf	(143)^080h,3	;volatile
	line	33
;output.c: 33: (TRISDbits.TRISD4)=0;
	bcf	(143)^080h,4	;volatile
	line	34
;output.c: 34: (TRISDbits.TRISD5)=0;
	bcf	(143)^080h,5	;volatile
	line	35
;output.c: 35: (TRISDbits.TRISD6)=0;
	bcf	(143)^080h,6	;volatile
	line	36
;output.c: 36: (TRISDbits.TRISD7)=0;
	bcf	(143)^080h,7	;volatile
	line	39
;output.c: 39: LATB5=0;
	movlb 2	; select bank2
	bcf	(2157/8)^0100h,(2157)&7	;volatile
	line	40
;output.c: 40: LATB4=0;
	bcf	(2156/8)^0100h,(2156)&7	;volatile
	line	41
;output.c: 41: LATB3=0;
	bcf	(2155/8)^0100h,(2155)&7	;volatile
	line	42
;output.c: 42: LATB2=0;
	bcf	(2154/8)^0100h,(2154)&7	;volatile
	line	43
;output.c: 43: LATB1=0;
	bcf	(2153/8)^0100h,(2153)&7	;volatile
	line	44
;output.c: 44: LATB0=0;
	bcf	(2152/8)^0100h,(2152)&7	;volatile
	line	45
;output.c: 45: LATA4=0;
	bcf	(2148/8)^0100h,(2148)&7	;volatile
	line	46
;output.c: 46: LATA5=0;
	bcf	(2149/8)^0100h,(2149)&7	;volatile
	line	48
;output.c: 48: LATD0=0;
	bcf	(2168/8)^0100h,(2168)&7	;volatile
	line	49
;output.c: 49: LATD1=0;
	bcf	(2169/8)^0100h,(2169)&7	;volatile
	line	50
;output.c: 50: LATD2=0;
	bcf	(2170/8)^0100h,(2170)&7	;volatile
	line	51
;output.c: 51: LATD3=0;
	bcf	(2171/8)^0100h,(2171)&7	;volatile
	line	52
;output.c: 52: LATD4=0;
	bcf	(2172/8)^0100h,(2172)&7	;volatile
	line	53
;output.c: 53: LATD5=0;
	bcf	(2173/8)^0100h,(2173)&7	;volatile
	line	54
;output.c: 54: LATD6=0;
	bcf	(2174/8)^0100h,(2174)&7	;volatile
	line	55
;output.c: 55: LATD7=0;
	bcf	(2175/8)^0100h,(2175)&7	;volatile
	line	56
	
l341:	
	return
	opt stack 0
GLOBAL	__end_of_init_output
	__end_of_init_output:
	signat	_init_output,88
	global	_init_osc

;; *************** function _init_osc *****************
;; Defined at:
;;		line 132 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\main.c"
	line	132
global __ptext17
__ptext17:	;psect for function _init_osc
psect	text17
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\main.c"
	line	132
	global	__size_of_init_osc
	__size_of_init_osc	equ	__end_of_init_osc-_init_osc
	
_init_osc:	
;incstack = 0
	opt	stack 13
; Regs used in _init_osc: [wreg+status,2+status,0]
	line	134
	
l1406:	
;main.c: 134: OSCCON = 0x70;
	movlw	(070h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	135
	
l1408:	
;main.c: 135: WDTCONbits.WDTPS=0b01110;
	movf	(151)^080h,w	;volatile
	andlw	not (((1<<5)-1)<<1)
	iorlw	(0Eh & ((1<<5)-1))<<1
	movwf	(151)^080h	;volatile
	line	136
	
l265:	
	return
	opt stack 0
GLOBAL	__end_of_init_osc
	__end_of_init_osc:
	signat	_init_osc,88
	global	_init_led

;; *************** function _init_led *****************
;; Defined at:
;;		line 18 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 1F/8
;;		On exit  : 1F/2
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\led.c"
	line	18
global __ptext18
__ptext18:	;psect for function _init_led
psect	text18
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\led.c"
	line	18
	global	__size_of_init_led
	__size_of_init_led	equ	__end_of_init_led-_init_led
	
_init_led:	
;incstack = 0
	opt	stack 13
; Regs used in _init_led: []
	line	20
	
l1404:	
;led.c: 20: (TRISCbits.TRISC2) = 0;
	movlb 1	; select bank1
	bcf	(142)^080h,2	;volatile
	line	21
;led.c: 21: (TRISCbits.TRISC3) = 0;
	bcf	(142)^080h,3	;volatile
	line	22
;led.c: 22: (TRISCbits.TRISC4) = 0;
	bcf	(142)^080h,4	;volatile
	line	24
;led.c: 24: (LATCbits.LATC2 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,2	;volatile
	line	25
;led.c: 25: (LATCbits.LATC3 = 0x01);
	bsf	(270)^0100h,3	;volatile
	line	26
;led.c: 26: (LATCbits.LATC4 = 0x01);
	bsf	(270)^0100h,4	;volatile
	line	27
	
l198:	
	return
	opt stack 0
GLOBAL	__end_of_init_led
	__end_of_init_led:
	signat	_init_led,88
	global	_init_interrupt

;; *************** function _init_interrupt *****************
;; Defined at:
;;		line 141 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 1F/2
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\interrupt.c"
	line	141
global __ptext19
__ptext19:	;psect for function _init_interrupt
psect	text19
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\interrupt.c"
	line	141
	global	__size_of_init_interrupt
	__size_of_init_interrupt	equ	__end_of_init_interrupt-_init_interrupt
	
_init_interrupt:	
;incstack = 0
	opt	stack 13
; Regs used in _init_interrupt: []
	line	143
	
l1402:	
;interrupt.c: 143: PEIE = 0x01;
	bsf	(94/8),(94)&7	;volatile
	line	144
;interrupt.c: 144: GIE = 0x01;
	bsf	(95/8),(95)&7	;volatile
	line	145
	
l191:	
	return
	opt stack 0
GLOBAL	__end_of_init_interrupt
	__end_of_init_interrupt:
	signat	_init_interrupt,88
	global	_init_input

;; *************** function _init_input *****************
;; Defined at:
;;		line 18 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\input.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\input.c"
	line	18
global __ptext20
__ptext20:	;psect for function _init_input
psect	text20
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\input.c"
	line	18
	global	__size_of_init_input
	__size_of_init_input	equ	__end_of_init_input-_init_input
	
_init_input:	
;incstack = 0
	opt	stack 13
; Regs used in _init_input: []
	line	21
	
l1364:	
;input.c: 21: (TRISEbits.TRISE0)=1;
	bsf	(144)^080h,0	;volatile
	line	22
;input.c: 22: (TRISEbits.TRISE1)=1;
	bsf	(144)^080h,1	;volatile
	line	23
;input.c: 23: (TRISEbits.TRISE2)=1;
	bsf	(144)^080h,2	;volatile
	line	24
;input.c: 24: (TRISEbits.TRISE3)=1;
	bsf	(144)^080h,3	;volatile
	line	25
;input.c: 25: (TRISEbits.TRISE4)=1;
	bsf	(144)^080h,4	;volatile
	line	26
;input.c: 26: (TRISEbits.TRISE5)=1;
	bsf	(144)^080h,5	;volatile
	line	27
;input.c: 27: (TRISEbits.TRISE6)=1;
	bsf	(144)^080h,6	;volatile
	line	28
;input.c: 28: (TRISEbits.TRISE7)=1;
	bsf	(144)^080h,7	;volatile
	line	30
;input.c: 30: (TRISFbits.TRISF1)=1;
	movlb 6	; select bank6
	bsf	(780)^0300h,1	;volatile
	line	31
;input.c: 31: (TRISFbits.TRISF2)=1;
	bsf	(780)^0300h,2	;volatile
	line	32
;input.c: 32: (TRISFbits.TRISF3)=1;
	bsf	(780)^0300h,3	;volatile
	line	33
;input.c: 33: (TRISFbits.TRISF4)=1;
	bsf	(780)^0300h,4	;volatile
	line	34
;input.c: 34: (TRISFbits.TRISF5)=1;
	bsf	(780)^0300h,5	;volatile
	line	35
;input.c: 35: (TRISFbits.TRISF6)=1;
	bsf	(780)^0300h,6	;volatile
	line	36
;input.c: 36: (TRISFbits.TRISF7)=1;
	bsf	(780)^0300h,7	;volatile
	line	37
;input.c: 37: (TRISGbits.TRISG4)=1;
	bsf	(781)^0300h,4	;volatile
	line	39
;input.c: 39: TRISAbits.TRISA0=1;
	movlb 1	; select bank1
	bsf	(140)^080h,0	;volatile
	line	40
;input.c: 40: TRISAbits.TRISA1=1;
	bsf	(140)^080h,1	;volatile
	line	41
;input.c: 41: TRISAbits.TRISA2=1;
	bsf	(140)^080h,2	;volatile
	line	42
;input.c: 42: TRISAbits.TRISA3=1;
	bsf	(140)^080h,3	;volatile
	line	44
	
l103:	
	return
	opt stack 0
GLOBAL	__end_of_init_input
	__end_of_init_input:
	signat	_init_input,88
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 26 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\delay.c"
;; Parameters:    Size  Location     Type
;;  count           2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  j               2    2[BANK0 ] unsigned short 
;;  i               2    0[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         2       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         2       4       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\delay.c"
	line	26
global __ptext21
__ptext21:	;psect for function _delay_ms
psect	text21
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\delay.c"
	line	26
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	stack 14
; Regs used in _delay_ms: [wreg+status,2+status,0]
	line	30
	
l1634:	
;delay.c: 28: WORD i, j;
;delay.c: 30: for (i = 0; i < count; i++)
	clrf	(delay_ms@i)
	clrf	(delay_ms@i+1)
	goto	l1648
	line	32
	
l1636:	
;delay.c: 31: {
;delay.c: 32: for (j = 0; j < 150; j++)
	clrf	(delay_ms@j)
	clrf	(delay_ms@j+1)
	line	33
	
l10:	
	line	34
;delay.c: 33: {
;delay.c: 34: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	32
	
l1642:	
	movlb 0	; select bank0
	incf	(delay_ms@j),f
	skipnz
	incf	(delay_ms@j+1),f
	
l1644:	
	movlw	high(096h)
	subwf	(delay_ms@j+1),w
	movlw	low(096h)
	skipnz
	subwf	(delay_ms@j),w
	skipc
	goto	u1831
	goto	u1830
u1831:
	goto	l10
u1830:
	line	30
	
l1646:	
	incf	(delay_ms@i),f
	skipnz
	incf	(delay_ms@i+1),f
	
l1648:	
	movf	(delay_ms@count+1),w
	subwf	(delay_ms@i+1),w
	skipz
	goto	u1845
	movf	(delay_ms@count),w
	subwf	(delay_ms@i),w
u1845:
	skipc
	goto	u1841
	goto	u1840
u1841:
	goto	l1636
u1840:
	line	37
	
l13:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4216
	global	_application_init

;; *************** function _application_init *****************
;; Defined at:
;;		line 189 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\main.c"
	line	189
global __ptext22
__ptext22:	;psect for function _application_init
psect	text22
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\main.c"
	line	189
	global	__size_of_application_init
	__size_of_application_init	equ	__end_of_application_init-_application_init
	
_application_init:	
;incstack = 0
	opt	stack 14
; Regs used in _application_init: [status,2]
	line	192
	
l1470:	
;main.c: 192: TMR1ON = 0x01;
	bsf	(192/8),(192)&7	;volatile
	line	194
	
l1472:	
;main.c: 194: _sys_tick_count = 0x00;
	clrf	(__sys_tick_count)
	clrf	(__sys_tick_count+1)
	line	195
;main.c: 195: read_input_node_tick = 0x00;
	clrf	(_read_input_node_tick)
	clrf	(_read_input_node_tick+1)
	line	196
;main.c: 196: read_input_node_event=0x00;
	clrf	(_read_input_node_event)
	line	197
;main.c: 197: input_node_level=0x00;
	clrf	(_input_node_level)
	clrf	(_input_node_level+1)
	line	198
	
l277:	
	return
	opt stack 0
GLOBAL	__end_of_application_init
	__end_of_application_init:
	signat	_application_init,88
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 21 in file "D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  r2_data         1    3[COMMON] unsigned char 
;;  r1_data         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1E/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry
psect	intentry
	file	"D:\BYT-WORK\BYT-MCU\byt-fccs-vtest\src\interrupt.c"
	line	21
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
;incstack = 0
	opt	stack 12
; Regs used in _isr: [wreg+fsr1l+fsr1h+status,2+status,0]
psect	intentry
	pagesel	$
	line	26
	
i1l1558:	
;interrupt.c: 23: unsigned char r1_data,r2_data;
;interrupt.c: 26: if(TMR1IE && TMR1IF)
	movlb 1	; select bank1
	btfss	(1160/8)^080h,(1160)&7	;volatile
	goto	u162_21
	goto	u162_20
u162_21:
	goto	i1l1606
u162_20:
	
i1l1560:	
	movlb 0	; select bank0
	btfss	(136/8),(136)&7	;volatile
	goto	u163_21
	goto	u163_20
u163_21:
	goto	i1l1606
u163_20:
	line	28
	
i1l1562:	
;interrupt.c: 27: {
;interrupt.c: 28: TMR1IF = 0x00;
	bcf	(136/8),(136)&7	;volatile
	line	29
	
i1l1564:	
;interrupt.c: 29: TMR1H = 0xE0;
	movlw	(0E0h)
	movwf	(23)	;volatile
	line	30
;interrupt.c: 30: TMR1L = 0xC0;
	movlw	(0C0h)
	movwf	(22)	;volatile
	line	32
	
i1l1566:	
;interrupt.c: 32: _sys_tick_count++;
	incf	(__sys_tick_count),f
	skipnz
	incf	(__sys_tick_count+1),f
	line	33
	
i1l1568:	
;interrupt.c: 33: if(_sys_tick_count>500)
	movlw	high(01F5h)
	subwf	(__sys_tick_count+1),w
	movlw	low(01F5h)
	skipnz
	subwf	(__sys_tick_count),w
	skipc
	goto	u164_21
	goto	u164_20
u164_21:
	goto	i1l1574
u164_20:
	line	35
	
i1l1570:	
;interrupt.c: 34: {
;interrupt.c: 35: _sys_tick_count=0x00;
	clrf	(__sys_tick_count)
	clrf	(__sys_tick_count+1)
	line	36
	
i1l1572:	
;interrupt.c: 36: (LATCbits.LATC2 ^= 0x01);
	movlw	1<<2
	movlb 2	; select bank2
	xorwf	(270)^0100h,f	;volatile
	line	39
	
i1l1574:	
;interrupt.c: 37: }
;interrupt.c: 39: read_input_node_tick++;
	movlb 0	; select bank0
	incf	(_read_input_node_tick),f
	skipnz
	incf	(_read_input_node_tick+1),f
	line	40
	
i1l1576:	
;interrupt.c: 40: if(read_input_node_tick>=50)
	movlw	high(032h)
	subwf	(_read_input_node_tick+1),w
	movlw	low(032h)
	skipnz
	subwf	(_read_input_node_tick),w
	skipc
	goto	u165_21
	goto	u165_20
u165_21:
	goto	i1l1582
u165_20:
	line	42
	
i1l1578:	
;interrupt.c: 41: {
;interrupt.c: 42: read_input_node_tick=0x00;
	clrf	(_read_input_node_tick)
	clrf	(_read_input_node_tick+1)
	line	43
	
i1l1580:	
;interrupt.c: 43: read_input_node_event=0x01;
	clrf	(_read_input_node_event)
	incf	(_read_input_node_event),f
	line	46
	
i1l1582:	
;interrupt.c: 44: }
;interrupt.c: 46: if (uart1_time_count > 0x00)
	movf	(_uart1_time_count),w
	skipz
	goto	u166_20
	goto	i1l1594
u166_20:
	line	48
	
i1l1584:	
;interrupt.c: 47: {
;interrupt.c: 48: uart1_time_count--;
	decf	(_uart1_time_count),f
	line	49
;interrupt.c: 49: if(uart1_time_count==0)
	movf	(_uart1_time_count),f
	skipz
	goto	u167_21
	goto	u167_20
u167_21:
	goto	i1l1594
u167_20:
	line	51
	
i1l1586:	
;interrupt.c: 50: {
;interrupt.c: 51: if(uart1_receive_byte_count==0x08)
	movf	(_uart1_receive_byte_count),w
	xorlw	08h&0ffh
	skipz
	goto	u168_21
	goto	u168_20
u168_21:
	goto	i1l170
u168_20:
	line	53
	
i1l1588:	
;interrupt.c: 52: {
;interrupt.c: 53: uart1_receive_flag=TRUE;
	clrf	(_uart1_receive_flag)
	incf	(_uart1_receive_flag),f
	line	54
;interrupt.c: 54: }
	goto	i1l1594
	line	55
	
i1l170:	
	line	57
;interrupt.c: 55: else
;interrupt.c: 56: {
;interrupt.c: 57: if (RC1STAbits.FERR || RC1STAbits.OERR)
	movlb 3	; select bank3
	btfsc	(413)^0180h,2	;volatile
	goto	u169_21
	goto	u169_20
u169_21:
	goto	i1l174
u169_20:
	
i1l1590:	
	btfss	(413)^0180h,1	;volatile
	goto	u170_21
	goto	u170_20
u170_21:
	goto	i1l1592
u170_20:
	
i1l174:	
	line	59
;interrupt.c: 58: {
;interrupt.c: 59: RC1STAbits.CREN = 0x00;
	bcf	(413)^0180h,4	;volatile
	line	60
;interrupt.c: 60: RC1STAbits.SPEN = 0x00;
	bcf	(413)^0180h,7	;volatile
	line	61
;interrupt.c: 61: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	62
;interrupt.c: 62: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	63
;interrupt.c: 63: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	64
;interrupt.c: 64: RC1STAbits.CREN = 0x01;
	movlb 3	; select bank3
	bsf	(413)^0180h,4	;volatile
	line	65
;interrupt.c: 65: RC1STAbits.SPEN = 0x01;
	bsf	(413)^0180h,7	;volatile
	line	67
	
i1l1592:	
;interrupt.c: 66: }
;interrupt.c: 67: uart1_receive_byte_count=0x00;
	clrf	(_uart1_receive_byte_count)
	line	72
	
i1l1594:	
;interrupt.c: 68: }
;interrupt.c: 69: }
;interrupt.c: 70: }
;interrupt.c: 72: if(uart2_time_count>0)
	movlb 0	; select bank0
	movf	(_uart2_time_count),w
	skipz
	goto	u171_20
	goto	i1l1606
u171_20:
	line	74
	
i1l1596:	
;interrupt.c: 73: {
;interrupt.c: 74: uart2_time_count--;
	decf	(_uart2_time_count),f
	line	75
;interrupt.c: 75: if(uart2_time_count==0)
	movf	(_uart2_time_count),f
	skipz
	goto	u172_21
	goto	u172_20
u172_21:
	goto	i1l1606
u172_20:
	line	77
	
i1l1598:	
;interrupt.c: 76: {
;interrupt.c: 77: if(uart2_receive_byte_count=0x08)
	movlw	(08h)
	movwf	(_uart2_receive_byte_count)
	line	79
	
i1l1600:	
;interrupt.c: 78: {
;interrupt.c: 79: uart2_receive_flag=TRUE;
	clrf	(_uart2_receive_flag)
	incf	(_uart2_receive_flag),f
	line	100
;interrupt.c: 80: }
	
i1l1606:	
;interrupt.c: 94: }
;interrupt.c: 95: }
;interrupt.c: 96: }
;interrupt.c: 98: }
;interrupt.c: 100: if(RC1IF && RC1IE)
	movlb 0	; select bank0
	btfss	(141/8),(141)&7	;volatile
	goto	u173_21
	goto	u173_20
u173_21:
	goto	i1l1620
u173_20:
	
i1l1608:	
	movlb 1	; select bank1
	btfss	(1165/8)^080h,(1165)&7	;volatile
	goto	u174_21
	goto	u174_20
u174_21:
	goto	i1l1620
u174_20:
	line	102
	
i1l1610:	
;interrupt.c: 101: {
;interrupt.c: 102: r1_data=RC1REG;
	movlb 3	; select bank3
	movf	(409)^0180h,w	;volatile
	movwf	(isr@r1_data)
	line	103
;interrupt.c: 103: uart1_time_count=0x05;
	movlw	(05h)
	movwf	(_uart1_time_count)
	line	105
;interrupt.c: 105: if( (uart1_receive_byte_count<8)&&(uart1_receive_flag==FALSE) )
	movlw	(08h)
	subwf	(_uart1_receive_byte_count),w
	skipnc
	goto	u175_21
	goto	u175_20
u175_21:
	goto	i1l1620
u175_20:
	
i1l1612:	
	movf	(_uart1_receive_flag),f
	skipz
	goto	u176_21
	goto	u176_20
u176_21:
	goto	i1l1620
u176_20:
	line	107
	
i1l1614:	
;interrupt.c: 106: {
;interrupt.c: 107: uart1_rx_buf[uart1_receive_byte_count]=r1_data;
	movf	(_uart1_receive_byte_count),w
	addlw	low 8488
	movwf	(??_isr+0)+0
	clrf	((??_isr+0)+0)+1
	movlw	high 8488
	addwfc	((??_isr+0)+0)+1,f
	movf	0+(??_isr+0)+0,w
	movwf	fsr1l
	movf	1+(??_isr+0)+0,w
	movwf	fsr1h
	movf	(isr@r1_data),w
	movwf	indf1
	line	108
	
i1l1616:	
;interrupt.c: 108: uart1_receive_byte_count++;
	incf	(_uart1_receive_byte_count),f
	line	109
;interrupt.c: 109: if(uart1_rx_buf[0]==slave_address)
	movlw	low(8488)
	movwf	fsr1l
	movlw	high(8488)
	movwf	fsr1h
	movf	indf1,w
	xorwf	(_slave_address),w
	skipz
	goto	u177_21
	goto	u177_20
u177_21:
	goto	i1l1620
u177_20:
	line	111
	
i1l1618:	
;interrupt.c: 110: {
;interrupt.c: 111: uart1_receive_byte_count++;
	incf	(_uart1_receive_byte_count),f
	line	116
	
i1l1620:	
;interrupt.c: 112: }
;interrupt.c: 113: }
;interrupt.c: 114: }
;interrupt.c: 116: if(RC2IF && RC2IE)
	movlb 0	; select bank0
	btfss	(165/8),(165)&7	;volatile
	goto	u178_21
	goto	u178_20
u178_21:
	goto	i1l188
u178_20:
	
i1l1622:	
	movlb 1	; select bank1
	btfss	(1189/8)^080h,(1189)&7	;volatile
	goto	u179_21
	goto	u179_20
u179_21:
	goto	i1l188
u179_20:
	line	118
	
i1l1624:	
;interrupt.c: 117: {
;interrupt.c: 118: r2_data=RC2REG;
	movlb 9	; select bank9
	movf	(1169)^0480h,w	;volatile
	movwf	(isr@r2_data)
	line	119
;interrupt.c: 119: uart2_time_count=0x05;
	movlw	(05h)
	movlb 0	; select bank0
	movwf	(_uart2_time_count)
	line	121
;interrupt.c: 121: if( (uart2_receive_byte_count<8)&&(uart2_receive_flag==FALSE) )
	movlw	(08h)
	subwf	(_uart2_receive_byte_count),w
	skipnc
	goto	u180_21
	goto	u180_20
u180_21:
	goto	i1l188
u180_20:
	
i1l1626:	
	movf	(_uart2_receive_flag),f
	skipz
	goto	u181_21
	goto	u181_20
u181_21:
	goto	i1l188
u181_20:
	line	123
	
i1l1628:	
;interrupt.c: 122: {
;interrupt.c: 123: uart2_rx_buf[uart2_receive_byte_count]=r2_data;
	movf	(_uart2_receive_byte_count),w
	addlw	_uart2_rx_buf&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(isr@r2_data),w
	movwf	indf1
	line	125
	
i1l1630:	
;interrupt.c: 125: if(uart2_rx_buf[0]==slave_address)
	movf	(_uart2_rx_buf),w
	xorwf	(_slave_address),w
	skipz
	goto	u182_21
	goto	u182_20
u182_21:
	goto	i1l188
u182_20:
	line	127
	
i1l1632:	
;interrupt.c: 126: {
;interrupt.c: 127: uart2_receive_byte_count++;
	incf	(_uart2_receive_byte_count),f
	line	133
	
i1l188:	
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,88
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
global __pbssBIGRAM
__pbssBIGRAM	equ	8488
	end
