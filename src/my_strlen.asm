global strlen

SECTION .text

strlen:         mov     rax, rdi        ; (const char*)rax = (param)const char *str
                jmp     while           ; dont do the first incrementation

increment:      inc     rax             ; str++

while:          test    byte [rax], 0xFF
                jnz     increment;

end:            sub     rax, rdi        ; tmp - str = offset
                ret

;strlen:
  ;  mov     rbx, rdi
 ;   xor     al, al
;
 ;   and     rcx, 0xFFFFFFFFFF
;
   ; repne   scasb
  ;  sub     rdi, rbx
 ;   mov     rax, rdi
;
;    ret