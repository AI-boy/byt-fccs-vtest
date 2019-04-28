

//**--------------头文件-------------------------------------------------------
#include <xc.h>
#include <GenericTypeDefs.h>

#include "userdefine.h"


unsigned int 	_sys_tick_count=0x00;




/******************************************************************************
** 函数名称 : isr
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : 中断服务程序
*******************************************************************************/
void interrupt isr(void)
{
	unsigned char r1_data,r2_data;
	
	//--------------------------------------------------------------------------------------TIM1 	
	if(TMR1IE && TMR1IF) // 定时器1中断 1ms间隔
	{
		TMR1IF = 0x00;
		TMR1H = 0xE0;
		TMR1L = 0xC0; // 定时1ms
		//-------------------------------------------_sys_tick_count
		_sys_tick_count++;
		if(_sys_tick_count>500)
		{
			_sys_tick_count=0x00;
			RUN_LED_TOG;
		}
		//-------------------------------------------read_input_node_tick
		read_input_node_tick++;
		if(read_input_node_tick>=50)
		{
			read_input_node_tick=0x00;
			read_input_node_event=0x01;
		}
		//-------------------------------------------uart1_time_count
		if (uart1_time_count > 0x00)
		{
			uart1_time_count--;			
			if(uart1_time_count==0)
			{
				if(uart1_receive_byte_count==0x08)
				{
					uart1_receive_flag=TRUE;
				}
				else
				{
					if (RC1STAbits.FERR || RC1STAbits.OERR)  
					{
						RC1STAbits.CREN = 0x00;
						RC1STAbits.SPEN = 0x00;
						NOP();
						NOP();
						NOP();
						RC1STAbits.CREN = 0x01;
						RC1STAbits.SPEN = 0x01;
					}
					uart1_receive_byte_count=0x00;
				}
			}
		}
		//-------------------------------------------uart2_time_count		    
	    if(uart2_time_count>0)
        {
	        uart2_time_count--;	
	        if(uart2_time_count==0)
	        {
	            if(uart2_receive_byte_count=0x08) //至少个字节帧数据
	            {
	                uart2_receive_flag=TRUE;                                	          	
	            }
              	else
				{
					if (RC2STAbits.FERR || RC2STAbits.OERR)  
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
				}	        
	         }
          }          
	                 	
	}
	//--------------------------------------------------------------------------------------uart1 RS485CH1	
	if(RC1IF && RC1IE)    
    {           
	    r1_data=RC1REG;	          
	    uart1_time_count=0x05;//UART1接收数据 相隔5ms即表示一帧数据的结束
	
	    if( (uart1_receive_byte_count<8)&&(uart1_receive_flag==FALSE) )
	    {
	    	uart1_rx_buf[uart1_receive_byte_count]=r1_data;
			
	        if(uart1_rx_buf[0]==slave_address)
	        {
	           uart1_receive_byte_count++;
	        } 
	    }                 
    }
	//--------------------------------------------------------------------------------------uart2  RS485CH2
	if(RC2IF && RC2IE)    
	{	
		r2_data=RC2REG;			
		uart2_time_count=0x05;//uart2接收数据 相隔5ms即表示一帧数据的结束
		
		if( (uart2_receive_byte_count<8)&&(uart2_receive_flag==FALSE) ) //################
		{
			uart2_rx_buf[uart2_receive_byte_count]=r2_data;
	
			if(uart2_rx_buf[0]==slave_address)	
			{
				uart2_receive_byte_count++;	
			}		
		}     
	                                                          
	}
		
}

/******************************************************************************
** 函数名称 : init_interrupt
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : 初始化中断/使能外设中断/使能全局中断
*******************************************************************************/
void init_interrupt(void)
{
	PEIE = 0x01; // 使能外设中断
	GIE = 0x01; // 使能全局中断	   
}
