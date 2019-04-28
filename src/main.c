/******************************************************************************
**                           便易通科技有限公司
**
**--------------基本文件信息---------------------------------------------------
** 文   件   名	: main.c
** 当前    版本	: V1.0 
** 创建日期 	: 2019-01-02
** 描        述 : 驱动板主程序
** 编   译   器 : xc8
** 硬        件 : BYT-FCCS-DBoard
**
*******************************************************************************/

//**--------------头文件-------------------------------------------------------
#include <xc.h>
#include <GenericTypeDefs.h>

#include "userdefine.h"






//**--------------配置位(只针对PIC系列单片机)----------------------------------
#pragma config FOSC = 0x04 		// bit2-0 振荡器选择位
                           		// 111 = ECH：外部时钟，高功耗模式：RA7/OSC1/CLKIN引脚为CLKIN功能    	芯片出厂默认值
                           		// 110 = ECM：外部时钟，中等功耗模式：RA7/OSC1/CLKIN引脚为CLKIN功能
                           		// 101 = ECL：外部时钟，低功耗模式：RA7/OSC1/CLKIN引脚为CLKIN功能
                           		// 100 = INTOSC振荡器：RA7/OSC1/CLKIN引脚为I/O功能	使用内部振荡器
                           		// 011 = EXTRC振荡器：RA7/OSC1/CLKIN引脚为RC功能
                           		// 010 = HS振荡器：高速晶振/谐振器连接到RA6/OSC2/CLKOUT和RA7/OSC1/CLKIN引脚
                           		// 001 = XT振荡器：晶振/谐振器连接到RA6/OSC2/CLKOUT和RA7/OSC1/CLKIN引脚
                           		// 000 = LP振荡器：低功耗晶振连接到RA6/OSC2/CLKOUT和RA7/OSC1/CLKIN引脚
                           		
#pragma config WDTE = 0x03 	// bit4-3 看门狗定时器使能位
                           		// 11 = 使能WDT   														芯片出厂默认值
								// 10 = WDT在运行时使能，休眠时禁止
								// 01 = WDT由WDTCON寄存器中的SWDTEN位控制
								// 00 = 禁止WDT
								
#pragma config PWRTE = 0x01 	// bit5 上电延时定时器使能位 注意 使能欠压复位并不能自动使能上电延时定时器
                            	// 1 = 禁止PWRT															芯片出厂默认值
								// 0 = 使能PWRT
								
#pragma config MCLRE = 0x01	// bit6 RE3/MCLR/VPP引脚功能选择位
								// 如果LVP位 = 1：忽略此位
								// 如果LVP位 = 0：1 = RE3/MCLR/VPP引脚功能为MCLR；使能弱上拉功能		芯片出厂默认值
								//                0 = RE3/MCLR/VPP引脚功能为数字输入；内部禁止MCLR；弱上拉功能由WPUE3位控制
								
#pragma config CP = 0x01		// bit7 代码保护位 注意 当关闭代码保护时，将擦除整个程序存储器的内容
                                // 1 = 禁止程序存储器代码保护											芯片出厂默认值
								// 0 = 使能程序存储器代码保护
								
#pragma config CPD = 0x01 	// bit8 数据代码保护位 注意 擦除操作期间关闭代码保护时，将擦除整个数据EEPROM的内容
 								// 1 = 禁止数据存储器代码保护											芯片出厂默认值
								// 0 = 使能数据存储器代码保护
								
#pragma config BOREN = 0x03		// bit10-9 欠压复位使能位 注意 使能欠压复位并不能自动使能上电延时定时器
								// 11 = 使能BOR															芯片出厂默认值
								// 10 = BOR在工作时使能，在休眠时禁止
								// 01 = BOR由BORCON寄存器的SBOREN位控制
								// 00 = 禁止BOR
								
#pragma config CLKOUTEN = 0x01	// bit11 时钟输出使能位
								// 1 = 禁止CLKOUT功能，即禁止RA6/CLKOUT引脚上的I/O或振荡器功能			芯片出厂默认值
								// 0 = 使能RA6/CLKOUT引脚上的CLKOUT功能
								
#pragma config IESO = 0x01		// bit12 内部/外部时钟切换位
                                // 1 = 使能内部/外部时钟切换模式										芯片出厂默认值
								// 0 = 禁止内部/外部时钟切换模式

#pragma config FCMEN = 0x00		// bit13 故障保护时钟监视器使能位
                                // 1 = 使能故障保护时钟监视器											芯片出厂默认值
								// 0 = 禁止故障保护时钟监视器




#pragma config WRT = 0x03		// bit1-0 闪存自写保护位
                                // 8 KW闪存 （仅PIC16F/LF1946）：
								// 11 = 写保护关闭														芯片出厂默认值
								// 10 = 000h至1FFh受写保护，200h至1FFFh可以由EECON控制寄存器修改
								// 01 = 000h至FFFh受写保护，2000h至1FFFh可以由EECON控制寄存器修改
								// 00 = 000h至1FFFh受写保护，无可由EECON控制寄存器修改的地址
								
								// 16 KW闪存 （仅PIC16F/LF1947）：
								// 11 = 写保护关闭
								// 10 = 000h至1FFh受写保护，200h至3FFFh可以由EECON控制寄存器修改
								// 01 = 000h至1FFFh受写保护，2000h至3FFFh可以由EECON控制寄存器修改
								// 00 = 000h至3FFFh受写保护，无可由EECON控制寄存器修改的地址
								
