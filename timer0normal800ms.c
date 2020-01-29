/*
 * timer0normal800ms.c
 *
 * Created: 28/01/2020 10:29:35
 * Author : Elayne
 */ 

#include <avr/io.h>
#define F_CPU 16000000UL

int main(void)
{
	int ctrl = 49; //init control variable
    DDRB = (1<<PB5); //set PB5 as output
	TIFR0 = 0x07; //reset interruption
	PORTB = (0<<PB5); //init PB5 in low
	TCNT0 = 0x00; //init counter
	
	TCCR0A = 0x00; //normal mode
	TCCR0B = 0x05; //normal mode, prescaler of 1024, 800ms for each interruption 0.8/(256*(1/16MHz/1024))~49 cicles of ctrl.
	
    while (1) 
    {
		while((TIFR0 & 0x01) != 0x01){}
		TIFR0 = 0x01;
		ctrl = ctrl - 1; 
		if(ctrl<1){
			ctrl = 49; //reset control
			PORTB ^= (1<<PB5); //toggle PB5
		}
    }
}

