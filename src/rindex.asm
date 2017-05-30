global rindex

SECTION .text

found: mov rax,  r8
        add rax,  rdi
        jmp the_suite

rindex:
        push  rbp
        mov   rbp,  rsp
        push  rbx

        mov rax, 0
        mov r8,  0

        jmp while

incr:  inc r8

while: mov   rbx, r8
        add   rbx, rdi
        movzx ebx, byte [rbx]
        cmp   bl,  sil
        jz    found
the_suite: test  bl, bl
        jnz   incr

        pop   rbx
        pop   rbp
        ret