#pragma config VCAPEN = 0x00	// bit4 稳压器电容使能位
                                // 0 = 在RF0引脚上使能VCAP功能											芯片出厂默认值
								// 1 = VCAP引脚上无电容

#pragma config PLLEN = 0x00		// bit8 PLL使能位
                                // 1 = 使能4xPLL														芯片出厂默认值
								// 0 = 禁止4xPLL

#pragma config STVREN = 0x01	// bit9 堆栈上溢/下溢复位使能位
                                // 1 = 堆栈上溢或下溢将导致复位											芯片出厂默认值								
								// 0 = 堆栈上溢或下溢不会导致复位

#pragma config BORV = 0x01		// bit10 欠压复位电压选择位
 								// 1 = 欠压复位电压设置为1.9V											芯片出厂默认值
								// 0 = 欠压复位电压设置为2.5V
								
#pragma config LVP = 0x01		// bit13 低压编程使能位
								// 1 = 使能低压编程														芯片出厂默认值
								// 0 = 必须使用MCLR/VPP引脚上的高压进行编程


//**--------------全局变量-----------------------------------------------------

//**--------------宏定义-------------------------------------------------------

//**--------------函数申明-----------------------------------------------------

//**--------------函数定义-----------------------------------------------------





/******************************************************************************
** 函数名称 : init_osc
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : 配置系统时钟 8MHZ
*******************************************************************************/
void init_osc(void)
{
	OSCCON = 0x70; // 0b0111 0000 振荡器控制寄存器
	WDTCONbits.WDTPS=0b01110;  //16S 看门狗周期
}

/******************************************************************************
** 函数名称 : init_port
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : 初始化端口
*******************************************************************************/
void init_port(void)
{
	ANSELA = 0x00; // 将 RA5 RA<3:0> 引脚选择为数字功能
	ANSELE = 0x00; // 将 RE<7:0> 引脚选择为数字功能
	ANSELF = 0x00; // 将 RF<7:0> 引脚选择为数字功能
	ANSELG = 0x00; // 将 RG<4:0> 引脚选择为数字功能
}

/******************************************************************************
** 函数名称 : driver_init
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : 驱动层初始化
** 全局变量 : 无
*******************************************************************************/
void driver_init(void)
{
	init_osc();		//初始化系统时钟
	init_port();	//初始化端口
	init_led();		//初始化led指示灯
	init_timer1();	//初始化time1 1ms系统滴答
	init_uart1();	//初始化uart1 RS485-1
	init_uart2();	//初始化uart2 RS485-2
	init_input();	//初始化输入端口
	init_output();	//初始化输出端口
	init_interrupt(); //初始化系统中断
}

/******************************************************************************
** 函数名称 : middle_init
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : 中间层初始化--系统参数设置、工作模式配置
*******************************************************************************/
void middle_init(void)
{
	get_slave_address();	//通过拨码开关设置从机地址
}

/******************************************************************************
** 函数名称 : application_init
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : 应用层初始化
*******************************************************************************/
void application_init(void)
{
	//开启系统时基1ms
	TMR1ON = 0x01;
	//系统全局变量初始化
	_sys_tick_count	=	0x00; //驱动板系统
	read_input_node_tick = 0x00;
	read_input_node_event=0x00;
	input_node_level=0x00;
}

int main(void) // 主程序
{
	delay_ms(100); // 等待电源稳定
	driver_init(); // 驱动层初始化
	middle_init(); // 中间层初始化
	application_init(); // 应用层初始化

	while(1)
	{
		CLRWDT(); 
		
		if(read_input_node_event==0x01)
		{
			read_node();
			write_node();
			read_input_node_event=0x00;
		}
		
		if(RC2STAbits.FERR || RC2STAbits.OERR)  //uart2 RS232
		{
			RC2STAbits.CREN = 0x00;
			RC2STAbits.SPEN = 0x00;
			NOP();
			NOP();
			NOP();
			RC2STAbits.CREN = 0x01;
			RC2STAbits.SPEN = 0x01;
		}
		
		if (RC1STAbits.FERR || RC1STAbits.OERR)  //uart1 RS485
		{
			RC1STAbits.CREN = 0x00;
			RC1STAbits.SPEN = 0x00;
			NOP();
			NOP();
			NOP();
			RC1STAbits.CREN = 0x01;
			RC1STAbits.SPEN = 0x01;
		}
             
        if(uart1_receive_flag==TRUE)  //RS485  智能化设备请求数据处理
         {
            RS1_LED_TOG;
           				
            handle_uart1_buf();

			if (RC1STAbits.FERR || RC1STAbits.OERR)  //uart1 RS485
			{
				RC1STAbits.CREN = 0x00;
				RC1STAbits.SPEN = 0x00;
				NOP();
				NOP();
				NOP();
				RC1STAbits.CREN = 0x01;
				RC1STAbits.SPEN = 0x01;
			}	 
            uart1_receive_byte_count=0x00;  //!!!!!!!!!

            uart1_receive_flag=FALSE;       //!!!!!!!!!
         } 
		
	    if(uart2_receive_flag==TRUE)   //RS232  读取扶梯数据
        {
            RS2_LED_TOG;
            
            handle_uart2_buf();
                                                   
			if (RC2STAbits.FERR || RC2STAbits.OERR)  //uart2 RS232
			{
				RC2STAbits.CREN = 0x00;
				RC2STAbits.SPEN = 0x00;
				NOP();
				NOP();
				NOP();
				RC2STAbits.CREN = 0x01;
				RC2STAbits.SPEN = 0x01;
			}
				
            uart2_receive_byte_count=0x00;

            uart2_receive_flag=FALSE;
        }
	}	
}
