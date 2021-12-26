%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    fld DWORD [A]
    fld DWORD [B]
    fmul
    fld DWORD [C]
    fadd
    fst DWORD [R] 
    PRINT_HEX 4 , [R]
    ret
    
    
section .data
A: DD 0xC1900000
B: DD 0x41C00000
C: DD 0x40A00000
R: DD 0x00000000
;(C1900000 , 41C00000, 40A00000)