/*
 * timer0normalinter.c
 *
 * Created: 28/01/2020 10:52:25
 * Author : Elayne
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>
#define F_CPU 16000000

ISR(TIMER0_OVF_vect){
	PORTB ^= (1<<PB5); //toggle PB5 when gets an interruption
}

int main(void)
{
    cli(); //disable global interruption while setting params
	DDRB = (1<<PB5); //set PB5 as output
	TIFR0 = 0x07; //reset interruption
	TIMSK0 = 0x01; //enable interruption by overflow
	sei(); //enable global interruption
	
	TCCR0A = 0x00; //normal mode
	TCCR0B = 0x01; //no prescaling, interruption each 256*1/16MHz ~ 16us
	TCNT0 = 0x00; //init counter
	
	
    while (1) 
    {
    }
}

