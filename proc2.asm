global _start

helloworldproc:

         push ebp
         mov ebp,esp

         mov eax, 0x4
         mov ebx, 0x1
         mov ecx, message
         mov edx, mslen
         int 0x80

         ;mov esp,ebp
         ;pop ebp
         leave
         ret

section .text

_start:

         mov ecx, 0x5

LOOP:
         pushad
         pushfd
         call helloworldproc
         popfd
         popad
         loop LOOP

         mov eax, 0x1
         mov ebx, 0x2
         int 0x80

section .data

         message: db "Hello World !"
         mslen   equ $-message
