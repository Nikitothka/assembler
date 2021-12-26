%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor     eax, eax
    xor     ESI, ESI
    LEA     ESI, [a]
    MOV     ECX,  8
    
     
    PUSH    ECX
    PUSH    ESI
loopP:
    MOV     DL, [ESI]
    MOV     EBX,  ESI
    MOV     EDI,  8
    SUB     EDI,  ECX

While:
    CMP     EDI, 0
    JZ      skip
    MOV     DH, [EBX-4]
    CMP     DH, DL ; сравнивает ключевой dl
    JL      skip
    JMP     swap
Corector:
    DEC     EDI
    SUB     EBX,4
    JMP     While
    
         
swap:
    MOV     AL, [EBX]
    MOV    [EBX], DH
    MOV    [EBX-4], AL  
    JMP     Corector  
    
skip:
    MOV     [EBX], DL
    ADD     ESI, 4
    
    loop    loopP
    
    POP     ESI
    POP     ECX
        
    
    ret
    
    
    
      
    
section .data
a:  DD 8,2,5,3,4,7,6,1