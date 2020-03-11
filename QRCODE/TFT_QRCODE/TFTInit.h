#ifndef __TFTINIT_H__
#define __TFTINIT_H__


extern void XtOsc(void);

//�n y�klemelerin hepsi buradan �a�r�l�r.
extern void Initiliaze(void);

//Genel alarm i�in yeni eklendi.
extern int RoleAtamaIndex(int );

//Pin Tan�mlamalar�									
extern void PinInit(void);

//Buton Tan�mlamalar�
extern void InitCN(void);

//Bak�m zamanlar�n�n hesab� i�in kullan�l�yor.
extern void InitT4T5(void);

//Genel i�lemler i�in
extern void InitT6(void);

//Timer 1 ve Timer 9 �ifre sistemi i�in kullan�l�yor.
//Kesmeler kapal�
extern void InitT3(void);
extern void InitT1(void);
extern void InitT9(void);
extern void InitT2(void);
extern void InitSoftwarePWM(void);

//Can Tan�mlamalar�
extern void InitCAN1(void);
extern void InitDMA0(void);
extern void InitDMA1(void);

//Spi tan�mlamalar�
extern void InitSPI1(int , int );	//Rtc
extern void InitSPI2(int , int );	//Eeprom

//Adc tan�mlamalar�
extern void InitADC(unsigned int *,unsigned int);

//Uart tan�mlamalar�
extern void InitUART1(unsigned int );
extern void InitDMA7(void);
extern void InitUART2(unsigned int );
extern void InitDMA6(void);

#endif