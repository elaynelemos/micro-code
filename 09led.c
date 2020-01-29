/*
 * programa09_led.c
 *
 * Created: 15/10/2019 14:57:55
 * Author : Elayne Lemos
 */ 

#define F_CPU 16000000UL
#include <avr/io.h>
#include <util/delay.h>



int main(void)
{
    /* Replace with your application code */
    DDRB = 0x20;
	
	while (1) 
    {
	    PORTB = 0x20;
	    _delay_ms(500);
		
		PORTB = 0x00;
		_delay_ms(500);
		
    }
}

