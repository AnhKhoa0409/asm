section .data
    list    dw  0x1000, 0x2000, 0x3000, 0x4000, 0x5000, 0x6000
    sum     dd  0
section .text
global _start
_start:
    xor     esi, esi
    mov     ecx, 6
_aloop:
    movsx   eax, word[list + esi*2]
    add     dword[sum], eax
    inc     esi
    loop    _aloop  


_exit:
    mov ax, 1
    int 0x80
