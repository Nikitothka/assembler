%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    mov al, 0xEE
    mov bl,0x18

    imul bl
    mov cl, 0x05
    add al,cl
    PRINT_HEX 1,al
    