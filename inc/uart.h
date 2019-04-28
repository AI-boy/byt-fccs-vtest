
#ifndef _BYT_UART_H
#define _BYT_UART_H

//**--------------包含文件-----------------------------------------------------

//**--------------宏定义-------------------------------------------------------
#define FRQ_SYS      8000000 // 系统时钟
#define BDRT         9600 // 波特率
#define BDRT_S_H     0  // (FRQ_SYS / (16 * BDRT) - 1) / 256
#define BDRT_S_L     51 // (FRQ_SYS / (16 * BDRT) - 1) % 256

#define RS485CH1_TRIS			(TRISCbits.TRISC5) 		// RC5
#define RS485CH1_SEND          	(LATCbits.LATC5 = 1) 	// 输出高电平
#define RS485CH1_RECEIVE      	(LATCbits.LATC5 = 0) 	// 输出低电平

#define RS485CH2_TRIS			(TRISGbits.TRISG3) 		// RG3
#define RS485CH2_SEND          	(LATGbits.LATG3 = 1) 	// 输出高电平
#define RS485CH2_RECEIVE      	(LATGbits.LATG3 = 0) 	// 输出低电平

#define UART1_TX_TRIS 			(TRISCbits.TRISC6) 		// RC6
#define UART1_RX_TRIS  			(TRISCbits.TRISC7) 		// RC7

#define UART2_TX_TRIS 			(TRISGbits.TRISG1) 		// RG1
#define UART2_RX_TRIS  			(TRISGbits.TRISG2) 		// RG2
//**--------------全局变量-------------------------------

extern unsigned char uart1_rx_buf[100];

extern unsigned char uart1_tx_buf[100];

extern unsigned char uart2_rx_buf[32];

extern unsigned char uart2_tx_buf[32];

extern unsigned char uart1_time_count;

extern unsigned char uart1_receive_byte_count;

extern BOOL uart1_receive_flag;

extern unsigned char uart2_time_count;

extern unsigned char uart2_receive_byte_count;

extern BOOL uart2_receive_flag;

//**--------------函数申明-----------------------------------------------------
extern void init_uart1(void);
	
extern void uart1_send_byte(unsigned char data);

extern void uart1_send_nbyte(unsigned char *data,unsigned int size);
	
extern unsigned char uart1_read_byte(void);
	
extern void uart1_read_nbyte(unsigned char *buffer,unsigned char length);	
	
extern void init_uart2(void);
	
extern void uart2_send_byte(unsigned char data);

extern void uart2_send_nbyte(unsigned char *data,unsigned int size);
	
extern unsigned char uart2_read_byte(void);
	
extern void uart2_read_nbyte(unsigned char *buffer,unsigned char length);

extern void handle_uart1_buf(void);

extern void handle_uart2_buf(void);




#endif // _BYT_UART_H