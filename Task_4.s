.section .bss
.globl ram
.lcomm ram, 256

.section .text
.globl fill_ram

fill_ram:
    xor %eax, %eax
    mov $1, %bl
    mov $10, %cl
L4:
    add %bl, %al
    inc %bl
    dec %cl
    jne L4
    movb %al, ram+0x50
    ret

.section .note.GNU-stack,"",@progbits
