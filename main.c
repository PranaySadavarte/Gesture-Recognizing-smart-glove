#include<xc.h>//The header file for xc8 compiler
// controller specific settings
#pragma config WDTE = OFF
#pragma config PWRTE = OFF
#pragma config CP = ON
#pragma config BOREN = OFF
#pragma config DEBUG = OFF

#pragma config LVP = OFF
#pragma config CPD = ON
#pragma config WRT = OFF
#pragma config FOSC = HS


#define _XTAL_FREQ 8000000 // Defining Crystal frequency in Hz for delay routine.

#include "LCD.h"  // header file for driving LCD
#include "uart_877a.h" // header file for driving UART at 9600 baud rate
#include "ADC.h" // header file for Driving ADC
#define A0 y1>comp
#define A1 y1<comp
#define B0 y2>comp
#define B1 y2<comp
#define C0 y3>comp
#define C1 y3<comp
#define D0 y4>comp
#define D1 y4<comp
#define E0 y5>comp
#define E1 y5<comp
int y1=0;
int y2=0;
int y3=0;
int y4=0;
int y5=0;
int yu=0;
int comp=820;

int main() // the main method. The code execution starts here.
{
	__delay_ms(100); //a startup delay for all the components to initialize.
	TRISA=0xFF; // make PORTA input as we need to Read the ADC values through this port.
	TRISB=0x00; // make PORTB output as LCD is connected on this port.
	PORTB=0x00; // make all the pins of PORTB initially 0
	TRISD=0x00;// make PORTD output as Buzzer and FAN are connected on this port
	PORTD=0x00;
	TRISC=0x00;
	PORTC=0x00;
	
	
	setup_uart(); // initialize UART with baud rate of 9600. We use UART to communicate with HC05 bluetooth module.
	setup_LCD(); // initialize LCD for 16 characters and two lines with cursor ON.
	init_ADC(); // initialize ADC to read the voltage on PORTA pins.
	LCD_CLR();
	LCD_write("HAND GESTURE");
	LCD_Set_Line(2);
	LCD_write("RECOGNITION");
	//while(RC0==0);
	__delay_ms(1000);
	while(1)
	{
		
		LCD_CLR();
		yu=read_ADC(0);
		y1=read_ADC(0);
		LCD_write_int(yu);
		LCD_write("  ");
		yu=read_ADC(1);
		y2=read_ADC(1);
		LCD_write_int(yu);
		LCD_write("  ");
		yu=read_ADC(2);
		y3=read_ADC(2);
		LCD_write_int(yu);
		LCD_Set_Line(2);
		yu=read_ADC(3);
		y4=read_ADC(3);
		LCD_write_int(yu);
		LCD_write("  ");
		yu=read_ADC(4);
		y5=read_ADC(4);
		LCD_write_int(yu);
		__delay_ms(500);
		
		if(A1 && B1 && C1 && D1 && E1)
		{
		}
		else if(A0 && B0 && C0 && D0 && E0)
		{
			LCD_CLR();
			tx("HELLO\r\n");
			LCD_write("HELLO");
			LCD_Set_Line(2);
			LCD_write("1 ");
			RB0=1;
			__delay_ms(4000);
			RB0=0;
		}
		else if(A0 && B0 && C0 && D0 && E1)
		{
			LCD_CLR();
			tx("HOW ARE YOU\r\n");
			LCD_write("HOW ARE YOU");
			LCD_Set_Line(2);
			LCD_write("2 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A0 && B0 && C0 && D1 && E0)
		{
			LCD_CLR();
			tx("GOOD MORNING\r\n");
			LCD_write("GOOD MORNING");
			LCD_Set_Line(2);
			LCD_write("3 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A0 && B0 && C0 && D1 && E1)
		{
			LCD_CLR();
			tx("GOOD AFTERNOON\r\n");
			LCD_write("GOOD AFTERNOON");
			LCD_Set_Line(2);
			LCD_write("4 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A0 && B0 && C1 && D0 && E0)
		{
			LCD_CLR();
			tx("GOOD NIGHT\r\n");
			LCD_write("GOOD NIGHT");
			LCD_Set_Line(2);
			LCD_write("5 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A0 && B0 && C1 && D0 && E1)
		{
			LCD_CLR();
			tx("HAVE A NICE DAY\r\n");
			LCD_write("HAVE A NICE DAY");
			LCD_Set_Line(2);
			LCD_write("6 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A0 && B0 && C1 && D1 && E0)
		{
			LCD_CLR();
			tx("I NEED SOME WATER\r\n");
			LCD_write("I NEED SOME WATER");
			LCD_Set_Line(2);
			LCD_write("7 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A0 && B0 && C1 && D1 && E1)
		{
			LCD_CLR();
			tx("I NEED A DOCTOR\r\n");
			LCD_write("I NEED DOTOR");
			LCD_Set_Line(2);
			LCD_write("8 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A0 && B1 && C0 && D0 && E0)
		{
			LCD_CLR();
			tx("PLEASE HELP ME\r\n");
			LCD_write("PLEASE HELP ME");
			LCD_Set_Line(2);
			LCD_write("9 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A0 && B1 && C0 && D0 && E1)
		{
			LCD_CLR();
			tx("EXCUSE ME\r\n");
			LCD_write("EXCUSE ME");
			LCD_Set_Line(2);
			LCD_write("10");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A0 && B1 && C0 && D1 && E0)
		{
			LCD_CLR();
			tx("GESTURE NOT IMPLEMENTED\r\n");
			LCD_write("NOT IMPLEMENTED");
			LCD_Set_Line(2);
			LCD_write("11 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A0 && B1 && C0 && D1 && E1)
		{
			LCD_CLR();
			tx("GESTURE NOT IMPLEMENTED\r\n");
			LCD_write("NOT IMPLEMENTED");
			LCD_Set_Line(2);
			LCD_write("12 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A0 && B1 && C1 && D0 && E0)
		{
			LCD_CLR();
			tx("GESTURE NOT IMPLEMENTED\r\n");
			LCD_write("NOT IMPLEMENTED");
			LCD_Set_Line(2);
			LCD_write("13 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A0 && B1 && C1 && D0 && E1)
		{
			LCD_CLR();
			tx("GESTURE NOT IMPLEMENTED\r\n");
			LCD_write("NOT IMPLEMENTED");
			LCD_Set_Line(2);
			LCD_write("14 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A0 && B1 && C1 && D1 && E0)
		{
			LCD_CLR();
			tx("GESTURE NOT IMPLEMENTED\r\n");
			LCD_write("NOT IMPLEMENTED");
			LCD_Set_Line(2);
			LCD_write("15 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A0 && B1 && C1 && D1 && E1)
		{
			LCD_CLR();
			tx("GESTURE NOT IMPLEMENTED\r\n");
			LCD_write("NOT IMPLEMENTED");
			LCD_Set_Line(2);
			LCD_write("16 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A1 && B0 && C0 && D0 && E0)
		{
			LCD_CLR();
			tx("GESTURE NOT IMPLEMENTED\r\n");
			LCD_write("NOT IMPLEMENTED");
			LCD_Set_Line(2);
			LCD_write("17 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A1 && B0 && C0 && D0 && E1)
		{
			LCD_CLR();
			tx("GESTURE NOT IMPLEMENTED\r\n");
			LCD_write("NOT IMPLEMENTED");
			LCD_Set_Line(2);
			LCD_write("18 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A1 && B0 && C0 && D1 && E0)
		{
			LCD_CLR();
			tx("GESTURE NOT IMPLEMENTED\r\n");
			LCD_write("NOT IMPLEMENTED");
			LCD_Set_Line(2);
			LCD_write("19 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}		
		else if(A1 && B0 && C0 && D1 && E1)
		{
			LCD_CLR();
			tx("GESTURE NOT IMPLEMENTED\r\n");
			LCD_write("NOT IMPLEMENTED");
			LCD_Set_Line(2);
			LCD_write("20 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A1 && B0 && C1 && D0 && E0)
		{
			LCD_CLR();
			tx("GESTURE NOT IMPLEMENTED\r\n");
			LCD_write("NOT IMPLEMENTED");
			LCD_Set_Line(2);
			LCD_write("21 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A1 && B0 && C1 && D0 && E1)
		{
			LCD_CLR();
			tx("GESTURE NOT IMPLEMENTED\r\n");
			LCD_write("NOT IMPLEMENTED");
			LCD_Set_Line(2);
			LCD_write("22 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A1 && B0 && C1 && D1 && E0)
		{
			LCD_CLR();
			tx("GESTURE NOT IMPLEMENTED\r\n");
			LCD_write("NOT IMPLEMENTED");
			LCD_Set_Line(2);
			LCD_write("23 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A1 && B0 && C1 && D1 && E1)
		{
			LCD_CLR();
			tx("GESTURE NOT IMPLEMENTED\r\n");
			LCD_write("NOT IMPLEMENTED");
			LCD_Set_Line(2);
			LCD_write("24 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A1 && B1 && C0 && D0 && E0)
		{
			LCD_CLR();
			tx("GESTURE NOT IMPLEMENTED\r\n");
			LCD_write("NOT IMPLEMENTED");
			LCD_Set_Line(2);
			LCD_write("25 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A1 && B1 && C0 && D0 && E1)
		{
			LCD_CLR();
			tx("GESTURE NOT IMPLEMENTED\r\n");
			LCD_write("NOT IMPLEMENTED");
			LCD_Set_Line(2);
			LCD_write("26 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A1 && B1 && C0 && D1 && E0)
		{
			LCD_CLR();
			tx("GESTURE NOT IMPLEMENTED\r\n");
			LCD_write("NOT IMPLEMENTED");
			LCD_Set_Line(2);
			LCD_write("27 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A1 && B1 && C0 && D1 && E1)
		{
			LCD_CLR();
			tx("GESTURE NOT IMPLEMENTED\r\n");
			LCD_write("NOT IMPLEMENTED");
			LCD_Set_Line(2);
			LCD_write("28");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A1 && B1 && C1 && D0 && E0)
		{
			LCD_CLR();
			tx("GESTURE NOT IMPLEMENTED\r\n");
			LCD_write("NOT IMPLEMENTED");
			LCD_Set_Line(2);
			LCD_write("29 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A1 && B1 && C1 && D0 && E1)
		{
			LCD_CLR();
			tx("GESTURE NOT IMPLEMENTED\r\n");
			LCD_write("NOT IMPLEMENTED");
			LCD_Set_Line(2);
			LCD_write("30 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		else if(A1 && B1 && C1 && D1 && E0)
		{
			LCD_CLR();
			tx("BYE\r\n");
			LCD_write("BYE");
			LCD_Set_Line(2);
			LCD_write("31 ");
						RB0=1;
			__delay_ms(4000);
			RB0=0;

		}
		
		
		
	}
}

