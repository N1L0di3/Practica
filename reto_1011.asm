section .data
            blob db '0'
section .text
                        global _start
                _start:
                mov eax, 2
                mov ebx, 8
                add eax, ebx
                add eax, 48
                mov [blob], eax
                mov eax, 4
                mov ebx, 1
                mov ecx, blob
                mov edx, 1
                int 0x80
                mov eax, 1
                mov ebx, 0
                int 0x80