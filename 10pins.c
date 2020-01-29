/*
 * programa10_pins.c
 *
 * Created: 15/10/2019 16:20:55
 * Author : Edy Lemos
 */ 

#define F_CPU 16000000UL
#include <avr/io.h>
#include <util/delay.h>

int main(void)
{
    /* Replace with your application code */
    DDRB = 0b01010101;
	while (1) 
    {
		PORTB = PORTB^0b11111111;
		_delay_ms(100);	
    }
}

