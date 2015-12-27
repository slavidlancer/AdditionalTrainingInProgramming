#include </usr/lib/avr/include/avr/io.h>
#include </usr/lib/avr/include/avr/iom128.h>

#define F_CPU 16000000UL

#define led1 PORTA
#define led2 PORTB


int main (void)
{
	int i;

	while (1)
	{
		led1 = 0x01;

		for (i = 0; i < 1500; i++)
		{
			asm ("nop");
		}

		led2 = 0x01;

                for (i = 0; i < 1500; i++)
                {
                        asm ("nop");
                }

		led1 = 0x00;

                for (i = 0; i < 1500; i++)
                {
                        asm ("nop");
                }

		led2 = 0x00;

                for (i = 0; i < 1500; i++)
                {
                        asm ("nop");
                }
	}

	return 0;
}
