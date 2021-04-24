section .data
        primeiro db "joao", 0xa
        segundo db "pedro", 0xa
        terceiro db "franca", 0xa
        tam_primeiro equ $ - primeiro
        tam_segundo equ $ - segundo
        tam_terceiro equ $ - terceiro

section .text

global _start


_start:

        mov eax, 4
        mov ebx, 1
        mov ecx, primeiro
        mov edx, tam_primeiro
        int 0x80

        mov eax, 4
        mov ebx, 1
        mov ecx, segundo
        mov edx, tam_segundo
        int 0x80

        mov eax, 4
        mov ebx, 1
        mov ecx, terceiro
        mov edx, tam_terceiro
        int 0x80


exit:

        mov eax, 1
        int 0x80
