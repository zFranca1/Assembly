section .data
	nome db "Joao pedro franca", 0xa
	tam_nome equ $ - nome
	

section .text

global _start




_start:



	mov eax, 4
	mov ebx, 1
	mov ecx, nome
	mov edx, tam_nome
	int 0x80
	

	exit:
	mov eax, 1
	int 0x80
