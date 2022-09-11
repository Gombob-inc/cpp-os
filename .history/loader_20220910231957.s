.set MAGIC, 0x1badb002
.set FLAGS, (1<<0 | 1<<11)
.set CHECKSUM, -(MAGIC + FLAGS)

.section .multiboot
    .long MAGIC
    .long FLAGS
    .long CHECKSUM

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