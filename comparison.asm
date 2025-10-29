org 100h   

section .data
    num1 dq 8
    num2 dq 5
    msg1 db "num1 is greater", 10, 0
    msg2 db "num2 is greater", 10, 0
    msg3 db "Both are equal", 10, 0

section .text
    global main
    extern printf

main:
    mov rax, [num1]
    mov rbx, [num2]
    cmp rax, rbx
    je equal
    ja greater
    jb smaller

greater:
    mov rdi, msg1
    call printf
    jmp done

smaller:
    mov rdi, msg2
    call printf
    jmp done

equal:
    mov rdi, msg3
    call printf

done:
    ret
