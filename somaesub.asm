section .data
	msg1 db "digite o primeiro numero: ", 0xa
	tam_msg1 equ $ - msg1

	msg2 db "digite o segundo numero: ", 0xa
	tam_msg2 equ $ - msg2

	msg4 db "digite o terceiro numero: ", 0xa
	tam_msg4 equ $ - msg4
	
	msg3 db "soma: ", 0xa
	tam_msg3 equ $ - msg3

section .bss

	n1 resb 1	
	n2 resb 1
	n3 resb 1
	r resb 1

section .text


global _start



_start:

	mov eax, 4
	mov ebx, 1
	mov ecx, msg1	
	mov edx, tam_msg1
	int 0x80

	mov eax, 3
	mov ebx, 0
	mov ecx, n1
	mov edx, 2
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, msg2
	mov edx, tam_msg2
	int 0x80
	
	mov eax, 3
	mov ebx, 0
	mov ecx, n2
	mov edx, 2
	int 0x80


	mov eax, 4
	mov ebx, 1
	mov ecx, msg4
	mov edx, tam_msg4
	int 0x80

	mov eax, 3
	mov ebx, 0
	mov ecx, n3
	mov edx, 2
	int 0x80
	
	mov al, [n1]
	mov bl, [n2]
	sub al, '0'
	sub bl, '0'
	add al, bl
	add al, '0'
	mov bl, [n3]
	sub bl, '0'
	sub al, bl
	mov [r], al
	int 0x80
	

	mov eax, 4
	mov ebx, 1
	mov ecx, msg3
	mov edx, tam_msg3
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, r
	mov edx, 1
	int 0x80

exit:

	mov eax, 1
	int 0x80
