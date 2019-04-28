

//**--------------ͷ�ļ�-------------------------------------------------------
#include <xc.h>
#include <GenericTypeDefs.h>

#include "userdefine.h"


unsigned int 	_sys_tick_count=0x00;




/******************************************************************************
** �������� : isr
** ������� : ��
** ������� : ��
** �������� : �жϷ������
*******************************************************************************/
void interrupt isr(void)
{
	unsigned char r1_data,r2_data;
	
	//--------------------------------------------------------------------------------------TIM1 	
	if(TMR1IE && TMR1IF) // ��ʱ��1�ж� 1ms���
	{
		TMR1IF = 0x00;
		TMR1H = 0xE0;
		TMR1L = 0xC0; // ��ʱ1ms
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
	            if(uart2_receive_byte_count=0x08) //���ٸ��ֽ�֡����
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
	    uart1_time_count=0x05;//UART1�������� ���5ms����ʾһ֡���ݵĽ���
	
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
		uart2_time_count=0x05;//uart2�������� ���5ms����ʾһ֡���ݵĽ���
		
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
** �������� : init_interrupt
** ������� : ��
** ������� : ��
** �������� : ��ʼ���ж�/ʹ�������ж�/ʹ��ȫ���ж�
*******************************************************************************/
void init_interrupt(void)
{
	PEIE = 0x01; // ʹ�������ж�
	GIE = 0x01; // ʹ��ȫ���ж�	   
}
