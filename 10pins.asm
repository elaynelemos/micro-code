;
; programa10asm_pins.asm
;
; Created: 15/10/2019 19:36:23
; Author : Elayne Lemos
;


; Replace with your application code
start:
    ldi r16, 0b01010101
    ldi r17, 0xff
	out DDRB, r16
	out PORTB, r16
loop:
	eor r16, r17
	rjmp delay
delay:
    ldi  r18, 0xe5
    ldi  r19, 0x1e
    ldi  r20, 0x09
L1: 
	dec  r18
    brne L1
    dec  r19
    brne L1
    dec  r20
    brne L1
    jmp loop