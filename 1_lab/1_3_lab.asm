%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    
    mov     ax, 10
    mov     bx, 12
    mov     cx, 11
    
    cmp     ax,0
    jl      false
    cmp     ax, cx
    jnl     false
    cmp     bx, 0
    jl      false
    cmp     bx, cx
    jnl     false
    
      
    
true:    
    mov     dx, 1
    jmp     quit
    
false:
    xor     dx,dx
            
            
quit:   
    PRINT_DEC 1, DX                
    ret