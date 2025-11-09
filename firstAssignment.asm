; Program: Count even digits in VUID (BC230407789)
; Numeric Part: 230407789

org 100h           ; .COM program start

section .data
vuid_digits db 2,3,0,4,0,7,7,8,9   ; numeric digits of your VUID
len  equ 9                          ; total digits = 9

section .text
start:
    mov cx, len        ; loop counter (9 digits)
    mov si, vuid_digits ; pointer to the first digit
    xor dx, dx          ; DX = 0 (count of even digits)

count_loop:
    mov al, [si]        ; get current digit
    test al, 1          ; check LSB (odd/even test)
    jnz not_even        ; if odd → skip increment
    inc dx              ; if even → increase count
not_even:
    inc si              ; move to next digit
    loop count_loop     ; repeat until CX=0

    ; Program end
    mov ah, 4Ch
    int 21h
