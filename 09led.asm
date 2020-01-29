;
; programa09asm_led.asm
;
; Created: 15/10/2019 15:53:13
; Author : Elayne Lemos
;


; Replace with your application code
start:
    ldi r16, 0x20
	ldi r17, 0x20
	out DDRB, r16

again:
	eor r16, r17
	rjmp delay

delay:
    ldi  r18, 0x29
    ldi  r19, 0x96
    ldi  r20, 0x80
L1: dec  r20
    brne L1
    dec  r19
    brne L1
    dec  r18
    brne L1
