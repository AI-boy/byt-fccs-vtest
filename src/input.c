
//**--------------头文件-------------------------------------------------------
#include <xc.h>
#include <GenericTypeDefs.h>

#include "userdefine.h"

unsigned int 	read_input_node_tick=0x00;
unsigned char 	read_input_node_event=0x00;
unsigned int 	input_node_level=0x00;

/******************************************************************************
** 函数名称 : init_input
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : 初始化输入端口
*******************************************************************************/
void init_input(void)
{
	//管脚模式设置--输入模式
	DI0_TRIS=1;			//(TRISEbits.TRISE0) // RE0
	DI1_TRIS=1;			//(TRISEbits.TRISE1) // RE1
	DI2_TRIS=1;			//(TRISEbits.TRISE2) // RE2
	DI3_TRIS=1;			//(TRISEbits.TRISE3) // RE3
	DI4_TRIS=1;			//(TRISEbits.TRISE4) // RE4
	DI5_TRIS=1;			//(TRISEbits.TRISE5) // RE5
	DI6_TRIS=1;			//(TRISEbits.TRISE6) // RE6
	DI7_TRIS=1;			//(TRISEbits.TRISE7) // RE7
	
	DI8_TRIS=1;			//(TRISFbits.TRISF1) // RF1
	DI9_TRIS=1;			//(TRISFbits.TRISF2) // RF2
	DIA_TRIS=1;			//(TRISFbits.TRISF3) // RF3
	DIB_TRIS=1;			//(TRISFbits.TRISF4) // RF4
	DIC_TRIS=1;			//(TRISFbits.TRISF5) // RF5
	DID_TRIS=1;			//(TRISFbits.TRISF6) // RF6
	DIE_TRIS=1;			//(TRISFbits.TRISF7) // RF7
	DIF_TRIS=1;			//(TRISGbits.TRISG4) // RG4
	//RS485-1从机地址
	ADDR1_TRIS=1;   	//TRISAbits.TRISA0	
	ADDR2_TRIS=1;   	//TRISAbits.TRISA1	
	ADDR3_TRIS=1;   	//TRISAbits.TRISA2	
	ADDR4_TRIS=1;   	//TRISAbits.TRISA3

}



/******************************************************************************
** 函数名称 : read_node
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : 读取端口电平
*******************************************************************************/
void read_node(void)
{
	unsigned int input_tmp;
	
	input_tmp=0x00;

	input_tmp = input_tmp|(DI0<<0);
	input_tmp = input_tmp|(DI1<<1);
	input_tmp = input_tmp|(DI2<<2);
	input_tmp = input_tmp|(DI3<<3);
	input_tmp = input_tmp|(DI4<<4);
	input_tmp = input_tmp|(DI5<<5);
	input_tmp = input_tmp|(DI6<<6);
	input_tmp = input_tmp|(DI7<<7);

	input_tmp = input_tmp|(DI8<<8);
	input_tmp = input_tmp|(DI9<<9);
	input_tmp = input_tmp|(DIA<<10);
	input_tmp = input_tmp|(DIB<<11);
	input_tmp = input_tmp|(DIC<<12);
	input_tmp = input_tmp|(DID<<13);
	input_tmp = input_tmp|(DIE<<14);
	input_tmp = input_tmp|(DIF<<15);
	
	input_node_level = input_tmp;
}


