/*
 * timer0normalinter800ms.c
 *
 * Created: 28/01/2020 11:08:38
 * Author : Elayne
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>
#define F_CPU 16000000UL

int ctrl = 49;

ISR(TIMER0_OVF_vect){
	ctrl = ctrl - 1;
	if(ctrl<1){
		ctrl = 49; //reset ctrl
		PORTB ^= (1<<PB5); //toggle PB5 each 800ms
	} 
}


int main(void)
{
    cli();
	DDRB = (1<<PB5); //set PB5 as output
	PORTB = (0<<PB5); //init PB5 in low
	TIFR0 = 0x07; //reset interruptions
	TIMSK0 = 0x01; //enable interruption by overflow
	sei(); //enable global interruption
	
	TCCR0A = 0x00; //normal mode
	TCCR0B = 0x05; //normal mode, interruptions each 800ms, ctrl = 0.8/(256*1/(16MHz/1024))
	TCNT0 = 0x00; //init counter
	
    while (1) 
    {
    }
}

