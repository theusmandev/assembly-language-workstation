org 100h        ; .COM program start (required for DOS)

section .data
; yahan tum apna static data define karte ho (messages, arrays, etc.)
; Example:
msg db 'Hello, World!$'

section .bss
; yahan un variables ko define karte ho jinka data runtime par set hoga
; Example:
temp resb 1

section .text
start:
    ; code yahan likha jata hai (main logic)
    
    ; Example: print a string
    mov dx, msg
    mov ah, 9
    int 21h

    ; Exit program
    mov ah, 4Ch
    int 21h
