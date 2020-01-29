;
; programa04_add16bits.asm
;
; Created: 13/10/2019 10:37:28
; Author : Elayne Lemos
;


; Replace with your application code
start:
    ldi r26, 0xa5
	ldi r27, 0x03
	ldi r28, 0xbb
	ldi r29, 0x02
	add r26, r28
	adc r27, r29
	jmp clear
clear:
	clr r26
	clr r27
	clr r28
	clr r29
	clc

; r26 e r28 s�o, respectivamente, XL e YL. J� r27 e r29 s�o, respectivamente XH e YH.
; a adi��o se d� nas respectivas partes de 8 bits, a diferen�a entre as linhas 15 e 16 � que, na primeira soma eu sei que o carry est� zerado, logo, que n�o preciso consider�-lo.
; clear serve apenas para limpar os registradores, para fins de teste. 