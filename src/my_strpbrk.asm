global  strpbrk

SECTION .text

strpbrk:
        push  rbp
        mov   rbp,  rsp
        push  rbx

        mov   rax,  0
        jmp   while

incr:   add   rax, 1

while:  mov   rbx,  rax
        add   rbx,  rdi
        movzx ebx,  byte  [rbx]
        test  bl,   bl
        jz    not_found

        mov   r8,   0
        jmp   while2

        incr2:  add   r8,   1

        while2: mov   r9,   r8
                add   r9,   rsi
                movzx r9,   byte  [r9]
                cmp   r9b,  bl
                jz    found
                test  r9b,  r9b
                jnz   incr2

        jmp   incr

found:  add   rax,  rdi
        jmp   return

not_found:  mov rax,  0

return: pop   rbx
        pop   rbp
        ret
