
#ifndef _BYT_LED_H
#define _BYT_LED_H

//**--------------�����ļ�-----------------------------------------------------

//**--------------�궨��-------------------------------------------------------

#define RUN_LED_TRIS			(TRISCbits.TRISC2) 			// RC2
#define RUN_LED_OFF				(LATCbits.LATC2 = 0x00) 	// ����͵�ƽ
#define RUN_LED_ON				(LATCbits.LATC2 = 0x01) 	// ����ߵ�ƽ
#define RUN_LED_TOG				(LATCbits.LATC2 ^= 0x01) 	// �������ƽ

#define RS1_LED_TRIS			(TRISCbits.TRISC3) 			// RC3
#define RS1_LED_OFF				(LATCbits.LATC3 = 0x00) 	// ����͵�ƽ
#define RS1_LED_ON				(LATCbits.LATC3 = 0x01) 	// ����ߵ�ƽ
#define RS1_LED_TOG				(LATCbits.LATC3 ^= 0x01) 	// �������ƽ

#define RS2_LED_TRIS			(TRISCbits.TRISC4) 			// RC4
#define RS2_LED_OFF				(LATCbits.LATC4 = 0x00) 	// ����͵�ƽ
#define RS2_LED_ON				(LATCbits.LATC4 = 0x01) 	// ����ߵ�ƽ
#define RS2_LED_TOG				(LATCbits.LATC4 ^= 0x01) 	// �������ƽ 

//**--------------���ݽṹ-----------------------------------------------------

//**--------------��������-----------------------------------------------------
void init_led(void);
	
//**--------------ȫ�ֱ���-----------------------------------------------------

#endif // _BYT_LED_H
