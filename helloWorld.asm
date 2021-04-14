section .data
	msg1 db "Hello world", 0xa
	tam_msg1 equ $ - msg1

section .text

global _start


_start:

	mov eax, 4
	mov ebx, 1
	mov ecx, msg1
	mov edx, tam_msg1
	int 0x80

exit:
	mov eax, 1
	int 0x80

