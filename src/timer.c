

//**--------------头文件-------------------------------------------------------
#include <xc.h>
#include <GenericTypeDefs.h>

#include "userdefine.h"

/******************************************************************************
** 函数名称 : init_timer1
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : 定时器1初始化  系统滴答1ms
*******************************************************************************/
void init_timer1(void) // pic16f9146的timer0是8位的，所以使用了timer1，16位定时器，1ms间隔
{
	TMR1H = 0xE0; // 16 位 TMR1 寄存器高字节的保持寄存器
	TMR1L = 0xC0; // 16 位 TMR1 寄存器低字节的保持寄存器 定时1ms
	T1CON = 0x41; // bit7-6 01 Timer1时钟源为系统时钟 
	              // bit0 1 使能 Timer1
	              // bit5-4 00 Timer1 输入时钟预分频比选择位 1:1
	              // 
	              
	TMR1IE = 0x01; // 使能定时器1中断
	TMR1ON = 0x00;
}

