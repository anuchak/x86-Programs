global _start

helloworldproc:

         mov eax, 0x4
         mov ebx, 0x1
         mov ecx, message
         mov edx, mslen
         int 0x80
         ret

section .text

_start:

         mov ecx, 0x5

LOOP:
         push ecx
         call helloworldproc
         pop ecx
         loop LOOP

         mov eax, 0x1
         mov ebx, 0x2
         int 0x80

section .data

         message: db "Hello World !"
         mslen   equ $-message
