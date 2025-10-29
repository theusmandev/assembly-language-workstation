; ====== Compare AX and BX ======

.model small
.stack 100h
.data
msg1 db 'AX is Greater$',0
msg2 db 'BX is Greater$',0
msg3 db 'Both are Equal$',0

.code
main proc
    mov ax, @data
    mov ds, ax

    ; ----- Values to Compare -----
    mov ax, 5      ; first number
    mov bx, 5      ; second number

    ; ----- Compare -----
    cmp ax, bx
    je  equal
    jg  greater
    jl  smaller

greater:
    mov ah, 09h
    lea dx, msg1
    int 21h
    jmp exit

smaller:
    mov ah, 09h
    lea dx, msg2
    int 21h
    jmp exit

equal:
    mov ah, 09h
    lea dx, msg3
    int 21h

exit:
    mov ah, 4Ch
    int 21h
main endp
end main
