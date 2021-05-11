section .data
	msg1 db "digite seu nome: ", 0xa
	tam_nome equ $ - msg1

	msg2 db "digite seu peso: ", 0xa
	tam_peso equ $ - msg2
	
	msg3 db " ", 0xa
	tam_msg3 equ $ - msg3

section .bss

	nome resb 15
	peso resb 5
	tn resb 15	

section .text


global _start


_start:

	mov eax, 4
	mov ebx, 1
	mov ecx, msg1
	mov edx, tam_nome
	int 0x80

	mov eax, 3
	mov ebx, 0
	mov ecx, nome	
	mov edx, 15
	int 0x80

	mov [tn], eax

	mov eax, 4
	mov ebx, 1
	mov ecx, msg2
	mov edx, tam_peso
	int 0x80

	mov eax, 3 
	mov ebx, 0
	mov ecx, peso
	mov edx, 5
	int 0x80

	mov eax, 4
	mov ebx, 1
	mov ecx, nome
	mov edx, [tn]
	sub edx, 1
	int 0x80

	mov eax, 4
	mov ebx, 1
	mov ecx, msg3
	mov edx, tam_msg3
	int 0x80

	mov eax, 4
	mov ebx, 1
	mov ecx, peso
	mov edx, 5
	int 0x80

exit:
	mov eax, 1
	int 0x80

