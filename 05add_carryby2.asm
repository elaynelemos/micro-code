;
; programa05_adcby2.asm
;
; Created: 13/10/2019 11:13:03
; Author : Elayne Lemos
;


; Replace with your application code
start:
    ldi r16, 0x1f
	ldi r17, 0xff
	add r18, r16
	add r18, r17
	brcs store
	lsr r18
	mov r16, r18
store:
	add r26, r16
	add r26, r17
	adc r27, r27
	lsr r27
	bst r27, 0
	brts aux
aux:
	lsr r26
	mov r16, r18
	ldi r18, 0x80
	or r26, r18
