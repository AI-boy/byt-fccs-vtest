
//**--------------ͷ�ļ�-------------------------------------------------------
#include <xc.h>
#include <GenericTypeDefs.h>

#include "userdefine.h"

//**--------------ȫ�ֱ���-----------------------------------------------------


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
** �������� : init_uart1
** ������� : ��
** ������� : ��
** �������� : UART1��ʼ�� 9600,8,n,1
*******************************************************************************/
void init_uart1(void)
{
	RS485CH1_TRIS = 0b0; 	// ����RC5Ϊ���
	RS485CH1_RECEIVE; 		// ����͵�ƽ��Ĭ��Ϊ����
	SP1BRGL = BDRT_S_L;
	SP1BRGH = BDRT_S_H;
	BAUD1CON = 0x08; // �����ʿ��ƼĴ���
  	                 // bit7 ABDOVF �Զ������ʼ�����λ �첽ģʽ:1 = �Զ������ʶ�ʱ����� 0 = �Զ������ʶ�ʱ��δ��� ͬ��ģʽ:�޹�λ R/W-0 
  	                 // bit6 RCIDL ���տ��б�־λ �첽ģʽ:1 = ���������� 0 = �Ѽ�⵽����λ�ҽ��������ڻ״̬ ͬ��ģʽ:�޹�λ R-1 
  	                 // bit5 DTRXP ���ݽ��ռ���ѡ��λ �첽ģʽ:1 = �������ݷ���(�͵�ƽ��Ч) 0 = ��������δ����(�ߵ�ƽ��Ч) ͬ��ģʽ:�޹�λ R/W-0 
  	                 // bit4 
  	                 // bit3 BRG16 16λ�����ʷ�����λ 1 = ʹ��16λ�����ʷ�����(SPBRGHx:SPBRGx) 0 = ʹ��8λ�����ʷ�����(SPBRGx)
  	                 // bit2
  	                 // bit1
  	                 // bit0
  	// ʹ��16λ�����ʷ�����
  	UART1_TX_TRIS = 0x00;
  	UART1_RX_TRIS = 0x01;
	TX1STA = 0x20;
  	               // bit7 CSRC:ʱ��Դѡ��λ �첽ģʽ:�޹�λ ͬ��ģʽ:1 = ��ģʽ(ʱ�����ڲ�BRG����) 0 = ��ģʽ(ʱ�������ⲿʱ��Դ) R/W-0
  	               // bit6 TX9:9λ����ʹ��λ 1 = ѡ��9λ���� 0 = ѡ��8λ���� R/W-0
  	               // bit5 TXEN:����ʹ��λ 1 = ʹ�ܷ��� 0 = ��ֹ���� R/W-0
  	               // bit4 SYNC:EUSARTģʽѡ��λ 1 = ͬ��ģʽ 0 = �첽ģʽ R/W-0
  	               // bit3 SENDB:���ͼ���ַ�λ �첽ģʽ:1 = ����һ�η���ʱ����ͬ������ַ�(���ʱ��Ӳ������) 0 = ͬ������ַ�������� ͬ��ģʽ:�޹�λ R/W-0
  	               // bit2 BRGH:�߲�����ѡ��λ �첽ģʽ:1 = ���� 0 = ���� ͬ��ģʽ:�ڴ�ģʽ��δʹ�� R/W-0
  	               // bit1 TRMT:������λ�Ĵ���״̬λ 1 = TSR�� 0 = TSR�� R-1
  	               // bit0 TX9D:�������ݵĵ�9λ �����ǵ�ַ/����λ����żУ��λ
	RC1STA = 0x90;
	RCIE = 0x01; // ʹ��UART1�����ж�
}

/******************************************************************************
** �������� : uart1_send_byte
** ������� : ��
** ������� : ��
** �������� : uart1_send_byte
*******************************************************************************/
void uart1_send_byte(unsigned char data)
{  
	while (!TX1STAbits.TRMT); // �ȴ�������λ�Ĵ�����
	RS485CH1_SEND;
	TX1REG = data;
	while (!TX1STAbits.TRMT); // �ȴ�������λ�Ĵ�����
	RS485CH1_RECEIVE;
}

/******************************************************************************
** �������� : uart1_send_nbyte
** ������� : ��
** ������� : ��
** �������� : 
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
** �������� : uart1_read_byte
** ������� : ��
** ������� : ��
** �������� : 
*******************************************************************************/
unsigned char uart1_read_byte(void)
{
	unsigned char data;

	while (!PIR1bits.RCIF); // �ȴ����ջ�������
	data = RC1REG;

  	return data;
}

