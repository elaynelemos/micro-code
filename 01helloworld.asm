;
; Programa01asm.asm
;
; Created: 04/10/2019 15:25:13
; Author : Edy Lemos
;


; Replace with your application code
start:
    ldi r16, 0b00100000
	out DDRB, r16

again:
	ldi r16, 0b00000000
	out PORTB, r16

	ldi r16, 0b00100000
	out PORTB, r16
    
	rjmp again
