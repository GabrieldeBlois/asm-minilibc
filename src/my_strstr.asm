; created by gabriel de blois
; gabriel.de-blois@epitech.eu
; created - 6 march 2017

global strstr

SECTION .text

; char *strstr(const char *haystack, const char *needle);

strstr:
        push    rbp
        mov     rbp, rsp
        push    rbx

        xor     rax, rax        ; ret pointer = NULL
        xor     ebx, ebx        ; inc on heystack (RDI) = 0
        xor     ecx, ecx        ; inc on needle (RSI) = 0
        jmp     while

rax_not_initialized:
        mov     rax, rdi
        add     rax, rbx

while:
        cmp     byte [rsi+rcx], 0       ; *needle[rcx] == 0 ?
        je      end
        
        mov     r9, rdi
        add     r9, rbx
        add     r9, rcx                 ; r9 = haystack + rbx + rcx
        cmp     byte [r9], 0   ; *heystack[rbx + rcx] == 0 ?
        je      end

        movzx   r8, byte [rsi+rcx]

        cmp     r8b, byte [r9]
        jne     not_match

match:
        inc     rcx
        cmp     rax, 0
        je      rax_not_initialized
        jmp     while

not_match:
        xor     rcx, rcx
        xor     rax, rax
        inc     rbx
        jmp     while

end:
        pop     rbx
        pop     rbp
        ret