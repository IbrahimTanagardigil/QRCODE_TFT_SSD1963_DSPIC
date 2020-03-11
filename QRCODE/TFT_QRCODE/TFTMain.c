
#include "p33FJ256MC710.h"

#include "TFTVar.h"
#include "TFTDisplay.h"
#include "TFTInit.h"
#include "qrcode.h"

#include <xc.h>

// FBS
#pragma config BWRP = WRPROTECT_OFF     // Boot Segment Write Protect (Boot Segment may be written)
#pragma config BSS = NO_FLASH           // Boot Segment Program Flash Code Protection (No Boot program Flash segment)
#pragma config RBS = NO_RAM             // Boot Segment RAM Protection (No Boot RAM)

// FSS
#pragma config SWRP = WRPROTECT_OFF     // Secure Segment Program Write Protect (Secure Segment may be written)
#pragma config SSS = NO_FLASH           // Secure Segment Program Flash Code Protection (No Secure Segment)
#pragma config RSS = NO_RAM             // Secure Segment Data RAM Protection (No Secure RAM)

// FGS
#pragma config GWRP = OFF               // General Code Segment Write Protect (User program memory is not write-protected)
#pragma config GSS = OFF                // General Segment Code Protection (User program memory is not code-protected)

// FOSCSEL
#pragma config FNOSC = FRCPLL           // Oscillator Mode (Internal Fast RC (FRC) w/ PLL)
#pragma config IESO = ON                // Two-speed Oscillator Start-Up Enable (Start up with FRC, then switch)

// FOSC
#pragma config POSCMD = XT              // Primary Oscillator Source (XT Oscillator Mode)
#pragma config OSCIOFNC = OFF           // OSC2 Pin Function (OSC2 pin has clock out function)
#pragma config FCKSM = CSECMD           // Clock Switching and Monitor (Clock switching is enabled, Fail-Safe Clock Monitor is disabled)

// FWDT
#pragma config WDTPOST = PS1024          // Watchdog Timer Postscaler (1:512)
#pragma config WDTPRE = PR128           // WDT Prescaler (1:128)
#pragma config WINDIS = OFF             // Watchdog Timer Window (Watchdog Timer in Non-Window mode)
#pragma config FWDTEN = OFF            // Watchdog Timer Enable (Watchdog timer enabled/disabled by user software)

// FPOR
#pragma config FPWRT = PWR128           // POR Timer Value (128ms)
#pragma config LPOL = ON                // Low-side PWM Output Polarity (Active High)
#pragma config HPOL = ON                // Motor Control PWM High Side Polarity bit (PWM module high side output pins have active-high output polarity)
#pragma config PWMPIN = ON              // Motor Control PWM Module Pin Mode bit (PWM module pins controlled by PORT register at device Reset)

// FICD
#pragma config ICS = PGD2               // Comm Channel Select (Communicate on PGC1/EMUC1 and PGD1/EMUD1)
#pragma config JTAGEN = OFF             // JTAG Port Enable (JTAG is Disabled)


char QRBuff[10];

//--------------------------------------------------------------------------//QR CODE için eklendi
void SendToScreenQRCode(char *data,int absis,int oordinat,unsigned int clear)
{
    QRCode qrcode;
    uint8_t qrcodeData[qrcode_getBufferSize(3)];
    qrcode_initText(&qrcode, qrcodeData, 3, ECC_LOW, data);
    
    Dikdortgen(absis-10,absis+(qrcode.size*2)-1+10,oordinat-10,oordinat+(qrcode.size*2)-1+10,defWhite,1,clear);
    
    
    if( clear == 0 )
    {
        WindowSet(absis,absis+(qrcode.size*2)-1,oordinat,oordinat+(qrcode.size*2)-1);
        Write_Command(0x2c);

        int size = 0;
        int x = 0,y = 0;

        for ( y=0; y < qrcode.size; y++)
        {
            for(size = 0; size < 2; size++)
            {
                for ( x = 0; x < qrcode.size; x++)
                {
                    if ( qrcode_getModule(&qrcode, x, y) ) 
                    {
                        SendPixel(defBlack);
                        SendPixel(defBlack);
                    } 
                    else 
                    {
                        SendPixel(defWhite);
                        SendPixel(defWhite);
                    }
                }
            }
        }
    }
}    

    
//--------------------------------------------------------------------------


char Dig(unsigned int var,int which)
{
	char answer = 0;
	
	switch( which )
	{
		case 1:
				answer = (var / 10000) + 48;		
		break;
		case 2:
				answer = ((var % 10000) / 1000) + 48;
		break;
		case 3:
				answer = (((var % 10000) % 1000) / 100) + 48;
		break;
		case 4:
				answer = ((((var % 10000) % 1000) % 100) / 10) + 48;
		break;
		case 5:
				answer = ((((var % 10000) % 1000) % 100) % 10) + 48;
		break;
		default:
		break;
	}	
	return( answer );
}

int main(void) 
{ 
    unsigned short RandomValue1 = 0, RandomValue2 = 0;
    
	XtOsc();
    
    Initiliaze();
	InitTFT();	
		
	FullScreen(defBackGroundColor);
	ChangePage(defFirstPage);  
    
	NopWait(5000);
    
	TFT_BL = 1;
    
	NopWait(5000);
    
	for(;;)
	{
        if( gBackCounter == 0 )
        {
            gBackCounter = def5second / defTimer6Tick;                          
            
            RandomValue1 = TMR1 & 9999;
            RandomValue2 = TMR9 & 9999;

            QRBuff[0] = Dig(RandomValue1,2);
            QRBuff[1] = Dig(RandomValue1,3);
            QRBuff[2] = Dig(RandomValue1,4);
            QRBuff[3] = Dig(RandomValue1,5);
            QRBuff[4] = Dig(RandomValue2,2);
            QRBuff[5] = Dig(RandomValue2,3);
            QRBuff[6] = Dig(RandomValue2,4);
            QRBuff[7] = Dig(RandomValue2,5);
            QRBuff[8] = '\0';
            
            SendToScreenQRCode(QRBuff,200,100,0);   
            
			ASendText(150,180,"CODE ææææææææ",2,QRBuff,defPixelColor,defBackGroundColor,0);
        }
        
	}
    return 1;
}

