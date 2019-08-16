# nasm -f elf64 -o input.o input.asm && ld input.o -o input

section .data
    text1 db "What is your name? "
    text2 db "Hello, "

section .bss
    name resb 16

section .text
    global  _start

_start:
    call _printText1
    call _getName
    call _printText2
    call _printName

#   sys_exit(0)
    mov rax, 60
    mov rdi, 0
    syscall

_getName:
    mov rax, 0
    mov rdi, 0
    mov rsi, name
    mov rdx, 16
    syscall
    ret

_printText1:
#   sys_write(1,text1,19)
    mov rax, 1
    mov rdi, 1
    mov rsi, text1
    mov rdx, 19
    syscall
    ret

_printText2:
#   sys_write(1,text2,19)
    mov rax, 1
    mov rdi, 1
    mov rsi, text2
    mov rdx, 7
    syscall
    ret

_printName:
#   sys_write(1,name,16)
    mov rax, 1
    mov rdi, 1
    mov rsi, name
    mov rdx, 16
    syscall
    ret
