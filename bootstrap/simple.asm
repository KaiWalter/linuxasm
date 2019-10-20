section .text
    global  _start

_start:
#   sys_exit(0)
    mov eax, 60
    mov edi, 0
    syscall

