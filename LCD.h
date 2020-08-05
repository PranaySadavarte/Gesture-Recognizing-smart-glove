#define E RB3
#define RS RB2
//#define RW RB6

void pulse()
{
	__delay_ms(1);
	E = 1;
	__delay_ms(1);
	E = 0;

}
void LCD_data(char data)
{
	RS = 1;
	PORTB &= 0x0F;
	PORTB |= (data & 0xF0);
	pulse();
	
	
	PORTB &= 0x0F;
	PORTB |= (data & 0x0F) << 4;
	pulse();
	
}
void LCD_cmd_hf(char cmd)
{
	RS = 0;
	PORTB &= 0x0F;
	PORTB |= (cmd & 0xF0);
	pulse();
}
void LCD_cmd(char cmd)
{
	RS = 0;
	PORTB &= 0x0F;
	PORTB |= (cmd & 0xF0);
	pulse();
	
	
	PORTB &= 0x0F;
	PORTB |= (cmd & 0x0F)<<4;
	pulse();
}
void LCD_Set_Line(int line)
{
	if(line == 1)
	{
		LCD_cmd(0x80);
		
	}
	else if(line == 2)
	{
		LCD_cmd(0xC0);
	}
}
void LCD_CLR()
{
	LCD_cmd(0x01);
	LCD_cmd(0x80);
}
void setup_LCD()
{
	
	TRISB = 0x00;
	PORTB = 0x00;
	E = 0;
	//RW = 0;
	RS = 0;
	__delay_ms(30);
	LCD_cmd_hf(0x30);
	__delay_ms(10);
	LCD_cmd_hf(0x30);
	__delay_ms(5);
	LCD_cmd_hf(0x20);
	__delay_ms(5);
	LCD_cmd(0x28);
	LCD_cmd(0x06);
	LCD_cmd(0x0E);
	LCD_cmd(0x01);
	//LCD_cmd(0x80);
	
}
void LCD_write(char* a)
{
	int g = 0;
	while(a[g])
	{
		LCD_data(a[g]);
		g++;
	}
}
void LCD_write_int(int a)
{
	int b,c,d;
	if(a<10)
	{
		LCD_data(0x30+a);
	}
	else if(a>9 && a<100)
	{
		b = a%10;
		a = a/10;
		LCD_data(0x30+a);
		LCD_data(0x30+b);
	}
	else if(a>99 && a<1000)
	{
		b = a%10;
		a = a/10;
		c = a%10;
		a = a/10;
		LCD_data(0x30+a);
		LCD_data(0x30+c);
		LCD_data(0x30+b);
		
	}
	else if(a>999 && a<10000)
	{
		b = a%10;
		a = a/10;
		c = a%10;
		a = a/10;
		d = a%10;
		a = a/10;
		LCD_data(0x30+a);
		LCD_data(0x30+d);
		LCD_data(0x30+c);
		LCD_data(0x30+b);
	}
	else
	{}
	
}