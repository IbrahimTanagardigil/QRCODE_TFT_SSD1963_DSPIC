
#include "p33FJ256MC710.h"

#include "TFTDisplay.h"
#include "TFTInit.h"
#include "TFTVar.h"


void XtOsc(void)
{	
    asm(
    
    "MOV	#0x001E, W0\n"
    "MOV	W0, PLLFBD\n"	
    "MOV	#0x3320, W0\n"
    "CLR	CLKDIV\n"	
    "MOV	#0x13, W0\n"
    "MOV	#OSCCONH, W1\n"
    "MOV	#0x78, W2\n"
    "MOV	#0x9A, W3\n"
    "MOV.B	W2, [W1]\n"	
    "MOV.B	W3, [W1]\n"		
    "MOV.B	W0, [W1]\n"	
    "MOV	#0x01, W0\n"
    "MOV	#OSCCONL, W1\n"
    "MOV	#0X46, W2\n"
    "MOV	#0X57, W3\n"
    "MOV.B	W2, [W1]\n" 	
    "MOV.B	W3, [W1]\n" 	
    "MOV.B	W0, [W1]\n"
    
    ); 	
}

//Pin Tanimlamalari									
void PinInit(void)
{							
	AD1PCFGH = 0xffff;									
	AD1PCFGL = 0xffff;	
	AD2PCFGL = 0xffff;	
    
	TRISA = 0;					
	TRISB = 0;		
	TRISC = 0;
	TRISD = 0;	
	TRISE = 0;	
	TRISF = 0;	
	TRISG = 0;

	LATA = 0; LATB = 0; LATC = 0; LATD = 0; LATE = 0; LATF = 0; LATG = 0;	
}

void InitT1(void)
{
	T1CON = 0;                                                                  //Clear TIMER1 control register
	T1CONbits.TCKPS = 2;                                                        //1:2 Prescaler
	PR1 = 0;                                                                    //Adjust timer period	
	T1CONbits.TON = 0;                                                          //Do not start timer 1
	IFS0bits.T1IF = 0;                                                          //Clear timer 1 interrupt flag
	T1CONbits.TON = 1;                                                          //Start timer 1
}
void InitT9(void)
{
	T9CON = 0;                                                                  //Clear TIMER8 control register
	T9CONbits.TCKPS = 1;                                                        //1:1 Prescaler
	PR9 = 0;                                                                    //Adjust timer period
	T8CONbits.T32 = 0;                                                          //Do not start timer 9	
	T9CONbits.TON = 0;                                                          //Do not start timer 9
	IFS3bits.T9IF = 0;                                                          //Clear timer 9 interrupt flag
	T9CONbits.TON = 1;                                                          //Start timer 9
}
void InitT6(void)                                                               //50ms
{
	T6CON = 0;
	T6CONbits.TCKPS = 3;
	PR6 = 7812;							
	T6CONbits.TON = 0;
	IFS2bits.T6IF = 0;					
	IEC2bits.T6IE = 1;
	T6CONbits.TON = 1;	
}

void Initiliaze(void)
{
    PinInit();
    
    InitT1();
    InitT9();
    InitT6(); 
}