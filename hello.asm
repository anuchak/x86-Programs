; HelloWorld.asm
; author: anuchak

global _start

section .text:

       ; prints hello to the screen
       mov eax, 0x4
       mov ebx, 0x1
       mov ecx, message
       mov edx, mlen
       int 0x80
       
       ; exits from program
       mov eax, 0x1
       mov ebx, 0x5
       int 0x80
       
section .data:
   
       message: db "Hello World!"
       mlen   equ  $-message
