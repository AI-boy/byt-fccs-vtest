#ifndef _BYT_OUTPUT_H
#define _BYT_OUTPUT_H



//----------------------------------------------16Â·¼ÌµçÆ÷Êä³ö
#define DO0_TRIS			(TRISBbits.TRISB5) // RB5
#define DO1_TRIS			(TRISBbits.TRISB4) // RB4
#define DO2_TRIS			(TRISBbits.TRISB3) // RB3
#define DO3_TRIS			(TRISBbits.TRISB2) // RB2
#define DO4_TRIS			(TRISBbits.TRISB1) // RB1
#define DO5_TRIS			(TRISBbits.TRISB0) // RB0
#define DO6_TRIS			(TRISAbits.TRISA4) // RA4
#define DO7_TRIS			(TRISAbits.TRISA5) // RA5

#define DO8_TRIS			(TRISDbits.TRISD0) // RD0
#define DO9_TRIS			(TRISDbits.TRISD1) // RD1
#define DOA_TRIS			(TRISDbits.TRISD2) // RD2
#define DOB_TRIS			(TRISDbits.TRISD3) // RD3
#define DOC_TRIS			(TRISDbits.TRISD4) // RD4
#define DOD_TRIS			(TRISDbits.TRISD5) // RD5
#define DOE_TRIS			(TRISDbits.TRISD6) // RD6
#define DOF_TRIS			(TRISDbits.TRISD7) // RD7

#define DO0					LATB5
#define DO1					LATB4
#define DO2					LATB3
#define DO3					LATB2
#define DO4					LATB1
#define DO5					LATB0
#define DO6					LATA4
#define DO7					LATA5

#define DO8					LATD0
#define DO9					LATD1
#define DOA					LATD2
#define DOB					LATD3
#define DOC					LATD4
#define DOD					LATD5
#define DOE					LATD6
#define DOF					LATD7




extern void init_output(void);

extern void write_node(void);




#endif // _BYT_OUTPUT_H