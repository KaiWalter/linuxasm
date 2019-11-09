# nasm -f elf64 -o hello.o hello.asm && ld hello.o -o hello

section .data
    text db "Hello, world!",10,10

section .text
    global  _start

_start:
#   sys_write(1,text,15)
    mov rax, 1
    mov rdi, 1
    mov rsi, text
    mov rdx, 16
    syscall

#   sys_exit(0)
    mov rax, 60
    mov rdi, 0
    syscall
