
//**--------------头文件-------------------------------------------------------
#include <xc.h>
#include <GenericTypeDefs.h>

#include "userdefine.h"

//**--------------全局变量-----------------------------------------------------


unsigned char uart1_rx_buf[100];

unsigned char uart1_tx_buf[100];

unsigned char uart2_rx_buf[32];

unsigned char uart2_tx_buf[32];

unsigned char uart1_time_count=0x00;

unsigned char uart1_receive_byte_count=0;

BOOL uart1_receive_flag=FALSE;

unsigned char uart2_time_count=0x00;

unsigned char uart2_receive_byte_count=0;

BOOL uart2_receive_flag=FALSE;




/******************************************************************************
** 函数名称 : init_uart1
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : UART1初始化 9600,8,n,1
*******************************************************************************/
void init_uart1(void)
{
	RS485CH1_TRIS = 0b0; 	// 配置RC5为输出
	RS485CH1_RECEIVE; 		// 输出低电平，默认为接收
	SP1BRGL = BDRT_S_L;
	SP1BRGH = BDRT_S_H;
	BAUD1CON = 0x08; // 波特率控制寄存器
  	                 // bit7 ABDOVF 自动波特率检测溢出位 异步模式:1 = 自动波特率定时器溢出 0 = 自动波特率定时器未溢出 同步模式:无关位 R/W-0 
  	                 // bit6 RCIDL 接收空闲标志位 异步模式:1 = 接收器空闲 0 = 已检测到启动位且接收器处于活动状态 同步模式:无关位 R-1 
  	                 // bit5 DTRXP 数据接收极性选择位 异步模式:1 = 接收数据反相(低电平有效) 0 = 接收数据未反相(高电平有效) 同步模式:无关位 R/W-0 
  	                 // bit4 
  	                 // bit3 BRG16 16位波特率发生器位 1 = 使用16位波特率发生器(SPBRGHx:SPBRGx) 0 = 使用8位波特率发生器(SPBRGx)
  	                 // bit2
  	                 // bit1
  	                 // bit0
  	// 使用16位波特率发生器
  	UART1_TX_TRIS = 0x00;
  	UART1_RX_TRIS = 0x01;
	TX1STA = 0x20;
  	               // bit7 CSRC:时钟源选择位 异步模式:无关位 同步模式:1 = 主模式(时钟由内部BRG产生) 0 = 从模式(时钟来自外部时钟源) R/W-0
  	               // bit6 TX9:9位发送使能位 1 = 选择9位发送 0 = 选择8位发送 R/W-0
  	               // bit5 TXEN:发送使能位 1 = 使能发送 0 = 禁止发送 R/W-0
  	               // bit4 SYNC:EUSART模式选择位 1 = 同步模式 0 = 异步模式 R/W-0
  	               // bit3 SENDB:发送间隔字符位 异步模式:1 = 在下一次发送时发送同步间隔字符(完成时由硬件清零) 0 = 同步间隔字符发送完成 同步模式:无关位 R/W-0
  	               // bit2 BRGH:高波特率选择位 异步模式:1 = 高速 0 = 低速 同步模式:在此模式下未使用 R/W-0
  	               // bit1 TRMT:发送移位寄存器状态位 1 = TSR空 0 = TSR满 R-1
  	               // bit0 TX9D:发送数据的第9位 可以是地址/数据位或奇偶校验位
	RC1STA = 0x90;
	RCIE = 0x01; // 使能UART1接收中断
}

/******************************************************************************
** 函数名称 : uart1_send_byte
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : uart1_send_byte
*******************************************************************************/
void uart1_send_byte(unsigned char data)
{  
	while (!TX1STAbits.TRMT); // 等待发送移位寄存器空
	RS485CH1_SEND;
	TX1REG = data;
	while (!TX1STAbits.TRMT); // 等待发送移位寄存器空
	RS485CH1_RECEIVE;
}

/******************************************************************************
** 函数名称 : uart1_send_nbyte
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : 
*******************************************************************************/
void uart1_send_nbyte(unsigned char *data,unsigned int size)
{
	while (size)
    {
    	uart1_send_byte(*data);
    	data++;
    	size--;
    }
}

/******************************************************************************
** 函数名称 : uart1_read_byte
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : 
*******************************************************************************/
unsigned char uart1_read_byte(void)
{
	unsigned char data;

	while (!PIR1bits.RCIF); // 等待接收缓冲区满
	data = RC1REG;

  	return data;
}

