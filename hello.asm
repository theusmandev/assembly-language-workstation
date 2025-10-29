; compare.asm - Compare two numbers and show result in DOSBox
org 100h

section .data
msg_equal      db 'Both numbers are equal.$'
msg_greater    db 'First number is greater.$'
msg_smaller    db 'Second number is greater.$'

section .text
start:
    mov al, 5       ; first number
    mov bl, 7       ; second number

    cmp al, bl      ; compare AL and BL
    je equal
    ja greater
    jb smaller

equal:
    mov dx, msg_equal
    mov ah, 9
    int 21h
    jmp exit

greater:
    mov dx, msg_greater
    mov ah, 9
    int 21h
    jmp exit

smaller:
    mov dx, msg_smaller
    mov ah, 9
    int 21h

exit:
    mov ah, 4Ch
    int 21h
