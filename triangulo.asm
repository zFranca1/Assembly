section .data
	msg1 db "digite o tamanho da base do triangulo: "
	tam_msg1 equ $ - msg1

	msg2 db "digite o tamanho da altura do triangulo: "
	tam_msg2 equ $ - msg2

	msg3 db "resultado = "
	tam_msg3 equ $ - msg3


section .bss


	b1 resb 1
	h1 resb 1
	r resb 1
	rf resb 1
	



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
        mov ecx, b1
        mov edx, 2
        int 0x80

        mov eax, 4
        mov ebx, 1
        mov ecx, msg2
        mov edx, tam_msg2
        int 0x80

        mov eax, 3
        mov ebx, 0
        mov ecx, h1
        mov edx, 2
        int 0x80

        mov eax, [b1]
        mov ebx, [h1]
        sub eax, '0'
        sub ebx, '0'
        mul ebx
        add eax, '0'
        mov [r], eax
        int 0x80


        mov eax, 4
        mov ebx, 1
        mov ecx, r
        mov edx, 1
        int 0x80

        mov eax, 4
        mov ebx, 1
        mov [ecx], byte 0xa
        mov edx, 1
        int 0x80


exit:

	mov eax, 1
	int 0x80

