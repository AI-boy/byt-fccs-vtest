//**--------------ͷ�ļ�-------------------------------------------------------
#include <xc.h>
#include <GenericTypeDefs.h>

#include "userdefine.h"





/******************************************************************************
** �������� : init_output
** ������� : ��
** ������� : ��
** �������� : ��ʼ������˿�
*******************************************************************************/
void init_output(void)
{
	//�ܽ�ģʽ����--���ģʽ
	DO0_TRIS=0;			//(TRISBbits.TRISB5) // RB5
	DO1_TRIS=0;			//(TRISBbits.TRISB4) // RB4
	DO2_TRIS=0;			//(TRISBbits.TRISB3) // RB3
	DO3_TRIS=0;			//(TRISBbits.TRISB2) // RB2
	DO4_TRIS=0;			//(TRISBbits.TRISB1) // RB1
	DO5_TRIS=0;			//(TRISBbits.TRISB0) // RB0
	DO6_TRIS=0;			//(TRISAbits.TRISA4) // RA4
	DO7_TRIS=0;			//(TRISAbits.TRISA5) // RA5
	
	DO8_TRIS=0;			//(TRISDbits.TRISD0) // RD0
	DO9_TRIS=0;			//(TRISDbits.TRISD1) // RD1
	DOA_TRIS=0;			//(TRISDbits.TRISD2) // RD2
	DOB_TRIS=0;			//(TRISDbits.TRISD3) // RD3
	DOC_TRIS=0;			//(TRISDbits.TRISD4) // RD4
	DOD_TRIS=0;			//(TRISDbits.TRISD5) // RD5
	DOE_TRIS=0;			//(TRISDbits.TRISD6) // RD6
	DOF_TRIS=0;			//(TRISDbits.TRISD7) // RD7	
	
	//16·�̵������ƹܽ� Ĭ�ϱպ�
	DO0=0;					//LATB5
	DO1=0;					//LATB4
	DO2=0;					//LATB3
	DO3=0;					//LATB2
	DO4=0;					//LATB1
	DO5=0;					//LATB0
	DO6=0;					//LATA4
	DO7=0;					//LATA5
	
	DO8=0;					//LATD0
	DO9=0;					//LATD1
	DOA=0;					//LATD2
	DOB=0;					//LATD3
	DOC=0;					//LATD4
	DOD=0;					//LATD5
	DOE=0;					//LATD6
	DOF=0;					//LATD7
}


/******************************************************************************
** �������� : write_node
** ������� : ��
** ������� : ��
** �������� : д��˿ڵ�ƽ
*******************************************************************************/
void write_node(void)
{
	unsigned int output_tmp;
	
	output_tmp = 0x00;

	output_tmp = input_node_level;

	DO0 = ((output_tmp>>0)&0x01)?(0:1);		//�˿�0--
	DO1 = ((output_tmp>>1)&0x01)?(0:1);		//�˿�1--
	DO2 = ((output_tmp>>2)&0x01)?(0:1);		//�˿�2--
	DO3 = ((output_tmp>>3)&0x01)?(0:1);		//�˿�3--
	DO4 = ((output_tmp>>4)&0x01)?(0:1);		//�˿�4--
	DO5 = ((output_tmp>>5)&0x01)?(0:1);		//�˿�5--
	DO6 = ((output_tmp>>6)&0x01)?(0:1);		//�˿�6--
	DO7 = ((output_tmp>>7)&0x01)?(0:1);		//�˿�7--

	DO8 = ((output_tmp>>8)&0x01)?(0:1);		//�˿�8--
	DO9 = ((output_tmp>>9)&0x01)?(0:1);		//�˿�9--
//	DOA = ((output_tmp>>10)&0x01)?(0:1);	//�˿�10--
//	DOB = ((output_tmp>>11)&0x01)?(0:1);	//�˿�11--
//	DOC = ((output_tmp>>12)&0x01)?(0:1);	//�˿�12--
//	DOD = ((output_tmp>>13)&0x01)?(0:1);	//�˿�13--
//	DOE = ((output_tmp>>14)&0x01)?(0:1);	//�˿�14--
//	DOF = ((output_tmp>>15)&0x01)?(0:1);	//�˿�15--
	
	
}