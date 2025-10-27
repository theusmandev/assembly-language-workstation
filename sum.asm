org 100h

section .data
    num1 db 5
    num2 db 7
    result db 0
    msg db 'Result: $'

section .text
start:
    mov al, [num1]
    add al, [num2]
    mov [result], al

    mov ah, 09h
    lea dx, [msg]
    int 21h              ; print "Result: "

    mov ax, 0
    mov al, [result]     ; load result into AL
    mov bl, 10           ; divisor = 10
    div bl               ; AH = remainder, AL = quotient

    ; AL = tens digit, AH = ones digit
    add al, 30h          ; convert to ASCII
    mov dl, al
    mov ah, 02h
    int 21h              ; print tens digit

    add ah, 30h          ; convert remainder to ASCII
    mov dl, ah
    mov ah, 02h
    int 21h              ; print ones digit

    mov ah, 4Ch
    int 21h
