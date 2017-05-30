global  strchr

SECTION .text

strchr:
        push    rbp
        mov     rbp, rsp
        push    rbx
        mov     rax, 0
        jmp     while

incr:   add     rax, 1

while:  mov     rbx, rax
        add     rbx, rdi
        movzx   ebx, byte[rbx]
        cmp     bl, sil
        jz      found
        test    bl, bl
        jnz     incr
        jz      not_found

found:  add     rax, rdi
        jmp     return

not_found:  mov rax, 0

return: pop rbx
        pop rbp
        ret
