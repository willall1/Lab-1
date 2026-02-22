.section .bss
.globl ram
.lcomm ram, 256

.section .text
.globl fill_ram

fill_ram:
    lea ram+0x50, %rdi
    mov $9, %rcx
L3:
    movb $0x00, (%rdi)
    inc %rdi
    dec %rcx
    jne L3
    ret

.section .note.GNU-stack,"",@progbits
