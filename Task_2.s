.section .bss
.globl ram
.lcomm ram, 256

.section .text
.globl fill_ram

fill_ram:
    lea ram+0x50, %rdi
    mov $9, %rcx
L2:
    movb $0xFF, (%rdi)
    inc %rdi
    dec %rcx
    jne L2
    ret

.section .note.GNU-stack,"",@progbits
