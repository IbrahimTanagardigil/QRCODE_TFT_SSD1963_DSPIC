#ifndef __TFTINIT_H__
#define __TFTINIT_H__


extern void XtOsc(void);

//Ön yüklemelerin hepsi buradan çaðrýlýr.
extern void Initiliaze(void);

//Genel alarm için yeni eklendi.
extern int RoleAtamaIndex(int );

//Pin Tanýmlamalarý									
extern void PinInit(void);

//Buton Tanýmlamalarý
extern void InitCN(void);

//Bakým zamanlarýnýn hesabý için kullanýlýyor.
extern void InitT4T5(void);

//Genel iþlemler için
extern void InitT6(void);

//Timer 1 ve Timer 9 Þifre sistemi için kullanýlýyor.
//Kesmeler kapalý
extern void InitT3(void);
extern void InitT1(void);
extern void InitT9(void);
extern void InitT2(void);
extern void InitSoftwarePWM(void);

//Can Tanýmlamalarý
extern void InitCAN1(void);
extern void InitDMA0(void);
extern void InitDMA1(void);

//Spi tanýmlamalarý
extern void InitSPI1(int , int );	//Rtc
extern void InitSPI2(int , int );	//Eeprom

//Adc tanýmlamalarý
extern void InitADC(unsigned int *,unsigned int);

//Uart tanýmlamalarý
extern void InitUART1(unsigned int );
extern void InitDMA7(void);
extern void InitUART2(unsigned int );
extern void InitDMA6(void);

#endif