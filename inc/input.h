
#ifndef _BYT_INPUT_H
#define _BYT_INPUT_H

//**--------------包含文件-----------------------------------------------------

//**--------------宏定义-------------------------------------------------------
//DI0-DIF  16路无源节点输入检测
#define DI0_TRIS			(TRISEbits.TRISE0) // RE0
#define DI1_TRIS			(TRISEbits.TRISE1) // RE1
#define DI2_TRIS			(TRISEbits.TRISE2) // RE2
#define DI3_TRIS			(TRISEbits.TRISE3) // RE3
#define DI4_TRIS			(TRISEbits.TRISE4) // RE4
#define DI5_TRIS			(TRISEbits.TRISE5) // RE5
#define DI6_TRIS			(TRISEbits.TRISE6) // RE6
#define DI7_TRIS			(TRISEbits.TRISE7) // RE7

#define DI8_TRIS			(TRISFbits.TRISF1) // RF1
#define DI9_TRIS			(TRISFbits.TRISF2) // RF2
#define DIA_TRIS			(TRISFbits.TRISF3) // RF3
#define DIB_TRIS			(TRISFbits.TRISF4) // RF4
#define DIC_TRIS			(TRISFbits.TRISF5) // RF5
#define DID_TRIS			(TRISFbits.TRISF6) // RF6
#define DIE_TRIS			(TRISFbits.TRISF7) // RF7
#define DIF_TRIS			(TRISGbits.TRISG4) // RG4



//------------------------------输入检测
#define DI0 				RE0
#define DI1 				RE1 
#define DI2 				RE2 
#define DI3 				RE3 		
#define DI4 				RE4 
#define DI5 				RE5
#define DI6 				RE6 
#define DI7 				RE7

#define DI8 				RF1 
#define DI9 				RF2 
#define DIA 				RF3 		
#define DIB 				RF4 
#define DIC 				RF5 
#define DID 				RF6 
#define DIE 				RF7 
#define DIF 				RG4 


extern unsigned int 	read_input_node_tick;
extern unsigned char 	read_input_node_event;
extern unsigned int 	input_node_level;

extern void init_input(void);

extern void read_node(void);


	

#endif 
