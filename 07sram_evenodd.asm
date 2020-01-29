;
; programa07_sramevenodd.asm
;
; Created: 14/10/2019 18:25:41
; Author : Edy Lemos
;


; Replace with your application code
start:
    ldi r16, 0xff
	ldi r17, 0x00
	ldi r18, 0x21
	ldi r19, 0x00
	ldi r30, 0x00
	ldi r31, 0x01
	jmp incremento
incremento:
	cp r30, r18
	breq end
	add r17, r30
	lsr r17
	brcs odd
	ldi r17, 0x00
	st Z, r16
	inc r30
    jmp incremento
odd:
	ldi r17, 0x00
	st Z, r19
	inc r30
    jmp incremento
end:
	ldi r16, 0x00
