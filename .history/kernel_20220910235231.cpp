

void printf(char* str) {
    unsigned short* VideoMemory = (unsigned short*)0xb8000;
}

void kernelMain(void* multiboot_structure, unsigned int magicnumber) {
    printf("hello");

    while (1);
    
}