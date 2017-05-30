global  memcpy

SECTION .text

;rdi == void *dest
;rsi == void *src
;rdx == size_t n

; my_memcpy:
;         push  rbp
;         mov   rbp,  rsp
;         push  rbx
;         mov   rbx,  0     ;size_t ctr = 0
;         mov   rax,  rdi   ;return dest
;         jmp   while

; incr:   inc   rbx
;         inc   rdi
;         inc   rsi

; while:  movzx r8, byte [rsi]
;         mov   [rdi],   r8b
;         mov   r8, rbx
;         xor   r8,  rdx
;         jnz   incr

;         pop   rbx
;         pop   rbp
;         ret

memcpy:
        mov     rcx, rdx
        
        rep     movsb
        ret