# nasm -f elf64 -o hello.o hello.asm && ld hello.o -o hello

section .data
    text db "Hello, world",10,10

section .text
    global  _start

_start:
    mov rax,1
    mov rdi,1
    mov rsi,text
    mov rdx,15
    syscall

    mov rax,60
    mov rdi,0
    syscall
