; created by gabriel de blois
; gabriel.de-blois@epitech.eu
; created - 6 march 2017

global strncmp

SECTION .text

strncmp:
        push    rbp
        mov     rbp, rsp
        push    rbx
        
        xor     r8, r8
        xor     r9, r9
        xor     ecx, ecx
        jmp     while

increment:
        inc     rdi             ; s1++
        inc     rsi             ; s2++
        inc     ecx             ; ++i

while:  
        cmp     rcx, rdx
        jge     end             ; if (i >= length) -> end

        mov     r8b, byte [rdi]
        mov     r9b, byte [rsi]

        cmp     r8b, 0          ; check for \0 in both s1 && s2
        je      end
        cmp     r9b, 0          ; check for \0 in both s1 && s2
        je      end             ; if test ret 0 -> jmp to end

        cmp     r8b, r9b        ; *s1 == *s2 ? ZF = 0 : ZF > 0
        je      increment       ; (*s1 == *s2) ? jmp while : end
            
end:                            ; put last rdi byte in cl for substraction
        sub     r8b, r9b        ; cl = rdi - rsi
        movsx   rax, r8b        ; rax = 0x0 + cl
        pop     rbx
        pop     rbp
        ret