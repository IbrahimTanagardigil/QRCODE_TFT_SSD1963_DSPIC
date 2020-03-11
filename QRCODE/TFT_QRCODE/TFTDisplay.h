#ifndef __TFTDISPLAY_H__
#define __TFTDISPLAY_H__

//Lcd Pin tanimlamalari
#define LcdPort			LATD
#define LcdE			LATDbits.LATD10
#define LcdRs			LATDbits.LATD9
#define LcdBL			LATEbits.LATE7		

//TFT pin tanimlamalari

#define TFT_RS		_LATD9
#define TFT_CS		_LATD10

#define TFT_D0		_LATD1
#define TFT_D1		_LATD2
#define TFT_D2		_LATD3
#define TFT_D3		_LATD4
#define TFT_D4		_LATD5
#define TFT_D5		_LATD6
#define TFT_D6		_LATD7
#define TFT_D7		_LATD8
#define TFT_D8		_LATC2
#define TFT_RES		_LATA0
#define TFT_WR		_LATG2
#define TFT_BL		_LATE7
#define TFT_DISP_ON _LATE5
#define TFT_RD		_LATA4

//Background colors
#define Clear		1
#define NotClear	0
#define Gradient	1
#define NotGradient	0
#define Digital		1
#define NotDigital	0


extern void InitTFT(void);
extern void ChangePage(unsigned short );
extern void NopWait(unsigned long );
extern void FullScreen(unsigned long );
extern void SendPixel(unsigned long );
extern void Write_Command (unsigned char );
extern void WindowSet(unsigned short ,unsigned short ,unsigned short ,unsigned short );
extern void ASendText(unsigned short ,unsigned short ,const char* ,unsigned short ,char *,unsigned long ,unsigned long ,unsigned short );
extern void Line(unsigned short ,unsigned short ,unsigned short ,unsigned short ,unsigned long ,unsigned short );
extern void Dikdortgen(unsigned short ,unsigned short ,unsigned short ,unsigned short ,unsigned long ,unsigned short ,unsigned short );


#endif