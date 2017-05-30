; created by gabriel de blois
; gabriel.de-blois@epitech.eu
; created - 6 march 2017

global memmove

SECTION .text

memmove:
        cmp     rdi,    rsi     ; check if address rdi is different from rsi
        je      end             ; if equal there's no memcpy to perform
        jg      reverse         ; if greater, perform a normal memcpy
                                ; else, perform a reverse memcpy (it's not possible in C because
                                ; size_t is unsigned, but not in assembly)

        xor     eax,    eax

while_normal:
        cmp     rax,    rdx
        jge     end

increment_normal:
        movzx   r9,             byte [rsi+rax]
        mov     [rdi+rax],      r9b       ; *dest = *src

        inc     eax
        jmp     while_normal

reverse:
        mov     r8,     rdi
        add     rdi,    rdx
        add     rsi,    rdx
        cmp     r8,     rdi
        jge     end

increment_reverse:
        dec     rdi
        dec     rsi
        movzx   r9,     byte [rsi]
        mov     [rdi],  r9b       ; *dest = *src


while_reverse:
        cmp     rdi,    r8
        jg      increment_reverse


end:    ret