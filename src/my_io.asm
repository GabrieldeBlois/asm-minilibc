; created by gabriel de blois
; gabriel.de-blois@epitech.eu
; created - 6 march 2017

global read, write, open, close, stat, fstat, lstat, poll, lseek

SECTION .text

read:
        mov     rax, 0
        syscall
        ret

write:
        mov     rax, 1
        syscall
        ret

open:
        mov     rax, 2
        syscall
        ret

close:
        mov     rax, 3
        syscall
        ret

stat:
        mov     rax, 4
        syscall
        ret
fstat:
        mov     rax, 5
        syscall
        ret
lstat:
        mov     rax, 6
        syscall
        ret
poll:
        mov     rax, 7
        syscall
        ret
lseek:
        mov     rax, 8
        syscall
        ret