/******************************************************************************
** �������� : uart1_read_nbyte
** ������� : ��
** ������� : ��
** �������� : 
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
** �������� : init_uart2
** ������� : ��
** ������� : ��
** �������� : UART2��ʼ�� 9600,8,n,1 RS485
*******************************************************************************/
void init_uart2(void) // 9600,8,n,1
{
	RS485CH2_TRIS = 0b0; 	// ����RG3Ϊ���
	RS485CH2_RECEIVE; 		// ����͵�ƽ��Ĭ��Ϊ����
	SP2BRGL = BDRT_S_L;		// �����ʿ��ƼĴ���
	SP2BRGH = BDRT_S_H;
	BAUD2CON = 0x08; 	 
						// bit7 ABDOVF �Զ������ʼ�����λ �첽ģʽ:1 = �Զ������ʶ�ʱ����� 0 = �Զ������ʶ�ʱ��δ��� ͬ��ģʽ:�޹�λ R/W-0 
						// bit6 RCIDL ���տ��б�־λ �첽ģʽ:1 = ���������� 0 = �Ѽ�⵽����λ�ҽ��������ڻ״̬ ͬ��ģʽ:�޹�λ R-1 
						// bit5 DTRXP ���ݽ��ռ���ѡ��λ �첽ģʽ:1 = �������ݷ���(�͵�ƽ��Ч) 0 = ��������δ����(�ߵ�ƽ��Ч) ͬ��ģʽ:�޹�λ R/W-0 
						// bit4 
						// bit3 BRG16 16λ�����ʷ�����λ 1 = ʹ��16λ�����ʷ�����(SPBRGHx:SPBRGx) 0 = ʹ��8λ�����ʷ�����(SPBRGx)
						// bit2
						// bit1
						// bit0
	  					 
  	UART2_TX_TRIS = 0x00;
  	UART2_RX_TRIS = 0x01;
	TX2STA = 0x20;
						// bit7 CSRC:ʱ��Դѡ��λ �첽ģʽ:�޹�λ ͬ��ģʽ:1 = ��ģʽ(ʱ�����ڲ�BRG����) 0 = ��ģʽ(ʱ�������ⲿʱ��Դ) R/W-0
						// bit6 TX9:9λ����ʹ��λ 1 = ѡ��9λ���� 0 = ѡ��8λ���� R/W-0
						// bit5 TXEN:����ʹ��λ 1 = ʹ�ܷ��� 0 = ��ֹ���� R/W-0
						// bit4 SYNC:EUSARTģʽѡ��λ 1 = ͬ��ģʽ 0 = �첽ģʽ R/W-0
						// bit3 SENDB:���ͼ���ַ�λ �첽ģʽ:1 = ����һ�η���ʱ����ͬ������ַ�(���ʱ��Ӳ������) 0 = ͬ������ַ�������� ͬ��ģʽ:�޹�λ R/W-0
						// bit2 BRGH:�߲�����ѡ��λ �첽ģʽ:1 = ���� 0 = ���� ͬ��ģʽ:�ڴ�ģʽ��δʹ�� R/W-0
						// bit1 TRMT:������λ�Ĵ���״̬λ 1 = TSR�� 0 = TSR�� R-1
						// bit0 TX9D:�������ݵĵ�9λ �����ǵ�ַ/����λ����żУ��λ
	RC2STA = 0x90;
	RC2IE = 0x01; 		//ʹ��UART2�����ж�
}

/******************************************************************************
** �������� : uart2_send_byte
** ������� : ��
** ������� : ��
** �������� : 
*******************************************************************************/
void uart2_send_byte(unsigned char data)
{
	while (!TX2STAbits.TRMT); // �ȴ�������λ�Ĵ�����
	RS485CH2_SEND;
	TX2REG = data;
	while (!TX2STAbits.TRMT); // �ȴ�������λ�Ĵ�����
	RS485CH2_RECEIVE;
}
/******************************************************************************
** �������� : uart2_send_nbyte
** ������� : ��
** ������� : ��
** �������� : UART2��������
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
** �������� : uart2_read_byte
** ������� : ��
** ������� : ��
** �������� : UART2��һ���ֽ�
*******************************************************************************/
unsigned char uart2_read_byte(void)
{
	unsigned char data;

	while (!PIR4bits.RC2IF); // �ȴ����ջ�������
	data = RC2REG;

  	return data;
}

/******************************************************************************
** �������� : uart2_read_nbyte
** ������� : ��
** ������� : ��
** �������� : UART2������
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





