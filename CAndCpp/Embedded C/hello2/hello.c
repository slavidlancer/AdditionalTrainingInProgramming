#include </usr/lib/avr/include/avr/io.h>
#include </usr/lib/avr/include/avr/iom128.h>
#include </usr/lib/avr/include/util/delay.h>

#define F_CPU 16000000UL

#define led PORTA


int main (void)
{
	while (1)
	{
		led = 0b00000001;
		_delay_ms (15);
		led = 0b00000000;
		_delay_ms (15);
	}
}
