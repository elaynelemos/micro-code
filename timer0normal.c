/*
 * timer0normal.c
 *
 * Created: 28/01/2020 09:33:05
 * Author : Elayne
 */ 

#include <avr/io.h>
#define F_CPU 16000000UL

int main(void)
{
    DDRB = (1<<PB5); //set PB5 as output
	
	TIFR0 = 0x07; //reset interruption
	PORTB = 0x00; //init PB5 in low
	TCNT0 = 0x00; //init counter
	TCCR0A = 0x00; //normal mode
	TCCR0B = 0x01; //no prescaling, interruptions in which 16us (256*1/16MHz)
	
    while (1) 
    {
		while((TIFR0 & 0x01) != 0x01){}
		
		TIFR0 = 0x01;
		PORTB ^= (1<<PB5);
    }
}

