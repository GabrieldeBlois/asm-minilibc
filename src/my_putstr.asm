; created by gabriel de blois
; gabriel.de-blois@epitech.eu
; created - 6 march 2017

global my_putstr, write

SECTION .text

my_putstr:
        push    rbp
        mov     rbp, rsp
        push    rbx
        
        mov     r8, rdi         ; take parameter

        mov	    rdx, 0x01		; message length
        mov	    rbx, 1		    ; file descriptor (stdout)
        mov	    eax, 4		    ; system call number (sys_write)

        jmp     while

dandi:                          ; display and increment
        mov     rcx, r8
        int     0x80
        inc     r8

while:  cmp     byte [r8], 0
        jnz     dandi

end2:   sub     rdi, rdi
        pop     rbx
        pop     rbp
        ret