section .data
    msg db 'Hello, World!',0Dh,0Ah,'$'

section .text
    global _start

_start:
    mov ah, 09h
    lea dx, [msg]
    int 21h

    mov ah, 4Ch
    int 21h
