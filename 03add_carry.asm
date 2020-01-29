;
; programa03_adc.asm
;
; Created: 13/10/2019 09:05:55
; Author : Elayne Lemos
;


; Replace with your application code
start:
    ldi r16, 0xff
	ldi r17, 0x18
	add r26, r16
	adc r26, r17
	adc r27, r27
	add r16, r17
	jmp clear
clear:
	clr r16
	clr r17
	clr r26
	clr r27
	clc

; nas linhas 11 e 12 inicializa-se 2 registradores de propósito geral com valores a fim de causar um estouro de pilha.
; nas linhas 13 e 14 realiza-se a soma com carry em X(r26:r27), isto é, o estouro é guardado no carry.
; na linha 15 soma-se a XL apenas o carry, pois r27 estava antes zerado.
; na linha 16 guarda-se a soma do que seria o resultado desconsiderando um estouro
; clear é uma sub rotina para limpar os registradores, apenas para continuar os testes.