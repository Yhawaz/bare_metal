.global store_idt
store_idt:
    sidt (%edi)
    ret

.global print_to_qemu_console
print_to_qemu_console:
     mov $0x68,%al
     outb %al, $0xe9
     mov $0x0a,%al
     outb %al, $0xe9
    ret
