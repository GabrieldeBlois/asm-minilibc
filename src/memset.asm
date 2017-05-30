global  memset

SECTION .text

;rdi == void *s
;rsi == int c
;rdx == size_t n

memset:
        push  rbp
        mov   rbp,  rsp
        push  rbx
        mov   rbx, 1      ;size_t ctr = 0
        mov   rax, rdi
        jmp   while

incr:   inc   rbx      ;ctr++;
        inc   rdi

while:  mov   [rdi], sil   ;*char = c

        mov   r8, rbx     ;size_t = ctr
        xor   r8, rdx     ;size_t ^ n
        jnz   incr

        pop   rbx
        pop   rbp
        ret

;memset:
;mov     rcx, rdx

;movzx   al, byte [rsi]
;rep     stosb

;rep     movsb
;ret
