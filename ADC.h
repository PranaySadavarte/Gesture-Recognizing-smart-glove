void init_ADC()
{
	TRISA=0xFF;
	ADCS0 = 0;
	ADCS1 = 0; // FOSC / 2
	ADFM = 1;
	ADON = 1;
	GO_nDONE = 0;
	//ANSELH=0x00;
	//////ADCS2 = 0;
	//PCFG0 = 0;
	//PCFG1 = 0;
	//PCFG2 = 0;
	//PCFG3 = 0;
}
void set_ch(int channel)
{
	CHS0 = 0;
	CHS1 = 0;
	CHS2 = 0;
	//CHS3 = 0;
	if((channel == 4 || channel >4) && (channel <8))
	{
		CHS2 = 1;
		channel = channel - 4;
	}
	if((channel == 2 || channel >2) && (channel < 4))
	{
		CHS1 = 1;
		channel = channel - 2;
	}
	if(channel == 1)
	{
		CHS0 = 1;
		channel = channel - 1;
	}
	
}
int read_ADC(int ch)
{
	init_ADC();
	set_ch(ch);
	__delay_ms(1);
	GO_nDONE = 1;
	while(GO_nDONE);
	int a = ADRESL;
	if(ADRESH == 1)
	{
		a =a+256;
	}
	else if(ADRESH == 2)
	{
		a = a+512;
	}
	else if(ADRESH == 3)
	{
		a = a+256+512;
	}
	else
	{}
	return a;
}