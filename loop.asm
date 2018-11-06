global _start

section .text:

_start:

       mov ecx, 0x5

Func:

       push ecx

       mov eax, 0x4
       mov ebx, 0x1
       mov ecx, message
       mov edx, mslen
       int 0x80

       pop ecx
       loop Func

       mov eax, 0x1
       mov ebx, 0x1
       int 0x80

section .data:

       message: db "Hello World!"
       mslen    equ $-message
