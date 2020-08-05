
void setup_uart()
{
	
	TRISC7=1;
	TRISC6=1;
	BRGH=1;
	SPBRG=51;
	
	SPEN = 1;
	TXEN = 1;
	SYNC = 0;
	CREN = 1;
}
void tx_char(char data)
{
	while(!TXIF);
	TXREG = data;
}
void tx(char* data)
{
	int g = 0;
	while(data[g])
	{
		tx_char(data[g]);
		g++;
	}
}
char rx()
{
	if(RCIF)
	{
		return RCREG;
	}
	else
	{
		return 0x00;
	}
}
char must_rx()
{
	while(!RCIF);
	
	return RCREG;
}