#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>

#define F_CPU 16000000UL

#define led PORTA

int main(void)
{
    while(1)
    {
        led = 0b00000001;
        _delay_us(10);
        led = 0b00000000;
        _delay_us(10);

        printf("hi");
    }

    return 0;
}
