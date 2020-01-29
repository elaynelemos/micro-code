;
; programa06_sramrangeset.asm
;
; Created: 14/10/2019 17:34:53
; Author : Elayne Lemos
;


; Replace with your application code
start:
    ldi r16, 0xff
	ldi r18, 0x21
	ldi r30, 0x00
	ldi r31, 0x01
	jmp incremento
incremento:
	st Z, r16
	inc r30
	cp r30, r18
	breq end
    jmp incremento
end:
	ldi r16, 0x00
