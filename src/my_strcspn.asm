global  strcspn

SECTION .text

strcspn:
        push  rbp
        mov   rbp,  rsp
        push  rbx

        mov rax,  0
        jmp while

incr:   add rax,  1
        add rdi,  1

while:  mov r8b,  byte  [rdi]
        mov r9,   rsi
        test  r8b,  r8b
        jz    return

        jmp while2

        incr2:  add r9, 1

        while2: mov r10b,  byte [r9]

                test  r10b,  r10b
                jz    incr

                xor r10b,  r8b
                jnz incr2

return: pop   rbx
        pop   rbp
        ret