/******************************************************************************
** 函数名称 : uart1_read_nbyte
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : 
*******************************************************************************/
void uart1_read_nbyte(unsigned char *buffer,unsigned char length)
{
  	unsigned char i;
  	unsigned char data;

  	for (i = 0; i < length; i++)
  	{
    	data = uart1_read_byte(); // Get a character from the USART and save in the string
    	*buffer = data;
    	buffer++; // Increment the string pointer
  	}
}

/******************************************************************************
** 函数名称 : init_uart2
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : UART2初始化 9600,8,n,1 RS485
*******************************************************************************/
void init_uart2(void) // 9600,8,n,1
{
	RS485CH2_TRIS = 0b0; 	// 配置RG3为输出
	RS485CH2_RECEIVE; 		// 输出低电平，默认为接收
	SP2BRGL = BDRT_S_L;		// 波特率控制寄存器
	SP2BRGH = BDRT_S_H;
	BAUD2CON = 0x08; 	 
						// bit7 ABDOVF 自动波特率检测溢出位 异步模式:1 = 自动波特率定时器溢出 0 = 自动波特率定时器未溢出 同步模式:无关位 R/W-0 
						// bit6 RCIDL 接收空闲标志位 异步模式:1 = 接收器空闲 0 = 已检测到启动位且接收器处于活动状态 同步模式:无关位 R-1 
						// bit5 DTRXP 数据接收极性选择位 异步模式:1 = 接收数据反相(低电平有效) 0 = 接收数据未反相(高电平有效) 同步模式:无关位 R/W-0 
						// bit4 
						// bit3 BRG16 16位波特率发生器位 1 = 使用16位波特率发生器(SPBRGHx:SPBRGx) 0 = 使用8位波特率发生器(SPBRGx)
						// bit2
						// bit1
						// bit0
	  					 
  	UART2_TX_TRIS = 0x00;
  	UART2_RX_TRIS = 0x01;
	TX2STA = 0x20;
						// bit7 CSRC:时钟源选择位 异步模式:无关位 同步模式:1 = 主模式(时钟由内部BRG产生) 0 = 从模式(时钟来自外部时钟源) R/W-0
						// bit6 TX9:9位发送使能位 1 = 选择9位发送 0 = 选择8位发送 R/W-0
						// bit5 TXEN:发送使能位 1 = 使能发送 0 = 禁止发送 R/W-0
						// bit4 SYNC:EUSART模式选择位 1 = 同步模式 0 = 异步模式 R/W-0
						// bit3 SENDB:发送间隔字符位 异步模式:1 = 在下一次发送时发送同步间隔字符(完成时由硬件清零) 0 = 同步间隔字符发送完成 同步模式:无关位 R/W-0
						// bit2 BRGH:高波特率选择位 异步模式:1 = 高速 0 = 低速 同步模式:在此模式下未使用 R/W-0
						// bit1 TRMT:发送移位寄存器状态位 1 = TSR空 0 = TSR满 R-1
						// bit0 TX9D:发送数据的第9位 可以是地址/数据位或奇偶校验位
	RC2STA = 0x90;
	RC2IE = 0x01; 		//使能UART2接收中断
}

/******************************************************************************
** 函数名称 : uart2_send_byte
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : 
*******************************************************************************/
void uart2_send_byte(unsigned char data)
{
	while (!TX2STAbits.TRMT); // 等待发送移位寄存器空
	RS485CH2_SEND;
	TX2REG = data;
	while (!TX2STAbits.TRMT); // 等待发送移位寄存器空
	RS485CH2_RECEIVE;
}
/******************************************************************************
** 函数名称 : uart2_send_nbyte
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : UART2发送数据
*******************************************************************************/
void uart2_send_nbyte(unsigned char *data,unsigned int size)
{
	while (size)
    {
    	uart2_send_byte(*data);
    	data++;
    	size--;
    }
}

/******************************************************************************
** 函数名称 : uart2_read_byte
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : UART2读一个字节
*******************************************************************************/
unsigned char uart2_read_byte(void)
{
	unsigned char data;

	while (!PIR4bits.RC2IF); // 等待接收缓冲区满
	data = RC2REG;

  	return data;
}

/******************************************************************************
** 函数名称 : uart2_read_nbyte
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : UART2读数据
*******************************************************************************/
void uart2_read_nbyte(unsigned char *buffer,unsigned char length)
{
  	unsigned char i;
  	unsigned char data;

  	for (i = 0; i < length; i++)
  	{
    	data = uart2_read_byte(); // Get a character from the USART2 and save in the string
    	*buffer = data;
    	buffer++; // Increment the string pointer
  	}
}





