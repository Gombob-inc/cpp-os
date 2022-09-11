.section .text
.extern kernelMain
.global loader

loader:
    mov $kernel_stack, %esp
    call kernelMain

_stop:
    cli
    halt
    jmp _stop

.section .bss
.space 2*1024*1024; 2 MiB
kernel_stack:
