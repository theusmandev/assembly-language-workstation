org 100h           ; .COM program start

section .text
start:
    mov cx, 10     ; loop counter (1 to 10)
    mov bl, 1      ; starting number = 1

print_loop:
    mov al, bl     ; move current number into AL
    add al, 30h    ; convert to ASCII
    mov dl, al
    mov ah, 2      ; DOS print char function
    int 21h

    ; print newline (CR LF)
    mov dl, 0Dh
    mov ah, 2
    int 21h
    mov dl, 0Ah
    mov ah, 2
    int 21h

    inc bl         ; next number
    loop print_loop

    mov ah, 4Ch    ; exit
    int 21h
