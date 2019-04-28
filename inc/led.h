
#ifndef _BYT_LED_H
#define _BYT_LED_H

//**--------------包含文件-----------------------------------------------------

//**--------------宏定义-------------------------------------------------------

#define RUN_LED_TRIS			(TRISCbits.TRISC2) 			// RC2
#define RUN_LED_OFF				(LATCbits.LATC2 = 0x00) 	// 输出低电平
#define RUN_LED_ON				(LATCbits.LATC2 = 0x01) 	// 输出高电平
#define RUN_LED_TOG				(LATCbits.LATC2 ^= 0x01) 	// 输出反电平

#define RS1_LED_TRIS			(TRISCbits.TRISC3) 			// RC3
#define RS1_LED_OFF				(LATCbits.LATC3 = 0x00) 	// 输出低电平
#define RS1_LED_ON				(LATCbits.LATC3 = 0x01) 	// 输出高电平
#define RS1_LED_TOG				(LATCbits.LATC3 ^= 0x01) 	// 输出反电平

#define RS2_LED_TRIS			(TRISCbits.TRISC4) 			// RC4
#define RS2_LED_OFF				(LATCbits.LATC4 = 0x00) 	// 输出低电平
#define RS2_LED_ON				(LATCbits.LATC4 = 0x01) 	// 输出高电平
#define RS2_LED_TOG				(LATCbits.LATC4 ^= 0x01) 	// 输出反电平 

//**--------------数据结构-----------------------------------------------------

//**--------------函数申明-----------------------------------------------------
void init_led(void);
	
//**--------------全局变量-----------------------------------------------------

#endif // _BYT_LED_H
