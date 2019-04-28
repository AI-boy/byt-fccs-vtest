
#ifndef _BYT_HANDLE_RS485_H
#define _BYT_HANDLE_RS485_H


#define ADDR1_TRIS   TRISAbits.TRISA0

#define ADDR2_TRIS   TRISAbits.TRISA1

#define ADDR3_TRIS   TRISAbits.TRISA2

#define ADDR4_TRIS   TRISAbits.TRISA3

#define ADDR1_GET    RA0

#define ADDR2_GET    RA1

#define ADDR3_GET    RA2

#define ADDR4_GET    RA3


extern unsigned char slave_address;

extern void get_slave_address(void);



#endif // _BYT_HANDLE_RS485_H