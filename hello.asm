; hello.asm - Hello World for NASM (16-bit DOS)

org 100h              ; .COM program start

section .data
msg db 'Hello, World!$'

section .text
start:
    mov dx, msg       ; DS:DX -> message
    mov ah, 9         ; DOS print string function
    int 21h

    mov ah, 4Ch       ; DOS exit
    int 21h
